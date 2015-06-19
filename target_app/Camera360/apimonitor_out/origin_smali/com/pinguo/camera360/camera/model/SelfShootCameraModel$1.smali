.class Lcom/pinguo/camera360/camera/model/SelfShootCameraModel$1;
.super Ljava/lang/Object;
.source "SelfShootCameraModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->takePicture(Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;

.field private final synthetic val$failCallBack:Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;

.field private final synthetic val$takePictureCallBack:Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel$1;->this$0:Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel$1;->val$takePictureCallBack:Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;

    iput-object p3, p0, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel$1;->val$failCallBack:Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel$1;->this$0:Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel$1;->val$takePictureCallBack:Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel$1;->val$failCallBack:Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;

    #calls: Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->realTakePicture(Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V
    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;->access$0(Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V

    return-void
.end method
