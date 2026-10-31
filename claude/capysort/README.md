# Capysort for Claude

Capysort organizes your Mac's Photos library, folders, Messages and apps. This plugin lets Claude use it: Claude looks up what Capysort found and proposes changes, and nothing changes until you approve them in the Capysort app. Everything you approve can be undone from Capysort's History.

## What you need

- A Mac with [Capysort](https://capysort.com) installed and opened once.
- In Capysort, **Settings › Claude & ChatGPT › Let Claude and ChatGPT use Sift** turned on. It's off until you turn it on.

## Install

In Claude Code, add the marketplace and install the plugin:

```
/plugin marketplace add chriscrosscutler/capysort-plugins
/plugin install capysort@capysort
```

In Claude Desktop, Capysort's settings show a line to add to `claude_desktop_config.json` instead.

## What Claude sees, and what is sent to Anthropic

The plugin starts `sift-mcp`, a small helper inside the Capysort app. The helper reads nothing itself and opens no network connections: it passes each request to the Capysort app on your Mac over a local socket, and the app decides what to answer from your settings.

What a tool returns goes to Claude and so to Anthropic. Depending on what you allow in Capysort's settings, that can include photo dates, kinds and sizes, album names, screenshot categories, text found in photos, captions, people's names, places (off, approximate or exact), small photo previews, folder and file names, app names, and who you message and how often. It never includes:

- anything in the Hidden album,
- photos in categories you don't share (only their ID, date and size),
- what your messages say,
- what is inside your files.

Claude can only propose changes. Proposals wait in Capysort until you review them, and deleted photos go to Recently Deleted in Photos.

## Tools

Read: library_overview, search_assets, get_asset, view_assets, list_clusters, get_cluster, list_categories, classify_preview, list_unsure_tags, list_people, list_events, list_albums, list_sources, list_folder, list_routines.

Propose or set up, each waiting for your approval or undoable in Capysort: propose_plan, suggest_categories, create_category, review_tags, schedule_routine, cancel_routine.

Only in the version from capysort.com: list_conversations, propose_conversations, list_apps, propose_uninstall.

## Support

Questions and problems: https://capysort.com/#questions
Privacy policy: https://capysort.com/privacy
