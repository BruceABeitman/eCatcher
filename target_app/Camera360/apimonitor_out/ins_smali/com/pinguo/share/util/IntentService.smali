.class public abstract Lcom/pinguo/share/util/IntentService;
.super Landroid/app/Service;
.source "IntentService.java"
.field private mName:Ljava/lang/String;
.field private mRedelivery:Z
.field private volatile mServiceHandler:Lcom/pinguo/share/util/IntentService$ServiceHandler;
.field private volatile mServiceLooper:Landroid/os/Looper;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Landroid/app/Service;-><init>()V
iput-object p1, p0, Lcom/pinguo/share/util/IntentService;->mName:Ljava/lang/String;
return-void
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public onCreate()V
.registers 4
invoke-super {p0}, Landroid/app/Service;->onCreate()V
new-instance v0, Landroid/os/HandlerThread;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "IntentService["
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/share/util/IntentService;->mName:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/16 v2, 0xa
invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V
invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/share/util/IntentService;->mServiceLooper:Landroid/os/Looper;
new-instance v1, Lcom/pinguo/share/util/IntentService$ServiceHandler;
iget-object v2, p0, Lcom/pinguo/share/util/IntentService;->mServiceLooper:Landroid/os/Looper;
invoke-direct {v1, p0, v2}, Lcom/pinguo/share/util/IntentService$ServiceHandler;-><init>(Lcom/pinguo/share/util/IntentService;Landroid/os/Looper;)V
iput-object v1, p0, Lcom/pinguo/share/util/IntentService;->mServiceHandler:Lcom/pinguo/share/util/IntentService$ServiceHandler;
return-void
.end method
.method public onDestroy()V
.registers 2
iget-object v0, p0, Lcom/pinguo/share/util/IntentService;->mServiceLooper:Landroid/os/Looper;
invoke-virtual {v0}, Landroid/os/Looper;->quit()V
return-void
.end method
.method protected abstract onHandleIntent(Landroid/content/Intent;)V
.end method
.method public onStart(Landroid/content/Intent;I)V
.registers 5
iget-object v1, p0, Lcom/pinguo/share/util/IntentService;->mServiceHandler:Lcom/pinguo/share/util/IntentService$ServiceHandler;
invoke-virtual {v1}, Lcom/pinguo/share/util/IntentService$ServiceHandler;->obtainMessage()Landroid/os/Message;
move-result-object v0
iput p2, v0, Landroid/os/Message;->arg1:I
iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
iget-object v1, p0, Lcom/pinguo/share/util/IntentService;->mServiceHandler:Lcom/pinguo/share/util/IntentService$ServiceHandler;
invoke-virtual {v1, v0}, Lcom/pinguo/share/util/IntentService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method public onStartCommand(Landroid/content/Intent;II)I
.registers 5
invoke-virtual {p0, p1, p3}, Lcom/pinguo/share/util/IntentService;->onStart(Landroid/content/Intent;I)V
iget-boolean v0, p0, Lcom/pinguo/share/util/IntentService;->mRedelivery:Z
if-eqz v0, :cond_9
const/4 v0, 0x3
:goto_8
return v0
:cond_9
const/4 v0, 0x2
goto :goto_8
.end method
.method public setIntentRedelivery(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/share/util/IntentService;->mRedelivery:Z
return-void
.end method