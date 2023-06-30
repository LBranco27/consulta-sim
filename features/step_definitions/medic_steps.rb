Given('Open the medic {string} page') do |string|
  @medic = Medic.new(name: 'testname1', cpf: '32564512354', email: 'asdasd@dsadsa.com', speciality: "super", crm: "12312")
  @medic.save
  @medic2 = Medic.new(name: 'ahsdhwakihd', cpf: '32562542654', email: 'asasddasd@dsadsa.com', speciality: "super", crm: "1412413")
  @medic2.save
  @medic3 = Medic.new(name: 'ahsdhwakisdaadasdhd', cpf: '62562542654', email: 'asa@dsadsa.com', speciality: "super", crm: "123213")
  @medic3.save
  @medic4 = Medic.new(name: 'ahsdsdsadhwakihd', cpf: '32582542654', email: 'asd@dsadsa.com', speciality: "super", crm: "1234214")
  @medic4.save
  visit medics_path
end

Then('I see every medic name in the system') do
  assert_text(@medic.name, normalize_ws: true)
  assert_text(@medic2.name, normalize_ws: true)
  assert_text(@medic3.name, normalize_ws: true)
  assert_text(@medic4.name, normalize_ws: true)
end

Given('Open the medic page') do
  @medic = Medic.new(name: 'testname1', cpf: '32564512354', email: 'asdasd@dsadsa.com', speciality: "super", crm: "12312")
  @medic.save
  visit medic_path(@medic)
end

When('I click on the {string} link') do |string|
  click_on string
end

Then('I see that i can edit medic') do
  #texto presente em toda pagina de editar medico
  assert_text("Editar Médico")
end
