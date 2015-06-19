.class public Lcom/facebook/katana/MyTabHost;
.super Landroid/widget/TabHost;
.source "MyTabHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/MyTabHost$ContentStrategy;,
        Lcom/facebook/katana/MyTabHost$IntentContentStrategy;,
        Lcom/facebook/katana/MyTabHost$OnTabChangeListener;,
        Lcom/facebook/katana/MyTabHost$TabSpec;
    }
.end annotation


# instance fields
.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field private mHandleTouchMode:Z

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Lcom/facebook/katana/MyTabHost$OnTabChangeListener;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/MyTabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Lcom/facebook/katana/MyTabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/katana/MyTabHost;->mTabSpecs:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    iput-object v2, p0, Lcom/facebook/katana/MyTabHost;->mCurrentView:Landroid/view/View;

    iput-object v2, p0, Lcom/facebook/katana/MyTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/MyTabHost;->mHandleTouchMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/katana/MyTabHost;->mTabSpecs:Ljava/util/List;

    iput v3, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    iput-object v2, p0, Lcom/facebook/katana/MyTabHost;->mCurrentView:Landroid/view/View;

    iput-object v2, p0, Lcom/facebook/katana/MyTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/MyTabHost;->mHandleTouchMode:Z

    iput v3, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    iput-object v2, p0, Lcom/facebook/katana/MyTabHost;->mCurrentView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/katana/MyTabHost;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private invokeOnTabChangeListener()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->mOnTabChangeListener:Lcom/facebook/katana/MyTabHost$OnTabChangeListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->mOnTabChangeListener:Lcom/facebook/katana/MyTabHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/facebook/katana/MyTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/katana/MyTabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public addTab(Lcom/facebook/katana/MyTabHost$TabSpec;)V
    .registers 5

    #getter for: Lcom/facebook/katana/MyTabHost$TabSpec;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/facebook/katana/MyTabHost$TabSpec;->access$1(Lcom/facebook/katana/MyTabHost$TabSpec;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must set the tab indicator view."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    #getter for: Lcom/facebook/katana/MyTabHost$TabSpec;->mContentStrategy:Lcom/facebook/katana/MyTabHost$ContentStrategy;
    invoke-static {p1}, Lcom/facebook/katana/MyTabHost$TabSpec;->access$2(Lcom/facebook/katana/MyTabHost$TabSpec;)Lcom/facebook/katana/MyTabHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_1c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    #getter for: Lcom/facebook/katana/MyTabHost$TabSpec;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/facebook/katana/MyTabHost$TabSpec;->access$1(Lcom/facebook/katana/MyTabHost$TabSpec;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mTabWidget:Lcom/facebook/katana/MyTabWidget;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/MyTabWidget;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_38

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/katana/MyTabHost;->setCurrentTab(I)V

    :cond_38
    return-void
.end method

.method public clearAllTabs()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->mTabWidget:Lcom/facebook/katana/MyTabWidget;

    invoke-virtual {v0}, Lcom/facebook/katana/MyTabWidget;->removeAllViews()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/MyTabHost;->mCurrentView:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/facebook/katana/MyTabHost;->requestLayout()V

    invoke-virtual {p0}, Lcom/facebook/katana/MyTabHost;->invalidate()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_3d

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mTabWidget:Lcom/facebook/katana/MyTabWidget;

    iget v2, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/facebook/katana/MyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/facebook/katana/MyTabHost;->playSoundEffect(I)V

    const/4 v1, 0x1

    :goto_3c
    return v1

    :cond_3d
    move v1, v0

    goto :goto_3c
.end method

.method public dispatchWindowFocusChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    return-void
.end method

.method public getCurrentTab()I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    if-ltz v0, :cond_1d

    iget v0, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/katana/MyTabHost$TabSpec;

    invoke-virtual {p0}, Lcom/facebook/katana/MyTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getCurrentTabView()Landroid/view/View;
    .registers 3

    iget v0, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    if-ltz v0, :cond_17

    iget v0, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->mTabWidget:Lcom/facebook/katana/MyTabWidget;

    iget v1, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/facebook/katana/MyTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getCurrentView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getMyTabWidget()Lcom/facebook/katana/MyTabWidget;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->mTabWidget:Lcom/facebook/katana/MyTabWidget;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public handleTouchMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/katana/MyTabHost;->mHandleTouchMode:Z

    return-void
