.class Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$2;
.super Ljava/lang/Object;
.source "IdPhotoCamera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->updateIDPhotoCameraUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$2;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportGuideBtnClick(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$2;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoCameraModel:Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$4(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onClick state = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$2;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoCameraModel:Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$4(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->stopPreview()V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$2;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mAdvanceParamIndicator:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$2;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #calls: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->initViewPager()V
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$7(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)V

    return-void
.end method
