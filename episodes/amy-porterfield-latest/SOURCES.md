# First-run target: latest episode of The Amy Porterfield Show

**Status as of 2026-07-25:** target switched from Goal Digger #944 to Amy Porterfield's
latest episode. Note: Amy sunsetted "Online Marketing Made Easy" and now runs
**The Amy Porterfield Show** (weekly).

## Latest episode — to be confirmed at transcription time

Newest episode confirmable via search: **"The Real Reason More Offers Means Less Revenue"**
(June 2, 2026). Later July episodes almost certainly exist but can't be enumerated from
this no-network environment. The pipeline resolves it automatically — pass the channel URL
and it takes the newest upload:

```
pipeline/transcribe.sh "https://www.youtube.com/@AmyPorterfield/videos" amy-porterfield-latest
```

## Sources

- YouTube (show playlist): https://www.youtube.com/playlist?list=PLSd_A4z15v_V4SFhKGAEmsnhhJADPCNlB
- Apple Podcasts: https://podcasts.apple.com/us/podcast/the-amy-porterfield-show/id594703545
- Spotify: https://open.spotify.com/show/5z7TqC6tll8egI9prMqXhd
- Show notes index: https://www.amyporterfield.com/all-show-notes/

## Transcript status: ❌ BLOCKED (same environment constraint as before)

This session's network policy denies all outbound traffic (YouTube, RSS, web fetches).
Step 0 cannot run here. Unblock options: run in a network-enabled Claude Code environment,
run the script locally and commit the transcript output here, or upload the transcript/
audio into the session. No transcript will be fabricated; Phase 1 will not run on snippets.
