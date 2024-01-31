@soapRequest
  Feature: plan de prueba orientado a las consultas del tipo soap
    Scenario: caso de prueba tipo POST
      Given url 'https://www.dataaccess.com/webservicesserver/NumberConversion.wso'
      When header 'content-type' = 'text/xml'
      And request
      """
     <?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
  <soap:Body>
    <NumberToWords xmlns="https://www.dataaccess.com/webservicesserver/">
      <ubiNum>500</ubiNum>
    </NumberToWords>
  </soap:Body>
</soap:Envelope>
      """
      And method POST
      And match response/Envelope/Body/NumberToWords/ubiNum == 'five hundred'
      Then status 200