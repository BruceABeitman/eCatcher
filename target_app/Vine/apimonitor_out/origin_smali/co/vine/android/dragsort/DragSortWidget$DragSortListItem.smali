.class public Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;
.super Landroid/view/ViewGroup;
.source "DragSortWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/dragsort/DragSortWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragSortListItem"
.end annotation


# instance fields
.field public hasTransientState:Z

.field final synthetic this$0:Lco/vine/android/dragsort/DragSortWidget;


# direct methods
.method public constructor <init>(Lco/vine/android/dragsort/DragSortWidget;Landroid/content/Context;)V
    .registers 6

    iput-object p1, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->hasTransientState:Z

    new-instance v0, Lco/vine/android/views/HorizontalListView$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lco/vine/android/views/HorizontalListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_13
    return-object v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public onLayout(ZIIII)V
    .registers 11

    const/4 v4, 0x0

    iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mActivatedDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lco/vine/android/dragsort/DragSortWidget;->access$2400(Lco/vine/android/dragsort/DragSortWidget;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mActivatedDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lco/vine/android/dragsort/DragSortWidget;->access$2400(Lco/vine/android/dragsort/DragSortWidget;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1a
    invoke-virtual {p0, v4}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_2b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    const/4 v6, 0x0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-virtual {p0, v6}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_17

    invoke-virtual {p0, v6, v6}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->setMeasuredDimension(II)V

    :goto_16
    return-void

    :cond_17
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0, v0, v5, p2}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->measureChild(Landroid/view/View;II)V

    :cond_24
    if-nez v4, :cond_34

    invoke-virtual {p0}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v5, :cond_32

    iget-boolean v5, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->hasTransientState:Z

    if-eqz v5, :cond_38

    :cond_32
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_34
    :goto_34
    invoke-virtual {p0, v3, v1}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->setMeasuredDimension(II)V

    goto :goto_16

    :cond_38
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    goto :goto_34
.end method
