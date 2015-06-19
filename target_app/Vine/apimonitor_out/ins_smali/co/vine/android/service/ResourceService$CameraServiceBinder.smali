.class public Lco/vine/android/service/ResourceService$CameraServiceBinder;
.super Landroid/os/Handler;
.source "ResourceService.java"
.field final synthetic this$0:Lco/vine/android/service/ResourceService;
.method public constructor <init>(Lco/vine/android/service/ResourceService;)V
.registers 2
iput-object p1, p0, Lco/vine/android/service/ResourceService$CameraServiceBinder;->this$0:Lco/vine/android/service/ResourceService;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 6
iget v1, p1, Landroid/os/Message;->what:I
packed-switch v1, :pswitch_data_3c
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid request: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p1, Landroid/os/Message;->what:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
:goto_1d
return-void
:pswitch_1e
new-instance v0, Landroid/content/Intent;
sget-boolean v1, Lco/vine/android/service/ResourceService;->isConversationActive:Z
if-eqz v1, :cond_38
const-string v1, "co.vine.android.camera.request.conversation.state.on"
:goto_26
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "co.vine.android.camera.request.conversation.state.id"
sget-wide v2, Lco/vine/android/service/ResourceService;->lastActiveconversationRowId:J
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
iget-object v1, p0, Lco/vine/android/service/ResourceService$CameraServiceBinder;->this$0:Lco/vine/android/service/ResourceService;
const-string v2, "co.vine.android.BROADCAST"
invoke-virtual {v1, v0, v2}, Lco/vine/android/service/ResourceService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
goto :goto_1d
:cond_38
const-string v1, "co.vine.android.camera.request.conversation.state.off"
goto :goto_26
nop
:pswitch_data_3c
.packed-switch 0x65
:pswitch_1e
.end packed-switch
.end method