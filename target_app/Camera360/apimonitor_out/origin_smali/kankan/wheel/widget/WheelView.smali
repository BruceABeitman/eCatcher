.class public Lkankan/wheel/widget/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# static fields
.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEM_OFFSET_PERCENT:I = 0x0

.field private static final PADDING:I = 0xa


# instance fields
.field private SHADOWS_COLORS:[I

.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkankan/wheel/widget/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private clickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkankan/wheel/widget/OnWheelClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private dataObserver:Landroid/database/DataSetObserver;

.field private drawShadows:Z

.field private firstItem:I

.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private itemHeight:I

.field private itemsLayout:Landroid/widget/LinearLayout;

.field private recycle:Lkankan/wheel/widget/WheelRecycle;

.field private scroller:Lkankan/wheel/widget/WheelScroller;

.field scrollingListener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkankan/wheel/widget/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

.field private visibleItems:I

.field private wheelBackground:I

.field private wheelForeground:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->SHADOWS_COLORS:[I

    iput v1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    const/4 v0, 0x5

    iput v0, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    iput v1, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    sget v0, Lkankan/wheel/R$drawable;->wheel_bg:I

    iput v0, p0, Lkankan/wheel/widget/WheelView;->wheelBackground:I

    sget v0, Lkankan/wheel/R$drawable;->wheel_val:I

    iput v0, p0, Lkankan/wheel/widget/WheelView;->wheelForeground:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkankan/wheel/widget/WheelView;->drawShadows:Z

    iput-boolean v1, p0, Lkankan/wheel/widget/WheelView;->isCyclic:Z

    new-instance v0, Lkankan/wheel/widget/WheelRecycle;

    invoke-direct {v0, p0}, Lkankan/wheel/widget/WheelRecycle;-><init>(Lkankan/wheel/widget/WheelView;)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->recycle:Lkankan/wheel/widget/WheelRecycle;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->changingListeners:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->scrollingListeners:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->clickingListeners:Ljava/util/List;

    new-instance v0, Lkankan/wheel/widget/WheelView$1;

    invoke-direct {v0, p0}, Lkankan/wheel/widget/WheelView$1;-><init>(Lkankan/wheel/widget/WheelView;)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->scrollingListener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;

    new-instance v0, Lkankan/wheel/widget/WheelView$2;

    invoke-direct {v0, p0}, Lkankan/wheel/widget/WheelView$2;-><init>(Lkankan/wheel/widget/WheelView;)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->initData(Landroid/content/Context;)V

    return-void

    :array_4e
    .array-data 0x4
        0x11t 0x11t 0x11t 0xfft
        0xaat 0xaat 0xaat 0x0t
        0xaat 0xaat 0xaat 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->SHADOWS_COLORS:[I

    iput v1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    const/4 v0, 0x5

    iput v0, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    iput v1, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    sget v0, Lkankan/wheel/R$drawable;->wheel_bg:I

    iput v0, p0, Lkankan/wheel/widget/WheelView;->wheelBackground:I

    sget v0, Lkankan/wheel/R$drawable;->wheel_val:I

    iput v0, p0, Lkankan/wheel/widget/WheelView;->wheelForeground:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkankan/wheel/widget/WheelView;->drawShadows:Z

    iput-boolean v1, p0, Lkankan/wheel/widget/WheelView;->isCyclic:Z

    new-instance v0, Lkankan/wheel/widget/WheelRecycle;

    invoke-direct {v0, p0}, Lkankan/wheel/widget/WheelRecycle;-><init>(Lkankan/wheel/widget/WheelView;)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->recycle:Lkankan/wheel/widget/WheelRecycle;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->changingListeners:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->scrollingListeners:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->clickingListeners:Ljava/util/List;

    new-instance v0, Lkankan/wheel/widget/WheelView$1;

    invoke-direct {v0, p0}, Lkankan/wheel/widget/WheelView$1;-><init>(Lkankan/wheel/widget/WheelView;)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->scrollingListener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;

    new-instance v0, Lkankan/wheel/widget/WheelView$2;

    invoke-direct {v0, p0}, Lkankan/wheel/widget/WheelView$2;-><init>(Lkankan/wheel/widget/WheelView;)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->initData(Landroid/content/Context;)V

    return-void

    :array_4e
    .array-data 0x4
        0x11t 0x11t 0x11t 0xfft
        0xaat 0xaat 0xaat 0x0t
        0xaat 0xaat 0xaat 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->SHADOWS_COLORS:[I

    iput v1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    const/4 v0, 0x5

    iput v0, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    iput v1, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    sget v0, Lkankan/wheel/R$drawable;->wheel_bg:I

    iput v0, p0, Lkankan/wheel/widget/WheelView;->wheelBackground:I

    sget v0, Lkankan/wheel/R$drawable;->wheel_val:I

    iput v0, p0, Lkankan/wheel/widget/WheelView;->wheelForeground:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkankan/wheel/widget/WheelView;->drawShadows:Z

    iput-boolean v1, p0, Lkankan/wheel/widget/WheelView;->isCyclic:Z

    new-instance v0, Lkankan/wheel/widget/WheelRecycle;

    invoke-direct {v0, p0}, Lkankan/wheel/widget/WheelRecycle;-><init>(Lkankan/wheel/widget/WheelView;)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->recycle:Lkankan/wheel/widget/WheelRecycle;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->changingListeners:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->scrollingListeners:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->clickingListeners:Ljava/util/List;

    new-instance v0, Lkankan/wheel/widget/WheelView$1;

    invoke-direct {v0, p0}, Lkankan/wheel/widget/WheelView$1;-><init>(Lkankan/wheel/widget/WheelView;)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->scrollingListener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;

    new-instance v0, Lkankan/wheel/widget/WheelView$2;

    invoke-direct {v0, p0}, Lkankan/wheel/widget/WheelView$2;-><init>(Lkankan/wheel/widget/WheelView;)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->initData(Landroid/content/Context;)V

    return-void

    :array_4e
    .array-data 0x4
        0x11t 0x11t 0x11t 0xfft
        0xaat 0xaat 0xaat 0x0t
        0xaat 0xaat 0xaat 0x0t
    .end array-data
.end method

.method static synthetic access$0(Lkankan/wheel/widget/WheelView;Z)V
    .registers 2

    iput-boolean p1, p0, Lkankan/wheel/widget/WheelView;->isScrollingPerformed:Z

    return-void
.end method

.method static synthetic access$1(Lkankan/wheel/widget/WheelView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$2(Lkankan/wheel/widget/WheelView;)I
    .registers 2

    iget v0, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    return v0
.end method

.method static synthetic access$3(Lkankan/wheel/widget/WheelView;I)V
    .registers 2

    iput p1, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    return-void
.end method

.method static synthetic access$4(Lkankan/wheel/widget/WheelView;)Lkankan/wheel/widget/WheelScroller;
    .registers 2

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->scroller:Lkankan/wheel/widget/WheelScroller;

    return-object v0
.end method

.method static synthetic access$5(Lkankan/wheel/widget/WheelView;)Z
    .registers 2

    iget-boolean v0, p0, Lkankan/wheel/widget/WheelView;->isScrollingPerformed:Z

    return v0
.end method

.method private addViewItem(IZ)Z
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    if-eqz p2, :cond_10

    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_e
    const/4 v1, 0x1

    :cond_f
    return v1

    :cond_10
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_e
.end method

.method private buildViewForMeasuring()V
    .registers 7

    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->recycle:Lkankan/wheel/widget/WheelRecycle;

    iget-object v3, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    new-instance v5, Lkankan/wheel/widget/ItemsRange;

    invoke-direct {v5}, Lkankan/wheel/widget/ItemsRange;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lkankan/wheel/widget/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILkankan/wheel/widget/ItemsRange;)I

    :goto_12
    iget v2, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    div-int/lit8 v0, v2, 0x2

    iget v2, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    add-int v1, v2, v0

    :goto_1a
    iget v2, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_24

    return-void

    :cond_20
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->createItemsLayout()V

    goto :goto_12

    :cond_24
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lkankan/wheel/widget/WheelView;->addViewItem(IZ)Z

    move-result v2

    if-eqz v2, :cond_2d

    iput v1, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a
.end method

.method private calculateLayoutWidth(II)I
    .registers 9

    const/high16 v5, 0x4000

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->initResourcesIfNecessary()V

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    if-ne p2, v5, :cond_37

    move v0, p1

    :cond_27
    :goto_27
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v0, -0x14

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    return v0

    :cond_37
    add-int/lit8 v0, v0, 0x14

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, -0x8000

    if-ne p2, v1, :cond_27

    if-ge p1, v0, :cond_27

    move v0, p1

    goto :goto_27
.end method

.method private createItemsLayout()V
    .registers 3

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_15

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_15
    return-void
.end method

.method private doScroll(I)V
    .registers 10

    iget v6, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    add-int/2addr v6, p1

    iput v6, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v3

    iget v6, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    div-int v0, v6, v3

    iget v6, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    sub-int v5, v6, v0

    iget-object v6, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    invoke-interface {v6}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    iget v6, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    rem-int v1, v6, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v7, v3, 0x2

    if-gt v6, v7, :cond_24

    const/4 v1, 0x0

    :cond_24
    iget-boolean v6, p0, Lkankan/wheel/widget/WheelView;->isCyclic:Z

    if-eqz v6, :cond_63

    if-lez v2, :cond_63

    if-lez v1, :cond_5a

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v0, v0, 0x1

    :cond_30
    :goto_30
    if-ltz v5, :cond_61

    rem-int/2addr v5, v2

    :cond_33
    :goto_33
    iget v4, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    iget v6, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    if-eq v5, v6, :cond_87

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lkankan/wheel/widget/WheelView;->setCurrentItem(IZ)V

    :goto_3d
    mul-int v6, v0, v3

    sub-int v6, v4, v6

    iput v6, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    iget v6, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_59

    iget v6, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v7

    rem-int/2addr v6, v7

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    :cond_59
    return-void

    :cond_5a
    if-gez v1, :cond_30

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    :cond_61
    add-int/2addr v5, v2

    goto :goto_30

    :cond_63
    if-gez v5, :cond_69

    iget v0, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    const/4 v5, 0x0

    goto :goto_33

    :cond_69
    if-lt v5, v2, :cond_73

    iget v6, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    sub-int/2addr v6, v2

    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v5, v2, -0x1

    goto :goto_33

    :cond_73
    if-lez v5, :cond_7c

    if-lez v1, :cond_7c

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_7c
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_33

    if-gez v1, :cond_33

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_33

    :cond_87
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->invalidate()V

    goto :goto_3d
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    const-wide v5, 0x3ff3333333333333L

    mul-double/2addr v3, v5

    double-to-int v1, v3

    iget-object v3, p0, Lkankan/wheel/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    sub-int v5, v0, v2

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v6

    add-int v7, v0, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lkankan/wheel/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    iget v2, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v2

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    const/high16 v1, 0x4120

    neg-int v2, v0

    iget v3, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .registers 8

    const/4 v5, 0x0

    const-wide/high16 v1, 0x3ff8

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v5, v5, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getDesiredHeight(Landroid/widget/LinearLayout;)I
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_13

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    :cond_13
    iget v1, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    iget v2, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    mul-int/2addr v1, v2

    iget v2, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    mul-int/lit8 v2, v2, 0x0

    div-int/lit8 v2, v2, 0x32

    sub-int v0, v1, v2

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getItemHeight()I
    .registers 3

    const/4 v1, 0x0

    iget v0, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    if-eqz v0, :cond_8

    iget v0, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    iget v0, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    goto :goto_7

    :cond_23
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    goto :goto_7
.end method

.method private getItemView(I)Landroid/view/View;
    .registers 6

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    invoke-interface {v1}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v1

    if-nez v1, :cond_e

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1

    :cond_e
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    invoke-interface {v1}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->recycle:Lkankan/wheel/widget/WheelRecycle;

    invoke-virtual {v2}, Lkankan/wheel/widget/WheelRecycle;->getEmptyItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2, v3}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_d

    :cond_29
    add-int/2addr p1, v0

    :cond_2a
    if-ltz p1, :cond_29

    rem-int/2addr p1, v0

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->recycle:Lkankan/wheel/widget/WheelRecycle;

    invoke-virtual {v2}, Lkankan/wheel/widget/WheelRecycle;->getItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v1, p1, v2, v3}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_d
.end method

.method private getItemsRange()Lkankan/wheel/widget/ItemsRange;
    .registers 8

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    :goto_7
    return-object v3

    :cond_8
    iget v2, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    const/4 v0, 0x1

    :goto_b
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_39

    iget v3, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    if-eqz v3, :cond_33

    iget v3, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    if-lez v3, :cond_20

    add-int/lit8 v2, v2, -0x1

    :cond_20
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v4

    div-int v1, v3, v4

    sub-int/2addr v2, v1

    int-to-double v3, v0

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-int v0, v3

    :cond_33
    new-instance v3, Lkankan/wheel/widget/ItemsRange;

    invoke-direct {v3, v2, v0}, Lkankan/wheel/widget/ItemsRange;-><init>(II)V

    goto :goto_7

    :cond_39
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_b
.end method

.method private initData(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lkankan/wheel/widget/WheelScroller;

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->scrollingListener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;

    invoke-direct {v0, v1, v2}, Lkankan/wheel/widget/WheelScroller;-><init>(Landroid/content/Context;Lkankan/wheel/widget/WheelScroller$ScrollingListener;)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->scroller:Lkankan/wheel/widget/WheelScroller;

    return-void
.end method

.method private initResourcesIfNecessary()V
    .registers 4

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lkankan/wheel/widget/WheelView;->wheelForeground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    :cond_14
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_23

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    :cond_23
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_32

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    :cond_32
    iget v0, p0, Lkankan/wheel/widget/WheelView;->wheelBackground:I

    invoke-virtual {p0, v0}, Lkankan/wheel/widget/WheelView;->setBackgroundResource(I)V

    return-void
.end method

.method private isValidItemIndex(I)Z
    .registers 3

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1c

    iget-boolean v0, p0, Lkankan/wheel/widget/WheelView;->isCyclic:Z

    if-nez v0, :cond_1a

    if-ltz p1, :cond_1c

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private layout(II)V
    .registers 6

    const/4 v2, 0x0

    add-int/lit8 v0, p1, -0x14

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v2, v0, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method private rebuildItems()Z
    .registers 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemsRange()Lkankan/wheel/widget/ItemsRange;

    move-result-object v2

    iget-object v6, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_60

    iget-object v6, p0, Lkankan/wheel/widget/WheelView;->recycle:Lkankan/wheel/widget/WheelRecycle;

    iget-object v7, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v8, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    invoke-virtual {v6, v7, v8, v2}, Lkankan/wheel/widget/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILkankan/wheel/widget/ItemsRange;)I

    move-result v0

    iget v6, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    if-eq v6, v0, :cond_5e

    move v3, v4

    :goto_1a
    iput v0, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    :goto_1c
    if-nez v3, :cond_33

    iget v6, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    invoke-virtual {v2}, Lkankan/wheel/widget/ItemsRange;->getFirst()I

    move-result v7

    if-ne v6, v7, :cond_65

    iget-object v6, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    invoke-virtual {v2}, Lkankan/wheel/widget/ItemsRange;->getCount()I

    move-result v7

    if-ne v6, v7, :cond_65

    move v3, v5

    :cond_33
    :goto_33
    iget v6, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    invoke-virtual {v2}, Lkankan/wheel/widget/ItemsRange;->getFirst()I

    move-result v7

    if-le v6, v7, :cond_72

    iget v6, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    invoke-virtual {v2}, Lkankan/wheel/widget/ItemsRange;->getLast()I

    move-result v7

    if-gt v6, v7, :cond_72

    iget v6, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    add-int/lit8 v1, v6, -0x1

    :goto_47
    invoke-virtual {v2}, Lkankan/wheel/widget/ItemsRange;->getFirst()I

    move-result v6

    if-ge v1, v6, :cond_67

    :cond_4d
    :goto_4d
    iget v0, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    iget-object v4, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    :goto_55
    invoke-virtual {v2}, Lkankan/wheel/widget/ItemsRange;->getCount()I

    move-result v4

    if-lt v1, v4, :cond_79

    iput v0, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    return v3

    :cond_5e
    move v3, v5

    goto :goto_1a

    :cond_60
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->createItemsLayout()V

    const/4 v3, 0x1

    goto :goto_1c

    :cond_65
    move v3, v4

    goto :goto_33

    :cond_67
    invoke-direct {p0, v1, v4}, Lkankan/wheel/widget/WheelView;->addViewItem(IZ)Z

    move-result v6

    if-eqz v6, :cond_4d

    iput v1, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_47

    :cond_72
    invoke-virtual {v2}, Lkankan/wheel/widget/ItemsRange;->getFirst()I

    move-result v4

    iput v4, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    goto :goto_4d

    :cond_79
    iget v4, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4, v5}, Lkankan/wheel/widget/WheelView;->addViewItem(IZ)Z

    move-result v4

    if-nez v4, :cond_8c

    iget-object v4, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-nez v4, :cond_8c

    add-int/lit8 v0, v0, 0x1

    :cond_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_55
.end method

.method private updateView()V
    .registers 3

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->rebuildItems()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-direct {p0, v0, v1}, Lkankan/wheel/widget/WheelView;->calculateLayoutWidth(II)I

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lkankan/wheel/widget/WheelView;->layout(II)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V
    .registers 3

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addClickingListener(Lkankan/wheel/widget/OnWheelClickedListener;)V
    .registers 3

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScrollingListener(Lkankan/wheel/widget/OnWheelScrollListener;)V
    .registers 3

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public drawShadows()Z
    .registers 2

    iget-boolean v0, p0, Lkankan/wheel/widget/WheelView;->drawShadows:Z

    return v0
.end method

.method public getCurrentItem()I
    .registers 2

    iget v0, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    return v0
.end method

.method public getViewAdapter()Lkankan/wheel/widget/adapters/WheelViewAdapter;
    .registers 2

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    return-object v0
.end method

.method public getVisibleItems()I
    .registers 2

    iget v0, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    return v0
.end method

.method public invalidateWheel(Z)V
    .registers 6

    if-eqz p1, :cond_17

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->recycle:Lkankan/wheel/widget/WheelRecycle;

    invoke-virtual {v0}, Lkankan/wheel/widget/WheelRecycle;->clearAll()V

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_10
    const/4 v0, 0x0

    iput v0, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    :cond_13
    :goto_13
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->invalidate()V

    return-void

    :cond_17
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->recycle:Lkankan/wheel/widget/WheelRecycle;

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    new-instance v3, Lkankan/wheel/widget/ItemsRange;

    invoke-direct {v3}, Lkankan/wheel/widget/ItemsRange;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lkankan/wheel/widget/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILkankan/wheel/widget/ItemsRange;)I

    goto :goto_13
