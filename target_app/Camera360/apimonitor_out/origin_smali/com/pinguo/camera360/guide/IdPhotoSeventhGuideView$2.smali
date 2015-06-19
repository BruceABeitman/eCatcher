.class Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$2;
.super Ljava/lang/Object;
.source "IdPhotoSeventhGuideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$2;->this$0:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$2;->this$0:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    #getter for: Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mSixGuideViewCallback:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$SixGuideViewCallBack;
    invoke-static {v0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->access$8(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$SixGuideViewCallBack;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$2;->this$0:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    #getter for: Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->mSixGuideViewCallback:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$SixGuideViewCallBack;
    invoke-static {v0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->access$8(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;)Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$SixGuideViewCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$SixGuideViewCallBack;->startMakeIdPhoto()V

    :cond_11
    return-void
.end method
