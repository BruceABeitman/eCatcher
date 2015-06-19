.class public Lco/vine/android/CaptchaActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "CaptchaActivity.java"
.field public static final CAPTCHA_CANCELED:I = 0x2
.field private static final CAPTCHA_COMPLETE:Ljava/lang/String; = "_captcha_complete"
.field private mReqId:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V
return-void
.end method
.method static synthetic access$000(Lco/vine/android/CaptchaActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/CaptchaActivity;->mReqId:Ljava/lang/String;
return-object v0
.end method
.method private cancelCaptcha()V
.registers 4
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "rid"
iget-object v2, p0, Lco/vine/android/CaptchaActivity;->mReqId:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const/4 v1, 0x2
invoke-virtual {p0, v1, v0}, Lco/vine/android/CaptchaActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lco/vine/android/CaptchaActivity;->finish()V
return-void
.end method
.method public static getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
.registers 5
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/CaptchaActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "captcha_url"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "rid"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
return-object v0
.end method
.method public onBackPressed()V
.registers 1
invoke-direct {p0}, Lco/vine/android/CaptchaActivity;->cancelCaptcha()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lco/vine/android/CaptchaActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v3, 0x7f0300a9
const/4 v4, 0x0
invoke-super {p0, p1, v3, v4}, Lco/vine/android/BaseControllerActionBarActivity;->onCreate(Landroid/os/Bundle;IZ)V
invoke-virtual {p0}, Lco/vine/android/CaptchaActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const v3, 0x7f0a00e1
invoke-virtual {p0, v3}, Lco/vine/android/CaptchaActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/webkit/WebView;
const-string v3, "rid"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lco/vine/android/CaptchaActivity;->mReqId:Ljava/lang/String;
const-string v3, "captcha_url"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v3
sget-object v4, Lco/vine/android/network/HttpOperation;->USER_AGENT_STRING:Ljava/lang/String;
invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
new-instance v3, Lco/vine/android/CaptchaActivity$1;
invoke-direct {v3, p0}, Lco/vine/android/CaptchaActivity$1;-><init>(Lco/vine/android/CaptchaActivity;)V
invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
const-string v1, " - Lco/vine/android/CaptchaActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/CaptchaActivity; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
const v1, 0x102002c
if-ne v0, v1, :cond_e
invoke-direct {p0}, Lco/vine/android/CaptchaActivity;->cancelCaptcha()V
const/4 v0, 0x1
:goto_d
move v2, v0
const-string v1, " - Lco/vine/android/CaptchaActivity; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method