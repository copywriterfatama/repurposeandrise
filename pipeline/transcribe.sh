#!/usr/bin/env bash
# Step 0 — Transcribe. Captions first (fast, free), Whisper fallback (complete).
# Usage: pipeline/transcribe.sh <youtube-url> <episode-slug>
# Output: episodes/<slug>/transcript/  (VTT captions and/or whisper .txt/.srt + audio metadata)
set -euo pipefail

URL="${1:?usage: transcribe.sh <youtube-url-or-channel> <episode-slug>}"
SLUG="${2:?usage: transcribe.sh <youtube-url-or-channel> <episode-slug>}"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUT="$ROOT/episodes/$SLUG/transcript"
mkdir -p "$OUT"

# Channel or playlist URL -> resolve to its newest upload (default per the role prompt).
case "$URL" in
  *"/@"*|*"/videos"*|*"list="*|*"/playlist"*)
    echo "==> Channel/playlist given; resolving latest episode"
    VID_ID="$(yt-dlp --flat-playlist -I 1 --print id "$URL")"
    URL="https://www.youtube.com/watch?v=$VID_ID"
    echo "==> Latest episode: $URL"
    ;;
esac

echo "==> Episode metadata"
yt-dlp --skip-download --print "%(title)s | %(upload_date)s | %(duration_string)s | %(id)s" "$URL" \
  | tee "$OUT/metadata.txt"

echo "==> Trying captions (manual subs preferred over auto-generated)"
yt-dlp --skip-download \
  --write-subs --write-auto-subs --sub-langs "en.*,en" --sub-format vtt \
  -o "$OUT/%(id)s" "$URL" || true

if compgen -G "$OUT"'/*.vtt' > /dev/null; then
  echo "==> Captions found:"
  ls "$OUT"/*.vtt
  echo "NOTE: auto-captions lack punctuation/speaker labels. If quality matters for voice-matching,"
  echo "run the Whisper fallback below anyway and keep the more complete of the two."
else
  echo "==> No captions available; falling back to Whisper."
fi

if ! compgen -G "$OUT"'/*.vtt' > /dev/null || [ "${FORCE_WHISPER:-0}" = "1" ]; then
  echo "==> Downloading audio"
  yt-dlp -f "bestaudio" -x --audio-format mp3 --audio-quality 5 -o "$OUT/audio.%(ext)s" "$URL"
  echo "==> Whisper transcription (timestamped)"
  command -v whisper >/dev/null || { echo "install: pip install openai-whisper"; exit 1; }
  whisper "$OUT/audio.mp3" --model small --language en \
    --output_format all --output_dir "$OUT"
fi

echo "==> Done. Transcript files in $OUT"
echo "REMINDER: Step 0 captures everything — no summarizing. Phase 1 (ARC10) comes next."
