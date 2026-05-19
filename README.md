# agent-handoffs

Structured ownership transfer for AI agent teams.

A handoff is not a message. It is a lifecycle record: created, claimed,
completed, released, or failed with verification attached. This repo is the
public runnable slice of that pattern.

## Quick Start

```bash
git clone https://github.com/a-mad-av8r/agent-handoffs
cd agent-handoffs
cp .env.example .env
./setup.sh
./scripts/handoff-create --from saul --to marlow --summary "Review CS003 post copy" --next "Check Amad voice"
./scripts/handoff-list --mine marlow
./scripts/handoff-claim <handoff-id> --agent marlow
./scripts/handoff-complete <handoff-id>
```

## What Is Included

- `schema.sql` with active and archived handoff tables.
- CLI scripts for create, list, claim, complete, release, fail, and diagnose.
- Example handoff documents.
- Lifecycle and template docs.

## What Is Deliberately Out

- Internal publish automation.
- EnGenAI approval workflows.
- Full project task board.
- Customer-grade audit and platform routing.

## Series Map

| Part | Repo | Focus |
| --- | --- | --- |
| 1 | [agent-cortex](https://github.com/a-mad-av8r/agent-cortex) | Operating memory core |
| 2 | [agent-telepathy](https://github.com/a-mad-av8r/agent-telepathy) | Event awareness |
| 3 | [agent-handoffs](https://github.com/a-mad-av8r/agent-handoffs) | Structured transfer |
| 4 | [agent-roles](https://github.com/a-mad-av8r/agent-roles) | Role boundaries |
| 5 | [agent-retention](https://github.com/a-mad-av8r/agent-retention) | Memory lifecycle |
| 6 | [agent-multimodel](https://github.com/a-mad-av8r/agent-multimodel) | Shared protocol across tools |

## Author

Amad Malik - Founder and CEO/CTO of Adaptech AI Ltd, building EnGenAI
([engenai.app](https://engenai.app)).

[LinkedIn](https://www.linkedin.com/in/amadmalik/) | [GitHub](https://github.com/a-mad-av8r)
