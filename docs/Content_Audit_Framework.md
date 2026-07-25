# Content Audit Framework

**Purpose:** Reverse-engineer any piece of content to find out *why it works* (or doesn't) using the Gap × Layer Matrix — 10 psychological gaps, 10 depth layers each, mapped to TOFU/MOFU/BOFU funnel stages.

**Use this for:**
- Auditing your own published content to find what's actually converting
- Auditing competitor content to learn from their best posts
- Auditing client content before producing for them (find what they're already doing well, find what's missing)
- Pre-publish review of new content before it goes out

---

## How to Use This File

There are two ways to run an audit:

**Manual audit:** Use the checklist below. Walk through the post line-by-line and mark which gaps and layers it hits.

**Claude-assisted audit:** Copy the prompt at the bottom of this file into a Claude conversation, paste the content you want audited, and let Claude run the full diagnostic.

---

## The 10 Gaps (Audit Dimensions)

| # | Gap | What it addresses |
|---|-----|-------------------|
| 1 | **Pain** | The problem the audience is actively struggling with |
| 2 | **Desire** | What they actually want (articulated and unarticulated) |
| 3 | **Belief** | What they currently believe — helping or hurting them |
| 4 | **Objection** | Why they hesitate, even when they want what's offered |
| 5 | **Misconception** | The myths and false assumptions keeping them stuck |
| 6 | **Knowledge Gap** | The things they don't know they need to know |
| 7 | **Identity** | Who they are, who they're becoming, who they're rejecting |
| 8 | **Proof** | The evidence they need to believe it's possible for them |
| 9 | **Permission** | The internal blocks that need releasing before they can act |
| 10 | **Decision Trigger** | The signal, moment, or condition that moves them to act |

## The 10 Layers (Depth Dimensions)

Each gap has 10 layers, mapped to funnel stage. Strong content usually hits 1-3 layers within 1-3 gaps. Weak content either hits one layer shallowly or sprays across too many without depth.

| Layer | Funnel | Reader state |
|---|---|---|
| 1 | TOFU | Recognition / scroll-stopping |
| 2 | TOFU | Naming what was unspoken |
| 3 | TOFU→MOFU | Hidden depth / "oh, that's me too" |
| 4 | MOFU | Reframing / "wait, I've been thinking about this wrong" |
| 5 | MOFU | Deeper resonance / "how do they know me?" |
| 6 | MOFU | Pattern naming / removing self-blame |
| 7 | MOFU→BOFU | Cost / consequence / loss aversion |
| 8 | MOFU→BOFU | Tipping point / readiness signal |
| 9 | BOFU | Permission / decision-clearing |
| 10 | BOFU | Story / proof / closing the loop |

*(For the full list of all 100 layers with their named titles and prompt questions, see the Gap × Layer Matrix document.)*

---

## The Audit Checklist (Manual Version)

Use this when auditing a post by hand.

### Step 1 — First Read (No Notes)
Read the content once without analyzing. Note your immediate reaction:
- Did it stop your scroll?
- Did you feel anything? What?
- Would you save it / share it / act on it?

### Step 2 — Identify the Gaps
Which of the 10 gaps does this content address? Mark all that apply:

- [ ] Pain
- [ ] Desire
- [ ] Belief
- [ ] Objection
- [ ] Misconception
- [ ] Knowledge Gap
- [ ] Identity
- [ ] Proof
- [ ] Permission
- [ ] Decision Trigger

**Note:** Strong content usually hits 1-3 gaps clearly. Content that tries to hit all 10 is usually noise. Content that hits zero is decoration.

### Step 3 — Identify the Layers
For each gap you marked, identify which layer(s) the content is operating at. Use the layer table above (1-10). Note:
- The primary layer (what most of the post is doing)
- Any secondary layers (where it moves to or from)

### Step 4 — Identify the Funnel Position
Where does this content sit?
- [ ] TOFU (broad recognition, no commitment)
- [ ] MOFU (specific resonance, building trust)
- [ ] BOFU (decision pressure, conversion)
- [ ] Bridges across stages (note which → which)

### Step 5 — Diagnose Why It Works (or Doesn't)
Answer these in order:

1. **The Hook:** What's the first line doing? Which gap × layer is it triggering?
2. **The Middle:** Does the body deepen the layer, or stay at the same surface?
3. **The Close:** Does it land on a layer that matches the funnel stage (e.g., a TOFU post doesn't need a hard CTA, but a BOFU post must)?
4. **The Voice:** Does the language sound like the audience's own language, or like generic marketing?
5. **The Proof:** Is there proof present? At what layer (Layer 1 surface result, vs. Layer 7 anti-vanity proof, vs. Layer 10 full story)?
6. **The Missing Gap:** What's the most important gap this content *should* be hitting that it isn't?

### Step 6 — The Verdict
Score the post:

- **Strategic clarity** (does it know what gap × layer it's targeting?) /10
- **Depth** (does it stay at one layer, or skim across many?) /10
- **Voice authenticity** (does it sound like the person, not a template?) /10
- **Funnel-stage match** (does it match where the reader is?) /10
- **Conversion logic** (does it move the reader toward the next step?) /10

**Total: /50**

### Step 7 — The Action
Based on the audit, decide:
- [ ] Republish as-is (it's working)
- [ ] Rewrite to deepen one specific layer
- [ ] Repurpose to a different gap × layer
- [ ] Pair with a companion post that fills the missing gap
- [ ] Retire (it's not landing because it's targeting nothing specific)

---

## The Audit Prompt (Claude-Assisted Version)

Copy everything between the two `===` lines below into a new Claude conversation. Then paste the content you want audited at the bottom and run it.

```
==================== START PROMPT ====================

You are a senior conversion copywriter conducting a Gap × Layer audit on a piece of content.

Your job is to reverse-engineer why this content works (or doesn't) using the framework below, then deliver a structured diagnostic.

# THE GAP × LAYER FRAMEWORK

There are 10 psychological gaps every audience has before they take action:

1. PAIN — the problem they're actively struggling with
2. DESIRE — what they actually want (articulated and unarticulated)
3. BELIEF — what they currently believe (helping or hurting them)
4. OBJECTION — why they hesitate even when they want it
5. MISCONCEPTION — myths and false assumptions keeping them stuck
6. KNOWLEDGE GAP — things they don't know they need to know
7. IDENTITY — who they are, becoming, rejecting
8. PROOF — evidence they need to believe it's possible for them
9. PERMISSION — internal blocks needing release before they act
10. DECISION TRIGGER — signal/moment that moves them to act

Each gap has 10 layers of depth, mapped to funnel stage:

- Layers 1-3: TOFU (recognition, naming the unspoken, hidden depth)
- Layers 4-6: MOFU (reframing, deep resonance, pattern naming)
- Layers 7-8: MOFU→BOFU (cost, consequence, tipping point)
- Layers 9-10: BOFU (permission, decision, story, proof)

Strong content usually hits 1-3 gaps clearly at 1-3 layers of depth. Weak content either targets nothing specific or skims across too many gaps without depth.

# YOUR AUDIT PROCESS

Run the audit in this exact order. Do not skip steps.

## Step 1 — First Read Reaction
In 2-3 sentences: what's your gut response to this content? Does it stop the scroll? Does it create any specific feeling?

## Step 2 — Gap Identification
List which of the 10 gaps this content addresses. For each:
- Name the gap
- Quote the specific line(s) from the content that address it
- Mark whether it's a PRIMARY gap (most of the content) or SECONDARY gap (briefly touched)

## Step 3 — Layer Identification
For each gap identified, name the depth layer it operates at (1-10) and why. Be specific: is it surface symptom (Layer 1), or hidden cost (Layer 3), or tipping point (Layer 8)?

## Step 4 — Funnel Position
Where does this content sit in the funnel (TOFU / MOFU / BOFU / Bridge)? Justify with evidence from the content.

## Step 5 — Component Diagnosis
Break the content into hook / body / close and diagnose each:

- HOOK: What gap × layer does it trigger? Does it stop the scroll? Why or why not?
- BODY: Does it deepen the layer from the hook, or stay flat? Does it bridge to another layer?
- CLOSE: Does it land on a layer that matches the funnel stage? (TOFU close = leaves them thinking. BOFU close = clear next action.)

## Step 6 — Voice & Specificity
Does the language sound like a real person or like marketing? Quote two phrases that work and two that feel generic.

## Step 7 — The Proof Check
Is there proof in this content? If yes, at what layer (surface result, process reveal, specific client proof, anti-vanity proof, stacked story)? If no proof — is it needed for this gap × layer combination, or appropriate to omit?

## Step 8 — The Missing Gap
Name the single most important gap this content *should* be hitting that it isn't. Why does its absence matter for the reader's journey?

## Step 9 — Scorecard
Rate the content on each dimension /10:
- Strategic clarity (does it know what it's targeting?): /10
- Depth (does it stay at one layer, or skim?): /10
- Voice authenticity (does it sound human, not templated?): /10
- Funnel-stage match (does it match where the reader is?): /10
- Conversion logic (does it move the reader to next step?): /10
- TOTAL: /50

## Step 10 — The Verdict & Action
In 3-5 sentences:
- Why does this content work (or not work)?
- What's the ONE specific change that would make it sharper?
- What's the next move? (Republish / rewrite to deepen / repurpose / pair with companion post / retire)

# OUTPUT FORMAT

Use clear headers for each step. Be specific, not abstract. Quote the actual content when making claims about it. Be direct — if something isn't working, say so plainly. Your value here is honesty, not encouragement.

# THE CONTENT TO AUDIT

Paste the content here:

[PASTE CONTENT BELOW THIS LINE]

==================== END PROMPT ====================
```

---

## Tips for Running Audits

**On your own content:** Run audits on posts that performed unusually well *and* unusually poorly. The pattern between the two tells you more than either one alone.

**On competitor content:** Pick 3-5 posts from a competitor whose audience overlaps with yours. Audit each. Look for which gaps they consistently hit — and which they consistently miss. Those gaps are your opening.

**On client content (before producing):** Audit 5-10 of their existing posts before you start writing. This gives you:
1. A baseline of which gaps they already cover (don't duplicate)
2. Voice patterns you can extract for your Voice Profile
3. The missing gaps that should drive your content plan

**On new content (before publishing):** Run the audit on your own draft. If it scores below 35/50, rewrite before publishing. If it scores 35-42, publish but note what to improve next time. 43+ is ready.

---

*Last updated: May 2026 — Companion to the Gap × Layer Matrix*
