.class public Lcom/twidroid/activity/OpenSourceLicenses;
.super Landroid/app/Activity;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/activity/OpenSourceLicenses; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03006e
invoke-virtual {p0, v0}, Lcom/twidroid/activity/OpenSourceLicenses;->setContentView(I)V
const v0, 0x7f0c0212
invoke-virtual {p0, v0}, Lcom/twidroid/activity/OpenSourceLicenses;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/activity/OpenSourceLicenses;->setTitle(Ljava/lang/CharSequence;)V
const-string v1, " - Lcom/twidroid/activity/OpenSourceLicenses; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method