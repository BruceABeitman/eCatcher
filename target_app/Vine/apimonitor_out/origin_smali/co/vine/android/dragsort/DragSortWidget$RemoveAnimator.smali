.class Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;
.super Lco/vine/android/animation/SmoothAnimator;
.source "DragSortWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/dragsort/DragSortWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveAnimator"
.end annotation


# instance fields
.field private mWidth:I

.field final synthetic this$0:Lco/vine/android/dragsort/DragSortWidget;


# direct methods
.method public constructor <init>(Lco/vine/android/dragsort/DragSortWidget;FI)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    invoke-direct {p0, p1, p2, p3}, Lco/vine/android/animation/SmoothAnimator;-><init>(Landroid/view/View;FI)V

    return-void
.end method

.method static synthetic access$2700(Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;)I
    .registers 2

    iget v0, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->mWidth:I

    return v0
.end method


# virtual methods
.method public onStart()V
    .registers 6

    const/4 v4, 0x1

    iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
    invoke-static {v2}, Lco/vine/android/dragsort/DragSortWidget;->access$2200(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v2

    #setter for: Lco/vine/android/dragsort/DragSortWidget;->mRemovePosition:I
    invoke-static {v1, v2}, Lco/vine/android/dragsort/DragSortWidget;->access$2102(Lco/vine/android/dragsort/DragSortWidget;I)I

    iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
    invoke-static {v1}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mRemovePosition:I
    invoke-static {v2}, Lco/vine/android/dragsort/DragSortWidget;->access$2100(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v2

    iget-object v3, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
    invoke-static {v3}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/views/HorizontalListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->mWidth:I

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->mDurationF:F

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_44
    check-cast v0, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;

    iput-boolean v4, v0, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->hasTransientState:Z

    iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    iput-boolean v4, v1, Lco/vine/android/dragsort/DragSortWidget;->mRemoving:Z

    :goto_4c
    return-void

    :cond_4d
    iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #calls: Lco/vine/android/dragsort/DragSortWidget;->finishRemoveSelection()V
    invoke-static {v1}, Lco/vine/android/dragsort/DragSortWidget;->access$2300(Lco/vine/android/dragsort/DragSortWidget;)V

    invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->cancel()V

    goto :goto_4c
.end method

.method public onStop()V
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
    invoke-static {v1}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mRemovePosition:I
    invoke-static {v2}, Lco/vine/android/dragsort/DragSortWidget;->access$2100(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v2

    iget-object v3, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
    invoke-static {v3}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/views/HorizontalListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_33

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    check-cast v0, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;

    iput-boolean v4, v0, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->hasTransientState:Z

    :cond_33
    iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #calls: Lco/vine/android/dragsort/DragSortWidget;->finishRemoveSelection()V
    invoke-static {v1}, Lco/vine/android/dragsort/DragSortWidget;->access$2300(Lco/vine/android/dragsort/DragSortWidget;)V

    iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    iput-boolean v4, v1, Lco/vine/android/dragsort/DragSortWidget;->mRemoving:Z

    return-void
.end method

.method public onUpdate(FF)V
    .registers 9

    iget-object v3, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
    invoke-static {v3}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mRemovePosition:I
    invoke-static {v4}, Lco/vine/android/dragsort/DragSortWidget;->access$2100(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v4

    iget-object v5, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
    invoke-static {v5}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/views/HorizontalListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_49

    const/high16 v3, 0x3f80

    sub-float v0, v3, p2

    iget v3, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->mWidth:I

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->mWidth:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
    invoke-static {v3}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/views/HorizontalListView;->forceLayout()V

    :goto_3f
    iget-object v3, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
    invoke-static {v3}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/views/HorizontalListView;->invalidate()V

    return-void

    :cond_49
    iget-object v3, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #calls: Lco/vine/android/dragsort/DragSortWidget;->finishRemoveSelection()V
    invoke-static {v3}, Lco/vine/android/dragsort/DragSortWidget;->access$2300(Lco/vine/android/dragsort/DragSortWidget;)V

    iget-object v3, p0, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lco/vine/android/dragsort/DragSortWidget;->mRemoving:Z

    invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->cancel()V

    goto :goto_3f
.end method
