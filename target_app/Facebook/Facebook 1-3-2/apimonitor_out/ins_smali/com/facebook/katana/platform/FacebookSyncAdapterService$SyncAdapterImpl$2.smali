.class  Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;
.super Ljava/lang/Object;
.source "FacebookSyncAdapterService.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;
.field private final synthetic val$context:Landroid/content/Context;
.field private final synthetic val$listener:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;
.field private final synthetic val$syncResult:Landroid/content/SyncResult;
.field private final synthetic val$threadHandler:Landroid/os/Handler;
.method constructor <init>(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;Landroid/content/Context;Landroid/content/SyncResult;Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;Landroid/os/Handler;)V
.registers 6
iput-object p1, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->this$1:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;
iput-object p2, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->val$context:Landroid/content/Context;
iput-object p3, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->val$syncResult:Landroid/content/SyncResult;
iput-object p4, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->val$listener:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;
iput-object p5, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->val$threadHandler:Landroid/os/Handler;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 6
iget-object v2, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->val$context:Landroid/content/Context;
invoke-static {v2}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
if-nez v0, :cond_33
const-string v2, "FBSyncAdapter"
const-string v3, "Cannot sync due to missing active session"
invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
iget-object v2, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->val$syncResult:Landroid/content/SyncResult;
iget-object v2, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;
const-wide/16 v3, 0x1
iput-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J
iget-object v2, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->this$1:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;
#getter for: Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->this$0:Lcom/facebook/katana/platform/FacebookSyncAdapterService;
invoke-static {v2}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->access$2(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;)Lcom/facebook/katana/platform/FacebookSyncAdapterService;
move-result-object v2
iget-object v3, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->this$1:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;
#getter for: Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->mUsername:Ljava/lang/String;
invoke-static {v3}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->access$1(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;)Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/facebook/katana/binding/AppSession;->postLoginRequiredNotification(Landroid/content/Context;Ljava/lang/String;)V
:goto_26
iget-object v2, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->val$threadHandler:Landroid/os/Handler;
const/4 v3, 0x2
invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->val$threadHandler:Landroid/os/Handler;
invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
:cond_33
iget-object v2, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->val$listener:Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;
invoke-virtual {v0, v2}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V
iget-object v2, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;->val$context:Landroid/content/Context;
invoke-virtual {v0, v2}, Lcom/facebook/katana/binding/AppSession;->syncFriends(Landroid/content/Context;)Ljava/lang/String;
goto :goto_26
.end method