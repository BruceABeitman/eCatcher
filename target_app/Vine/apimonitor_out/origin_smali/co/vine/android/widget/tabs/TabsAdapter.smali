.class public Lco/vine/android/widget/tabs/TabsAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "TabsAdapter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private final mActivity:Lco/vine/android/BaseControllerActionBarActivity;

.field private final mScrollBar:Lco/vine/android/widget/tabs/ViewPagerScrollBar;

.field private mSetActionBarColorOnPageSelectedEnabled:Z

.field private final mTabFactory:Lco/vine/android/widget/tabs/DummyTabFactory;

.field private final mTabHost:Landroid/widget/TabHost;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/widget/tabs/TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPager:Landroid/support/v4/view/ViewPager;

.field public previousTab:I


# direct methods
.method public constructor <init>(Lco/vine/android/BaseControllerActionBarActivity;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;Lco/vine/android/widget/tabs/ViewPagerScrollBar;)V
    .registers 7

    invoke-virtual {p1}, Lco/vine/android/BaseControllerActionBarActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mSetActionBarColorOnPageSelectedEnabled:Z

    iput-object p1, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    iput-object p2, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    iput-object p3, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iput-object p4, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mScrollBar:Lco/vine/android/widget/tabs/ViewPagerScrollBar;

    new-instance v0, Lco/vine/android/widget/tabs/DummyTabFactory;

    iget-object v1, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    invoke-direct {v0, v1}, Lco/vine/android/widget/tabs/DummyTabFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabFactory:Lco/vine/android/widget/tabs/DummyTabFactory;

    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Lco/vine/android/widget/tabs/TabInfo;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lco/vine/android/widget/tabs/TabInfo;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabFactory:Lco/vine/android/widget/tabs/DummyTabFactory;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-virtual {p0}, Lco/vine/android/widget/tabs/TabsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .registers 3

    iget-object v1, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {p0, v1}, Lco/vine/android/widget/tabs/TabsAdapter;->getTab(I)Lco/vine/android/widget/tabs/TabInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lco/vine/android/widget/tabs/TabInfo;->fragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getIndicator(I)Lco/vine/android/widget/tabs/TabIndicator;
    .registers 4

    iget-object v1, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lco/vine/android/widget/tabs/TabIndicator;

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 5

    iget-object v1, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/tabs/TabInfo;

    iget-object v0, v0, Lco/vine/android/widget/tabs/TabInfo;->clss:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/tabs/TabInfo;

    iget-object v0, v0, Lco/vine/android/widget/tabs/TabInfo;->bundle:Landroid/os/Bundle;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x0

    iget-object v3, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/widget/tabs/TabInfo;

    invoke-virtual {v2}, Lco/vine/android/widget/tabs/TabInfo;->fragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-ne v3, p1, :cond_7

    const/4 v0, 0x1

    :cond_1a
    if-eqz v0, :cond_1e

    const/4 v3, -0x1

    :goto_1d
    return v3

    :cond_1e
    const/4 v3, -0x2

    goto :goto_1d
.end method

.method public getNewIndicatorForTab(I)Landroid/widget/ImageView;
    .registers 4

    invoke-virtual {p0, p1}, Lco/vine/android/widget/tabs/TabsAdapter;->getIndicator(I)Lco/vine/android/widget/tabs/TabIndicator;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lco/vine/android/widget/tabs/TabIndicator;->getNewIndicator()Landroid/widget/ImageView;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getTab(I)Lco/vine/android/widget/tabs/TabInfo;
    .registers 3

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/tabs/TabInfo;

    return-object v0
.end method

.method public getTabs()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/widget/tabs/TabInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/widget/tabs/TabInfo;

    invoke-virtual {v1, v0}, Lco/vine/android/widget/tabs/TabInfo;->setFragment(Landroid/support/v4/app/Fragment;)V

    instance-of v1, v0, Lco/vine/android/BaseArrayListFragment;

    if-eqz v1, :cond_22

    move-object v1, v0

    check-cast v1, Lco/vine/android/BaseArrayListFragment;

    new-instance v2, Lco/vine/android/widget/tabs/TabScrollListener;

    iget-object v3, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    invoke-direct {v2, v3, p2}, Lco/vine/android/widget/tabs/TabScrollListener;-><init>(Lco/vine/android/BaseControllerActionBarActivity;I)V

    invoke-virtual {v1, v2}, Lco/vine/android/BaseArrayListFragment;->setScrollListener(Lco/vine/android/widget/tabs/TabScrollListener;)V

    :cond_22
    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 6

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ge v0, p1, :cond_13

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mScrollBar:Lco/vine/android/widget/tabs/ViewPagerScrollBar;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mScrollBar:Lco/vine/android/widget/tabs/ViewPagerScrollBar;

    neg-int v1, p3

    invoke-virtual {v0, p1, v1}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->scroll(II)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mScrollBar:Lco/vine/android/widget/tabs/ViewPagerScrollBar;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mScrollBar:Lco/vine/android/widget/tabs/ViewPagerScrollBar;

    invoke-virtual {v0, p1, p3}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->scroll(II)V

    goto :goto_12
