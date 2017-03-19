require 'test_helper'

class ProfesoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profesore = profesores(:one)
  end

  test "should get index" do
    get profesores_url
    assert_response :success
  end

  test "should get new" do
    get new_profesore_url
    assert_response :success
  end

  test "should create profesore" do
    assert_difference('Profesore.count') do
      post profesores_url, params: { profesore: { disciplina: @profesore.disciplina, fecha_nac: @profesore.fecha_nac, nombre: @profesore.nombre, titulo: @profesore.titulo } }
    end

    assert_redirected_to profesore_url(Profesore.last)
  end

  test "should show profesore" do
    get profesore_url(@profesore)
    assert_response :success
  end

  test "should get edit" do
    get edit_profesore_url(@profesore)
    assert_response :success
  end

  test "should update profesore" do
    patch profesore_url(@profesore), params: { profesore: { disciplina: @profesore.disciplina, fecha_nac: @profesore.fecha_nac, nombre: @profesore.nombre, titulo: @profesore.titulo } }
    assert_redirected_to profesore_url(@profesore)
  end

  test "should destroy profesore" do
    assert_difference('Profesore.count', -1) do
      delete profesore_url(@profesore)
    end

    assert_redirected_to profesores_url
  end
end
