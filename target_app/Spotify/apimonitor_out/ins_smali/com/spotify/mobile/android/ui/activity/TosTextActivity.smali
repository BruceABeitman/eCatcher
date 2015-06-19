.class public Lcom/spotify/mobile/android/ui/activity/TosTextActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.field private n:Ljava/lang/String;
.field private p:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
return-void
.end method
.method public onBackPressed()V
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->y_()Landroid/support/v4/app/r;
move-result-object v0
const v1, 0x7f0a023c
invoke-virtual {v0, v1}, Landroid/support/v4/app/r;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/q;
if-eqz v0, :cond_16
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/q;->D()Z
move-result v0
if-eqz v0, :cond_16
:goto_15
return-void
:cond_16
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onBackPressed()V
goto :goto_15
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/TosTextActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
const/4 v0, 0x0
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
const v2, 0x7f030029
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
const-string v3, "license_url"
invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->n:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
const-string v3, "log_external"
invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v2
iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->p:Z
if-eqz p1, :cond_35
const-string v2, "license_url"
invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->n:Ljava/lang/String;
const-string v2, "log_external"
invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v2
iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->p:Z
:cond_35
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->n:Ljava/lang/String;
if-nez v2, :cond_d4
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->p:Z
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;
move-result-object v1
const-string v2, "com.spotify.mobile.android.tos:spotify:internal:signup:tos"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_9d
const v1, 0x7f0f010b
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->n:Ljava/lang/String;
:goto_58
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->n:Ljava/lang/String;
const-string v1, "License url cannot be null."
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->n:Ljava/lang/String;
const-string v1, "License url cannot be empty."
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/CharSequence;Ljava/lang/String;)V
const v0, 0x7f0a023b
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/activity/TosTextActivity$1;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/TosTextActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/TosTextActivity;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
if-nez p1, :cond_8f
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->y_()Landroid/support/v4/app/r;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;
move-result-object v0
const v1, 0x7f0a023c
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->n:Ljava/lang/String;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/q;->b(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/q;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I
:cond_8f
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->p:Z
if-eqz v0, :cond_127
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->O:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
:goto_99
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->a(Lcom/spotify/mobile/android/util/dw;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/TosTextActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_9d
const-string v2, "com.spotify.mobile.android.tos:spotify:internal:signup:mobiletos"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_af
const v1, 0x7f0f0108
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->n:Ljava/lang/String;
goto :goto_58
:cond_af
const-string v2, "com.spotify.mobile.android.tos:spotify:internal:signup:policy"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_c1
const v1, 0x7f0f0109
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->n:Ljava/lang/String;
goto :goto_58
:cond_c1
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "License url not supported "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
goto :goto_58
:cond_d4
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->n:Ljava/lang/String;
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
const-string v3, "http"
invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_f2
const-string v3, "https"
invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_f3
:cond_f2
move v0, v1
:cond_f3
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "License url has invalid scheme: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->n:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v0
const-string v1, "spotify.com"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "License url has invalid host: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->n:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
goto/16 :goto_58
:cond_127
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->O:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
goto/16 :goto_99
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/TosTextActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "license_url"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->n:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "log_external"
iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/activity/TosTextActivity;->p:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/TosTextActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method