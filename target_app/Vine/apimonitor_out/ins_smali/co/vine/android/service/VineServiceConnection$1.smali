.class  Lco/vine/android/service/VineServiceConnection$1;
.super Landroid/os/Handler;
.source "VineServiceConnection.java"
.field final synthetic this$0:Lco/vine/android/service/VineServiceConnection;
.method constructor <init>(Lco/vine/android/service/VineServiceConnection;)V
.registers 2
iput-object p1, p0, Lco/vine/android/service/VineServiceConnection$1;->this$0:Lco/vine/android/service/VineServiceConnection;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 7
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
iget-object v1, p0, Lco/vine/android/service/VineServiceConnection$1;->this$0:Lco/vine/android/service/VineServiceConnection;
#getter for: Lco/vine/android/service/VineServiceConnection;->mContext:Landroid/content/Context;
invoke-static {v1}, Lco/vine/android/service/VineServiceConnection;->access$000(Lco/vine/android/service/VineServiceConnection;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
iget-object v1, p0, Lco/vine/android/service/VineServiceConnection$1;->this$0:Lco/vine/android/service/VineServiceConnection;
#getter for: Lco/vine/android/service/VineServiceConnection;->mResponseHandler:Lco/vine/android/service/VineServiceConnection$ServiceResponseHandler;
invoke-static {v1}, Lco/vine/android/service/VineServiceConnection;->access$100(Lco/vine/android/service/VineServiceConnection;)Lco/vine/android/service/VineServiceConnection$ServiceResponseHandler;
move-result-object v1
iget v2, p1, Landroid/os/Message;->what:I
iget v3, p1, Landroid/os/Message;->arg1:I
const-string v4, "reason_phrase"
invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v1, v2, v3, v4, v0}, Lco/vine/android/service/VineServiceConnection$ServiceResponseHandler;->handleServiceResponse(IILjava/lang/String;Landroid/os/Bundle;)V
return-void
.end method