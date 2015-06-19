.class  Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$10;
.super Ljava/lang/Object;
.source "SonyCameraEventObserver.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
.field private final synthetic val$content:[B
.field private final synthetic val$sizeInfo:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
.method constructor <init>(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;[BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$10;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
iput-object p2, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$10;->val$content:[B
iput-object p3, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$10;->val$sizeInfo:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$10;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$22(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
move-result-object v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$10;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;
#getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$22(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$10;->val$content:[B
iget-object v2, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$10;->val$sizeInfo:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;->onSonyPictureTaken([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
:cond_15
return-void
.end method