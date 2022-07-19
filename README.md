The location of the folders is relative to the setup and URL you want to give to your publications
For example in the BE folder, the file `fhir/publish.ini` contains `url=http://hl7belgium.org/profiles/fhir`.
* This means that the folder `fhir` is expected to be in the folder `profiles`in the website root, so that the URL resolves.
* It also means that the canonicals in the resources and IGs are expected to be `http://hl7belgium.org/profiles/fhir/...`

