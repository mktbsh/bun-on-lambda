import { Hono } from 'hono'

const app = new Hono()

app.get('/', (c) => c.text('Hello Bun!'))

app.get('/ping', (c) => c.json({ ok: true }))

export { app }