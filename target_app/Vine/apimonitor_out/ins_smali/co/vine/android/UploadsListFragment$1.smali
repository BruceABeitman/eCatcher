.class  Lco/vine/android/UploadsListFragment$1;
.super Ljava/lang/Object;
.source "UploadsListFragment.java"
.implements Landroid/content/ServiceConnection;
.field final synthetic this$0:Lco/vine/android/UploadsListFragment;
.method constructor <init>(Lco/vine/android/UploadsListFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/UploadsListFragment$1;->this$0:Lco/vine/android/UploadsListFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/UploadsListFragment$1; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x1
const-string v1, "UploadsListFragment"
const-string v2, "Bind VineUploadService successful!"
invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lco/vine/android/UploadsListFragment$1;->this$0:Lco/vine/android/UploadsListFragment;
new-instance v2, Landroid/os/Messenger;
invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
#setter for: Lco/vine/android/UploadsListFragment;->mServiceMessenger:Landroid/os/Messenger;
invoke-static {v1, v2}, Lco/vine/android/UploadsListFragment;->access$102(Lco/vine/android/UploadsListFragment;Landroid/os/Messenger;)Landroid/os/Messenger;
iget-object v1, p0, Lco/vine/android/UploadsListFragment$1;->this$0:Lco/vine/android/UploadsListFragment;
#setter for: Lco/vine/android/UploadsListFragment;->mBound:Z
invoke-static {v1, v3}, Lco/vine/android/UploadsListFragment;->access$202(Lco/vine/android/UploadsListFragment;Z)Z
const/4 v1, 0x0
invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v0
iget-object v1, p0, Lco/vine/android/UploadsListFragment$1;->this$0:Lco/vine/android/UploadsListFragment;
#getter for: Lco/vine/android/UploadsListFragment;->mIncomingMessenger:Landroid/os/Messenger;
invoke-static {v1}, Lco/vine/android/UploadsListFragment;->access$300(Lco/vine/android/UploadsListFragment;)Landroid/os/Messenger;
move-result-object v1
iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
iget-object v1, p0, Lco/vine/android/UploadsListFragment$1;->this$0:Lco/vine/android/UploadsListFragment;
#calls: Lco/vine/android/UploadsListFragment;->sendMessage(Landroid/os/Message;)V
invoke-static {v1, v0}, Lco/vine/android/UploadsListFragment;->access$400(Lco/vine/android/UploadsListFragment;Landroid/os/Message;)V
const-string v1, " - Lco/vine/android/UploadsListFragment$1; onServiceConnected"
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
const-string v0, " + Lco/vine/android/UploadsListFragment$1; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "UploadsListFragment"
const-string v1, "Connection to VineUploadService lost unexpectedly!"
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/UploadsListFragment$1;->this$0:Lco/vine/android/UploadsListFragment;
const/4 v1, 0x0
#setter for: Lco/vine/android/UploadsListFragment;->mServiceMessenger:Landroid/os/Messenger;
invoke-static {v0, v1}, Lco/vine/android/UploadsListFragment;->access$102(Lco/vine/android/UploadsListFragment;Landroid/os/Messenger;)Landroid/os/Messenger;
iget-object v0, p0, Lco/vine/android/UploadsListFragment$1;->this$0:Lco/vine/android/UploadsListFragment;
const/4 v1, 0x0
#setter for: Lco/vine/android/UploadsListFragment;->mBound:Z
invoke-static {v0, v1}, Lco/vine/android/UploadsListFragment;->access$202(Lco/vine/android/UploadsListFragment;Z)Z
const-string v1, " - Lco/vine/android/UploadsListFragment$1; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method