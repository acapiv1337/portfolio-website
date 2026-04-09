const modules = import.meta.glob('../posts/*.md', { query: '?raw', import: 'default', eager: true })

function parseFrontmatter(raw) {
  const match = raw.match(/^---\n([\s\S]*?)\n---\n?([\s\S]*)$/)
  if (!match) return { meta: {}, content: raw }
  const meta = {}
  match[1].split('\n').forEach(line => {
    const colonIndex = line.indexOf(':')
    if (colonIndex === -1) return
    const key = line.slice(0, colonIndex).trim()
    const value = line.slice(colonIndex + 1).trim()
    if (key) meta[key] = value
  })
  return { meta, content: match[2].trim() }
}

export const posts = Object.entries(modules)
  .map(([path, raw]) => {
    const slug = path.replace('../posts/', '').replace('.md', '')
    const { meta, content } = parseFrontmatter(raw)
    return {
      slug,
      title: meta.title ?? slug,
      date: meta.date ?? '',
      tag: meta.tag ?? '',
      excerpt: meta.excerpt ?? '',
      published: meta.published !== 'false',
      content,
    }
  })
  .filter(p => p.published)
  .sort((a, b) => new Date(b.date) - new Date(a.date))

export function getPostBySlug(slug) {
  return posts.find(p => p.slug === slug) ?? null
}
