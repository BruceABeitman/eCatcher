.class  Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$5;
.super Ljava/lang/Object;
.source "SonyCameraEventObserver.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
.field private final synthetic val$shootMode:Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$5;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
iput-object p2, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$5;->val$shootMode:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$5;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$22(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$5;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$22(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$5;->val$shootMode:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;->onShootModeChanged(Ljava/lang/String;)V
:cond_13
return-void
.end method