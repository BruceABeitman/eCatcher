.class  Lco/vine/android/service/GCMNotificationService$1;
.super Ljava/lang/Object;
.source "GCMNotificationService.java"
.implements Landroid/content/ServiceConnection;
.field final synthetic this$0:Lco/vine/android/service/GCMNotificationService;
.method constructor <init>(Lco/vine/android/service/GCMNotificationService;)V
.registers 2
iput-object p1, p0, Lco/vine/android/service/GCMNotificationService$1;->this$0:Lco/vine/android/service/GCMNotificationService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/service/GCMNotificationService$1; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/service/GCMNotificationService$1;->this$0:Lco/vine/android/service/GCMNotificationService;
new-instance v1, Landroid/os/Messenger;
invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
#setter for: Lco/vine/android/service/GCMNotificationService;->mCameraMessenger:Landroid/os/Messenger;
invoke-static {v0, v1}, Lco/vine/android/service/GCMNotificationService;->access$002(Lco/vine/android/service/GCMNotificationService;Landroid/os/Messenger;)Landroid/os/Messenger;
iget-object v0, p0, Lco/vine/android/service/GCMNotificationService$1;->this$0:Lco/vine/android/service/GCMNotificationService;
const/4 v1, 0x1
#setter for: Lco/vine/android/service/GCMNotificationService;->mIsCameraServiceConnected:Z
invoke-static {v0, v1}, Lco/vine/android/service/GCMNotificationService;->access$102(Lco/vine/android/service/GCMNotificationService;Z)Z
const-string v1, " - Lco/vine/android/service/GCMNotificationService$1; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/service/GCMNotificationService$1; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/service/GCMNotificationService$1;->this$0:Lco/vine/android/service/GCMNotificationService;
const/4 v1, 0x0
#setter for: Lco/vine/android/service/GCMNotificationService;->mCameraMessenger:Landroid/os/Messenger;
invoke-static {v0, v1}, Lco/vine/android/service/GCMNotificationService;->access$002(Lco/vine/android/service/GCMNotificationService;Landroid/os/Messenger;)Landroid/os/Messenger;
iget-object v0, p0, Lco/vine/android/service/GCMNotificationService$1;->this$0:Lco/vine/android/service/GCMNotificationService;
const/4 v1, 0x0
#setter for: Lco/vine/android/service/GCMNotificationService;->mIsCameraServiceConnected:Z
invoke-static {v0, v1}, Lco/vine/android/service/GCMNotificationService;->access$102(Lco/vine/android/service/GCMNotificationService;Z)Z
const-string v1, " - Lco/vine/android/service/GCMNotificationService$1; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method