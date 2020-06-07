/**
 * Return a random integer between 0 and a given integer (default 100).
 */
export function randomInt(max = 100): number {
  return Math.round(Math.random() * max)
}
