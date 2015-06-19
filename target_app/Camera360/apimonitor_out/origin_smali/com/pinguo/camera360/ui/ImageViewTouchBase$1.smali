.class Lcom/pinguo/camera360/ui/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/ui/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/pinguo/camera360/ui/RotateBitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/ui/ImageViewTouchBase;

.field private final synthetic val$bitmap:Lcom/pinguo/camera360/ui/RotateBitmap;

.field private final synthetic val$resetSupp:Z


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/ui/ImageViewTouchBase;Lcom/pinguo/camera360/ui/RotateBitmap;Z)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$1;->this$0:Lcom/pinguo/camera360/ui/ImageViewTouchBase;

    iput-object p2, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$1;->val$bitmap:Lcom/pinguo/camera360/ui/RotateBitmap;

    iput-boolean p3, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$1;->this$0:Lcom/pinguo/camera360/ui/ImageViewTouchBase;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$1;->val$bitmap:Lcom/pinguo/camera360/ui/RotateBitmap;

    iget-boolean v2, p0, Lcom/pinguo/camera360/ui/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/pinguo/camera360/ui/RotateBitmap;Z)V

    return-void
.end method
