test "pepita tiene inicialmente 100 unidades de energía" {
  assert.equals(pepita.toString().contains("energia=100"))
}

test "pepita pierde 20 unidades de energía cuando vuela en circulos" {
  pepita.volarEnCirculos()
  assert.equals(pepita.toString().contains("energia=80"))
  
}

test "pepita gana 10 unidades de energía cuando come una lombriz" {
  pepita.comerLombriz()
  assert.equals(pepita.toString().contains("energia=110"))
}