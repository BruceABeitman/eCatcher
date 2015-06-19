.class Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$2;
.super Ljava/lang/Object;
.source "PuzzleSpliceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->clearBitmaps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;

    #getter for: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPreviewBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$12(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;

    #getter for: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPicView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$13(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;

    #getter for: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPicView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$13(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;

    #getter for: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPreviewBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$12(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;

    #getter for: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPreviewBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$12(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_37
    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;

    #setter for: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPreviewBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$14(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;Landroid/graphics/Bitmap;)V

    :cond_3c
    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$2;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;

    invoke-static {}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$4()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setp 10 ------------> clearTempData  "

    #calls: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->setLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$5(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
