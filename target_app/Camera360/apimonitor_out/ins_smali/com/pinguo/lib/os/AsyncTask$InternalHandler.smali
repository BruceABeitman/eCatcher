.class  Lcom/pinguo/lib/os/AsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "AsyncTask.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/lib/os/AsyncTask$InternalHandler;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncTask$InternalHandler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 6
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/pinguo/lib/os/AsyncTask$AsyncTaskResult;
iget v1, p1, Landroid/os/Message;->what:I
packed-switch v1, :pswitch_data_36
const-string/jumbo v1, ""
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Invalid message:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p1, Landroid/os/Message;->what:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:goto_21
return-void
:pswitch_22
iget-object v1, v0, Lcom/pinguo/lib/os/AsyncTask$AsyncTaskResult;->mTask:Lcom/pinguo/lib/os/AsyncTask;
iget-object v2, v0, Lcom/pinguo/lib/os/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;
const/4 v3, 0x0
aget-object v2, v2, v3
#calls: Lcom/pinguo/lib/os/AsyncTask;->finish(Ljava/lang/Object;)V
invoke-static {v1, v2}, Lcom/pinguo/lib/os/AsyncTask;->access$0(Lcom/pinguo/lib/os/AsyncTask;Ljava/lang/Object;)V
goto :goto_21
:pswitch_2d
iget-object v1, v0, Lcom/pinguo/lib/os/AsyncTask$AsyncTaskResult;->mTask:Lcom/pinguo/lib/os/AsyncTask;
iget-object v2, v0, Lcom/pinguo/lib/os/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;
invoke-virtual {v1, v2}, Lcom/pinguo/lib/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V
goto :goto_21
nop
:pswitch_data_36
.packed-switch 0x1
:pswitch_22
:pswitch_2d
.end packed-switch
.end method