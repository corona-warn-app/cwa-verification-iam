<#import "template.ftl" as layout>
<@layout.mainLayout active='password' bodyClass='password'; section>

<div class="text-big" style="top: 260px;">${msg("changePasswordHtmlTitle")}</div>
<form action="${url.passwordUrl}" class="form-horizontal" method="post">
  <input type="text" id="username" name="username" value="${(account.username!'')}" autocomplete="username" readonly="readonly" style="display:none;">
  <#if password.passwordSet>
    <input class="input" style="top: 370px;" type="password"  id="password" name="password" placeholder="${msg('password')}" autofocus autocomplete="off" required>
  </#if>
  <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
  <input class="input" style="top: 430px;" type="password" id="password-new" name="password-new" placeholder="${msg('passwordNew')}" autocomplete="off" required>
  <input type="password" class="input" style="top: 490px;" id="password-confirm" name="password-confirm" placeholder="${msg('passwordConfirm')}" autocomplete="off" required>
  <button type="submit" class="button"  style="top: 550px;" name="submitAction" value="Save">${msg("doSave")}</button>
</form>
</@layout.mainLayout>
