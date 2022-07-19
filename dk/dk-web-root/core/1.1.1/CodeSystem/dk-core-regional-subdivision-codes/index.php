<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://hl7.dk/fhir/core/1.1.1/CodeSystem-dk-core-regional-subdivision-codes.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://hl7.dk/fhir/core/1.1.1/CodeSystem-dk-core-regional-subdivision-codes.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://hl7.dk/fhir/core/1.1.1/CodeSystem-dk-core-regional-subdivision-codes.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://hl7.dk/fhir/core/1.1.1/CodeSystem-dk-core-regional-subdivision-codes.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://hl7.dk/fhir/core/1.1.1/CodeSystem-dk-core-regional-subdivision-codes.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://hl7.dk/fhir/core/1.1.1/CodeSystem-dk-core-regional-subdivision-codes.html');
else 
  Redirect('http://hl7.dk/fhir/core/1.1.1/CodeSystem-dk-core-regional-subdivision-codes.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
