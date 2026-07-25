---
name: repurpose-episode
description: Turn one long-form podcast or YouTube episode into ~30 days of platform-native content using Fatama's two-phase Repurpose & Rise workflow — Phase 1 builds a Gap × Layer ideas map and STOPS for approval, Phase 2 produces voice-matched copy. Use this skill whenever the user shares an episode link, channel, transcript file, or pasted transcript and wants it repurposed into content — including casual asks like "repurpose this," "make content from this episode," "turn this into posts/carousels/reels," "run phase 1," or "build the ideas map." Also use when the user approves an ideas map and asks to write the approved pieces (Phase 2). Do NOT use for auditing a single existing post (that's the content-audit skill) or writing content unrelated to a source episode.
---

# Repurpose Episode — Two-Phase Workflow

Turn ONE long-form episode into a month of platform-native content. You are not a clipper:
you apply judgment about which ideas convert, and you preserve the speaker's voice. The
workflow has a hard gate in the middle — strategy gets approved before any copy is written,
because producing 30 pieces on an unapproved strategy wastes a day of work and burns client
trust. Never skip the gate, even if the user asks for "finished posts" up front: run
Phase 1, deliver the ideas map, and stop.

## Inputs — collect before starting

1. **The episode**: a URL, channel handle (default: most recent episode), transcript file,
   or pasted transcript.
2. **The client's big goal / CTA** (book calls, grow email list, sell a $X offer). Every
   idea must ladder to it. If not given: check whether the episode has its own stated CTA
   and propose it as the assumed goal — clearly flagged as an assumption to confirm at the
   gate. If there's no discernible CTA, ask before building the map.

Hard rule carried from Fatama's CLAUDE.md: never invent numbers, results, testimonials, or
framework mechanics. Quote proof points verbatim from the transcript or don't use them.

## Step 0 — Transcribe (capture everything, summarize nothing)

A complete transcript is the raw material for every judgment that follows — a summary
destroys the verbatim phrasing that voice-matching and quote-pulling depend on.

- If a transcript file/text is provided, use it as-is. Note its limitations in the ideas
  map header (e.g., "caption export, chapter headings only, no timecodes").
- If given a URL/channel and the environment has network access, run
  `scripts/transcribe.sh <url-or-channel> <episode-slug>` (yt-dlp captions first, Whisper
  fallback; channel URLs auto-resolve to the newest upload).
- If the environment has no network access (fetches 403/time out), say so plainly and ask
  the user to upload a transcript or run the script locally. Do not reconstruct a
  transcript from search snippets or memory — that is inventing source material.

## Phase 1 — Strategy: the ideas map (then STOP)

Read `references/gap-layer-selection.md` before selecting ideas — it holds the 10 gaps ×
10 layers framework and how to apply it at episode level.

Work in this order:

1. **Find the through-line**: what is this episode actually arguing, in 1-2 sentences?
2. **Gap coverage scan**: which of the 10 gaps does the episode hit HEAVY / MODERATE /
   LIGHT / ABSENT? This drives selection — lean into what the episode is genuinely rich in
   (often Proof and Misconception material) rather than forcing coverage of every gap.
3. **Extract ideas per platform**, in this order and depth:
   - **Instagram** (primary — go deepest, most ideas; tag each with its best native
     format: carousel, reel hook, or quote post)
   - **LinkedIn** (authority posts, belief-shifts, story-led)
   - **SEO** (article topics + the search intent each targets — discoverability, not
     scroll-stopping)
   - **Other platforms** only if the material genuinely warrants it; skip platforms that
     would duplicate rather than extend. Say what you skipped and why.
4. **For every idea, exactly three things**: the core idea (one line — the single
   message) · a brief description (1-2 sentences: the angle, with its Gap × Layer tag) ·
   how it connects to the client's goal/CTA (the strategic job it does). Add a source
   locator (timestamp or chapter heading).
5. **Selection reasoning**: name your top ~5 picks and justify them with Gap × Layer
   logic. Also list what you deliberately cut and why — the cuts show judgment as much as
   the keeps.

Write the map to a file using `references/ideas-map-template.md` as the structure (the
format Fatama approved). If working in a repo with an `episodes/` directory, save to
`episodes/<slug>/ideas-map.md`; otherwise save alongside the transcript and send the file
to the user.

**Then stop.** End with a clear status line: the map awaits cut/keep review, and no copy
will be written until approved. Surface any assumptions (especially an assumed CTA) as
explicit questions at the gate.

## Phase 2 — Production (only after explicit approval)

Approval means the user has said which ideas to keep, cut, or re-angle. For greenlit
ideas only:

1. **Learn what performs, per platform separately.** Before writing, study native winners
   in the niche if research access exists: Instagram hook patterns/slide structures,
   LinkedIn open-close patterns, how ranking articles for the SEO intent are structured.
   Each platform gets its own treatment — never reformat one post to fit all.
2. **Write platform-native, in the speaker's voice.**
   - ONE core idea per piece, landed hard. No exceptions.
   - Carousels: write every slide. Reels: hook + full script. Quote posts: the line + caption.
   - Match the speaker's actual phrasing and rhythm — weave in their verbatim lines where
     they said it well; sound like them, not like AI.
   - If a tweet can't hold the idea without losing punch, make it a thread.
3. **Output**: one file per platform (or a Notion database with a separate view per
   platform if Notion tools are available). Each piece carries: core idea, platform,
   format, the full copy, source locator, the structure it's modeled on, and which client
   goal it serves.

## Quality bar (both phases)

- One idea per piece. Voice-matched. Specific over generic — real stories, real numbers,
  real stakes, all traceable to the transcript.
- Judgment over volume: a sharp piece beats ten forgettable ones; a trimmed map beats a
  padded one.
- Never corporate/agency-speak ("we help founders build a strong presence…" is the exact
  tone to avoid).

## Files in this skill

- `references/gap-layer-selection.md` — the Gap × Layer Matrix adapted for episode-level
  idea selection. Read during Phase 1.
- `references/ideas-map-template.md` — the approved ideas-map structure. Use for Phase 1
  output.
- `scripts/transcribe.sh` — yt-dlp + Whisper transcription with channel auto-resolution.
