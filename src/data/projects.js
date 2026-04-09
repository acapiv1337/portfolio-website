const modules = import.meta.glob('../projects/*.md', { query: '?raw', import: 'default', eager: true })

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

export const projects = Object.entries(modules)
  .map(([path, raw]) => {
    const slug = path.replace('../projects/', '').replace('.md', '')
    const { meta, content } = parseFrontmatter(raw)
    return {
      slug,
      title: meta.title ?? '',
      description: meta.description ?? '',
      tech: meta.tech ? meta.tech.split(',').map(t => t.trim()) : [],
      status: meta.status ?? 'live',
      published: meta.published !== 'false',
      content,
    }
  })
  .filter(p => p.published)

export function getProjectBySlug(slug) {
  return projects.find(p => p.slug === slug) ?? null
}
