.class Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment$1;
.super Lcom/pinguo/camera360/camera/model/EasyCameraModel;
.source "IntentPGCameraFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;->createModeCameraModel(Ljava/lang/String;)Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment$1;->this$0:Lcom/pinguo/camera360/camera/controller/IntentPGCameraFragment;

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V

    return-void
.end method


# virtual methods
.method public needShowPreview()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
