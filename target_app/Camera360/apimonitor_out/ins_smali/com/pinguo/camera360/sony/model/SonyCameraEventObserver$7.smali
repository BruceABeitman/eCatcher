.class  Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$7;
.super Ljava/lang/Object;
.source "SonyCameraEventObserver.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
.field private final synthetic val$checkAvailability:Z
.field private final synthetic val$stillSize:Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;Ljava/lang/String;Z)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$7;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
iput-object p2, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$7;->val$stillSize:Ljava/lang/String;
iput-boolean p3, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$7;->val$checkAvailability:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$7;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$22(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
move-result-object v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$7;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$22(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$7;->val$stillSize:Ljava/lang/String;
iget-boolean v2, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$7;->val$checkAvailability:Z
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;->onStillSizeChanged(Ljava/lang/String;Z)V
:cond_15
return-void
.end method