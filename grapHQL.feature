@graphQLTEST
  Feature: plan de pruebas asociado a query graphQL
    Scenario: caso de prueba query
      Given url 'https://rickandmortyapi.com/graphql'
      When text query =
      """
      query {
  character(id:2)
  {name,
  status,
  species
  gender}
}
      """
      And request {query : '#(query)'}
      And method POST
      And match response.data.character.gender == 'Male'
      Then status 200
