import { randomInt } from '..'

describe('greatest possible random value', () => {
  beforeEach(() => {
    jest.spyOn(global.Math, 'random').mockReturnValueOnce(0.9999999999)
  })

  test('value when given an argument', () => {
    expect(randomInt(10000)).toBe(10000)
  })

  test('value when using default', () => {
    expect(randomInt()).toBe(100)
  })
})

describe('least possible random value', () => {
  beforeEach(() => {
    jest.spyOn(global.Math, 'random').mockReturnValueOnce(0)
  })

  test('value when given an argument', () => {
    expect(randomInt(10000)).toBe(0)
  })
})
