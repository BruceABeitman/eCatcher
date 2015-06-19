.class public Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "LinearHoriScrollView.java"

# interfaces
.implements Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter$HoriDataSetObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/HorizontalScrollView;",
        "Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter$HoriDataSetObserver;"
    }
.end annotation


# instance fields
.field private childWidth:I

.field private mAdapter:Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mHalfCount:F

.field private mScreenWidth:I

.field private mShowCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mHalfCount:F

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mShowCount:I

    iput-object p1, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2, v2}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private resetViews()V
    .registers 6

    iget-object v1, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mAdapter:Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;

    invoke-virtual {v1}, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_f

    return-void

    :cond_f
    iget-object v1, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mAdapter:Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->initView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->childWidth:I

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method


# virtual methods
.method public deselectAll()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_a

    return-void

    :cond_a
    iget-object v2, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getItemView(I)Landroid/view/View;
    .registers 3

    if-ltz p1, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getLinearContainer()Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onAdd(I)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mAdapter:Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;

    iget-object v2, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->initView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->childWidth:I

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mScreenWidth:I

    iget v0, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mShowCount:I

    int-to-float v1, v1

    iget v2, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mHalfCount:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->childWidth:I

    return-void
.end method

.method public onInvalidated()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->resetViews()V

    return-void
.end method

.method public onRemove(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    return-void
.end method

.method public setAdapter(Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;)V
    .registers 3

    if-eqz p1, :cond_f

    iput-object p1, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mAdapter:Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mAdapter:Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->registerDataSetObserver(Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter$HoriDataSetObserver;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mAdapter:Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->notifyDataSetChange()V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mAdapter:Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;->unregisterDataSetObserver(Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter$HoriDataSetObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->mAdapter:Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;

    goto :goto_e
.end method

.method public smoothScrollTo(I)V
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->getItemView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-ge v0, v2, :cond_1f

    invoke-virtual {p0, v0, v5}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->smoothScrollTo(II)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    add-int v4, v2, v3

    if-le v0, v4, :cond_1e

    invoke-virtual {p0, v0, v5}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->smoothScrollTo(II)V

    goto :goto_1e
.end method
