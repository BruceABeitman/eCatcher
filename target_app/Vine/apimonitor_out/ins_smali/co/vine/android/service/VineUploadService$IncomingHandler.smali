.class  Lco/vine/android/service/VineUploadService$IncomingHandler;
.super Landroid/os/Handler;
.source "VineUploadService.java"
.field final synthetic this$0:Lco/vine/android/service/VineUploadService;
.method private constructor <init>(Lco/vine/android/service/VineUploadService;)V
.registers 2
iput-object p1, p0, Lco/vine/android/service/VineUploadService$IncomingHandler;->this$0:Lco/vine/android/service/VineUploadService;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lco/vine/android/service/VineUploadService;Lco/vine/android/service/VineUploadService$1;)V
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/service/VineUploadService$IncomingHandler;-><init>(Lco/vine/android/service/VineUploadService;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 12
const/4 v9, 0x0
const-string v6, "VineUploadService"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Message received, what="
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget v8, p1, Landroid/os/Message;->what:I
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, ", replyTo="
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
iget v5, p1, Landroid/os/Message;->what:I
packed-switch v5, :pswitch_data_88
:pswitch_2c
:goto_2c
:cond_2c
return-void
:pswitch_2d
iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
invoke-static {v6}, Lco/vine/android/service/VineUploadService;->access$102(Landroid/os/Messenger;)Landroid/os/Messenger;
iget-object v6, p0, Lco/vine/android/service/VineUploadService$IncomingHandler;->this$0:Lco/vine/android/service/VineUploadService;
#calls: Lco/vine/android/service/VineUploadService;->sendDraftCountToReceiver()V
invoke-static {v6}, Lco/vine/android/service/VineUploadService;->access$200(Lco/vine/android/service/VineUploadService;)V
goto :goto_2c
:pswitch_38
iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
if-eqz v4, :cond_2c
invoke-static {v4}, Lco/vine/android/service/VineUploadService;->access$302(Landroid/os/Messenger;)Landroid/os/Messenger;
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
iget-object v6, p0, Lco/vine/android/service/VineUploadService$IncomingHandler;->this$0:Lco/vine/android/service/VineUploadService;
#getter for: Lco/vine/android/service/VineUploadService;->mCurrentTask:Lco/vine/android/service/VineUploadService$ServiceAsyncTask;
invoke-static {v6}, Lco/vine/android/service/VineUploadService;->access$400(Lco/vine/android/service/VineUploadService;)Lco/vine/android/service/VineUploadService$ServiceAsyncTask;
move-result-object v0
if-eqz v0, :cond_6c
const-string v6, "conversation_row_id"
iget-wide v7, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->conversationRowId:J
invoke-virtual {v1, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v6, "thumbnail"
iget-object v7, v0, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->thumbnail:Ljava/lang/String;
invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
sget-object v6, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;
invoke-virtual {v0}, Lco/vine/android/service/VineUploadService$ServiceAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;
move-result-object v7
invoke-virtual {v6, v7}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_7d
const/4 v3, 0x1
:goto_67
const-string v6, "is_active"
invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
:cond_6c
const/4 v6, 0x0
const/4 v7, 0x3
:try_start_6e
invoke-static {v6, v7, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
move-result-object v6
invoke-virtual {v4, v6}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
:try_end_75
.catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_75} :catch_76
goto :goto_2c
:catch_76
move-exception v2
const-string v6, "Failed to reply."
invoke-static {v6, v2}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_2c
:cond_7d
const/4 v3, 0x0
goto :goto_67
:pswitch_7f
invoke-static {v9}, Lco/vine/android/service/VineUploadService;->access$302(Landroid/os/Messenger;)Landroid/os/Messenger;
goto :goto_2c
:pswitch_83
invoke-static {v9}, Lco/vine/android/service/VineUploadService;->access$102(Landroid/os/Messenger;)Landroid/os/Messenger;
goto :goto_2c
nop
:pswitch_data_88
.packed-switch 0x1
:pswitch_38
:pswitch_7f
:pswitch_2c
:pswitch_2c
:pswitch_2c
:pswitch_2c
:pswitch_2c
:pswitch_2d
:pswitch_83
.end packed-switch
.end method