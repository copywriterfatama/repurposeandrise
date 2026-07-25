# Repurpose & Rise™ — Content Repurposing System

Turns one long-form podcast/YouTube episode into ~30 days of platform-native content,
governed by ARC10, voice-matched to the speaker. Two-phase workflow with a hard approval
gate between strategy and production.

## How a run works

1. **Step 0 — Transcribe.** `pipeline/transcribe.sh <youtube-url> <episode-slug>` pulls a
   clean timestamped transcript (captions first, Whisper fallback). Output lands in
   `episodes/<slug>/transcript/`.
2. **Phase 1 — Strategy.** Run ARC10 on the transcript → ideas map only
   (`episodes/<slug>/ideas-map.md`, from `templates/ideas-map.md`). Ordered:
   Instagram (deepest) → LinkedIn → SEO → other platforms only if warranted.
   **STOP. Fatama reviews and cuts/keeps.**
3. **Phase 2 — Production.** Only for greenlit ideas: study native winners per platform,
   write platform-native copy in the speaker's voice, output to Notion (one view per
   platform).

## Repo layout

- `CLAUDE.md` — persistent business context (read first, every session)
- `prompts/repurposing-engineer.md` — the operating role prompt for the agent
- `pipeline/transcribe.sh` — transcription pipeline (yt-dlp + Whisper)
- `templates/ideas-map.md` — Phase 1 output template
- `episodes/<slug>/` — one folder per episode run

## Requirements

- Network access to youtube.com (a Claude Code environment with an open network policy,
  or a local machine)
- `pip install yt-dlp` · `ffmpeg` · `pip install openai-whisper` (only needed if the
  episode has no captions)

## Hard rules

- Never invent numbers, results, or framework mechanics — ask.
- ARC10 mechanics live with Fatama; do not run Phase 1 without them.
- One idea per piece. Voice-matched. Judgment over volume.
