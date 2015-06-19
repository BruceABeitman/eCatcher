.class public Lcom/tencent/connect/common/AssistActivity;
.super Landroid/app/Activity;
.source "ProGuard"
.field private static final RESTART_FLAG:Ljava/lang/String; = "RESTART_FLAG"
.field private static final TAG:Ljava/lang/String; = "Donald"
.field private static sApiObject:Lcom/tencent/connect/common/BaseApi;
.field private mAPiObject:Lcom/tencent/connect/common/BaseApi;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method public static getAssistActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/tencent/connect/common/AssistActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
return-object v0
.end method
.method public static setApiObject(Lcom/tencent/connect/common/BaseApi;)V
.registers 1
sput-object p0, Lcom/tencent/connect/common/AssistActivity;->sApiObject:Lcom/tencent/connect/common/BaseApi;
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 6
const-string/jumbo v0, "Donald"
const-string/jumbo v1, "AssistActivity--onActivityResult--"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V
iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->mAPiObject:Lcom/tencent/connect/common/BaseApi;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->mAPiObject:Lcom/tencent/connect/common/BaseApi;
invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/common/BaseApi;->onActivityResult(IILandroid/content/Intent;)V
:cond_15
invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/tencent/connect/common/AssistActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const/4 v1, 0x1
invoke-virtual {p0, v1}, Lcom/tencent/connect/common/AssistActivity;->requestWindowFeature(I)Z
const-string/jumbo v1, "Donald"
const-string/jumbo v2, "AssistActivity--onCreate--"
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
sget-object v1, Lcom/tencent/connect/common/AssistActivity;->sApiObject:Lcom/tencent/connect/common/BaseApi;
if-nez v1, :cond_19
invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V
:goto_18
:cond_18
const-string v1, " - Lcom/tencent/connect/common/AssistActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_19
sget-object v1, Lcom/tencent/connect/common/AssistActivity;->sApiObject:Lcom/tencent/connect/common/BaseApi;
iput-object v1, p0, Lcom/tencent/connect/common/AssistActivity;->mAPiObject:Lcom/tencent/connect/common/BaseApi;
const/4 v1, 0x0
sput-object v1, Lcom/tencent/connect/common/AssistActivity;->sApiObject:Lcom/tencent/connect/common/BaseApi;
iget-object v1, p0, Lcom/tencent/connect/common/AssistActivity;->mAPiObject:Lcom/tencent/connect/common/BaseApi;
invoke-virtual {v1}, Lcom/tencent/connect/common/BaseApi;->getActivityIntent()Landroid/content/Intent;
move-result-object v1
const-string/jumbo v2, "key_request_code"
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
if-eqz p1, :cond_36
const-string/jumbo v0, "RESTART_FLAG"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
:cond_36
if-nez v0, :cond_18
iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->mAPiObject:Lcom/tencent/connect/common/BaseApi;
invoke-virtual {v0}, Lcom/tencent/connect/common/BaseApi;->getActivityIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0, v1}, Lcom/tencent/connect/common/AssistActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_18
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/tencent/connect/common/AssistActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string/jumbo v0, "Donald"
const-string/jumbo v1, "AssistActivity--onSaveInstanceState--"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string/jumbo v0, "RESTART_FLAG"
const/4 v1, 0x1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v1, " - Lcom/tencent/connect/common/AssistActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method