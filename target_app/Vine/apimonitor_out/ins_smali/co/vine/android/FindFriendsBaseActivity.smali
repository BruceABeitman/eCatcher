.class public Lco/vine/android/FindFriendsBaseActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "FindFriendsBaseActivity.java"
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lco/vine/android/widget/tabs/IconTabHost$OnTabClickedListener;
.field public static final EXTRA_IS_TWITTER_REG:Ljava/lang/String; = "is_twitter_reg"
.field private static final STATE_CURRENT_TAB:Ljava/lang/String; = "currentTab"
.field public static final TAG_ADDRESS_BOOK:Ljava/lang/String; = "address"
.field public static final TAG_SEARCH:Ljava/lang/String; = "search"
.field public static final TAG_TWITTER:Ljava/lang/String; = "twitter"
.field protected mScrollBar:Lco/vine/android/widget/tabs/ViewPagerScrollBar;
.field protected mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
.field protected mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
.field protected mViewPager:Landroid/support/v4/view/ViewPager;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V
return-void
.end method
.method private setupTabs()V
.registers 3
const v0, 0x1020012
invoke-virtual {p0, v0}, Lco/vine/android/FindFriendsBaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lco/vine/android/widget/tabs/IconTabHost;
iput-object v0, p0, Lco/vine/android/FindFriendsBaseActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
iget-object v0, p0, Lco/vine/android/FindFriendsBaseActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
if-nez v0, :cond_17
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
iget-object v0, p0, Lco/vine/android/FindFriendsBaseActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v0}, Lco/vine/android/widget/tabs/IconTabHost;->setup()V
const v0, 0x7f0a00da
invoke-virtual {p0, v0}, Lco/vine/android/FindFriendsBaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v4/view/ViewPager;
iput-object v0, p0, Lco/vine/android/FindFriendsBaseActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 7
packed-switch p1, :pswitch_data_16
:cond_3
:goto_3
return-void
:pswitch_4
iget-object v1, p0, Lco/vine/android/FindFriendsBaseActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lco/vine/android/widget/tabs/TabsAdapter;->getTab(I)Lco/vine/android/widget/tabs/TabInfo;
move-result-object v1
invoke-virtual {v1}, Lco/vine/android/widget/tabs/TabInfo;->fragment()Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_3
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V
goto :goto_3
nop
:pswitch_data_16
.packed-switch 0x1
:pswitch_4
:pswitch_4
.end packed-switch
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lco/vine/android/FindFriendsBaseActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v1, 0x7f030053
const/4 v2, 0x1
invoke-super {p0, p1, v1, v2}, Lco/vine/android/BaseControllerActionBarActivity;->onCreate(Landroid/os/Bundle;IZ)V
invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z
move-result v1
if-eqz v1, :cond_10
invoke-direct {p0}, Lco/vine/android/FindFriendsBaseActivity;->setupTabs()V
:cond_10
const v1, 0x7f0a011c
invoke-virtual {p0, v1}, Lco/vine/android/FindFriendsBaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lco/vine/android/widget/tabs/ViewPagerScrollBar;
iput-object v1, p0, Lco/vine/android/FindFriendsBaseActivity;->mScrollBar:Lco/vine/android/widget/tabs/ViewPagerScrollBar;
invoke-virtual {p0}, Lco/vine/android/FindFriendsBaseActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
if-eqz v0, :cond_32
const-string v1, "is_twitter_reg"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v1
if-eqz v1, :cond_32
iget-object v1, p0, Lco/vine/android/FindFriendsBaseActivity;->mScrollBar:Lco/vine/android/widget/tabs/ViewPagerScrollBar;
const v2, 0x7f070001
invoke-virtual {v1, v2}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->setColorIds(I)V
:cond_32
const v1, 0x7f0a00da
invoke-virtual {p0, v1}, Lco/vine/android/FindFriendsBaseActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/support/v4/view/ViewPager;
iput-object v1, p0, Lco/vine/android/FindFriendsBaseActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
iget-object v1, p0, Lco/vine/android/FindFriendsBaseActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {p0}, Lco/vine/android/FindFriendsBaseActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0b0054
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V
iget-object v1, p0, Lco/vine/android/FindFriendsBaseActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
const v2, 0x7f09000e
invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V
const-string v1, " - Lco/vine/android/FindFriendsBaseActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCurrentTabClicked()V
.registers 1
return-void
.end method
.method protected onDestroy()V
.registers 4
const-string v1, " + Lco/vine/android/FindFriendsBaseActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onDestroy()V
iget-object v2, p0, Lco/vine/android/FindFriendsBaseActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v2}, Lco/vine/android/widget/tabs/IconTabHost;->getCurrentTab()I
move-result v0
iget-object v2, p0, Lco/vine/android/FindFriendsBaseActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
invoke-virtual {v2}, Lco/vine/android/widget/tabs/TabsAdapter;->getTabs()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/widget/tabs/TabInfo;
invoke-virtual {v2}, Lco/vine/android/widget/tabs/TabInfo;->fragment()Landroid/support/v4/app/Fragment;
move-result-object v1
instance-of v2, v1, Lco/vine/android/widget/OnTabChangedListener;
if-eqz v2, :cond_22
check-cast v1, Lco/vine/android/widget/OnTabChangedListener;
invoke-interface {v1, v0}, Lco/vine/android/widget/OnTabChangedListener;->onMoveAway(I)V
:cond_22
const-string v1, " - Lco/vine/android/FindFriendsBaseActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lco/vine/android/FindFriendsBaseActivity; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
.parameter
.end parameter
invoke-super {p0, p1}, Lco/vine/android/BaseControllerActionBarActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
const-string v1, "currentTab"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {p0, v0}, Lco/vine/android/FindFriendsBaseActivity;->setCurrentTabByTag(Ljava/lang/String;)V
:cond_e
const-string v1, " - Lco/vine/android/FindFriendsBaseActivity; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lco/vine/android/FindFriendsBaseActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lco/vine/android/BaseControllerActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v1, p0, Lco/vine/android/FindFriendsBaseActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v1}, Lco/vine/android/widget/tabs/IconTabHost;->getCurrentTabTag()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_10
const-string v1, "currentTab"
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_10
const-string v1, " - Lco/vine/android/FindFriendsBaseActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSupportContentChanged()V
.registers 2
invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onSupportContentChanged()V
invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z
move-result v0
if-nez v0, :cond_c
invoke-direct {p0}, Lco/vine/android/FindFriendsBaseActivity;->setupTabs()V
:cond_c
return-void
.end method
.method public onTabChanged(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lco/vine/android/FindFriendsBaseActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
iget-object v1, p0, Lco/vine/android/FindFriendsBaseActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v1}, Lco/vine/android/widget/tabs/IconTabHost;->getCurrentTab()I
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
return-void
.end method
.method  setCurrentTabByTag(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lco/vine/android/FindFriendsBaseActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_f
invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V
:cond_f
iget-object v1, p0, Lco/vine/android/FindFriendsBaseActivity;->mScrollBar:Lco/vine/android/widget/tabs/ViewPagerScrollBar;
iget-object v2, p0, Lco/vine/android/FindFriendsBaseActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
move-result v2
invoke-virtual {v1, v2}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->setPosition(I)V
return-void
.end method