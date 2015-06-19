.class Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;
.super Ljava/lang/Object;
.source "EdgeCutImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslateBackRunnable"
.end annotation


# instance fields
.field private mCurrentX:I

.field private mCurrentY:I

.field private final mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->this$0:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->mScroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->this$0:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    #getter for: Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppMatrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->access$0(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->mCurrentX:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->mCurrentY:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->this$0:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    #calls: Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setImageMatrix()V
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->access$3(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;)V

    iput v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->mCurrentX:I

    iput v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->mCurrentY:I

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->this$0:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    const-wide/16 v3, 0x10

    invoke-virtual {v2, p0, v3, v4}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8
.end method

.method public start(FF)V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->mCurrentX:I

    iput v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->mCurrentY:I

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->mCurrentX:I

    iget v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TranslateBackRunnable;->mCurrentY:I

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    return-void
.end method
