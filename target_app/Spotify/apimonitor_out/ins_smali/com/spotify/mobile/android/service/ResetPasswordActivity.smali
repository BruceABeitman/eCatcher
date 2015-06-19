.class public Lcom/spotify/mobile/android/service/ResetPasswordActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.field  n:Lcom/spotify/mobile/android/ui/fragments/x;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;)Landroid/content/Intent;
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/mobile/android/service/ResetPasswordActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x2000
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
return-object v0
.end method
.method public onBackPressed()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/ResetPasswordActivity;->n:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/x;->D()Z
move-result v0
if-nez v0, :cond_b
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onBackPressed()V
:cond_b
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/spotify/mobile/android/service/ResetPasswordActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030027
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/ResetPasswordActivity;->setContentView(I)V
const v0, 0x7f0a0223
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/ResetPasswordActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/service/ResetPasswordActivity$1;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/ResetPasswordActivity$1;-><init>(Lcom/spotify/mobile/android/service/ResetPasswordActivity;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v0, Lcom/spotify/mobile/android/service/ad;
invoke-direct {v0}, Lcom/spotify/mobile/android/service/ad;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/service/ResetPasswordActivity;->n:Lcom/spotify/mobile/android/ui/fragments/x;
if-nez p1, :cond_35
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/ResetPasswordActivity;->y_()Landroid/support/v4/app/r;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;
move-result-object v0
const v1, 0x7f0a0235
iget-object v2, p0, Lcom/spotify/mobile/android/service/ResetPasswordActivity;->n:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I
:cond_35
const-string v1, " - Lcom/spotify/mobile/android/service/ResetPasswordActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/spotify/mobile/android/service/ResetPasswordActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "saveDummyState"
const/4 v1, 0x1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v1, " - Lcom/spotify/mobile/android/service/ResetPasswordActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method