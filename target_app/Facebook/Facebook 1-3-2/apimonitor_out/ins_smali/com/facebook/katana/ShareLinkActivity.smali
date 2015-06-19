.class public Lcom/facebook/katana/ShareLinkActivity;
.super Landroid/app/Activity;
.source "ShareLinkActivity.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/facebook/katana/ShareLinkActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const-string v3, "android.intent.action.SEND"
invoke-virtual {p0}, Lcom/facebook/katana/ShareLinkActivity;->getIntent()Landroid/content/Intent;
move-result-object v4
invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_41
invoke-virtual {p0}, Lcom/facebook/katana/ShareLinkActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v3
const-string v4, "android.intent.extra.TEXT"
invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_41
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
if-eqz v0, :cond_45
:try_start_29
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "http://m.facebook.com/sharer.php?u="
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v4, "UTF-8"
invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, p0, v2}, Lcom/facebook/katana/binding/AppSession;->openURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
:goto_41
:try_end_41
.catch Ljava/io/UnsupportedEncodingException; {:try_start_29 .. :try_end_41} :catch_49
:cond_41
invoke-virtual {p0}, Lcom/facebook/katana/ShareLinkActivity;->finish()V
const-string v1, " - Lcom/facebook/katana/ShareLinkActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_45
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
goto :goto_41
:catch_49
move-exception v3
goto :goto_41
.end method