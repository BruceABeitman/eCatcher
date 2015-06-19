.class  Lco/vine/android/service/VineService$VineServiceHandler;
.super Landroid/os/Handler;
.source "VineService.java"
.field final synthetic this$0:Lco/vine/android/service/VineService;
.method constructor <init>(Lco/vine/android/service/VineService;)V
.registers 2
iput-object p1, p0, Lco/vine/android/service/VineService$VineServiceHandler;->this$0:Lco/vine/android/service/VineService;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 10
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
iget-object v1, p0, Lco/vine/android/service/VineService$VineServiceHandler;->this$0:Lco/vine/android/service/VineService;
invoke-virtual {v1}, Lco/vine/android/service/VineService;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
iget-object v0, p0, Lco/vine/android/service/VineService$VineServiceHandler;->this$0:Lco/vine/android/service/VineService;
#getter for: Lco/vine/android/service/VineService;->mExecutor:Ljava/util/concurrent/ExecutorService;
invoke-static {v0}, Lco/vine/android/service/VineService;->access$000(Lco/vine/android/service/VineService;)Ljava/util/concurrent/ExecutorService;
move-result-object v7
new-instance v0, Lco/vine/android/service/VineService$ExecutionRunnable;
iget-object v1, p0, Lco/vine/android/service/VineService$VineServiceHandler;->this$0:Lco/vine/android/service/VineService;
const/4 v2, 0x0
iget v3, p1, Landroid/os/Message;->arg1:I
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v4
const/4 v5, 0x0
iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
invoke-direct/range {v0 .. v6}, Lco/vine/android/service/VineService$ExecutionRunnable;-><init>(Lco/vine/android/service/VineService;IILandroid/os/Bundle;Lco/vine/android/service/VineServiceResponder;Landroid/os/Messenger;)V
invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method