.end method

.method public isCyclic()Z
    .registers 2

    iget-boolean v0, p0, Lkankan/wheel/widget/WheelView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(II)V
    .registers 6

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkankan/wheel/widget/OnWheelChangedListener;

    invoke-interface {v0, p0, p1, p2}, Lkankan/wheel/widget/OnWheelChangedListener;->onChanged(Lkankan/wheel/widget/WheelView;II)V

    goto :goto_6
.end method

.method protected notifyClickListenersAboutClick(I)V
    .registers 5

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkankan/wheel/widget/OnWheelClickedListener;

    invoke-interface {v0, p0, p1}, Lkankan/wheel/widget/OnWheelClickedListener;->onItemClicked(Lkankan/wheel/widget/WheelView;I)V

    goto :goto_6
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .registers 4

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkankan/wheel/widget/OnWheelScrollListener;

    invoke-interface {v0, p0}, Lkankan/wheel/widget/OnWheelScrollListener;->onScrollingFinished(Lkankan/wheel/widget/WheelView;)V

    goto :goto_6
.end method

.method protected notifyScrollingListenersAboutStart()V
    .registers 4

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkankan/wheel/widget/OnWheelScrollListener;

    invoke-interface {v0, p0}, Lkankan/wheel/widget/OnWheelScrollListener;->onScrollingStarted(Lkankan/wheel/widget/WheelView;)V

    goto :goto_6
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    if-eqz v4, :cond_21

    iget-object v4, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    invoke-interface {v4}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v4

    if-lez v4, :cond_21

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->updateView()V

    const/4 v1, 0x0

    :goto_13
    iget-object v4, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lt v1, v4, :cond_29

    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->drawCenterRect(Landroid/graphics/Canvas;)V

    :cond_21
    iget-boolean v4, p0, Lkankan/wheel/widget/WheelView;->drawShadows:Z

    if-eqz v4, :cond_28

    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->drawShadows(Landroid/graphics/Canvas;)V

    :cond_28
    return-void

    :cond_29
    iget-object v4, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_59

    iget-object v4, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    instance-of v4, v4, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;

    if-eqz v4, :cond_59

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    check-cast v0, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v5

    invoke-virtual {v0, v5}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-virtual {v0}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->getTextSelectedColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_59
    :goto_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_5c
    invoke-virtual {v0}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->getTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_59
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lkankan/wheel/widget/WheelView;->layout(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->buildViewForMeasuring()V

    invoke-direct {p0, v5, v4}, Lkankan/wheel/widget/WheelView;->calculateLayoutWidth(II)I

    move-result v3

    const/high16 v6, 0x4000

    if-ne v1, v6, :cond_20

    move v0, v2

    :cond_1c
    :goto_1c
    invoke-virtual {p0, v3, v0}, Lkankan/wheel/widget/WheelView;->setMeasuredDimension(II)V

    return-void

    :cond_20
    iget-object v6, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6}, Lkankan/wheel/widget/WheelView;->getDesiredHeight(Landroid/widget/LinearLayout;)I

    move-result v0

    const/high16 v6, -0x8000

    if-ne v1, v6, :cond_1c

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1c
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v2, 0x1

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getViewAdapter()Lkankan/wheel/widget/adapters/WheelViewAdapter;

    move-result-object v3

    if-nez v3, :cond_e

    :cond_d
    :goto_d
    return v2

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_64

    :cond_15
    :goto_15
    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->scroller:Lkankan/wheel/widget/WheelScroller;

    invoke-virtual {v2, p1}, Lkankan/wheel/widget/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_d

    :pswitch_1c
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_15

    :pswitch_2a
    iget-boolean v2, p0, Lkankan/wheel/widget/WheelView;->isScrollingPerformed:Z

    if-nez v2, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    if-lez v0, :cond_5c

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    :goto_44
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v2

    div-int v1, v0, v2

    if-eqz v1, :cond_15

    iget v2, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lkankan/wheel/widget/WheelView;->isValidItemIndex(I)Z

    move-result v2

    if-eqz v2, :cond_15

    iget v2, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lkankan/wheel/widget/WheelView;->notifyClickListenersAboutClick(I)V

    goto :goto_15

    :cond_5c
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_44

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_1c
    .end packed-switch
