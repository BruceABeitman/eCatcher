.class public Lco/vine/android/FindFriendsActivity;
.super Lco/vine/android/FindFriendsBaseActivity;
.source "FindFriendsActivity.java"
.implements Lco/vine/android/widget/tabs/IconTabHost$OnTabClickedListener;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/FindFriendsBaseActivity;-><init>()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 13
const-string v1, " + Lco/vine/android/FindFriendsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v10, 0x7f03003f
const/4 v8, 0x1
const/4 v9, 0x0
invoke-super {p0, p1}, Lco/vine/android/FindFriendsBaseActivity;->onCreate(Landroid/os/Bundle;)V
invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
const v7, 0x7f0e00de
invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v8
invoke-virtual {p0, v5, v6, v7, v8}, Lco/vine/android/FindFriendsActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V
new-instance v5, Lco/vine/android/FindFriendsActivity$FindFriendsListener;
const/4 v6, 0x0
invoke-direct {v5, p0, v6}, Lco/vine/android/FindFriendsActivity$FindFriendsListener;-><init>(Lco/vine/android/FindFriendsActivity;Lco/vine/android/FindFriendsActivity$1;)V
iput-object v5, p0, Lco/vine/android/FindFriendsActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
iget-object v3, p0, Lco/vine/android/FindFriendsActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
iget-object v5, p0, Lco/vine/android/FindFriendsActivity;->mScrollBar:Lco/vine/android/widget/tabs/ViewPagerScrollBar;
const/4 v6, 0x3
invoke-virtual {v5, v6}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->setRange(I)V
iget-object v5, p0, Lco/vine/android/FindFriendsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
const/4 v6, 0x2
invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V
new-instance v5, Lco/vine/android/widget/tabs/TabsAdapter;
iget-object v6, p0, Lco/vine/android/FindFriendsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
iget-object v7, p0, Lco/vine/android/FindFriendsActivity;->mScrollBar:Lco/vine/android/widget/tabs/ViewPagerScrollBar;
invoke-direct {v5, p0, v3, v6, v7}, Lco/vine/android/widget/tabs/TabsAdapter;-><init>(Lco/vine/android/BaseControllerActionBarActivity;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;Lco/vine/android/widget/tabs/ViewPagerScrollBar;)V
iput-object v5, p0, Lco/vine/android/FindFriendsActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
invoke-virtual {v3, p0}, Lco/vine/android/widget/tabs/IconTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
invoke-virtual {v3, p0}, Lco/vine/android/widget/tabs/IconTabHost;->setOnTabClickedListener(Lco/vine/android/widget/tabs/IconTabHost$OnTabClickedListener;)V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v5, "empty_desc"
const v6, 0x7f0e00e1
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
iget-object v5, p0, Lco/vine/android/FindFriendsActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
const-string v6, "address"
invoke-virtual {v3, v6}, Lco/vine/android/widget/tabs/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
move-result-object v6
const v7, 0x7f02011b
invoke-static {v1, v10, v3, v7, v9}, Lco/vine/android/widget/tabs/TabIndicator;->newIconIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lco/vine/android/widget/tabs/TabIndicator;
move-result-object v7
invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
move-result-object v6
const-class v7, Lco/vine/android/FindFriendsAddressFragment;
invoke-virtual {v5, v6, v7, v0}, Lco/vine/android/widget/tabs/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
new-instance v4, Landroid/os/Bundle;
invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
const-string v5, "empty_desc"
const v6, 0x7f0e00ef
invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
iget-object v5, p0, Lco/vine/android/FindFriendsActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
const-string v6, "twitter"
invoke-virtual {v3, v6}, Lco/vine/android/widget/tabs/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
move-result-object v6
const v7, 0x7f02011d
invoke-static {v1, v10, v3, v7, v9}, Lco/vine/android/widget/tabs/TabIndicator;->newIconIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lco/vine/android/widget/tabs/TabIndicator;
move-result-object v7
invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
move-result-object v6
const-class v7, Lco/vine/android/FindFriendsTwitterFragment;
invoke-virtual {v5, v6, v7, v4}, Lco/vine/android/widget/tabs/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
new-instance v2, Landroid/os/Bundle;
invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
const-string v5, "layout"
const v6, 0x7f03003e
invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
iget-object v5, p0, Lco/vine/android/FindFriendsActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
const-string v6, "search"
invoke-virtual {v3, v6}, Lco/vine/android/widget/tabs/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
move-result-object v6
const v7, 0x7f02011c
invoke-static {v1, v10, v3, v7, v9}, Lco/vine/android/widget/tabs/TabIndicator;->newIconIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lco/vine/android/widget/tabs/TabIndicator;
move-result-object v7
invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
move-result-object v6
const-class v7, Lco/vine/android/FindFriendsSearchFragment;
invoke-virtual {v5, v6, v7, v2}, Lco/vine/android/widget/tabs/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
const-string v1, " - Lco/vine/android/FindFriendsActivity; onCreate"
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
.method  setCurrentTabByTag(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lco/vine/android/FindFriendsActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_f
invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V
:cond_f
iget-object v1, p0, Lco/vine/android/FindFriendsActivity;->mScrollBar:Lco/vine/android/widget/tabs/ViewPagerScrollBar;
iget-object v2, p0, Lco/vine/android/FindFriendsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
move-result v2
invoke-virtual {v1, v2}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->setPosition(I)V
return-void
.end method