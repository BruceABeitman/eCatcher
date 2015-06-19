.class Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$MyHandler;
.super Landroid/os/Handler;
.source "IdPhotoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private wr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$MyHandler;->wr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$MyHandler;->wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$MyHandler;->wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoCameraModel:Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$4(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-ne v0, v1, :cond_3c

    const v1, 0x7f08017d

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$MyHandler;->wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    const/16 v2, 0x9c4

    invoke-static {v1, v0, v2, v3}, Lcom/pinguo/lib/util/Util;->showToast(ILandroid/view/View;II)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setFirstStartIDCameraPreview(Z)V

    :cond_3c
    return-void
.end method
