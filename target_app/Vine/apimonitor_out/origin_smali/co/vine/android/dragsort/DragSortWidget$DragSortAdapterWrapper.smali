.class public Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "DragSortWidget.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/dragsort/DragSortWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragSortAdapterWrapper"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mObserver:Landroid/database/DataSetObserver;

.field final synthetic this$0:Lco/vine/android/dragsort/DragSortWidget;


# direct methods
.method public constructor <init>(Lco/vine/android/dragsort/DragSortWidget;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper$1;

    invoke-direct {v0, p0}, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper$1;-><init>(Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;)V

    iput-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->mObserver:Landroid/database/DataSetObserver;

    iput-object p2, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/4 v5, 0x0

    if-eqz p2, :cond_65

    move-object v1, p2

    check-cast v1, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;

    invoke-virtual {v1, p1}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1, v3, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_10
    invoke-virtual {v1}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->removeAllViews()V

    invoke-virtual {v1, v0}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
    invoke-static {v4}, Lco/vine/android/dragsort/DragSortWidget;->access$2200(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v4

    if-ne p1, v4, :cond_76

    const/4 v4, 0x1

    :goto_1f
    invoke-virtual {v1, v4}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->setActivated(Z)V

    iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mFocusedPosition:I
    invoke-static {v4}, Lco/vine/android/dragsort/DragSortWidget;->access$2500(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v4

    if-ne p1, v4, :cond_78

    const/high16 v4, 0x3f80

    :goto_2c
    invoke-virtual {v1, v4}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->setAlpha(F)V

    invoke-virtual {v1}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    iget-boolean v4, v4, Lco/vine/android/dragsort/DragSortWidget;->mRemoving:Z

    if-eqz v4, :cond_7c

    iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mRemovePosition:I
    invoke-static {v4}, Lco/vine/android/dragsort/DragSortWidget;->access$2100(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v4

    if-ne p1, v4, :cond_7c

    iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mRemoveAnimator:Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;
    invoke-static {v4}, Lco/vine/android/dragsort/DragSortWidget;->access$2600(Lco/vine/android/dragsort/DragSortWidget;)Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;

    move-result-object v4

    #getter for: Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->mWidth:I
    invoke-static {v4}, Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;->access$2700(Lco/vine/android/dragsort/DragSortWidget$RemoveAnimator;)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_4d
    invoke-virtual {v1, v2}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatView:Landroid/widget/ImageView;
    invoke-static {v4}, Lco/vine/android/dragsort/DragSortWidget;->access$2800(Lco/vine/android/dragsort/DragSortWidget;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_7f

    iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
    invoke-static {v4}, Lco/vine/android/dragsort/DragSortWidget;->access$100(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v4

    if-ne p1, v4, :cond_7f

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->setVisibility(I)V

    :goto_64
    return-object v1

    :cond_65
    iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v6, 0x0

    invoke-interface {v4, p1, v6, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;

    iget-object v4, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    iget-object v6, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v6}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;-><init>(Lco/vine/android/dragsort/DragSortWidget;Landroid/content/Context;)V

    goto :goto_10

    :cond_76
    move v4, v5

    goto :goto_1f

    :cond_78
    const v4, 0x3e99999a

    goto :goto_2c

    :cond_7c
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_4d

    :cond_7f
    invoke-virtual {v1, v5}, Lco/vine/android/dragsort/DragSortWidget$DragSortListItem;->setVisibility(I)V

    goto :goto_64
.end method

.method public isEnabled(I)Z
    .registers 3

    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$DragSortAdapterWrapper;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_9
    return-void
.end method
