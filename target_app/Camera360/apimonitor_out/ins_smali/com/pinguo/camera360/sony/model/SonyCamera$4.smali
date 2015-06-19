.class  Lcom/pinguo/camera360/sony/model/SonyCamera$4;
.super Ljava/lang/Object;
.source "SonyCamera.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;
.method constructor <init>(Lcom/pinguo/camera360/sony/model/SonyCamera;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$4;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$4;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$12(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$4;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$12(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;->onSonyCameraOpen()V
:cond_11
return-void
.end method