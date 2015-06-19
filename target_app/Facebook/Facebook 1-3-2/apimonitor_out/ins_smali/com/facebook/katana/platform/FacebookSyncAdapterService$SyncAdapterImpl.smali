.class final Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "FacebookSyncAdapterService.java"
.field private final mHandler:Landroid/os/Handler;
.field private mUsername:Ljava/lang/String;
.field final synthetic this$0:Lcom/facebook/katana/platform/FacebookSyncAdapterService;
.method public constructor <init>(Lcom/facebook/katana/platform/FacebookSyncAdapterService;Landroid/content/Context;Landroid/os/Handler;)V
.registers 5
iput-object p1, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->this$0:Lcom/facebook/katana/platform/FacebookSyncAdapterService;
const/4 v0, 0x1
invoke-direct {p0, p2, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->mUsername:Ljava/lang/String;
iput-object p3, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->mHandler:Landroid/os/Handler;
return-void
.end method
.method static synthetic access$0(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;Landroid/os/Handler;Landroid/content/Context;Landroid/os/Message;Landroid/content/SyncResult;Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;)V
.registers 6
invoke-direct/range {p0 .. p5}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->messageHandler(Landroid/os/Handler;Landroid/content/Context;Landroid/os/Message;Landroid/content/SyncResult;Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;)V
return-void
.end method
.method static synthetic access$1(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->mUsername:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$2(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;)Lcom/facebook/katana/platform/FacebookSyncAdapterService;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->this$0:Lcom/facebook/katana/platform/FacebookSyncAdapterService;
return-object v0
.end method
.method private messageHandler(Landroid/os/Handler;Landroid/content/Context;Landroid/os/Message;Landroid/content/SyncResult;Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;)V
.registers 14
const-wide/16 v3, 0x1
const-string v2, "FBSyncAdapter"
iget v0, p3, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_a2
:goto_9
:cond_9
return-void
:pswitch_a
invoke-static {}, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->access$0()Z
move-result v0
if-eqz v0, :cond_17
const-string v0, "FBSyncAdapter"
const-string v0, "MESSAGE_START"
invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_17
iget-object v7, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->mHandler:Landroid/os/Handler;
new-instance v0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;
move-object v1, p0
move-object v2, p2
move-object v3, p4
move-object v4, p5
move-object v5, p1
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$2;-><init>(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;Landroid/content/Context;Landroid/content/SyncResult;Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;Landroid/os/Handler;)V
invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_9
:pswitch_27
invoke-static {}, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->access$0()Z
move-result v0
if-eqz v0, :cond_34
const-string v0, "FBSyncAdapter"
const-string v0, "MESSAGE_SYNC_BEGIN"
invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_34
iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;
iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_9
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Looper;->quit()V
goto :goto_9
:pswitch_46
iget v5, p5, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;->error:I
iget-object v6, p5, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;->exception:Ljava/lang/Exception;
invoke-static {}, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->access$0()Z
move-result v0
if-eqz v0, :cond_64
const-string v0, "FBSyncAdapter"
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "MESSAGE_SYNC_END: error = "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_64
const/16 v0, 0xc8
if-eq v5, v0, :cond_72
if-eqz v6, :cond_86
instance-of v0, v6, Ljava/io/IOException;
if-eqz v0, :cond_81
iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;
iput-wide v3, v0, Landroid/content/SyncStats;->numIoExceptions:J
:cond_72
:goto_72
iget-object v7, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->mHandler:Landroid/os/Handler;
new-instance v0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;
move-object v1, p0
move-object v2, p2
move-object v3, p5
move-object v4, p1
invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$3;-><init>(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;Landroid/content/Context;Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;Landroid/os/Handler;ILjava/lang/Exception;)V
invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_9
:cond_81
iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;
iput-wide v3, v0, Landroid/content/SyncStats;->numParseExceptions:J
goto :goto_72
:cond_86
iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;
iput-wide v3, v0, Landroid/content/SyncStats;->numIoExceptions:J
goto :goto_72
:pswitch_8b
invoke-static {}, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->access$0()Z
move-result v0
if-eqz v0, :cond_98
const-string v0, "FBSyncAdapter"
const-string v0, "MESSAGE_CLEANUP_DONE"
invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_98
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Looper;->quit()V
goto/16 :goto_9
nop
:pswitch_data_a2
.packed-switch 0x1
:pswitch_a
:pswitch_27
:pswitch_46
:pswitch_8b
.end packed-switch
.end method
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
.registers 11
const-string v4, "FBSyncAdapter"
invoke-static {}, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->access$0()Z
move-result v2
if-eqz v2, :cond_20
const-string v2, "FBSyncAdapter"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "performing sync with extras: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
if-nez p2, :cond_4e
const-string v3, "null"
:goto_15
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_20
iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;
iput-object v2, p0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;->mUsername:Ljava/lang/String;
invoke-static {}, Landroid/os/Looper;->prepare()V
new-instance v0, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;
const/4 v2, 0x0
invoke-direct {v0, v2}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;-><init>(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;)V
new-instance v1, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$1;
invoke-direct {v1, p0, p5, v0}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl$1;-><init>(Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncAdapterImpl;Landroid/content/SyncResult;Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;)V
invoke-virtual {v0, v1}, Lcom/facebook/katana/platform/FacebookSyncAdapterService$SyncListener;->setThreadHandler(Landroid/os/Handler;)V
const/4 v2, 0x1
invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
invoke-static {}, Landroid/os/Looper;->loop()V
invoke-static {}, Lcom/facebook/katana/platform/FacebookSyncAdapterService;->access$0()Z
move-result v2
if-eqz v2, :cond_4d
const-string v2, "FBSyncAdapter"
const-string v2, "=====> Loop end."
invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_4d
return-void
:cond_4e
invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;
move-result-object v3
goto :goto_15
.end method