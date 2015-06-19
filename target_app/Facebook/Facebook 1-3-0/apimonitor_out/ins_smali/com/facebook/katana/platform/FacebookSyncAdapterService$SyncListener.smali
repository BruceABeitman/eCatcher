.class final Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "FacebookSyncAdapterService.java"
.field public error:I
.field public exception:Ljava/lang/Exception;
.field private mThreadHandler:Landroid/os/Handler;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;)V
.registers 2
invoke-direct {p0}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;-><init>()V
return-void
.end method
.method public onFriendsSyncComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 9
iput p3, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;->error:I
iput-object p5, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;->exception:Ljava/lang/Exception;
iget-object v1, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;->mThreadHandler:Landroid/os/Handler;
const/4 v2, 0x3
invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;->mThreadHandler:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method public setThreadHandler(Landroid/os/Handler;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;->mThreadHandler:Landroid/os/Handler;
return-void
.end method