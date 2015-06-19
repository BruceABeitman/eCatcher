.class  Lcom/pinguo/camera360/lib/camera/lib/FocusManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusManager.java"
.field final synthetic this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
.method private constructor <init>(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$MainHandler;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;Lcom/pinguo/camera360/lib/camera/lib/FocusManager$MainHandler;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$MainHandler;-><init>(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 5
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_52
const-string/jumbo v0, "FocusManager"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Invalid message:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p1, Landroid/os/Message;->what:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:cond_1d
:goto_1d
return-void
:pswitch_1e
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$MainHandler;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->capture()V
goto :goto_1d
:pswitch_24
const-string/jumbo v0, "FocusManager"
const-string/jumbo v1, "start sensor now"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$MainHandler;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusDistanceChecker:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->access$9(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
move-result-object v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$MainHandler;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusDistanceChecker:Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->access$9(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker;->register()V
goto :goto_1d
:pswitch_3f
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$MainHandler;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->access$10(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
move-result-object v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$MainHandler;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
#getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mAutoFocusCallBack:Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->access$10(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/camera/focus/IAutoFocusCallBack;->clear()V
goto :goto_1d
nop
:pswitch_data_52
.packed-switch 0x4
:pswitch_24
:pswitch_1e
:pswitch_3f
.end packed-switch
.end method