# Capysort plugins

[Capysort](https://capysort.com) organizes your Mac's Photos library, folders, Messages and apps. These plugins let Claude and ChatGPT use it: the assistant looks up what Capysort found and proposes changes, and nothing changes until you approve them in the Capysort app.

The plugins hold no app code. They start `sift-mcp`, a helper inside the installed Capysort app, which passes each request to the app over a local socket. You need Capysort installed on your Mac, and its assistant access turned on in **Settings › Claude & ChatGPT**.

## Install

Claude Code:

```
/plugin marketplace add chriscrosscutler/capysort-plugins
/plugin install capysort@capysort
```

Codex, and the ChatGPT desktop app on your Mac:

```
codex plugin marketplace add chriscrosscutler/capysort-plugins
codex plugin add capysort@capysort
```

| Plugin | For |
|---|---|
| [`claude/capysort`](claude/capysort) | Claude Code and Cowork |
| [`chatgpt/capysort`](chatgpt/capysort) | The ChatGPT desktop app and Codex |

Each plugin's README lists its tools and exactly what the assistant can see.

## Privacy and terms

- Privacy policy: https://capysort.com/privacy
- Terms: https://capysort.com/terms
- Questions: support@capysort.com

The plugin files are MIT-licensed. The Capysort app is not open source.
