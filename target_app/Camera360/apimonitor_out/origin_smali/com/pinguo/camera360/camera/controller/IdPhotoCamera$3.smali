.class Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$3;
.super Ljava/lang/Object;
.source "IdPhotoCamera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->initViewPager()V
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

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$3;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportGuideBtnClick(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$3;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #calls: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->recycleGuideViewResource()V
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$8(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$3;->this$0:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    #calls: Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->reStartPreview()V
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->access$9(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)V

    return-void
.end method
