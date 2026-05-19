# Handoff Template

Every useful handoff answers five questions:

- Who is handing off?
- Who owns the next step?
- What changed?
- What should happen next?
- How should the receiving agent verify completion?

In CLI form:

```bash
./scripts/handoff-create \
  --from <agent> \
  --to <agent> \
  --summary "<what changed>" \
  --next "<next action>" \
  --verify "<verification check>"
```
