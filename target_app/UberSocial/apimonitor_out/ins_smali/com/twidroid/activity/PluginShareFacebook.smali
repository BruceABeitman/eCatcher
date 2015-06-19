.class public Lcom/twidroid/activity/PluginShareFacebook;
.super Landroid/app/Activity;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/twidroid/activity/PluginShareFacebook; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const-string v1, ""
const-string v0, ""
invoke-virtual {p0}, Lcom/twidroid/activity/PluginShareFacebook;->getIntent()Landroid/content/Intent;
move-result-object v2
const-string v3, "uri"
invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_19
const-string v0, "uri"
invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_19
const-string v3, "android.intent.extra.TEXT"
invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_27
const-string v1, "android.intent.extra.TEXT"
invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:cond_27
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "http://m.facebook.com/sharer.php?u="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "&ui_type=s&t="
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v0, 0x1000
invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
const-string v0, "com.android.browser.application_id"
invoke-virtual {p0}, Lcom/twidroid/activity/PluginShareFacebook;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v1}, Lcom/twidroid/activity/PluginShareFacebook;->startActivity(Landroid/content/Intent;)V
sget-object v0, Lcom/twidroid/y;->s:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/twidroid/net/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)V
const-string v0, "tweet/sharefacebook"
invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/activity/PluginShareFacebook;->finish()V
const-string v1, " - Lcom/twidroid/activity/PluginShareFacebook; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method