.class  Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;
.super Ljava/lang/Object;
.source "FacebookSyncAdapterService.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;
.field private final synthetic val$context:Landroid/content/Context;
.field private final synthetic val$e:Ljava/lang/Exception;
.field private final synthetic val$errorCode:I
.field private final synthetic val$listener:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;
.field private final synthetic val$threadHandler:Landroid/os/Handler;
.method constructor <init>(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;Landroid/content/Context;Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;Landroid/os/Handler;ILjava/lang/Exception;)V
.registers 7
iput-object p1, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;->this$1:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;
iput-object p2, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;->val$context:Landroid/content/Context;
iput-object p3, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;->val$listener:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;
iput-object p4, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;->val$threadHandler:Landroid/os/Handler;
iput p5, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;->val$errorCode:I
iput-object p6, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;->val$e:Ljava/lang/Exception;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
invoke-static {}, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->access$0()Z
move-result v2
if-eqz v2, :cond_d
const-string v2, "FBSyncAdapter"
const-string v3, "Cleaning up..."
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_d
iget-object v2, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;->val$context:Landroid/content/Context;
invoke-static {v2}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v1
if-eqz v1, :cond_1a
iget-object v2, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;->val$listener:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;
invoke-virtual {v1, v2}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V
:cond_1a
iget-object v2, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;->val$threadHandler:Landroid/os/Handler;
const/4 v3, 0x4
invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v0
iget-object v2, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;->val$threadHandler:Landroid/os/Handler;
invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
iget v2, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;->val$errorCode:I
iget-object v3, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;->val$e:Ljava/lang/Exception;
invoke-static {v2, v3}, Lcom/facebook/katana/service/api/methods/ApiMethod;->isSessionKeyError(ILjava/lang/Exception;)Z
move-result v2
if-eqz v2, :cond_3b
iget-object v2, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;->val$context:Landroid/content/Context;
iget-object v3, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;->this$1:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;
#getter for: Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->mUsername:Ljava/lang/String;
invoke-static {v3}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->access$1(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;)Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/facebook/katana/binding/AppSession;->postLoginRequiredNotification(Landroid/content/Context;Ljava/lang/String;)V
:cond_3b
return-void
.end method