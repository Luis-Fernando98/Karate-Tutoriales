@token
  Feature: getToken
    @grtToken
    Scenario: obtener token para consumir
      * configure connectTimeout = 120000
      * configure readTimeout = 120000
      * url 'https://seguridad.test.atu.cl'
      * header 'content-type' = 'Application/www.form-urlencode'
      * form field grand_type = 'password'
      * form field client_id = 'id'
      * form field client_secret = 'secret'
      * form field username = 'user'
      * form field password = 'password'
      * method POST
      * status 200
      * match responseType == 'json'