.end method

.method public removeChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V
    .registers 3

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeClickingListener(Lkankan/wheel/widget/OnWheelClickedListener;)V
    .registers 3

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeScrollingListener(Lkankan/wheel/widget/OnWheelScrollListener;)V
    .registers 3

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scroll(II)V
    .registers 6

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v1

    mul-int/2addr v1, p1

    iget v2, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    sub-int v0, v1, v2

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->scroller:Lkankan/wheel/widget/WheelScroller;

    invoke-virtual {v1, v0, p2}, Lkankan/wheel/widget/WheelScroller;->scroll(II)V

    return-void
.end method

.method public setCurrentItem(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lkankan/wheel/widget/WheelView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 10

    const/4 v6, 0x0

    iget-object v4, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    invoke-interface {v4}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v4

    if-nez v4, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v4, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    invoke-interface {v4}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ltz p1, :cond_18

    if-lt p1, v0, :cond_1f

    :cond_18
    iget-boolean v4, p0, Lkankan/wheel/widget/WheelView;->isCyclic:Z

    if-eqz v4, :cond_d

    :goto_1c
    if-ltz p1, :cond_49

    rem-int/2addr p1, v0

    :cond_1f
    iget v4, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    if-eq p1, v4, :cond_d

    if-eqz p2, :cond_4d

    iget v4, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    sub-int v1, p1, v4

    iget-boolean v4, p0, Lkankan/wheel/widget/WheelView;->isCyclic:Z

    if-eqz v4, :cond_45

    iget v4, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v0

    iget v5, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v3, v4, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_45

    if-gez v1, :cond_4b

    move v1, v3

    :cond_45
    :goto_45
    invoke-virtual {p0, v1, v6}, Lkankan/wheel/widget/WheelView;->scroll(II)V

    goto :goto_d

    :cond_49
    add-int/2addr p1, v0

    goto :goto_1c

    :cond_4b
    neg-int v1, v3

    goto :goto_45

    :cond_4d
    iput v6, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    iget v2, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    iput p1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    iget v4, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    invoke-virtual {p0, v2, v4}, Lkankan/wheel/widget/WheelView;->notifyChangingListeners(II)V

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->invalidate()V

    goto :goto_d
.end method

.method public setCyclic(Z)V
    .registers 3

    iput-boolean p1, p0, Lkankan/wheel/widget/WheelView;->isCyclic:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkankan/wheel/widget/WheelView;->invalidateWheel(Z)V

    return-void
.end method

.method public setDrawShadows(Z)V
    .registers 2

    iput-boolean p1, p0, Lkankan/wheel/widget/WheelView;->drawShadows:Z

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->scroller:Lkankan/wheel/widget/WheelScroller;

    invoke-virtual {v0, p1}, Lkankan/wheel/widget/WheelScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setShadowColor(III)V
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->SHADOWS_COLORS:[I

    return-void
.end method

.method public setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V
    .registers 4

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_b
    iput-object p1, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkankan/wheel/widget/WheelView;->invalidateWheel(Z)V

    return-void
.end method

.method public setVisibleItems(I)V
    .registers 2

    iput p1, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    return-void
.end method

.method public setWheelBackground(I)V
    .registers 3

    iput p1, p0, Lkankan/wheel/widget/WheelView;->wheelBackground:I

    iget v0, p0, Lkankan/wheel/widget/WheelView;->wheelBackground:I

    invoke-virtual {p0, v0}, Lkankan/wheel/widget/WheelView;->setBackgroundResource(I)V

    return-void
.end method

.method public setWheelForeground(I)V
    .registers 4

    iput p1, p0, Lkankan/wheel/widget/WheelView;->wheelForeground:I

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lkankan/wheel/widget/WheelView;->wheelForeground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public stopScrolling()V
    .registers 2

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->scroller:Lkankan/wheel/widget/WheelScroller;

    invoke-virtual {v0}, Lkankan/wheel/widget/WheelScroller;->stopScrolling()V

    return-void
.end method
