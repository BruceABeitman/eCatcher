.class public Lcom/spotify/mobile/android/service/LoginActivity;
.super Lcom/spotify/mobile/android/service/flow/FlowActivity;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
.registers 4
new-instance v0, Landroid/content/Intent;
const-string v1, "com.spotify.mobile.android.service.action.session.LOGIN"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-class v1, Lcom/spotify/mobile/android/service/LoginActivity;
invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
const-string v1, "intent"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
return-object v0
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/spotify/mobile/android/service/LoginActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03001b
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/LoginActivity;->setContentView(I)V
invoke-static {}, Lcom/spotify/mobile/android/service/flow/logic/f;->F()Lcom/spotify/mobile/android/service/flow/logic/f;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/LoginActivity;->a(Lcom/spotify/mobile/android/service/flow/logic/d;)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/LoginActivity;->setVisible(Z)V
const-string v1, " - Lcom/spotify/mobile/android/service/LoginActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onNewIntent(Landroid/content/Intent;)V
.registers 2
invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->onNewIntent(Landroid/content/Intent;)V
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/service/LoginActivity;->setIntent(Landroid/content/Intent;)V
return-void
.end method