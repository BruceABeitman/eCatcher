.class public Landroid/support/v7/internal/widget/ActionBarContextView;
.super Landroid/support/v7/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"
.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"
.field private mClose:Landroid/view/View;
.field private mCustomView:Landroid/view/View;
.field private mSplitBackground:Landroid/graphics/drawable/Drawable;
.field private mSubtitle:Ljava/lang/CharSequence;
.field private mSubtitleStyleRes:I
.field private mSubtitleView:Landroid/widget/TextView;
.field private mTitle:Ljava/lang/CharSequence;
.field private mTitleLayout:Landroid/widget/LinearLayout;
.field private mTitleOptional:Z
.field private mTitleStyleRes:I
.field private mTitleView:Landroid/widget/TextView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Landroid/support/v7/appcompat/R$attr;->actionModeStyle:I
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 7
const/4 v2, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ActionMode:[I
invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
const/4 v1, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleStyleRes:I
const/4 v1, 0x2
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I
invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method private initTitle()V
.registers 10
const/16 v6, 0x8
const/4 v4, 0x1
const/4 v5, 0x0
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;
if-nez v3, :cond_59
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v2
sget v3, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_title_item:I
invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildCount()I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/LinearLayout;
iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;
sget v7, Landroid/support/v7/appcompat/R$id;->action_bar_title:I
invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;
sget v7, Landroid/support/v7/appcompat/R$id;->action_bar_subtitle:I
invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;
iget v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleStyleRes:I
if-eqz v3, :cond_4a
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;
move-result-object v7
iget v8, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleStyleRes:I
invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
:cond_4a
iget v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I
if-eqz v3, :cond_59
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;
move-result-object v7
iget v8, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I
invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
:cond_59
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;
iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;
invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;
iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;
invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_99
move v1, v4
:goto_70
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_9b
move v0, v4
:goto_79
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;
if-eqz v0, :cond_9d
move v3, v5
:goto_7e
invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;
if-nez v1, :cond_87
if-eqz v0, :cond_88
:cond_87
move v6, v5
:cond_88
invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;
invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;
move-result-object v3
if-nez v3, :cond_98
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;
invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V
:cond_98
return-void
:cond_99
move v1, v5
goto :goto_70
:cond_9b
move v0, v5
goto :goto_79
:cond_9d
move v3, v6
goto :goto_7e
.end method
.method public bridge synthetic animateToVisibility(I)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->animateToVisibility(I)V
return-void
.end method
.method public closeMode()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;
if-nez v0, :cond_7
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->killMode()V
:cond_7
return-void
.end method
.method public bridge synthetic dismissPopupMenus()V
.registers 1
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->dismissPopupMenus()V
return-void
.end method
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 4
new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;
const/4 v1, -0x1
const/4 v2, -0x2
invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V
return-object v0
.end method
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
.registers 4
new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-object v0
.end method
.method public bridge synthetic getAnimatedVisibility()I
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->getAnimatedVisibility()I
move-result v0
return v0
.end method
.method public bridge synthetic getContentHeight()I
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->getContentHeight()I
move-result v0
return v0
.end method
.method public getSubtitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;
return-object v0
.end method
.method public getTitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;
return-object v0
.end method
.method public hideOverflowMenu()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public initForMode(Landroid/support/v7/view/ActionMode;)V
.registers 10
const/4 v7, 0x1
const/4 v6, -0x1
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;
if-nez v4, :cond_70
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;
move-result-object v4
invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
sget v4, Landroid/support/v7/appcompat/R$layout;->abc_action_mode_close_item:I
const/4 v5, 0x0
invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v4
iput-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;
invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V
:goto_1c
:cond_1c
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;
sget v5, Landroid/support/v7/appcompat/R$id;->action_mode_close_button:I
invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v4, Landroid/support/v7/internal/widget/ActionBarContextView$1;
invoke-direct {v4, p0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView$1;-><init>(Landroid/support/v7/internal/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode;)V
invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;
move-result-object v3
check-cast v3, Landroid/support/v7/internal/view/menu/MenuBuilder;
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v4, :cond_3b
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z
:cond_3b
new-instance v4, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;
move-result-object v5
invoke-direct {v4, v5}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V
iput-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v4, v7}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V
new-instance v2, Landroid/view/ViewGroup$LayoutParams;
const/4 v4, -0x2
invoke-direct {v2, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
iget-boolean v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitActionBar:Z
if-nez v4, :cond_7e
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v3, v4}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v4, p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
move-result-object v4
check-cast v4, Landroid/support/v7/internal/view/menu/ActionMenuView;
iput-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
const/4 v5, 0x0
invoke-virtual {v4, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {p0, v4, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:goto_6f
return-void
:cond_70
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v4
if-nez v4, :cond_1c
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;
invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V
goto :goto_1c
:cond_7e
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;
move-result-object v5
invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v5
iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-virtual {v4, v5, v7}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
const v5, 0x7fffffff
invoke-virtual {v4, v5}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V
iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
iget v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I
iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v3, v4}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v4, p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
move-result-object v4
check-cast v4, Landroid/support/v7/internal/view/menu/ActionMenuView;
iput-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4, v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;
iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v4, v5, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_6f
.end method
.method public isOverflowMenuShowing()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public bridge synthetic isOverflowReserved()Z
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->isOverflowReserved()Z
move-result v0
return v0
.end method
.method public isTitleOptional()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleOptional:Z
return v0
.end method
.method public killMode()V
.registers 4
const/4 v2, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeAllViews()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V
:cond_f
iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;
iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
return-void
.end method
.method public onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->onDetachedFromWindow()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_11
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z
:cond_11
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 13
const/16 v6, 0x8
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I
move-result v2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I
move-result v3
sub-int v4, p5, p3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I
move-result v5
sub-int/2addr v4, v5
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingBottom()I
move-result v5
sub-int v0, v4, v5
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;
if-eqz v4, :cond_38
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
move-result v4
if-eq v4, v6, :cond_38
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;
iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
add-int/2addr v2, v4
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;
invoke-virtual {p0, v4, v2, v3, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I
move-result v4
add-int/2addr v2, v4
iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
add-int/2addr v2, v4
:cond_38
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;
if-eqz v4, :cond_4f
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;
if-nez v4, :cond_4f
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;
invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I
move-result v4
if-eq v4, v6, :cond_4f
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;
invoke-virtual {p0, v4, v2, v3, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I
move-result v4
add-int/2addr v2, v4
:cond_4f
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;
if-eqz v4, :cond_5a
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;
invoke-virtual {p0, v4, v2, v3, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I
move-result v4
add-int/2addr v2, v4
:cond_5a
sub-int v4, p4, p2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I
move-result v5
sub-int v2, v4, v5
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
if-eqz v4, :cond_6d
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {p0, v4, v2, v3, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->positionChildInverse(Landroid/view/View;III)I
move-result v4
sub-int/2addr v2, v4
:cond_6d
return-void
.end method
.method protected onMeasure(II)V
.registers 30
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v23
const/high16 v24, 0x4000
move/from16 v0, v23
move/from16 v1, v24
if-eq v0, v1, :cond_33
new-instance v24, Ljava/lang/IllegalStateException;
new-instance v25, Ljava/lang/StringBuilder;
invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v26
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
const-string v26, " can only be used "
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
const-string v26, "with android:layout_width=\"FILL_PARENT\" (or fill_parent)"
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v25
invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v24
:cond_33
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v12
if-nez v12, :cond_60
new-instance v24, Ljava/lang/IllegalStateException;
new-instance v25, Ljava/lang/StringBuilder;
invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v26
invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v26
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
const-string v26, " can only be used "
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
const-string v26, "with android:layout_height=\"wrap_content\""
invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v25
invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v25
invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v24
:cond_60
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v5
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I
move/from16 v24, v0
if-lez v24, :cond_1c5
move-object/from16 v0, p0
iget v15, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I
:goto_70
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I
move-result v24
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingBottom()I
move-result v25
add-int v22, v24, v25
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I
move-result v24
sub-int v24, v5, v24
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I
move-result v25
sub-int v3, v24, v25
sub-int v11, v15, v22
const/high16 v24, -0x8000
move/from16 v0, v24
invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v4
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;
move-object/from16 v24, v0
if-eqz v24, :cond_c2
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;
move-object/from16 v24, v0
const/16 v25, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v24
move/from16 v2, v25
invoke-virtual {v0, v1, v3, v4, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I
move-result v3
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;
move-object/from16 v24, v0
invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v14
check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;
iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
move/from16 v24, v0
iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
move/from16 v25, v0
add-int v24, v24, v25
sub-int v3, v3, v24
:cond_c2
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
move-object/from16 v24, v0
if-eqz v24, :cond_ec
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
move-object/from16 v24, v0
invoke-virtual/range {v24 .. v24}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v24
move-object/from16 v0, v24
move-object/from16 v1, p0
if-ne v0, v1, :cond_ec
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
move-object/from16 v24, v0
const/16 v25, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v24
move/from16 v2, v25
invoke-virtual {v0, v1, v3, v4, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I
move-result v3
:cond_ec
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;
move-object/from16 v24, v0
if-eqz v24, :cond_13e
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;
move-object/from16 v24, v0
if-nez v24, :cond_13e
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleOptional:Z
move/from16 v24, v0
if-eqz v24, :cond_1d3
const/16 v24, 0x0
const/16 v25, 0x0
invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v20
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;
move-object/from16 v24, v0
move-object/from16 v0, v24
move/from16 v1, v20
invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->measure(II)V
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;
move-object/from16 v24, v0
invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getMeasuredWidth()I
move-result v19
move/from16 v0, v19
if-gt v0, v3, :cond_1cb
const/16 v18, 0x1
:goto_129
if-eqz v18, :cond_12d
sub-int v3, v3, v19
:cond_12d
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;
move-object/from16 v25, v0
if-eqz v18, :cond_1cf
const/16 v24, 0x0
:goto_137
move-object/from16 v0, v25
move/from16 v1, v24
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
:cond_13e
:goto_13e
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;
move-object/from16 v24, v0
if-eqz v24, :cond_19d
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;
move-object/from16 v24, v0
invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v14
iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I
move/from16 v24, v0
const/16 v25, -0x2
move/from16 v0, v24
move/from16 v1, v25
if-eq v0, v1, :cond_1e7
const/high16 v10, 0x4000
:goto_15e
iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I
move/from16 v24, v0
if-ltz v24, :cond_1eb
iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I
move/from16 v24, v0
move/from16 v0, v24
invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I
move-result v9
:goto_16e
iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I
move/from16 v24, v0
const/16 v25, -0x2
move/from16 v0, v24
move/from16 v1, v25
if-eq v0, v1, :cond_1ed
const/high16 v8, 0x4000
:goto_17c
iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I
move/from16 v24, v0
if-ltz v24, :cond_1f0
iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I
move/from16 v24, v0
move/from16 v0, v24
invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I
move-result v7
:goto_18c
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;
move-object/from16 v24, v0
invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v25
invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v26
invoke-virtual/range {v24 .. v26}, Landroid/view/View;->measure(II)V
:cond_19d
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I
move/from16 v24, v0
if-gtz v24, :cond_1fa
const/16 v16, 0x0
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildCount()I
move-result v6
const/4 v13, 0x0
:goto_1ac
if-ge v13, v6, :cond_1f2
move-object/from16 v0, p0
invoke-virtual {v0, v13}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I
move-result v24
add-int v17, v24, v22
move/from16 v0, v17
move/from16 v1, v16
if-le v0, v1, :cond_1c2
move/from16 v16, v17
:cond_1c2
add-int/lit8 v13, v13, 0x1
goto :goto_1ac
:cond_1c5
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v15
goto/16 :goto_70
:cond_1cb
const/16 v18, 0x0
goto/16 :goto_129
:cond_1cf
const/16 v24, 0x8
goto/16 :goto_137
:cond_1d3
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;
move-object/from16 v24, v0
const/16 v25, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v24
move/from16 v2, v25
invoke-virtual {v0, v1, v3, v4, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I
move-result v3
goto/16 :goto_13e
:cond_1e7
const/high16 v10, -0x8000
goto/16 :goto_15e
:cond_1eb
move v9, v3
goto :goto_16e
:cond_1ed
const/high16 v8, -0x8000
goto :goto_17c
:cond_1f0
move v7, v11
goto :goto_18c
:cond_1f2
move-object/from16 v0, p0
move/from16 v1, v16
invoke-virtual {v0, v5, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V
:goto_1f9
return-void
:cond_1fa
move-object/from16 v0, p0
invoke-virtual {v0, v5, v15}, Landroid/support/v7/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V
goto :goto_1f9
.end method
.method public bridge synthetic postShowOverflowMenu()V
.registers 1
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->postShowOverflowMenu()V
return-void
.end method
.method public setContentHeight(I)V
.registers 2
iput p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I
return-void
.end method
.method public setCustomView(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V
:cond_9
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;
:cond_17
if-eqz p1, :cond_1c
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V
:cond_1c
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->requestLayout()V
return-void
.end method
.method public setSplitActionBar(Z)V
.registers 8
const/4 v5, -0x1
iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitActionBar:Z
if-eq v2, p1, :cond_38
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v2, :cond_35
new-instance v0, Landroid/view/ViewGroup$LayoutParams;
const/4 v2, -0x2
invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
if-nez p1, :cond_39
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v2, p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
move-result-object v2
check-cast v2, Landroid/support/v7/internal/view/menu/ActionMenuView;
iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
if-eqz v1, :cond_30
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_30
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {p0, v2, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:goto_35
:cond_35
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V
:cond_38
return-void
:cond_39
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I
const/4 v4, 0x1
invoke-virtual {v2, v3, v4}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
const v3, 0x7fffffff
invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V
iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
iget v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I
iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v2, p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
move-result-object v2
check-cast v2, Landroid/support/v7/internal/view/menu/ActionMenuView;
iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
if-eqz v1, :cond_7b
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_7b
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v2, v3, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_35
.end method
.method public bridge synthetic setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V
return-void
.end method
.method public bridge synthetic setSplitWhenNarrow(Z)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V
return-void
.end method
.method public setSubtitle(Ljava/lang/CharSequence;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->initTitle()V
return-void
.end method
.method public setTitle(Ljava/lang/CharSequence;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->initTitle()V
return-void
.end method
.method public setTitleOptional(Z)V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleOptional:Z
if-eq p1, v0, :cond_7
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->requestLayout()V
:cond_7
iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleOptional:Z
return-void
.end method
.method public bridge synthetic setVisibility(I)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setVisibility(I)V
return-void
.end method
.method public showOverflowMenu()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method