// generate a bicep script to create an app service
func (g *Generator) GenerateAppServiceScript() (string, error) {
  // get the template
  tmpl, err := template.New("appService").Parse(appServiceTemplate)
  if err != nil {
    return "", err
  }

  // generate the script
  var script bytes.Buffer
  err = tmpl.Execute(&script, g)
  if err != nil {
    return "", err
  }

  return script.String(), nil
}

// generate a test script to validate the app service
func (g *Generator) GenerateAppServiceTestScript() (string, error) {
  // get the template
  tmpl, err := template.New("appServiceTest").Parse(appServiceTestTemplate)
  if err != nil {
    return "", err
  }

  // generate the script
  var script bytes.Buffer
  err = tmpl.Execute(&script, g)
  if err != nil {
    return "", err
  }

  return script.String(), nil
}
