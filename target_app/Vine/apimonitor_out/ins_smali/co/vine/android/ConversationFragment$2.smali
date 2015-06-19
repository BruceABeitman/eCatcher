.class  Lco/vine/android/ConversationFragment$2;
.super Ljava/lang/Object;
.source "ConversationFragment.java"
.implements Landroid/content/ServiceConnection;
.field final synthetic this$0:Lco/vine/android/ConversationFragment;
.method constructor <init>(Lco/vine/android/ConversationFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/ConversationFragment$2;->this$0:Lco/vine/android/ConversationFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/ConversationFragment$2; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "ConversationFrag"
const-string v1, "Bound to VineUploadService"
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/ConversationFragment$2;->this$0:Lco/vine/android/ConversationFragment;
new-instance v1, Landroid/os/Messenger;
invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
#setter for: Lco/vine/android/ConversationFragment;->mUploadServiceMessenger:Landroid/os/Messenger;
invoke-static {v0, v1}, Lco/vine/android/ConversationFragment;->access$102(Lco/vine/android/ConversationFragment;Landroid/os/Messenger;)Landroid/os/Messenger;
iget-object v0, p0, Lco/vine/android/ConversationFragment$2;->this$0:Lco/vine/android/ConversationFragment;
const/4 v1, 0x1
#setter for: Lco/vine/android/ConversationFragment;->mBound:Z
invoke-static {v0, v1}, Lco/vine/android/ConversationFragment;->access$202(Lco/vine/android/ConversationFragment;Z)Z
iget-object v0, p0, Lco/vine/android/ConversationFragment$2;->this$0:Lco/vine/android/ConversationFragment;
iget-object v1, p0, Lco/vine/android/ConversationFragment$2;->this$0:Lco/vine/android/ConversationFragment;
#getter for: Lco/vine/android/ConversationFragment;->mIncomingHandler:Landroid/os/Handler;
invoke-static {v1}, Lco/vine/android/ConversationFragment;->access$300(Lco/vine/android/ConversationFragment;)Landroid/os/Handler;
move-result-object v1
#calls: Lco/vine/android/ConversationFragment;->subscribe(Landroid/os/Handler;)V
invoke-static {v0, v1}, Lco/vine/android/ConversationFragment;->access$400(Lco/vine/android/ConversationFragment;Landroid/os/Handler;)V
const-string v1, " - Lco/vine/android/ConversationFragment$2; onServiceConnected"
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
const-string v0, " + Lco/vine/android/ConversationFragment$2; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "ConversationFrag"
const-string v1, "Connection to VineUploadService lost unexpectedly!"
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/ConversationFragment$2;->this$0:Lco/vine/android/ConversationFragment;
const/4 v1, 0x0
#setter for: Lco/vine/android/ConversationFragment;->mUploadServiceMessenger:Landroid/os/Messenger;
invoke-static {v0, v1}, Lco/vine/android/ConversationFragment;->access$102(Lco/vine/android/ConversationFragment;Landroid/os/Messenger;)Landroid/os/Messenger;
iget-object v0, p0, Lco/vine/android/ConversationFragment$2;->this$0:Lco/vine/android/ConversationFragment;
const/4 v1, 0x0
#setter for: Lco/vine/android/ConversationFragment;->mBound:Z
invoke-static {v0, v1}, Lco/vine/android/ConversationFragment;->access$202(Lco/vine/android/ConversationFragment;Z)Z
const-string v1, " - Lco/vine/android/ConversationFragment$2; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method