.end method

.method public onPageSelected(I)V
    .registers 7

    iget-object v3, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getDescendantFocusability()I

    move-result v0

    const/high16 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    iget v3, p0, Lco/vine/android/widget/tabs/TabsAdapter;->previousTab:I

    if-eq p1, v3, :cond_58

    iget-object v3, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    check-cast v3, Lco/vine/android/widget/tabs/IconTabHost;

    invoke-virtual {v3, p1}, Lco/vine/android/widget/tabs/IconTabHost;->setTabExplicit(I)V

    iget-object v3, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    iget v4, p0, Lco/vine/android/widget/tabs/TabsAdapter;->previousTab:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/widget/tabs/TabInfo;

    invoke-virtual {v3}, Lco/vine/android/widget/tabs/TabInfo;->fragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_33

    instance-of v3, v1, Lco/vine/android/widget/OnTabChangedListener;

    if-eqz v3, :cond_33

    check-cast v1, Lco/vine/android/widget/OnTabChangedListener;

    invoke-interface {v1, p1}, Lco/vine/android/widget/OnTabChangedListener;->onMoveAway(I)V

    :cond_33
    iget-object v3, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/widget/tabs/TabInfo;

    invoke-virtual {v3}, Lco/vine/android/widget/tabs/TabInfo;->fragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_4d

    instance-of v3, v1, Lco/vine/android/widget/OnTabChangedListener;

    if-eqz v3, :cond_4d

    move-object v3, v1

    check-cast v3, Lco/vine/android/widget/OnTabChangedListener;

    iget v4, p0, Lco/vine/android/widget/tabs/TabsAdapter;->previousTab:I

    invoke-interface {v3, v4}, Lco/vine/android/widget/OnTabChangedListener;->onMoveTo(I)V

    :cond_4d
    if-eqz v1, :cond_58

    iget-boolean v3, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mSetActionBarColorOnPageSelectedEnabled:Z

    if-eqz v3, :cond_58

    check-cast v1, Lco/vine/android/BaseFragment;

    invoke-virtual {v1}, Lco/vine/android/BaseFragment;->setActionBarColor()V

    :cond_58
    iget-object v3, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v3

    iput v3, p0, Lco/vine/android/widget/tabs/TabsAdapter;->previousTab:I

    iget-object v3, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mScrollBar:Lco/vine/android/widget/tabs/ViewPagerScrollBar;

    if-eqz v3, :cond_69

    iget-object v3, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mScrollBar:Lco/vine/android/widget/tabs/ViewPagerScrollBar;

    invoke-virtual {v3, p1}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->setPageColor(I)V

    :cond_69
    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 10

    move-object v2, p1

    check-cast v2, Lco/vine/android/widget/tabs/TabSavedState;

    iget-object v4, v2, Lco/vine/android/widget/tabs/TabSavedState;->tags:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_6
    array-length v5, v4

    if-ge v1, v5, :cond_35

    aget-object v3, v4, v1

    iget-object v5, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    invoke-virtual {v5}, Lco/vine/android/BaseControllerActionBarActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v5, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/vine/android/widget/tabs/TabInfo;

    invoke-virtual {v5, v0}, Lco/vine/android/widget/tabs/TabInfo;->setFragment(Landroid/support/v4/app/Fragment;)V

    instance-of v5, v0, Lco/vine/android/BaseArrayListFragment;

    if-eqz v5, :cond_32

    check-cast v0, Lco/vine/android/BaseArrayListFragment;

    new-instance v5, Lco/vine/android/widget/tabs/TabScrollListener;

    iget-object v6, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    invoke-direct {v5, v6, v1}, Lco/vine/android/widget/tabs/TabScrollListener;-><init>(Lco/vine/android/BaseControllerActionBarActivity;I)V

    invoke-virtual {v0, v5}, Lco/vine/android/BaseArrayListFragment;->setScrollListener(Lco/vine/android/widget/tabs/TabScrollListener;)V

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_35
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 3

    new-instance v0, Lco/vine/android/widget/tabs/TabSavedState;

    iget-object v1, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lco/vine/android/widget/tabs/TabSavedState;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public setNew(IZ)V
    .registers 4

    invoke-virtual {p0, p1}, Lco/vine/android/widget/tabs/TabsAdapter;->getIndicator(I)Lco/vine/android/widget/tabs/TabIndicator;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Lco/vine/android/widget/tabs/TabIndicator;->setNew(Z)V

    :cond_9
    return-void
.end method

.method public setSetActionBarColorOnPageSelectedEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mSetActionBarColorOnPageSelectedEnabled:Z

    return-void
.end method

.method public tabs()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/widget/tabs/TabInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/widget/tabs/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method
