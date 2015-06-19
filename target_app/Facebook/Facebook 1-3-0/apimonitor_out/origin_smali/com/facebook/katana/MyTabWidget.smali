.class public Lcom/facebook/katana/MyTabWidget;
.super Landroid/widget/LinearLayout;
.source "MyTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/MyTabWidget$OnTabSelectionChanged;,
        Lcom/facebook/katana/MyTabWidget$TabClickListener;
    }
.end annotation


# instance fields
.field private mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mBottomRightStrip:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedTab:I

.field private mSelectionChangedListener:Lcom/facebook/katana/MyTabWidget$OnTabSelectionChanged;

.field private mStripMoved:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/MyTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/MyTabWidget;->mSelectedTab:I

    iput-object p1, p0, Lcom/facebook/katana/MyTabWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/facebook/katana/MyTabWidget;->initTabWidget()V

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/katana/MyTabWidget;)Lcom/facebook/katana/MyTabWidget$OnTabSelectionChanged;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/MyTabWidget;->mSelectionChangedListener:Lcom/facebook/katana/MyTabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/MyTabWidget;->setOrientation(I)V

    iget-object v0, p0, Lcom/facebook/katana/MyTabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/MyTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/facebook/katana/MyTabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/MyTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/MyTabWidget;->setFocusable(Z)V

    invoke-virtual {p0, p0}, Lcom/facebook/katana/MyTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 8

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_16

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v3, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_16
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/facebook/katana/MyTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_46

    invoke-virtual {p0}, Lcom/facebook/katana/MyTabWidget;->getTabCount()I

    move-result v2

    if-lez v2, :cond_46

    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/facebook/katana/MyTabWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/facebook/katana/MyTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/facebook/katana/MyTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_46
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/facebook/katana/MyTabWidget$TabClickListener;

    invoke-virtual {p0}, Lcom/facebook/katana/MyTabWidget;->getTabCount()I

    move-result v3

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/facebook/katana/MyTabWidget$TabClickListener;-><init>(Lcom/facebook/katana/MyTabWidget;ILcom/facebook/katana/MyTabWidget$TabClickListener;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/facebook/katana/MyTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/facebook/katana/MyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Lcom/facebook/katana/MyTabWidget;->invalidate()V

    :cond_b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v3, p0, Lcom/facebook/katana/MyTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v3}, Lcom/facebook/katana/MyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/MyTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v3, p0, Lcom/facebook/katana/MyTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-boolean v3, p0, Lcom/facebook/katana/MyTabWidget;->mStripMoved:Z

    if-eqz v3, :cond_77

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/facebook/katana/MyTabWidget;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/facebook/katana/MyTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/facebook/katana/MyTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lcom/facebook/katana/MyTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v0, v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/facebook/katana/MyTabWidget;->getHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/facebook/katana/MyTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/facebook/katana/MyTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Lcom/facebook/katana/MyTabWidget;->getWidth()I

    move-result v6

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/facebook/katana/MyTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput-boolean v9, p0, Lcom/facebook/katana/MyTabWidget;->mStripMoved:Z

    :cond_77
    iget-object v3, p0, Lcom/facebook/katana/MyTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/facebook/katana/MyTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public focusCurrentTab(I)V
    .registers 4

    iget v0, p0, Lcom/facebook/katana/MyTabWidget;->mSelectedTab:I

    invoke-virtual {p0, p1}, Lcom/facebook/katana/MyTabWidget;->setCurrentTab(I)V

    if-eq v0, p1, :cond_e

    invoke-virtual {p0, p1}, Lcom/facebook/katana/MyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_e
    return-void
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/MyTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    mul-int/lit8 p1, p1, 0x2

    :cond_6
    invoke-virtual {p0, p1}, Lcom/facebook/katana/MyTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTabCount()I
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/katana/MyTabWidget;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/katana/MyTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v0, v1, 0x2

    :cond_c
    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 7

    if-ne p1, p0, :cond_e

    if-eqz p2, :cond_e

    iget v2, p0, Lcom/facebook/katana/MyTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/facebook/katana/MyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_d
    :goto_d
    return-void

    :cond_e
    if-eqz p2, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/facebook/katana/MyTabWidget;->getTabCount()I

    move-result v1

    :goto_15
    if-ge v0, v1, :cond_d

    invoke-virtual {p0, v0}, Lcom/facebook/katana/MyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_27

    invoke-virtual {p0, v0}, Lcom/facebook/katana/MyTabWidget;->setCurrentTab(I)V

    iget-object v2, p0, Lcom/facebook/katana/MyTabWidget;->mSelectionChangedListener:Lcom/facebook/katana/MyTabWidget$OnTabSelectionChanged;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/facebook/katana/MyTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    goto :goto_d

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/MyTabWidget;->mStripMoved:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public setCurrentTab(I)V
    .registers 5

    const/4 v2, 0x1

    if-ltz p1, :cond_9

    invoke-virtual {p0}, Lcom/facebook/katana/MyTabWidget;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget v0, p0, Lcom/facebook/katana/MyTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/facebook/katana/MyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iput p1, p0, Lcom/facebook/katana/MyTabWidget;->mSelectedTab:I

    iget v0, p0, Lcom/facebook/katana/MyTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/facebook/katana/MyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iput-boolean v2, p0, Lcom/facebook/katana/MyTabWidget;->mStripMoved:Z

    goto :goto_9
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/MyTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setEnabled(Z)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/facebook/katana/MyTabWidget;->getTabCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_8
    if-lt v2, v1, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0, v2}, Lcom/facebook/katana/MyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method setTabSelectionListener(Lcom/facebook/katana/MyTabWidget$OnTabSelectionChanged;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/MyTabWidget;->mSelectionChangedListener:Lcom/facebook/katana/MyTabWidget$OnTabSelectionChanged;

    return-void
.end method
