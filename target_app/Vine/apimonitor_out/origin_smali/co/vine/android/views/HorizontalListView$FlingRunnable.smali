.class Lco/vine/android/views/HorizontalListView$FlingRunnable;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/views/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScreenWidth:I

.field private final mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lco/vine/android/views/HorizontalListView;


# direct methods
.method public constructor <init>(Lco/vine/android/views/HorizontalListView;)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->this$0:Lco/vine/android/views/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lco/vine/android/views/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v6, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->this$0:Lco/vine/android/views/HorizontalListView;

    invoke-virtual {v6}, Lco/vine/android/views/HorizontalListView;->getChildCount()I

    move-result v0

    iget-object v6, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->this$0:Lco/vine/android/views/HorizontalListView;

    #getter for: Lco/vine/android/views/HorizontalListView;->mItemCount:I
    invoke-static {v6}, Lco/vine/android/views/HorizontalListView;->access$400(Lco/vine/android/views/HorizontalListView;)I

    move-result v6

    if-eqz v6, :cond_10

    if-nez v0, :cond_14

    :cond_10
    invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView$FlingRunnable;->stop()V

    :goto_13
    return-void

    :cond_14
    iget-object v4, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget v6, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->mLastFlingX:I

    sub-int v1, v6, v5

    if-lez v1, :cond_3c

    iget v6, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->mScreenWidth:I

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2a
    iget-object v6, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->this$0:Lco/vine/android/views/HorizontalListView;

    invoke-virtual {v6, v1, v1}, Lco/vine/android/views/HorizontalListView;->scroll(II)Z

    move-result v3

    if-eqz v2, :cond_5d

    if-eqz v3, :cond_44

    iput v5, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->mLastFlingX:I

    iget-object v6, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->this$0:Lco/vine/android/views/HorizontalListView;

    invoke-virtual {v6, p0}, Lco/vine/android/views/HorizontalListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    :cond_3c
    iget v6, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->mScreenWidth:I

    neg-int v6, v6

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2a

    :cond_44
    if-lez v1, :cond_55

    iget-object v6, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->this$0:Lco/vine/android/views/HorizontalListView;

    #calls: Lco/vine/android/views/HorizontalListView;->getOverflowLeft()I
    invoke-static {v6}, Lco/vine/android/views/HorizontalListView;->access$1800(Lco/vine/android/views/HorizontalListView;)I

    move-result v1

    :goto_4c
    iget-object v6, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->this$0:Lco/vine/android/views/HorizontalListView;

    invoke-virtual {v6, v1, v1}, Lco/vine/android/views/HorizontalListView;->scroll(II)Z

    invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView$FlingRunnable;->stop()V

    goto :goto_13

    :cond_55
    iget-object v6, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->this$0:Lco/vine/android/views/HorizontalListView;

    #calls: Lco/vine/android/views/HorizontalListView;->getOverflowRight()I
    invoke-static {v6}, Lco/vine/android/views/HorizontalListView;->access$1900(Lco/vine/android/views/HorizontalListView;)I

    move-result v6

    neg-int v1, v6

    goto :goto_4c

    :cond_5d
    invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView$FlingRunnable;->stop()V

    goto :goto_13
.end method

.method public start(I)V
    .registers 11

    const v6, 0x7fffffff

    const/4 v2, 0x0

    if-nez p1, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->this$0:Lco/vine/android/views/HorizontalListView;

    const/4 v3, 0x4

    #setter for: Lco/vine/android/views/HorizontalListView;->mTouchMode:I
    invoke-static {v0, v3}, Lco/vine/android/views/HorizontalListView;->access$002(Lco/vine/android/views/HorizontalListView;I)I

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->this$0:Lco/vine/android/views/HorizontalListView;

    invoke-virtual {v0}, Lco/vine/android/views/HorizontalListView;->getWidth()I

    move-result v0

    iget-object v3, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->this$0:Lco/vine/android/views/HorizontalListView;

    invoke-virtual {v3}, Lco/vine/android/views/HorizontalListView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->this$0:Lco/vine/android/views/HorizontalListView;

    invoke-virtual {v3}, Lco/vine/android/views/HorizontalListView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->mScreenWidth:I

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->this$0:Lco/vine/android/views/HorizontalListView;

    invoke-virtual {v0, p0}, Lco/vine/android/views/HorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-gez p1, :cond_3f

    move v1, v6

    :goto_2d
    iput v1, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->mLastFlingX:I

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->this$0:Lco/vine/android/views/HorizontalListView;

    invoke-virtual {v0, p0}, Lco/vine/android/views/HorizontalListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_3f
    move v1, v2

    goto :goto_2d
.end method

.method public stop()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->this$0:Lco/vine/android/views/HorizontalListView;

    #getter for: Lco/vine/android/views/HorizontalListView;->mTouchMode:I
    invoke-static {v0}, Lco/vine/android/views/HorizontalListView;->access$000(Lco/vine/android/views/HorizontalListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->this$0:Lco/vine/android/views/HorizontalListView;

    const/4 v1, -0x1

    #setter for: Lco/vine/android/views/HorizontalListView;->mTouchMode:I
    invoke-static {v0, v1}, Lco/vine/android/views/HorizontalListView;->access$002(Lco/vine/android/views/HorizontalListView;I)I

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->this$0:Lco/vine/android/views/HorizontalListView;

    invoke-virtual {v0, p0}, Lco/vine/android/views/HorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$FlingRunnable;->this$0:Lco/vine/android/views/HorizontalListView;

    invoke-virtual {v0}, Lco/vine/android/views/HorizontalListView;->invalidate()V

    :cond_26
    return-void
.end method
