.class Lcom/pinguo/camera360/cloud/cropImage/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/cloud/cropImage/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$2;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/CropImage$2;->this$0:Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    #calls: Lcom/pinguo/camera360/cloud/cropImage/CropImage;->onSaveClicked()V
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->access$7(Lcom/pinguo/camera360/cloud/cropImage/CropImage;)V

    return-void
.end method
