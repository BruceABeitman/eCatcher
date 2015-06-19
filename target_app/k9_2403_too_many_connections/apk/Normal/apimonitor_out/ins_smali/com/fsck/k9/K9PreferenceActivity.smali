.class public Lcom/fsck/k9/K9PreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "K9PreferenceActivity.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/fsck/k9/K9PreferenceActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/fsck/k9/K9;->getK9Theme()I
move-result v0
invoke-virtual {p0, v0}, Lcom/fsck/k9/K9PreferenceActivity;->setTheme(I)V
invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
const-string v1, " - Lcom/fsck/k9/K9PreferenceActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method