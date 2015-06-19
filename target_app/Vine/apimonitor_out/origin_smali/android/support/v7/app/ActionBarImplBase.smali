.class Landroid/support/v7/app/ActionBarImplBase;
.super Landroid/support/v7/app/ActionBar;
.source "ActionBarImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;,
        Landroid/support/v7/app/ActionBarImplBase$TabImpl;
    }
.end annotation


# static fields
.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final INVALID_POSITION:I = -0x1


# instance fields
.field mActionMode:Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;

.field private mActionView:Landroid/support/v7/internal/widget/ActionBarView;

.field private mActivity:Landroid/support/v7/app/ActionBarActivity;

.field private mCallback:Landroid/support/v7/app/ActionBar$Callback;

.field private mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field mDeferredDestroyActionMode:Landroid/support/v7/view/ActionMode;

.field mDeferredModeDestroyCallback:Landroid/support/v7/view/ActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field final mHandler:Landroid/os/Handler;

.field private mHasEmbeddedTabs:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Landroid/support/v7/app/ActionBarImplBase$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field private mShowingForMode:Z

.field private mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/ActionBarImplBase$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field private mTopVisibilityView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/ActionBar$Callback;)V
    .registers 4

    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mSavedTabPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mCurWindowVisibility:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mNowShowing:Z

    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/app/ActionBarImplBase;->mCallback:Landroid/support/v7/app/ActionBar$Callback;

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarImplBase;->init(Landroid/support/v7/app/ActionBarActivity;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/app/ActionBarImplBase;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/app/ActionBarImplBase;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mHiddenByApp:Z

    return v0
.end method

.method static synthetic access$300(Landroid/support/v7/app/ActionBarImplBase;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mHiddenBySystem:Z

    return v0
.end method

.method static synthetic access$400(ZZZ)Z
    .registers 4

    invoke-static {p0, p1, p2}, Landroid/support/v7/app/ActionBarImplBase;->checkShowingFlags(ZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarContextView;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ActionBarView;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    return-object v0
.end method

.method private static checkShowingFlags(ZZZ)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    if-nez p0, :cond_8

    if-eqz p1, :cond_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private cleanupTabs()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mSelectedTab:Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarImplBase;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    :cond_16
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mSavedTabPosition:I

    return-void
.end method

.method private configureTab(Landroid/support/v7/app/ActionBar$Tab;I)V
    .registers 9

    move-object v3, p1

    check-cast v3, Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->getCallback()Landroid/support/v7/app/ActionBar$TabListener;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_11
    invoke-virtual {v3, p2}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->setPosition(I)V

    iget-object v4, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    :goto_21
    if-ge v2, v1, :cond_31

    iget-object v4, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    invoke-virtual {v4, v2}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->setPosition(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_31
    return-void
.end method

.method private ensureTabsExist()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_6

    :goto_5
    return-void

    :cond_6
    new-instance v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mHasEmbeddedTabs:Z

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    :goto_19
    iput-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    goto :goto_5

    :cond_1c
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplBase;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2c

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :goto_26
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    goto :goto_19

    :cond_2c
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_26
.end method

.method private init(Landroid/support/v7/app/ActionBarActivity;)V
    .registers 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget v3, Landroid/support/v7/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {p1, v3}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iput-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_15

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mOverlayLayout:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v3, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setActionBar(Landroid/support/v7/app/ActionBar;)V

    :cond_15
    sget v3, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {p1, v3}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/widget/ActionBarView;

    iput-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    sget v3, Landroid/support/v7/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p1, v3}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    sget v3, Landroid/support/v7/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p1, v3}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    sget v3, Landroid/support/v7/appcompat/R$id;->top_action_bar:I

    invoke-virtual {p1, v3}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mTopVisibilityView:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mTopVisibilityView:Landroid/view/ViewGroup;

    if-nez v3, :cond_45

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mTopVisibilityView:Landroid/view/ViewGroup;

    :cond_45
    sget v3, Landroid/support/v7/appcompat/R$id;->split_action_bar:I

    invoke-virtual {p1, v3}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v3, :cond_5b

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v3, :cond_5b

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-nez v3, :cond_82

    :cond_5b
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " can only be used "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "with a compatible window decor layout"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_82
    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v6, p0, Landroid/support/v7/app/ActionBarImplBase;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v6}, Landroid/support/v7/internal/widget/ActionBarView;->setContextView(Landroid/support/v7/internal/widget/ActionBarContextView;)V

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v3

    if-eqz v3, :cond_c6

    move v3, v4

    :goto_92
    iput v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mContextDisplayMode:I

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_c8

    move v2, v4

    :goto_9f
    if-eqz v2, :cond_a3

    iput-boolean v4, p0, Landroid/support/v7/app/ActionBarImplBase;->mDisplayHomeAsUpSet:Z

    :cond_a3
    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v3

    if-nez v3, :cond_b1

    if-eqz v2, :cond_b2

    :cond_b1
    move v5, v4

    :cond_b2
    invoke-virtual {p0, v5}, Landroid/support/v7/app/ActionBarImplBase;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v3

    invoke-direct {p0, v3}, Landroid/support/v7/app/ActionBarImplBase;->setHasEmbeddedTabs(Z)V

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBarActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/app/ActionBarImplBase;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_c6
    move v3, v5

    goto :goto_92

    :cond_c8
    move v2, v5

    goto :goto_9f
.end method

.method private setHasEmbeddedTabs(Z)V
    .registers 7

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean p1, p0, Landroid/support/v7/app/ActionBarImplBase;->mHasEmbeddedTabs:Z

    iget-boolean v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_34

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/ActionBarView;->setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v4, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    :goto_15
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplBase;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_41

    move v0, v1

    :goto_1d
    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_28

    if-eqz v0, :cond_43

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :cond_28
    :goto_28
    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    iget-boolean v4, p0, Landroid/support/v7/app/ActionBarImplBase;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_4b

    if-eqz v0, :cond_4b

    :goto_30
    invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ActionBarView;->setCollapsable(Z)V

    return-void

    :cond_34
    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v4, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/ActionBarView;->setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    goto :goto_15

    :cond_41
    move v0, v2

    goto :goto_1d

    :cond_43
    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_28

    :cond_4b
    move v1, v2

    goto :goto_30
.end method

.method private updateVisibility(Z)V
    .registers 6

    iget-boolean v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mHiddenByApp:Z

    iget-boolean v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mHiddenBySystem:Z

    iget-boolean v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Landroid/support/v7/app/ActionBarImplBase;->checkShowingFlags(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mNowShowing:Z

    if-nez v1, :cond_16

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mNowShowing:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/app/ActionBarImplBase;->doShow(Z)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-boolean v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mNowShowing:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mNowShowing:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/app/ActionBarImplBase;->doHide(Z)V

    goto :goto_16
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/ActionBarImplBase;->addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V

    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/app/ActionBarImplBase;->addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V

    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V
    .registers 5

    invoke-direct {p0}, Landroid/support/v7/app/ActionBarImplBase;->ensureTabsExist()V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V

    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/ActionBarImplBase;->configureTab(Landroid/support/v7/app/ActionBar$Tab;I)V

    if-eqz p3, :cond_10

    invoke-virtual {p0, p1}, Landroid/support/v7/app/ActionBarImplBase;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    :cond_10
    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V
    .registers 4

    invoke-direct {p0}, Landroid/support/v7/app/ActionBarImplBase;->ensureTabsExist()V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/ActionBarImplBase;->configureTab(Landroid/support/v7/app/ActionBar$Tab;I)V

    if-eqz p2, :cond_16

    invoke-virtual {p0, p1}, Landroid/support/v7/app/ActionBarImplBase;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    :cond_16
    return-void
.end method

.method animateToMode(Z)V
    .registers 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplBase;->showForActionMode()V

    :goto_8
    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz p1, :cond_38

    const/4 v0, 0x4

    :goto_d
    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ActionBarView;->animateToVisibility(I)V

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_3a

    move v0, v1

    :goto_15
    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->animateToVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_3c

    :goto_30
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :cond_33
    return-void

    :cond_34
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplBase;->hideForActionMode()V

    goto :goto_8

    :cond_38
    move v0, v1

    goto :goto_d

    :cond_3a
    move v0, v2

    goto :goto_15

    :cond_3c
    move v2, v1

    goto :goto_30
.end method

.method public doHide(Z)V
    .registers 7

    const/16 v4, 0x8

    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplBase;->isShowHideAnimationEnabled()Z

    move-result v2

    if-nez v2, :cond_18

    if-eqz p1, :cond_4e

    :cond_18
    const/4 v1, 0x1

    :goto_19
    if-eqz v1, :cond_28

    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;

    sget v3, Landroid/support/v7/appcompat/R$anim;->abc_slide_out_top:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_28
    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-eq v2, v4, :cond_f

    if-eqz v1, :cond_48

    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;

    sget v3, Landroid/support/v7/appcompat/R$anim;->abc_slide_out_bottom:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_48
    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v4}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_f

    :cond_4e
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public doShow(Z)V
    .registers 7

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplBase;->isShowHideAnimationEnabled()Z

    move-result v3

    if-nez v3, :cond_17

    if-eqz p1, :cond_4d

    :cond_17
    const/4 v1, 0x1

    :goto_18
    if-eqz v1, :cond_27

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;

    sget v4, Landroid/support/v7/appcompat/R$anim;->abc_slide_in_top:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_27
    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_e

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v1, :cond_47

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;

    sget v4, Landroid/support/v7/appcompat/R$anim;->abc_slide_in_bottom:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_47
    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_e

    :cond_4d
    move v1, v2

    goto :goto_18
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .registers 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v2

    packed-switch v2, :pswitch_data_20

    :cond_a
    :goto_a
    return v1

    :pswitch_b
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_a

    :pswitch_12
    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarView;->getDropdownAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    goto :goto_a

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_12
        :pswitch_b
    .end packed-switch
.end method

.method public getNavigationMode()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .registers 3

    const/4 v0, -0x1

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    :cond_a
    :goto_a
    return v0

    :pswitch_b
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mSelectedTab:Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    if-eqz v1, :cond_a

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mSelectedTab:Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->getPosition()I

    move-result v0

    goto :goto_a

    :pswitch_16
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_a

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_16
        :pswitch_b
    .end packed-switch
.end method

.method public getSelectedTab()Landroid/support/v7/app/ActionBar$Tab;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mSelectedTab:Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/support/v7/app/ActionBar$Tab;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 6

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_22

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v3, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_25

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mThemedContext:Landroid/content/Context;

    :cond_22
    :goto_22
    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mThemedContext:Landroid/content/Context;

    return-object v3

    :cond_25
    iget-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;

    iput-object v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mThemedContext:Landroid/content/Context;

    goto :goto_22
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasNonEmbeddedTabs()Z
    .registers 3

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mHasEmbeddedTabs:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplBase;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public hide()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mHiddenByApp:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mHiddenByApp:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarImplBase;->updateVisibility(Z)V

    :cond_b
    return-void
.end method

.method hideForActionMode()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mShowingForMode:Z

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mShowingForMode:Z

    invoke-direct {p0, v1}, Landroid/support/v7/app/ActionBarImplBase;->updateVisibility(Z)V

    :cond_a
    return-void
.end method

.method isShowHideAnimationEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mShowHideAnimationEnabled:Z

    return v0
.end method

.method public isShowing()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mNowShowing:Z

    return v0
.end method

.method public newTab()Landroid/support/v7/app/ActionBar$Tab;
    .registers 2

    new-instance v0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;-><init>(Landroid/support/v7/app/ActionBarImplBase;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarImplBase;->setHasEmbeddedTabs(Z)V

    return-void
.end method

.method public removeAllTabs()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v7/app/ActionBarImplBase;->cleanupTabs()V

    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .registers 3

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarImplBase;->removeTabAt(I)V

    return-void
.end method

.method public removeTabAt(I)V
    .registers 9

    iget-object v4, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-nez v4, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v4, p0, Landroid/support/v7/app/ActionBarImplBase;->mSelectedTab:Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    if-eqz v4, :cond_39

    iget-object v4, p0, Landroid/support/v7/app/ActionBarImplBase;->mSelectedTab:Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->getPosition()I

    move-result v3

    :goto_f
    iget-object v4, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    iget-object v4, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    if-eqz v2, :cond_22

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->setPosition(I)V

    :cond_22
    iget-object v4, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, p1

    :goto_29
    if-ge v0, v1, :cond_3c

    iget-object v4, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    invoke-virtual {v4, v0}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->setPosition(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_39
    iget v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mSavedTabPosition:I

    goto :goto_f

    :cond_3c
    if-ne v3, p1, :cond_4

    iget-object v4, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4b

    const/4 v4, 0x0

    :goto_47
    invoke-virtual {p0, v4}, Landroid/support/v7/app/ActionBarImplBase;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    goto :goto_4

    :cond_4b
    iget-object v4, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    goto :goto_47
.end method

.method public selectTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .registers 6

    const/4 v1, -0x1

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplBase;->getNavigationMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_11

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_e
    iput v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mSavedTabPosition:I

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBarActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mSelectedTab:Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    if-ne v2, p1, :cond_45

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mSelectedTab:Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mSelectedTab:Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->getCallback()Landroid/support/v7/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mSelectedTab:Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/support/v7/app/ActionBar$TabListener;->onTabReselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    :cond_3b
    :goto_3b
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_10

    :cond_45
    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_4d
    invoke-virtual {v2, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mSelectedTab:Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    if-eqz v1, :cond_5f

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mSelectedTab:Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->getCallback()Landroid/support/v7/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mSelectedTab:Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/support/v7/app/ActionBar$TabListener;->onTabUnselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    :cond_5f
    check-cast p1, Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase;->mSelectedTab:Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mSelectedTab:Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mSelectedTab:Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->getCallback()Landroid/support/v7/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mSelectedTab:Landroid/support/v7/app/ActionBarImplBase$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/support/v7/app/ActionBar$TabListener;->onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    goto :goto_3b
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomView(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplBase;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarImplBase;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V
    .registers 4

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .registers 4

    const/4 v1, 0x4

    if-eqz p1, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ActionBarImplBase;->setDisplayOptions(II)V

    return-void

    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public setDisplayOptions(I)V
    .registers 3

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mDisplayHomeAsUpSet:Z

    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayOptions(II)V
    .registers 7

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mDisplayHomeAsUpSet:Z

    :cond_d
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .registers 4

    const/16 v1, 0x10

    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ActionBarImplBase;->setDisplayOptions(II)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .registers 4

    const/4 v1, 0x2

    if-eqz p1, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ActionBarImplBase;->setDisplayOptions(II)V

    return-void

    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .registers 4

    const/16 v1, 0x8

    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ActionBarImplBase;->setDisplayOptions(II)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .registers 4

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ActionBarImplBase;->setDisplayOptions(II)V

    return-void

    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public setHomeAsUpIndicator(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setHomeAsUpIndicator(I)V

    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    return-void
.end method

.method public setIcon(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/support/v7/app/ActionBar$OnNavigationListener;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p2}, Landroid/support/v7/internal/widget/ActionBarView;->setCallback(Landroid/support/v7/app/ActionBar$OnNavigationListener;)V

    return-void
.end method

.method public setLogo(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setLogo(I)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationMode(I)V
    .registers 7

    const/4 v1, 0x0

    const/4 v4, -0x1

    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_48

    :goto_b
    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v2, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setNavigationMode(I)V

    packed-switch p1, :pswitch_data_4e

    :cond_13
    :goto_13
    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1d

    iget-boolean v3, p0, Landroid/support/v7/app/ActionBarImplBase;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    invoke-virtual {v2, v1}, Landroid/support/v7/internal/widget/ActionBarView;->setCollapsable(Z)V

    return-void

    :pswitch_21
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarImplBase;->getSelectedNavigationIndex()I

    move-result v2

    iput v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mSavedTabPosition:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v7/app/ActionBarImplBase;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_b

    :pswitch_33
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarImplBase;->ensureTabsExist()V

    iget-object v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mSavedTabPosition:I

    if-eq v2, v4, :cond_13

    iget v2, p0, Landroid/support/v7/app/ActionBarImplBase;->mSavedTabPosition:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/ActionBarImplBase;->setSelectedNavigationItem(I)V

    iput v4, p0, Landroid/support/v7/app/ActionBarImplBase;->mSavedTabPosition:I

    goto :goto_13

    nop

    :pswitch_data_48
    .packed-switch 0x2
        :pswitch_21
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_33
    .end packed-switch
.end method

.method public setSelectedNavigationItem(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_11
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarImplBase;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    :goto_1c
    return-void

    :pswitch_1d
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setDropdownSelectedPosition(I)V

    goto :goto_1c

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_11
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .registers 3

    iput-boolean p1, p0, Landroid/support/v7/app/ActionBarImplBase;->mShowHideAnimationEnabled:Z

    if-nez p1, :cond_12

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->clearAnimation()V

    :cond_12
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mContainerView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSubtitle(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarImplBase;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarImplBase;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionView:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mHiddenByApp:Z

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mHiddenByApp:Z

    invoke-direct {p0, v1}, Landroid/support/v7/app/ActionBarImplBase;->updateVisibility(Z)V

    :cond_a
    return-void
.end method

.method showForActionMode()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mShowingForMode:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mShowingForMode:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarImplBase;->updateVisibility(Z)V

    :cond_b
    return-void
.end method

.method public startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .registers 5

    const/4 v2, 0x1

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionMode:Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionMode:Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->finish()V

    :cond_a
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->killMode()V

    new-instance v0, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;-><init>(Landroid/support/v7/app/ActionBarImplBase;Landroid/support/v7/view/ActionMode$Callback;)V

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;->invalidate()V

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->initForMode(Landroid/support/v7/view/ActionMode;)V

    invoke-virtual {p0, v2}, Landroid/support/v7/app/ActionBarImplBase;->animateToMode(Z)V

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_3b

    iget v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mContextDisplayMode:I

    if-ne v1, v2, :cond_3b

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    :cond_3b
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplBase;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarImplBase;->mActionMode:Landroid/support/v7/app/ActionBarImplBase$ActionModeImpl;

    :goto_44
    return-object v0

    :cond_45
    const/4 v0, 0x0

    goto :goto_44
.end method
