<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Security-Policy"
        content="default-src 'self'; style-src 'self' 'unsafe-inline'; img-src 'self'"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="${url.resourcesPath}/quicktest.css"/>
  <title>Schnelltestportal</title>
  <link rel="icon" href="${url.resourcesPath}/img/c-19_logo.png">
</head>
<body>
<div class="footer">
  <p class="footer-font footer-imprint"><a href="${url.resourcesPath}/imprint.html" target="_blank">Impressum</a></p>
  <img class="footer-dp-logo" src="${url.resourcesPath}/img/data_protect.png">
  <p class="footer-font footer-dp"><a href="${url.resourcesPath}/dataprivacy.html" target="_blank">Datenschutz</a></p>
</div>
<div class="header">
  <table class="c19-logo">
    <tr>
      <td style="width: 1px;"><img src="${url.resourcesPath}/img/c-19_logo.png"></td>
      <td>Schnelltestportal</td>
    </tr>
  </table>
</div>

<!-- BEGIN page specific content  -->
<div class="text-bold" style="top: 160px;">
    ${message.summary}
    <#if requiredActions??>:
  <#else>
  </#if>
</div>
<div class="text-bold" style="top: 200px;">
    <#if requiredActions??>
        <#list requiredActions>
          <b><#items as reqActionItem>${msg("requiredAction.${reqActionItem}")}<#sep>, </#items></b></#list>
    <#else>
    </#if>
</div>
<div class="text-bold" style="top: 250px">
    <#if skipLink??>
    <#else>
        <#if pageRedirectUri?has_content>
          <p><a href="${pageRedirectUri}">${kcSanitize(msg("backToApplication"))?no_esc}</a></p>
        <#elseif actionUri?has_content>
          <p><a href="${actionUri}">${kcSanitize(msg("proceedWithAction"))?no_esc}</a></p>
        <#elseif (client.baseUrl)?has_content>
          <p><a href="${client.baseUrl}">${kcSanitize(msg("backToApplication"))?no_esc}</a></p>
        </#if>
    </#if>
</div>


<!-- END page specific content -->
</body>
</html>
