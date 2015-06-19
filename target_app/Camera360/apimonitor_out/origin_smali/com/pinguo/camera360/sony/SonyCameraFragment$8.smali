.class Lcom/pinguo/camera360/sony/SonyCameraFragment$8;
.super Ljava/lang/Object;
.source "SonyCameraFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/SonyCameraFragment;->onSonyPictureTaken([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

.field private final synthetic val$content:[B

.field private final synthetic val$sizeInfo:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;[BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$8;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    iput-object p2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$8;->val$content:[B

    iput-object p3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$8;->val$sizeInfo:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$8;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    const/4 v1, 0x2

    #setter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mPictureStatus:I
    invoke-static {v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$15(Lcom/pinguo/camera360/sony/SonyCameraFragment;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$8;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$8;->val$content:[B

    iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$8;->val$sizeInfo:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->showPictiurePreview([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V

    return-void
.end method
