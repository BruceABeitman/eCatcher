.class  Lco/vine/android/service/VineService$MessengerResponderRunnable;
.super Ljava/lang/Object;
.source "VineService.java"
.implements Ljava/lang/Runnable;
.field private final mActionCode:I
.field private final mBundle:Landroid/os/Bundle;
.field private final mReasonPhrase:Ljava/lang/String;
.field private final mResponder:Landroid/os/Messenger;
.field private final mStartId:I
.field private final mStatusCode:I
.field final synthetic this$0:Lco/vine/android/service/VineService;
.method public constructor <init>(Lco/vine/android/service/VineService;Landroid/os/Messenger;IILjava/lang/String;Landroid/os/Bundle;I)V
.registers 8
iput-object p1, p0, Lco/vine/android/service/VineService$MessengerResponderRunnable;->this$0:Lco/vine/android/service/VineService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lco/vine/android/service/VineService$MessengerResponderRunnable;->mResponder:Landroid/os/Messenger;
iput p3, p0, Lco/vine/android/service/VineService$MessengerResponderRunnable;->mActionCode:I
iput p4, p0, Lco/vine/android/service/VineService$MessengerResponderRunnable;->mStatusCode:I
iput-object p5, p0, Lco/vine/android/service/VineService$MessengerResponderRunnable;->mReasonPhrase:Ljava/lang/String;
iput-object p6, p0, Lco/vine/android/service/VineService$MessengerResponderRunnable;->mBundle:Landroid/os/Bundle;
iput p7, p0, Lco/vine/android/service/VineService$MessengerResponderRunnable;->mStartId:I
return-void
.end method
.method public run()V
.registers 6
iget-object v3, p0, Lco/vine/android/service/VineService$MessengerResponderRunnable;->mResponder:Landroid/os/Messenger;
if-eqz v3, :cond_26
new-instance v2, Landroid/os/Message;
invoke-direct {v2}, Landroid/os/Message;-><init>()V
iget v3, p0, Lco/vine/android/service/VineService$MessengerResponderRunnable;->mActionCode:I
iput v3, v2, Landroid/os/Message;->what:I
iget v3, p0, Lco/vine/android/service/VineService$MessengerResponderRunnable;->mStatusCode:I
iput v3, v2, Landroid/os/Message;->arg1:I
invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
const-string v3, "reason_phrase"
iget-object v4, p0, Lco/vine/android/service/VineService$MessengerResponderRunnable;->mReasonPhrase:Ljava/lang/String;
invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v3, p0, Lco/vine/android/service/VineService$MessengerResponderRunnable;->mBundle:Landroid/os/Bundle;
invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
:try_start_21
iget-object v3, p0, Lco/vine/android/service/VineService$MessengerResponderRunnable;->mResponder:Landroid/os/Messenger;
invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
:goto_26
:cond_26
:try_end_26
.catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_32
iget v3, p0, Lco/vine/android/service/VineService$MessengerResponderRunnable;->mStartId:I
if-lez v3, :cond_31
iget-object v3, p0, Lco/vine/android/service/VineService$MessengerResponderRunnable;->this$0:Lco/vine/android/service/VineService;
iget v4, p0, Lco/vine/android/service/VineService$MessengerResponderRunnable;->mStartId:I
invoke-virtual {v3, v4}, Lco/vine/android/service/VineService;->attemptStop(I)V
:cond_31
return-void
:catch_32
move-exception v1
const-string v3, "Error sending service response"
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v1, v3, v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_26
.end method