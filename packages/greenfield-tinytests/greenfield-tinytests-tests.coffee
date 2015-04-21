# coffeescript does not seem to work with Tiny Test

Tinytest.add 'animals are inside the canvas', (test) ->
  canvas = document.getElementById('canvas')
  console.log 'canvas', canvas
  cursor = Animals.find()
  cursor.map (animalData) ->
    test.isTrue animal.x >= 0
    test.isTrue animal.x <= canvas.width
    test.isTrue animal.y >= 0
    test.isTrue animal.y <= canvas.height
    return
  return
# false test to check that tests properly fail
Tinytest.add 'animals are outside the canvas', (test) ->
  canvas = document.getElementById('canvas')
  console.log 'canvas', canvas
  cursor = Animals.find()
  cursor.map (animalData) ->
    test.isFalse animal.x >= 0
    test.isFalse animal.x <= canvas.width
    test.isFalse animal.y >= 0
    test.isFalse animal.y <= canvas.height
    return
  return

# ---
# generated by js2coffee 2.0.3