.class Lco/vine/android/dragsort/DragSortWidget$1;
.super Ljava/lang/Object;
.source "DragSortWidget.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/dragsort/DragSortWidget;->triggerSwapAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/dragsort/DragSortWidget;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$swapViewStartLeft:I

.field final synthetic val$to:I


# direct methods
.method constructor <init>(Lco/vine/android/dragsort/DragSortWidget;Landroid/view/ViewTreeObserver;II)V
    .registers 5

    iput-object p1, p0, Lco/vine/android/dragsort/DragSortWidget$1;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    iput-object p2, p0, Lco/vine/android/dragsort/DragSortWidget$1;->val$observer:Landroid/view/ViewTreeObserver;

    iput p3, p0, Lco/vine/android/dragsort/DragSortWidget$1;->val$to:I

    iput p4, p0, Lco/vine/android/dragsort/DragSortWidget$1;->val$swapViewStartLeft:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 10

    const/4 v8, 0x1

    iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget$1;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
    invoke-static {v4}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;

    move-result-object v4

    iget v5, p0, Lco/vine/android/dragsort/DragSortWidget$1;->val$to:I

    iget-object v6, p0, Lco/vine/android/dragsort/DragSortWidget$1;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mListView:Lco/vine/android/views/HorizontalListView;
    invoke-static {v6}, Lco/vine/android/dragsort/DragSortWidget;->access$000(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/views/HorizontalListView;

    move-result-object v6

    invoke-virtual {v6}, Lco/vine/android/views/HorizontalListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_47

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v4, p0, Lco/vine/android/dragsort/DragSortWidget$1;->val$swapViewStartLeft:I

    sub-int v1, v4, v2

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v8, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Lco/vine/android/dragsort/DragSortWidget$1$1;

    invoke-direct {v4, p0}, Lco/vine/android/dragsort/DragSortWidget$1$1;-><init>(Lco/vine/android/dragsort/DragSortWidget$1;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_47
    return v8
.end method
