# Capysort for ChatGPT

Capysort organizes your Mac's Photos library, folders, Messages and apps. This plugin lets ChatGPT use it: ChatGPT looks up what Capysort found and proposes changes, and nothing changes until you approve them in the Capysort app. Everything you approve can be undone from Capysort's History.

## What you need

- A Mac with [Capysort](https://capysort.com) installed and opened once.
- In Capysort, **Settings › Claude & ChatGPT › Let Claude and ChatGPT use Sift** turned on. It's off until you turn it on.

## Install

In the ChatGPT desktop app on your Mac, install Capysort from the plugin directory when it's listed there. Until then, add the marketplace with Codex and install it:

```
codex plugin marketplace add chriscrosscutler/capysort-plugins
codex plugin add capysort@capysort
```

ChatGPT can use Capysort in threads that run on your Mac, such as Codex and local Work. It isn't available in ChatGPT on the web or on a phone, because Capysort runs only on your Mac.

## What ChatGPT sees, and what is sent to OpenAI

The plugin starts `sift-mcp`, a small helper inside the Capysort app. The helper reads nothing itself and opens no network connections: it passes each request to the Capysort app on your Mac over a local socket, and the app decides what to answer from your settings.

What a tool returns goes to ChatGPT and so to OpenAI. Depending on what you allow in Capysort's settings, that can include photo dates, kinds and sizes, album names, screenshot categories, text found in photos, captions, people's names, places (off, approximate or exact), small photo previews, folder and file names, app names, and who you message and how often. It never includes:

- anything in the Hidden album,
- photos in categories you don't share (only their ID, date and size),
- what your messages say,
- what is inside your files.

ChatGPT can only propose changes. Proposals wait in Capysort until you review them, and deleted photos go to Recently Deleted in Photos.

## Tools

Read: library_overview, search_assets, get_asset, view_assets, list_clusters, get_cluster, list_categories, classify_preview, list_unsure_tags, list_people, list_events, list_albums, list_sources, list_folder, list_routines.

Propose or set up, each waiting for your approval or undoable in Capysort: propose_plan, suggest_categories, create_category, review_tags, schedule_routine, cancel_routine.

Only in the version from capysort.com: list_conversations, propose_conversations, list_apps, propose_uninstall.

## Support

Questions and problems: https://capysort.com/#questions
Privacy policy: https://capysort.com/privacy
