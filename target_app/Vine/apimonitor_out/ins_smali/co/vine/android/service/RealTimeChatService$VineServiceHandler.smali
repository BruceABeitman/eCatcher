.class  Lco/vine/android/service/RealTimeChatService$VineServiceHandler;
.super Landroid/os/Handler;
.source "RealTimeChatService.java"
.field final synthetic this$0:Lco/vine/android/service/RealTimeChatService;
.method constructor <init>(Lco/vine/android/service/RealTimeChatService;)V
.registers 2
iput-object p1, p0, Lco/vine/android/service/RealTimeChatService$VineServiceHandler;->this$0:Lco/vine/android/service/RealTimeChatService;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 8
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
iget-object v1, p0, Lco/vine/android/service/RealTimeChatService$VineServiceHandler;->this$0:Lco/vine/android/service/RealTimeChatService;
invoke-virtual {v1}, Lco/vine/android/service/RealTimeChatService;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
iget-object v0, p0, Lco/vine/android/service/RealTimeChatService$VineServiceHandler;->this$0:Lco/vine/android/service/RealTimeChatService;
#getter for: Lco/vine/android/service/RealTimeChatService;->mExecutor:Ljava/util/concurrent/ExecutorService;
invoke-static {v0}, Lco/vine/android/service/RealTimeChatService;->access$1100(Lco/vine/android/service/RealTimeChatService;)Ljava/util/concurrent/ExecutorService;
move-result-object v0
new-instance v1, Lco/vine/android/service/RealTimeChatService$ExecutionRunnable;
iget-object v2, p0, Lco/vine/android/service/RealTimeChatService$VineServiceHandler;->this$0:Lco/vine/android/service/RealTimeChatService;
iget v3, p1, Landroid/os/Message;->arg1:I
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v4
iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
invoke-direct {v1, v2, v3, v4, v5}, Lco/vine/android/service/RealTimeChatService$ExecutionRunnable;-><init>(Lco/vine/android/service/RealTimeChatService;ILandroid/os/Bundle;Landroid/os/Messenger;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method