# Status Lifecycle

```text
pending -> claimed -> completed
pending -> claimed -> released -> pending
pending -> failed
claimed -> failed
```

Use `pending` for available work, `claimed` for assigned work in progress,
`completed` only after verification, `released` when ownership returns to the
queue, and `failed` when the verification step exposes a blocker.
