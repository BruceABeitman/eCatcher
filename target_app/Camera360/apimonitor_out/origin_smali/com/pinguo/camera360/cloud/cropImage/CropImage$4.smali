.class Lcom/pinguo/camera360/cloud/cropImage/CropImage$4;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/cloud/cropImage/CropImage;->onSaveClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

.field private final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/cloud/cropImage/CropImage;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$4;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    iput-object p2, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$4;->val$b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$4;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$4;->val$b:Landroid/graphics/Bitmap;

    #calls: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$9(Lcom/pinguo/camera360/cloud/cropImage/CropImage;Landroid/graphics/Bitmap;)V

    return-void
.end method
