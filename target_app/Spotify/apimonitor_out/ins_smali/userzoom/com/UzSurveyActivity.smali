.class public Luserzoom/com/UzSurveyActivity;
.super Landroid/app/Activity;
.field public a:Z
.field private final b:Landroid/os/Handler;
.field private c:Landroid/webkit/WebView;
.field private d:Ljava/lang/String;
.field private e:Landroid/content/Context;
.field private f:Z
.field private g:Landroid/os/Handler;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Luserzoom/com/UzSurveyActivity;->b:Landroid/os/Handler;
iput-boolean v1, p0, Luserzoom/com/UzSurveyActivity;->f:Z
iput-boolean v1, p0, Luserzoom/com/UzSurveyActivity;->a:Z
new-instance v0, Lcom/userzoom/bu;
invoke-direct {v0, p0}, Lcom/userzoom/bu;-><init>(Luserzoom/com/UzSurveyActivity;)V
iput-object v0, p0, Luserzoom/com/UzSurveyActivity;->g:Landroid/os/Handler;
return-void
.end method
.method public static synthetic a(Luserzoom/com/UzSurveyActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Luserzoom/com/UzSurveyActivity;->g:Landroid/os/Handler;
return-object v0
.end method
.method public static synthetic a(Luserzoom/com/UzSurveyActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Luserzoom/com/UzSurveyActivity;->d:Ljava/lang/String;
return-object p1
.end method
.method public static synthetic b(Luserzoom/com/UzSurveyActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Luserzoom/com/UzSurveyActivity;->d:Ljava/lang/String;
return-object v0
.end method
.method public static synthetic b(Luserzoom/com/UzSurveyActivity;Ljava/lang/String;)V
.registers 5
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const-string v1, ""
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_22
const v1, 0x1040007
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
:goto_13
const v1, 0x1040013
new-instance v2, Lcom/userzoom/bt;
invoke-direct {v2, p0}, Lcom/userzoom/bt;-><init>(Luserzoom/com/UzSurveyActivity;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
return-void
:cond_22
invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
goto :goto_13
.end method
.method public static synthetic c(Luserzoom/com/UzSurveyActivity;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Luserzoom/com/UzSurveyActivity;->f:Z
return v0
.end method
.method public static synthetic d(Luserzoom/com/UzSurveyActivity;)Landroid/webkit/WebView;
.registers 2
iget-object v0, p0, Luserzoom/com/UzSurveyActivity;->c:Landroid/webkit/WebView;
return-object v0
.end method
.method public static synthetic e(Luserzoom/com/UzSurveyActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Luserzoom/com/UzSurveyActivity;->b:Landroid/os/Handler;
return-object v0
.end method
.method public static synthetic f(Luserzoom/com/UzSurveyActivity;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Luserzoom/com/UzSurveyActivity;->e:Landroid/content/Context;
return-object v0
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 4
invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
const-string v0, "UzSurveyActivity"
const-string v1, "Changing orientation"
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Luserzoom/com/UzSurveyActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, -0x1
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
iput-object p0, p0, Luserzoom/com/UzSurveyActivity;->e:Landroid/content/Context;
invoke-virtual {p0}, Luserzoom/com/UzSurveyActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "MY_URL"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "IS_PRESURVEY"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_23
invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;
move-result-object v3
invoke-virtual {v3}, Luserzoom/com/a;->e()V
:cond_23
if-nez v2, :cond_54
const-string v2, "HIDE_HOST"
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_54
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
const-string v2, "UzSurveyActivity"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "going to survey: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Lcom/userzoom/z;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {p0, v1}, Luserzoom/com/UzSurveyActivity;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p0}, Luserzoom/com/UzSurveyActivity;->finish()V
:goto_53
const-string v1, " - Luserzoom/com/UzSurveyActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_54
const-string v0, "UzSurveyActivity"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Extras bundle: *"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "*"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/webkit/WebView;
invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Luserzoom/com/UzSurveyActivity;->c:Landroid/webkit/WebView;
iget-object v0, p0, Luserzoom/com/UzSurveyActivity;->c:Landroid/webkit/WebView;
new-instance v2, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;
move-result-object v0
iget-object v2, p0, Luserzoom/com/UzSurveyActivity;->c:Landroid/webkit/WebView;
invoke-virtual {v0, v2}, Luserzoom/com/a;->a(Landroid/webkit/WebView;)Landroid/view/ViewGroup;
move-result-object v0
invoke-virtual {p0, v0}, Luserzoom/com/UzSurveyActivity;->setContentView(Landroid/view/View;)V
iget-object v0, p0, Luserzoom/com/UzSurveyActivity;->c:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " Android Safari UZLIB"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
iget-object v0, p0, Luserzoom/com/UzSurveyActivity;->c:Landroid/webkit/WebView;
new-instance v2, Lcom/userzoom/br;
invoke-direct {v2}, Lcom/userzoom/br;-><init>()V
invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
new-instance v0, Lcom/userzoom/bw;
iget-object v2, p0, Luserzoom/com/UzSurveyActivity;->c:Landroid/webkit/WebView;
invoke-direct {v0, p0, p0}, Lcom/userzoom/bw;-><init>(Luserzoom/com/UzSurveyActivity;Landroid/content/Context;)V
iget-object v2, p0, Luserzoom/com/UzSurveyActivity;->c:Landroid/webkit/WebView;
const-string v3, "Android"
invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
iget-object v2, p0, Luserzoom/com/UzSurveyActivity;->c:Landroid/webkit/WebView;
new-instance v3, Lcom/userzoom/bs;
invoke-direct {v3, p0, v0}, Lcom/userzoom/bs;-><init>(Luserzoom/com/UzSurveyActivity;Lcom/userzoom/bw;)V
invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
const-string v0, "UzSurveyActivity"
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Luserzoom/com/UzSurveyActivity;->c:Landroid/webkit/WebView;
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
goto/16 :goto_53
.end method
.method protected onDestroy()V
.registers 4
const-string v1, " + Luserzoom/com/UzSurveyActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Luserzoom/com/UzSurveyActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "IS_PRESURVEY"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_1c
iget-boolean v0, p0, Luserzoom/com/UzSurveyActivity;->f:Z
if-nez v0, :cond_1c
invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;
move-result-object v0
invoke-virtual {v0}, Luserzoom/com/a;->e()V
:cond_1c
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
const-string v1, " - Luserzoom/com/UzSurveyActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 6
const-string v0, "UzSurveyActivity"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "onKeyDown event with keyCode "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->gc()V
const/4 v0, 0x4
if-ne p1, v0, :cond_55
:try_start_1a
new-instance v0, Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Luserzoom/com/UzSurveyActivity;->c:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v1, 0x1080027
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const-string v1, "Exit"
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const-string v1, "Are you sure you want to leave?"
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const/high16 v1, 0x104
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x104000a
new-instance v2, Lcom/userzoom/bv;
invoke-direct {v2, p0}, Lcom/userzoom/bv;-><init>(Luserzoom/com/UzSurveyActivity;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
:goto_4e
:try_end_4e
.catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4e} :catch_50
const/4 v0, 0x1
:goto_4f
return v0
:catch_50
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_4e
:cond_55
invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_4f
.end method
.method public onStart()V
.registers 3
const-string v1, " + Luserzoom/com/UzSurveyActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Luserzoom/com/a;->a(Ljava/lang/String;)V
const-string v0, "UzSurveyActivity"
const-string v1, "ArticlesList onStart"
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStart()V
const-string v1, " - Luserzoom/com/UzSurveyActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Luserzoom/com/UzSurveyActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Luserzoom/com/a;->b(Ljava/lang/String;)V
const-string v0, "UzSurveyActivity"
const-string v1, "ArticlesList onStop"
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStop()V
const-string v1, " - Luserzoom/com/UzSurveyActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method