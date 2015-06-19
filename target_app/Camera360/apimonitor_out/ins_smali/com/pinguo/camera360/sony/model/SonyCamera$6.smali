.class  Lcom/pinguo/camera360/sony/model/SonyCamera$6;
.super Ljava/lang/Object;
.source "SonyCamera.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;
.field private final synthetic val$content:[B
.field private final synthetic val$sizeInfo:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
.method constructor <init>(Lcom/pinguo/camera360/sony/model/SonyCamera;[BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$6;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;
iput-object p2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$6;->val$content:[B
iput-object p3, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$6;->val$sizeInfo:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$6;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$12(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
move-result-object v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$6;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$12(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$6;->val$content:[B
iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$6;->val$sizeInfo:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;->onSonyPictureTaken([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
:cond_15
return-void
.end method