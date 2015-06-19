.class  Landroid/support/v7/app/ActionBarActivityDelegateBase;
.super Landroid/support/v7/app/ActionBarActivityDelegate;
.source "ActionBarActivityDelegateBase.java"
.implements Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;
.implements Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;
.field private static final ACTION_BAR_DRAWABLE_TOGGLE_ATTRS:[I = null
.field private static final TAG:Ljava/lang/String; = "ActionBarActivityDelegateBase"
.field private mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
.field private mActionMode:Landroid/support/v7/view/ActionMode;
.field private mClosingActionMenu:Z
.field private mFeatureIndeterminateProgress:Z
.field private mFeatureProgress:Z
.field private mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;
.field private mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
.field private mPanelFrozenActionViewState:Landroid/os/Bundle;
.field private mPanelIsPrepared:Z
.field private mPanelRefreshContent:Z
.field private mSubDecorInstalled:Z
.field private mTitleToSet:Ljava/lang/CharSequence;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [I
const/4 v1, 0x0
sget v2, Landroid/support/v7/appcompat/R$attr;->homeAsUpIndicator:I
aput v2, v0, v1
sput-object v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ACTION_BAR_DRAWABLE_TOGGLE_ATTRS:[I
return-void
.end method
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;-><init>(Landroid/support/v7/app/ActionBarActivity;)V
return-void
.end method
.method static synthetic access$002(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;
.registers 2
iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;
return-object p1
.end method
.method private applyFixedSizeWindow()V
.registers 14
iget-object v11, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
sget-object v12, Landroid/support/v7/appcompat/R$styleable;->ActionBarWindow:[I
invoke-virtual {v11, v12}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v11, 0x3
invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v11
if-eqz v11, :cond_1e
if-nez v5, :cond_1a
new-instance v5, Landroid/util/TypedValue;
invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V
:cond_1a
const/4 v11, 0x3
invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
:cond_1e
const/4 v11, 0x5
invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v11
if-eqz v11, :cond_30
if-nez v6, :cond_2c
new-instance v6, Landroid/util/TypedValue;
invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V
:cond_2c
const/4 v11, 0x5
invoke-virtual {v0, v11, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
:cond_30
const/4 v11, 0x6
invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v11
if-eqz v11, :cond_42
if-nez v3, :cond_3e
new-instance v3, Landroid/util/TypedValue;
invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V
:cond_3e
const/4 v11, 0x6
invoke-virtual {v0, v11, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
:cond_42
const/4 v11, 0x4
invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v11
if-eqz v11, :cond_54
if-nez v4, :cond_50
new-instance v4, Landroid/util/TypedValue;
invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V
:cond_50
const/4 v11, 0x4
invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
:cond_54
iget-object v11, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v11}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;
move-result-object v11
invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v7
iget v11, v7, Landroid/util/DisplayMetrics;->widthPixels:I
iget v12, v7, Landroid/util/DisplayMetrics;->heightPixels:I
if-ge v11, v12, :cond_a0
const/4 v2, 0x1
:goto_65
const/4 v10, -0x1
const/4 v1, -0x1
if-eqz v2, :cond_a2
move-object v9, v6
:goto_6a
if-eqz v9, :cond_7a
iget v11, v9, Landroid/util/TypedValue;->type:I
if-eqz v11, :cond_7a
iget v11, v9, Landroid/util/TypedValue;->type:I
const/4 v12, 0x5
if-ne v11, v12, :cond_a4
invoke-virtual {v9, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F
move-result v11
float-to-int v10, v11
:cond_7a
:goto_7a
if-eqz v2, :cond_b5
move-object v8, v3
:goto_7d
if-eqz v8, :cond_8d
iget v11, v8, Landroid/util/TypedValue;->type:I
if-eqz v11, :cond_8d
iget v11, v8, Landroid/util/TypedValue;->type:I
const/4 v12, 0x5
if-ne v11, v12, :cond_b7
invoke-virtual {v8, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F
move-result v11
float-to-int v1, v11
:cond_8d
:goto_8d
const/4 v11, -0x1
if-ne v10, v11, :cond_93
const/4 v11, -0x1
if-eq v1, v11, :cond_9c
:cond_93
iget-object v11, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v11}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;
move-result-object v11
invoke-virtual {v11, v10, v1}, Landroid/view/Window;->setLayout(II)V
:cond_9c
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
:cond_a0
const/4 v2, 0x0
goto :goto_65
:cond_a2
move-object v9, v5
goto :goto_6a
:cond_a4
iget v11, v9, Landroid/util/TypedValue;->type:I
const/4 v12, 0x6
if-ne v11, v12, :cond_7a
iget v11, v7, Landroid/util/DisplayMetrics;->widthPixels:I
int-to-float v11, v11
iget v12, v7, Landroid/util/DisplayMetrics;->widthPixels:I
int-to-float v12, v12
invoke-virtual {v9, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F
move-result v11
float-to-int v10, v11
goto :goto_7a
:cond_b5
move-object v8, v4
goto :goto_7d
:cond_b7
iget v11, v8, Landroid/util/TypedValue;->type:I
const/4 v12, 0x6
if-ne v11, v12, :cond_8d
iget v11, v7, Landroid/util/DisplayMetrics;->heightPixels:I
int-to-float v11, v11
iget v12, v7, Landroid/util/DisplayMetrics;->heightPixels:I
int-to-float v12, v12
invoke-virtual {v8, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F
move-result v11
float-to-int v1, v11
goto :goto_8d
.end method
.method private getCircularProgressBar()Landroid/support/v7/internal/widget/ProgressBarICS;
.registers 4
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
sget v2, Landroid/support/v7/appcompat/R$id;->progress_circular:I
invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ProgressBarICS;
if-eqz v0, :cond_10
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
:cond_10
return-object v0
.end method
.method private getHorizontalProgressBar()Landroid/support/v7/internal/widget/ProgressBarICS;
.registers 4
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
sget v2, Landroid/support/v7/appcompat/R$id;->progress_horizontal:I
invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ProgressBarICS;
if-eqz v0, :cond_10
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
:cond_10
return-object v0
.end method
.method private getListMenuView(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)Landroid/support/v7/internal/view/menu/MenuView;
.registers 7
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
if-nez v2, :cond_6
const/4 v2, 0x0
:goto_5
return-object v2
:cond_6
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;
if-nez v2, :cond_3b
sget-object v2, Landroid/support/v7/appcompat/R$styleable;->Theme:[I
invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v2, 0x4
sget v3, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_CompactMenu:I
invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
new-instance v2, Landroid/support/v7/internal/view/menu/ListMenuPresenter;
sget v3, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I
invoke-direct {v2, v3, v1}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;-><init>(II)V
iput-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;
invoke-virtual {v2, p2}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;
invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V
:goto_2f
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;
new-instance v3, Landroid/widget/FrameLayout;
invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
move-result-object v2
goto :goto_5
:cond_3b
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->updateMenuView(Z)V
goto :goto_2f
.end method
.method private hideProgressBars(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ProgressBarICS;)V
.registers 5
const/4 v1, 0x4
iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z
if-eqz v0, :cond_e
invoke-virtual {p2}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v0
if-nez v0, :cond_e
invoke-virtual {p2, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
:cond_e
iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z
if-eqz v0, :cond_1b
invoke-virtual {p1}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v0
if-nez v0, :cond_1b
invoke-virtual {p1, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
:cond_1b
return-void
.end method
.method private initializePanelMenu()Z
.registers 3
new-instance v0, Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getActionBarThemedContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;)V
const/4 v0, 0x1
return v0
.end method
.method private preparePanel()Z
.registers 6
const/4 v0, 0x1
const/4 v4, 0x0
const/4 v1, 0x0
iget-boolean v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPanelIsPrepared:Z
if-eqz v2, :cond_8
:goto_7
return v0
:cond_8
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
if-eqz v2, :cond_10
iget-boolean v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPanelRefreshContent:Z
if-eqz v2, :cond_49
:cond_10
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
if-nez v2, :cond_20
invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->initializePanelMenu()Z
move-result v2
if-eqz v2, :cond_1e
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
if-nez v2, :cond_20
:cond_1e
move v0, v1
goto :goto_7
:cond_20
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
if-eqz v2, :cond_2b
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v2, v3, p0}, Landroid/support/v7/internal/widget/ActionBarView;->setMenu(Landroid/support/v4/internal/view/SupportMenu;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
:cond_2b
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v2, v1, v3}, Landroid/support/v7/app/ActionBarActivity;->superOnCreatePanelMenu(ILandroid/view/Menu;)Z
move-result v2
if-nez v2, :cond_47
iput-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
if-eqz v0, :cond_45
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, v4, p0}, Landroid/support/v7/internal/widget/ActionBarView;->setMenu(Landroid/support/v4/internal/view/SupportMenu;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
:cond_45
move v0, v1
goto :goto_7
:cond_47
iput-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPanelRefreshContent:Z
:cond_49
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPanelFrozenActionViewState:Landroid/os/Bundle;
if-eqz v2, :cond_5b
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPanelFrozenActionViewState:Landroid/os/Bundle;
invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V
iput-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPanelFrozenActionViewState:Landroid/os/Bundle;
:cond_5b
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v2, v1, v4, v3}, Landroid/support/v7/app/ActionBarActivity;->superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
move-result v2
if-nez v2, :cond_75
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
if-eqz v0, :cond_6e
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, v4, p0}, Landroid/support/v7/internal/widget/ActionBarView;->setMenu(Landroid/support/v4/internal/view/SupportMenu;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
:cond_6e
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V
move v0, v1
goto :goto_7
:cond_75
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V
iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPanelIsPrepared:Z
goto :goto_7
.end method
.method private reopenMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
if-eqz v0, :cond_2a
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->isOverflowReserved()Z
move-result v0
if-eqz v0, :cond_2a
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->isOverflowMenuShowing()Z
move-result v0
if-eqz v0, :cond_16
if-nez p2, :cond_24
:cond_16
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getVisibility()I
move-result v0
if-nez v0, :cond_23
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->showOverflowMenu()Z
:cond_23
:goto_23
return-void
:cond_24
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->hideOverflowMenu()Z
goto :goto_23
:cond_2a
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close()V
goto :goto_23
.end method
.method private showProgressBars(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ProgressBarICS;)V
.registers 6
const/4 v2, 0x0
iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z
if-eqz v0, :cond_f
invoke-virtual {p2}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v0
const/4 v1, 0x4
if-ne v0, v1, :cond_f
invoke-virtual {p2, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
:cond_f
iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z
if-eqz v0, :cond_1e
invoke-virtual {p1}, Landroid/support/v7/internal/widget/ProgressBarICS;->getProgress()I
move-result v0
const/16 v1, 0x2710
if-ge v0, v1, :cond_1e
invoke-virtual {p1, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
:cond_1e
return-void
.end method
.method private updateProgressBars(I)V
.registers 10
const/16 v7, 0x8
const/16 v6, 0x2710
const/4 v4, 0x0
invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getCircularProgressBar()Landroid/support/v7/internal/widget/ProgressBarICS;
move-result-object v0
invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getHorizontalProgressBar()Landroid/support/v7/internal/widget/ProgressBarICS;
move-result-object v1
const/4 v5, -0x1
if-ne p1, v5, :cond_2e
iget-boolean v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z
if-eqz v5, :cond_24
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->getProgress()I
move-result v2
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->isIndeterminate()Z
move-result v5
if-nez v5, :cond_20
if-ge v2, v6, :cond_2c
:cond_20
move v3, v4
:goto_21
invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
:cond_24
iget-boolean v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z
if-eqz v5, :cond_2b
invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
:goto_2b
:cond_2b
return-void
:cond_2c
const/4 v3, 0x4
goto :goto_21
:cond_2e
const/4 v5, -0x2
if-ne p1, v5, :cond_40
iget-boolean v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z
if-eqz v4, :cond_38
invoke-virtual {v1, v7}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
:cond_38
iget-boolean v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z
if-eqz v4, :cond_2b
invoke-virtual {v0, v7}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
goto :goto_2b
:cond_40
const/4 v5, -0x3
if-ne p1, v5, :cond_48
const/4 v4, 0x1
invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setIndeterminate(Z)V
goto :goto_2b
:cond_48
const/4 v5, -0x4
if-ne p1, v5, :cond_4f
invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setIndeterminate(Z)V
goto :goto_2b
:cond_4f
if-ltz p1, :cond_2b
if-gt p1, v6, :cond_2b
add-int/lit8 v4, p1, 0x0
invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->setProgress(I)V
if-ge p1, v6, :cond_5e
invoke-direct {p0, v1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->showProgressBars(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ProgressBarICS;)V
goto :goto_2b
:cond_5e
invoke-direct {p0, v1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->hideProgressBars(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ProgressBarICS;)V
goto :goto_2b
.end method
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 6
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ensureSubDecor()V
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
const v2, 0x1020002
invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->onSupportContentChanged()V
return-void
.end method
.method public createSupportActionBar()Landroid/support/v7/app/ActionBar;
.registers 4
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ensureSubDecor()V
new-instance v0, Landroid/support/v7/app/ActionBarImplBase;
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-direct {v0, v1, v2}, Landroid/support/v7/app/ActionBarImplBase;-><init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/ActionBar$Callback;)V
return-object v0
.end method
.method final ensureSubDecor()V
.registers 11
const v9, 0x1020002
iget-boolean v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z
if-nez v7, :cond_bc
iget-boolean v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mHasActionBar:Z
if-eqz v7, :cond_d9
iget-boolean v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z
if-eqz v7, :cond_bd
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
sget v8, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_decor_overlay:I
invoke-virtual {v7, v8}, Landroid/support/v7/app/ActionBarActivity;->superSetContentView(I)V
:goto_16
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
sget v8, Landroid/support/v7/appcompat/R$id;->action_bar:I
invoke-virtual {v7, v8}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/support/v7/internal/widget/ActionBarView;
iput-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v8, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v7, v8}, Landroid/support/v7/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V
iget-boolean v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z
if-eqz v7, :cond_32
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v7}, Landroid/support/v7/internal/widget/ActionBarView;->initProgress()V
:cond_32
iget-boolean v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z
if-eqz v7, :cond_3b
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v7}, Landroid/support/v7/internal/widget/ActionBarView;->initIndeterminateProgress()V
:cond_3b
const-string v7, "splitActionBarWhenNarrow"
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getUiOptionsFromMetadata()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_c6
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v7}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;
move-result-object v7
sget v8, Landroid/support/v7/appcompat/R$bool;->abc_split_action_bar_is_narrow:I
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z
move-result v4
:goto_53
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
sget v8, Landroid/support/v7/appcompat/R$id;->split_action_bar:I
invoke-virtual {v7, v8}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz v5, :cond_81
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v7, v5}, Landroid/support/v7/internal/widget/ActionBarView;->setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v7, v4}, Landroid/support/v7/internal/widget/ActionBarView;->setSplitActionBar(Z)V
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v7, v6}, Landroid/support/v7/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
sget v8, Landroid/support/v7/appcompat/R$id;->action_context_bar:I
invoke-virtual {v7, v8}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/support/v7/internal/widget/ActionBarContextView;
invoke-virtual {v2, v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V
invoke-virtual {v2, v4}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V
invoke-virtual {v2, v6}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V
:cond_81
:goto_81
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v7, v9}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
const/4 v7, -0x1
invoke-virtual {v3, v7}, Landroid/view/View;->setId(I)V
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
sget v8, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I
invoke-virtual {v7, v8}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v9}, Landroid/view/View;->setId(I)V
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;
if-eqz v7, :cond_a4
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v8, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;
invoke-virtual {v7, v8}, Landroid/support/v7/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V
const/4 v7, 0x0
iput-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;
:cond_a4
invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->applyFixedSizeWindow()V
const/4 v7, 0x1
iput-boolean v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v7}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;
move-result-object v7
invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v7
new-instance v8, Landroid/support/v7/app/ActionBarActivityDelegateBase$1;
invoke-direct {v8, p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase$1;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V
invoke-virtual {v7, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
:cond_bc
return-void
:cond_bd
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
sget v8, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_decor:I
invoke-virtual {v7, v8}, Landroid/support/v7/app/ActionBarActivity;->superSetContentView(I)V
goto/16 :goto_16
:cond_c6
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
sget-object v8, Landroid/support/v7/appcompat/R$styleable;->ActionBarWindow:[I
invoke-virtual {v7, v8}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v7, 0x2
const/4 v8, 0x0
invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v4
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
goto/16 :goto_53
:cond_d9
iget-object v7, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
sget v8, Landroid/support/v7/appcompat/R$layout;->abc_simple_decor:I
invoke-virtual {v7, v8}, Landroid/support/v7/app/ActionBarActivity;->superSetContentView(I)V
goto :goto_81
.end method
.method  getHomeAsUpIndicatorAttrId()I
.registers 2
sget v0, Landroid/support/v7/appcompat/R$attr;->homeAsUpIndicator:I
return v0
.end method
.method public onBackPressed()Z
.registers 3
const/4 v0, 0x1
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;
if-eqz v1, :cond_b
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;
invoke-virtual {v1}, Landroid/support/v7/view/ActionMode;->finish()V
:goto_a
return v0
:cond_b
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
if-eqz v1, :cond_1d
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->hasExpandedActionView()Z
move-result v1
if-eqz v1, :cond_1d
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->collapseActionView()V
goto :goto_a
:cond_1d
const/4 v0, 0x0
goto :goto_a
.end method
.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
.registers 4
iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->closeOptionsMenu()V
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->dismissPopupMenus()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z
goto :goto_4
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 4
iget-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mHasActionBar:Z
if-eqz v1, :cond_11
iget-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z
if-eqz v1, :cond_11
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
check-cast v0, Landroid/support/v7/app/ActionBarImplBase;
invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarImplBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V
:cond_11
return-void
.end method
.method public onContentChanged()V
.registers 1
return-void
.end method
.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
.registers 4
if-eqz p1, :cond_9
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->superOnCreatePanelMenu(ILandroid/view/Menu;)Z
move-result v0
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public onCreatePanelView(I)Landroid/view/View;
.registers 4
const/4 v0, 0x0
if-nez p1, :cond_11
invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->preparePanel()Z
move-result v1
if-eqz v1, :cond_11
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-direct {p0, v1, p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getListMenuView(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)Landroid/support/v7/internal/view/menu/MenuView;
move-result-object v0
check-cast v0, Landroid/view/View;
:cond_11
return-object v0
.end method
.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
.registers 4
if-nez p1, :cond_6
invoke-static {p2}, Landroid/support/v7/internal/view/menu/MenuWrapperFactory;->createMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
move-result-object p2
:cond_6
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->superOnMenuItemSelected(ILandroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public onMenuItemSelected(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
.registers 5
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1, p2}, Landroid/support/v7/app/ActionBarActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public onMenuModeChange(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->reopenMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
return-void
.end method
.method public onOpenSubMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public onPostResume()V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
check-cast v0, Landroid/support/v7/app/ActionBarImplBase;
if-eqz v0, :cond_c
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarImplBase;->setShowHideAnimationEnabled(Z)V
:cond_c
return-void
.end method
.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
.registers 5
if-eqz p1, :cond_9
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivity;->superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
move-result v0
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public onStop()V
.registers 3
const-string v1, " + Landroid/support/v7/app/ActionBarActivityDelegateBase; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
check-cast v0, Landroid/support/v7/app/ActionBarImplBase;
if-eqz v0, :cond_c
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarImplBase;->setShowHideAnimationEnabled(Z)V
:cond_c
const-string v1, " - Landroid/support/v7/app/ActionBarActivityDelegateBase; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onTitleChanged(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V
:goto_9
return-void
:cond_a
iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;
goto :goto_9
.end method
.method public setContentView(I)V
.registers 5
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ensureSubDecor()V
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
const v2, 0x1020002
invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v1
invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->onSupportContentChanged()V
return-void
.end method
.method public setContentView(Landroid/view/View;)V
.registers 5
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ensureSubDecor()V
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
const v2, 0x1020002
invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->onSupportContentChanged()V
return-void
.end method
.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 6
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ensureSubDecor()V
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
const v2, 0x1020002
invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->onSupportContentChanged()V
return-void
.end method
.method  setSupportProgress(I)V
.registers 3
add-int/lit8 v0, p1, 0x0
invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V
return-void
.end method
.method  setSupportProgressBarIndeterminate(Z)V
.registers 3
if-eqz p1, :cond_7
const/4 v0, -0x3
:goto_3
invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V
return-void
:cond_7
const/4 v0, -0x4
goto :goto_3
.end method
.method  setSupportProgressBarIndeterminateVisibility(Z)V
.registers 3
if-eqz p1, :cond_7
const/4 v0, -0x1
:goto_3
invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V
return-void
:cond_7
const/4 v0, -0x2
goto :goto_3
.end method
.method  setSupportProgressBarVisibility(Z)V
.registers 3
if-eqz p1, :cond_7
const/4 v0, -0x1
:goto_3
invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->updateProgressBars(I)V
return-void
:cond_7
const/4 v0, -0x2
goto :goto_3
.end method
.method public startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.registers 6
if-nez p1, :cond_a
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "ActionMode callback can not be null."
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_a
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;
if-eqz v2, :cond_13
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;
invoke-virtual {v2}, Landroid/support/v7/view/ActionMode;->finish()V
:cond_13
new-instance v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;
invoke-direct {v1, p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/view/ActionMode$Callback;)V
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
check-cast v0, Landroid/support/v7/app/ActionBarImplBase;
if-eqz v0, :cond_26
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarImplBase;->startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
move-result-object v2
iput-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;
:cond_26
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;
if-eqz v2, :cond_31
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;
invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBarActivity;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
:cond_31
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;
return-object v2
.end method
.method public supportInvalidateOptionsMenu()V
.registers 3
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
if-eqz v1, :cond_20
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V
invoke-virtual {v0}, Landroid/os/Bundle;->size()I
move-result v1
if-lez v1, :cond_16
iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPanelFrozenActionViewState:Landroid/os/Bundle;
:cond_16
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->clear()V
:cond_20
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPanelRefreshContent:Z
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
if-eqz v1, :cond_2d
const/4 v1, 0x0
iput-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPanelIsPrepared:Z
invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->preparePanel()Z
:cond_2d
return-void
.end method
.method public supportRequestWindowFeature(I)Z
.registers 3
const/4 v0, 0x1
packed-switch p1, :pswitch_data_18
:pswitch_4
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivity;->requestWindowFeature(I)Z
move-result v0
:goto_a
return v0
:pswitch_b
iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mHasActionBar:Z
goto :goto_a
:pswitch_e
iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z
goto :goto_a
:pswitch_11
iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z
goto :goto_a
:pswitch_14
iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z
goto :goto_a
nop
:pswitch_data_18
.packed-switch 0x2
:pswitch_11
:pswitch_4
:pswitch_4
:pswitch_14
:pswitch_4
:pswitch_4
:pswitch_b
:pswitch_e
.end packed-switch
.end method