.end method

.method public myNewTabSpec(Ljava/lang/String;Landroid/view/View;)Lcom/facebook/katana/MyTabHost$TabSpec;
    .registers 5

    new-instance v0, Lcom/facebook/katana/MyTabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/facebook/katana/MyTabHost$TabSpec;-><init>(Lcom/facebook/katana/MyTabHost;Ljava/lang/String;Landroid/view/View;Lcom/facebook/katana/MyTabHost$TabSpec;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    return-void
.end method

.method public onTouchModeChanged(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/katana/MyTabHost;->mHandleTouchMode:Z

    if-eqz v0, :cond_21

    if-nez p1, :cond_21

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_16
    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->mTabWidget:Lcom/facebook/katana/MyTabWidget;

    iget v1, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/facebook/katana/MyTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_21
    return-void
.end method

.method public setCurrentTab(I)V
    .registers 7

    const/4 v4, -0x1

    if-ltz p1, :cond_b

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget v1, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    if-eq p1, v1, :cond_b

    iget v1, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_25

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/MyTabHost$TabSpec;

    #getter for: Lcom/facebook/katana/MyTabHost$TabSpec;->mContentStrategy:Lcom/facebook/katana/MyTabHost$ContentStrategy;
    invoke-static {v1}, Lcom/facebook/katana/MyTabHost$TabSpec;->access$2(Lcom/facebook/katana/MyTabHost$TabSpec;)Lcom/facebook/katana/MyTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/katana/MyTabHost$ContentStrategy;->tabClosed()V

    :cond_25
    iput p1, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/MyTabHost$TabSpec;

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mTabWidget:Lcom/facebook/katana/MyTabWidget;

    iget v2, p0, Lcom/facebook/katana/MyTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/facebook/katana/MyTabWidget;->focusCurrentTab(I)V

    #getter for: Lcom/facebook/katana/MyTabHost$TabSpec;->mContentStrategy:Lcom/facebook/katana/MyTabHost$ContentStrategy;
    invoke-static {v0}, Lcom/facebook/katana/MyTabHost$TabSpec;->access$2(Lcom/facebook/katana/MyTabHost$TabSpec;)Lcom/facebook/katana/MyTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/katana/MyTabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/MyTabHost;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_54

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/facebook/katana/MyTabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_54
    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mTabWidget:Lcom/facebook/katana/MyTabWidget;

    invoke-virtual {v1}, Lcom/facebook/katana/MyTabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_61

    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_61
    invoke-direct {p0}, Lcom/facebook/katana/MyTabHost;->invokeOnTabChangeListener()V

    goto :goto_b
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v1, p0, Lcom/facebook/katana/MyTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/MyTabHost$TabSpec;

    invoke-virtual {v1}, Lcom/facebook/katana/MyTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0, v0}, Lcom/facebook/katana/MyTabHost;->setCurrentTab(I)V

    goto :goto_9

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setOnTabChangedListener(Lcom/facebook/katana/MyTabHost$OnTabChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/MyTabHost;->mOnTabChangeListener:Lcom/facebook/katana/MyTabHost$OnTabChangeListener;

    return-void
.end method

.method public setup()V
    .registers 3

    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/facebook/katana/MyTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/MyTabWidget;

    iput-object v0, p0, Lcom/facebook/katana/MyTabHost;->mTabWidget:Lcom/facebook/katana/MyTabWidget;

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->mTabWidget:Lcom/facebook/katana/MyTabWidget;

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Lcom/facebook/katana/MyTabHost$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/MyTabHost$1;-><init>(Lcom/facebook/katana/MyTabHost;)V

    iput-object v0, p0, Lcom/facebook/katana/MyTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->mTabWidget:Lcom/facebook/katana/MyTabWidget;

    new-instance v1, Lcom/facebook/katana/MyTabHost$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/MyTabHost$2;-><init>(Lcom/facebook/katana/MyTabHost;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/MyTabWidget;->setTabSelectionListener(Lcom/facebook/katana/MyTabWidget$OnTabSelectionChanged;)V

    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/facebook/katana/MyTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/katana/MyTabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/facebook/katana/MyTabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3f

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/katana/MyTabHost;->setup()V

    iput-object p1, p0, Lcom/facebook/katana/MyTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    return-void
.end method
