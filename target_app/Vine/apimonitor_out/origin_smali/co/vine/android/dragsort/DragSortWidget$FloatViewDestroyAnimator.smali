.class Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;
.super Lco/vine/android/animation/SmoothAnimator;
.source "DragSortWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/dragsort/DragSortWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatViewDestroyAnimator"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/dragsort/DragSortWidget;


# direct methods
.method public constructor <init>(Lco/vine/android/dragsort/DragSortWidget;FI)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    invoke-direct {p0, p1, p2, p3}, Lco/vine/android/animation/SmoothAnimator;-><init>(Landroid/view/View;FI)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    const/4 v1, 0x0

    #setter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewAlpha:F
    invoke-static {v0, v1}, Lco/vine/android/dragsort/DragSortWidget;->access$1002(Lco/vine/android/dragsort/DragSortWidget;F)F

    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    const/4 v1, -0x1

    #setter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
    invoke-static {v0, v1}, Lco/vine/android/dragsort/DragSortWidget;->access$102(Lco/vine/android/dragsort/DragSortWidget;I)I

    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #calls: Lco/vine/android/dragsort/DragSortWidget;->destroyFloatView()V
    invoke-static {v0}, Lco/vine/android/dragsort/DragSortWidget;->access$1100(Lco/vine/android/dragsort/DragSortWidget;)V

    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #calls: Lco/vine/android/dragsort/DragSortWidget;->adjustItems()V
    invoke-static {v0}, Lco/vine/android/dragsort/DragSortWidget;->access$1200(Lco/vine/android/dragsort/DragSortWidget;)V

    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    invoke-virtual {v0}, Lco/vine/android/dragsort/DragSortWidget;->invalidate()V

    return-void
.end method

.method public onUpdate(FF)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    const/high16 v2, 0x3f80

    sub-float/2addr v2, p2

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    const/high16 v3, 0x4248

    sub-float/2addr v2, v3

    #setter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewAlpha:F
    invoke-static {v1, v2}, Lco/vine/android/dragsort/DragSortWidget;->access$1002(Lco/vine/android/dragsort/DragSortWidget;F)F

    iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewAlpha:F
    invoke-static {v2}, Lco/vine/android/dragsort/DragSortWidget;->access$1000(Lco/vine/android/dragsort/DragSortWidget;)F

    move-result v2

    cmpg-float v2, v2, v0

    if-gez v2, :cond_24

    :goto_1b
    #setter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewAlpha:F
    invoke-static {v1, v0}, Lco/vine/android/dragsort/DragSortWidget;->access$1002(Lco/vine/android/dragsort/DragSortWidget;F)F

    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    invoke-virtual {v0}, Lco/vine/android/dragsort/DragSortWidget;->invalidate()V

    return-void

    :cond_24
    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$FloatViewDestroyAnimator;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewAlpha:F
    invoke-static {v0}, Lco/vine/android/dragsort/DragSortWidget;->access$1000(Lco/vine/android/dragsort/DragSortWidget;)F

    move-result v0

    goto :goto_1b
.end method
