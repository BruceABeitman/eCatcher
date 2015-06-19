.class Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1$1;
.super Ljava/lang/Object;
.source "PicturePreviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1;->onThumbNailSaved(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1$1;->this$1:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_12

    new-instance v0, Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    :cond_12
    return-void
.end method
