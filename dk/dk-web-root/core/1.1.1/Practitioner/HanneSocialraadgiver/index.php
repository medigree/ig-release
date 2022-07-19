<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://hl7.dk/fhir/core/1.1.1/Practitioner-HanneSocialraadgiver.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://hl7.dk/fhir/core/1.1.1/Practitioner-HanneSocialraadgiver.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://hl7.dk/fhir/core/1.1.1/Practitioner-HanneSocialraadgiver.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://hl7.dk/fhir/core/1.1.1/Practitioner-HanneSocialraadgiver.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://hl7.dk/fhir/core/1.1.1/Practitioner-HanneSocialraadgiver.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://hl7.dk/fhir/core/1.1.1/Practitioner-HanneSocialraadgiver.html');
else 
  Redirect('http://hl7.dk/fhir/core/1.1.1/Practitioner-HanneSocialraadgiver.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
