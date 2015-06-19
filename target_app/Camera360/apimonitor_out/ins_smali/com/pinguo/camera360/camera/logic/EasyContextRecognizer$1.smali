.class  Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$1;
.super Landroid/os/Handler;
.source "EasyContextRecognizer.java"
.field final synthetic this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
.method constructor <init>(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$1;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 4
iget v1, p1, Landroid/os/Message;->what:I
packed-switch v1, :pswitch_data_1c
:goto_5
:cond_5
return-void
:pswitch_6
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$1;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->getDebugContent()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$1;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#getter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
invoke-static {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$0(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Z
move-result v1
if-eqz v1, :cond_5
const-string/jumbo v1, "EasyContextRecognizer"
invoke-static {v1, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_5
nop
:pswitch_data_1c
.packed-switch 0x0
:pswitch_6
.end packed-switch
.end method