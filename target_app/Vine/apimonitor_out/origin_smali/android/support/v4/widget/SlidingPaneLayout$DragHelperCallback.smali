.class Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SlidingPaneLayout;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/support/v4/widget/SlidingPaneLayout$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 10

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    #getter for: Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;
    invoke-static {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->access$400(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    iget v5, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int v0, v4, v5

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    #getter for: Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I
    invoke-static {v4}, Landroid/support/v4/widget/SlidingPaneLayout;->access$700(Landroid/support/v4/widget/SlidingPaneLayout;)I

    move-result v4

    add-int v3, v0, v4

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    #getter for: Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I
    invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->access$700(Landroid/support/v4/widget/SlidingPaneLayout;)I

    move-result v0

    return v0
.end method

.method public onEdgeDragStarted(II)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    #getter for: Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->access$200(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    #getter for: Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->access$400(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    #getter for: Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->access$200(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    #getter for: Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F
    invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->access$300(Landroid/support/v4/widget/SlidingPaneLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_34

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    #getter for: Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->access$400(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    #getter for: Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->access$400(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelClosed(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    const/4 v1, 0x0

    #setter for: Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z
    invoke-static {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->access$502(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z

    :cond_33
    :goto_33
    return-void

    :cond_34
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    #getter for: Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->access$400(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelOpened(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    const/4 v1, 0x1

    #setter for: Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z
    invoke-static {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->access$502(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z

    goto :goto_33
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    #calls: Landroid/support/v4/widget/SlidingPaneLayout;->onPanelDragged(I)V
    invoke-static {v0, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->access$600(Landroid/support/v4/widget/SlidingPaneLayout;I)V

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidate()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    iget v3, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int v0, v2, v3

    cmpl-float v2, p2, v4

    if-gtz v2, :cond_25

    cmpl-float v2, p2, v4

    if-nez v2, :cond_2c

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    #getter for: Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F
    invoke-static {v2}, Landroid/support/v4/widget/SlidingPaneLayout;->access$300(Landroid/support/v4/widget/SlidingPaneLayout;)F

    move-result v2

    const/high16 v3, 0x3f00

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2c

    :cond_25
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    #getter for: Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I
    invoke-static {v2}, Landroid/support/v4/widget/SlidingPaneLayout;->access$700(Landroid/support/v4/widget/SlidingPaneLayout;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2c
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    #getter for: Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v2}, Landroid/support/v4/widget/SlidingPaneLayout;->access$200(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    #getter for: Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z
    invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->access$100(Landroid/support/v4/widget/SlidingPaneLayout;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    goto :goto_9
.end method
