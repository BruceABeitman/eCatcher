.class public Lco/vine/android/FindFriendsNUXActivity;
.super Lco/vine/android/FindFriendsBaseActivity;
.source "FindFriendsNUXActivity.java"
.implements Landroid/text/TextWatcher;
.implements Lco/vine/android/widget/tabs/IconTabHost$OnTabClickedListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnClickListener;
.field public static final ARG_FROM_SIGN_UP:Ljava/lang/String; = "from_sign_up"
.field public static final ARG_TAKE_FOCUS:Ljava/lang/String; = "take_focus"
.field private mClear:Landroid/widget/ImageButton;
.field private mIsTwitterReg:Z
.field private mQuery:Landroid/widget/EditText;
.field private mSearch:Landroid/view/MenuItem;
.field private mUserIdsToFollow:Ljava/util/HashSet;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/FindFriendsBaseActivity;-><init>()V
return-void
.end method
.method private addContactsTab()V
.registers 5
iget-object v2, p0, Lco/vine/android/FindFriendsNUXActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
const-string v3, "address"
invoke-virtual {v2, v3}, Lco/vine/android/widget/tabs/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
move-result-object v1
const v2, 0x7f0e008f
const v3, 0x7f09004a
invoke-direct {p0, v2, v3}, Lco/vine/android/FindFriendsNUXActivity;->getTabIndicator(II)Lco/vine/android/widget/tabs/TabIndicator;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iget-boolean v2, p0, Lco/vine/android/FindFriendsNUXActivity;->mIsTwitterReg:Z
if-eqz v2, :cond_24
const-string v2, "take_focus"
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
:cond_24
const-string v2, "empty_desc"
const v3, 0x7f0e00e1
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
iget-object v2, p0, Lco/vine/android/FindFriendsNUXActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
const-class v3, Lco/vine/android/FindFriendsNUXAddressFragment;
invoke-virtual {v2, v1, v3, v0}, Lco/vine/android/widget/tabs/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
return-void
.end method
.method private addTwitterTab()V
.registers 5
iget-object v2, p0, Lco/vine/android/FindFriendsNUXActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
const-string v3, "twitter"
invoke-virtual {v2, v3}, Lco/vine/android/widget/tabs/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
move-result-object v1
const v2, 0x7f0e0250
const v3, 0x7f09004c
invoke-direct {p0, v2, v3}, Lco/vine/android/FindFriendsNUXActivity;->getTabIndicator(II)Lco/vine/android/widget/tabs/TabIndicator;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v2, "from_sign_up"
const/4 v3, 0x1
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v2, "empty_desc"
const v3, 0x7f0e00ef
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
iget-object v2, p0, Lco/vine/android/FindFriendsNUXActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
const-class v3, Lco/vine/android/FindFriendsTwitterFragment;
invoke-virtual {v2, v1, v3, v0}, Lco/vine/android/widget/tabs/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
return-void
.end method
.method private getTabIndicator(II)Lco/vine/android/widget/tabs/TabIndicator;
.registers 10
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v3
const v4, 0x7f030062
iget-object v5, p0, Lco/vine/android/FindFriendsNUXActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
const/4 v6, 0x0
invoke-static {v3, v4, v5, p1, v6}, Lco/vine/android/widget/tabs/TabIndicator;->newTextIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;IZ)Lco/vine/android/widget/tabs/TabIndicator;
move-result-object v0
invoke-virtual {p0}, Lco/vine/android/FindFriendsNUXActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
invoke-virtual {p0}, Lco/vine/android/FindFriendsNUXActivity;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f090057
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I
move-result v4
invoke-static {v3, v4}, Lco/vine/android/widget/tabs/TabIndicator;->createTextColorList(II)Landroid/content/res/ColorStateList;
move-result-object v1
invoke-virtual {v0}, Lco/vine/android/widget/tabs/TabIndicator;->getIndicatorText()Landroid/widget/TextView;
move-result-object v2
invoke-static {p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;
move-result-object v3
iget-object v3, v3, Lco/vine/android/widget/Typefaces;->boldContent:Landroid/graphics/Typeface;
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
return-object v0
.end method
.method public static start(Landroid/content/Context;)V
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/FindFriendsNUXActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public addUserToFollow(J)V
.registers 5
iget-object v0, p0, Lco/vine/android/FindFriendsNUXActivity;->mUserIdsToFollow:Ljava/util/HashSet;
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public addUsersToFollow(Ljava/util/ArrayList;Lco/vine/android/Friendships;)V
.registers 8
invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_4
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_21
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/api/VineUser;
iget-object v2, p0, Lco/vine/android/FindFriendsNUXActivity;->mUserIdsToFollow:Ljava/util/HashSet;
iget-wide v3, v1, Lco/vine/android/api/VineUser;->userId:J
invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
iget-wide v2, v1, Lco/vine/android/api/VineUser;->userId:J
invoke-virtual {p2, v2, v3}, Lco/vine/android/Friendships;->addFollowing(J)V
goto :goto_4
:cond_21
return-void
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 2
return-void
.end method
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public clearSearch()V
.registers 4
const/16 v2, 0x8
iget-object v0, p0, Lco/vine/android/FindFriendsNUXActivity;->mQuery:Landroid/widget/EditText;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lco/vine/android/FindFriendsNUXActivity;->mClear:Landroid/widget/ImageButton;
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/FindFriendsNUXActivity;->mQuery:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V
invoke-virtual {p0}, Lco/vine/android/FindFriendsNUXActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/FindFriendsNUXActivity;->mQuery:Landroid/widget/EditText;
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lco/vine/android/util/Util;->setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V
return-void
.end method
.method public onBackPressed()V
.registers 3
iget-object v0, p0, Lco/vine/android/FindFriendsNUXActivity;->mQuery:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_18
iget-object v0, p0, Lco/vine/android/FindFriendsNUXActivity;->mQuery:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z
move-result v0
if-eqz v0, :cond_1c
:cond_18
invoke-virtual {p0}, Lco/vine/android/FindFriendsNUXActivity;->clearSearch()V
:cond_1b
:goto_1b
return-void
:cond_1c
iget-object v0, p0, Lco/vine/android/FindFriendsNUXActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
move-result v0
if-lez v0, :cond_1b
iget-object v0, p0, Lco/vine/android/FindFriendsNUXActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
iget-object v1, p0, Lco/vine/android/FindFriendsNUXActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
goto :goto_1b
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/FindFriendsNUXActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_c
:goto_7
const-string v1, " - Lco/vine/android/FindFriendsNUXActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
invoke-virtual {p0}, Lco/vine/android/FindFriendsNUXActivity;->clearSearch()V
goto :goto_7
:pswitch_data_c
.packed-switch 0x7f0a01e9
:pswitch_8
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 14
const-string v1, " + Lco/vine/android/FindFriendsNUXActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v11, 0x1
const/4 v10, 0x0
invoke-super {p0, p1}, Lco/vine/android/FindFriendsBaseActivity;->onCreate(Landroid/os/Bundle;)V
invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v7
const v8, 0x7f0e00de
invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v9
invoke-virtual {p0, v6, v7, v8, v9}, Lco/vine/android/FindFriendsNUXActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V
invoke-virtual {p0}, Lco/vine/android/FindFriendsNUXActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_5f
invoke-virtual {v0, v11}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V
const v6, 0x7f03008a
invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V
invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v2
const/16 v6, 0x8
invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V
const v6, 0x7f0a01a9
invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/EditText;
const v6, 0x3f8ccccd
const/high16 v7, 0x4140
new-array v8, v11, [Landroid/widget/TextView;
aput-object v4, v8, v10
invoke-static {p0, v6, v7, v8}, Lco/vine/android/util/ViewUtil;->reduceTextSizeViaFontScaleIfNeeded(Landroid/content/Context;FF[Landroid/widget/TextView;)V
invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
const/high16 v6, 0x8
invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V
iput-object v4, p0, Lco/vine/android/FindFriendsNUXActivity;->mQuery:Landroid/widget/EditText;
const v6, 0x7f0a01e9
invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageButton;
invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iput-object v1, p0, Lco/vine/android/FindFriendsNUXActivity;->mClear:Landroid/widget/ImageButton;
:cond_5f
new-instance v6, Lco/vine/android/FindFriendsNUXActivity$FindFriendsNUXListener;
const/4 v7, 0x0
invoke-direct {v6, p0, v7}, Lco/vine/android/FindFriendsNUXActivity$FindFriendsNUXListener;-><init>(Lco/vine/android/FindFriendsNUXActivity;Lco/vine/android/FindFriendsNUXActivity$1;)V
iput-object v6, p0, Lco/vine/android/FindFriendsNUXActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
iget-object v5, p0, Lco/vine/android/FindFriendsNUXActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
iget-object v6, p0, Lco/vine/android/FindFriendsNUXActivity;->mScrollBar:Lco/vine/android/widget/tabs/ViewPagerScrollBar;
const/4 v7, 0x2
invoke-virtual {v6, v7}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->setRange(I)V
iget-object v6, p0, Lco/vine/android/FindFriendsNUXActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v6, v11}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V
new-instance v6, Lco/vine/android/widget/tabs/TabsAdapter;
iget-object v7, p0, Lco/vine/android/FindFriendsNUXActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
iget-object v8, p0, Lco/vine/android/FindFriendsNUXActivity;->mScrollBar:Lco/vine/android/widget/tabs/ViewPagerScrollBar;
invoke-direct {v6, p0, v5, v7, v8}, Lco/vine/android/widget/tabs/TabsAdapter;-><init>(Lco/vine/android/BaseControllerActionBarActivity;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;Lco/vine/android/widget/tabs/ViewPagerScrollBar;)V
iput-object v6, p0, Lco/vine/android/FindFriendsNUXActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
invoke-virtual {p0}, Lco/vine/android/FindFriendsNUXActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
if-eqz v3, :cond_8d
const-string v6, "is_twitter_reg"
invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v6
iput-boolean v6, p0, Lco/vine/android/FindFriendsNUXActivity;->mIsTwitterReg:Z
:cond_8d
invoke-virtual {v5, p0}, Lco/vine/android/widget/tabs/IconTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
invoke-virtual {v5, p0}, Lco/vine/android/widget/tabs/IconTabHost;->setOnTabClickedListener(Lco/vine/android/widget/tabs/IconTabHost$OnTabClickedListener;)V
iget-boolean v6, p0, Lco/vine/android/FindFriendsNUXActivity;->mIsTwitterReg:Z
if-eqz v6, :cond_a5
invoke-direct {p0}, Lco/vine/android/FindFriendsNUXActivity;->addTwitterTab()V
invoke-direct {p0}, Lco/vine/android/FindFriendsNUXActivity;->addContactsTab()V
:goto_9d
new-instance v6, Ljava/util/HashSet;
invoke-direct {v6}, Ljava/util/HashSet;-><init>()V
iput-object v6, p0, Lco/vine/android/FindFriendsNUXActivity;->mUserIdsToFollow:Ljava/util/HashSet;
const-string v1, " - Lco/vine/android/FindFriendsNUXActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_a5
invoke-direct {p0}, Lco/vine/android/FindFriendsNUXActivity;->addContactsTab()V
invoke-direct {p0}, Lco/vine/android/FindFriendsNUXActivity;->addTwitterTab()V
goto :goto_9d
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/FindFriendsNUXActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v2, p0, Lco/vine/android/FindFriendsNUXActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
move-result v2
packed-switch v2, :pswitch_data_3e
invoke-virtual {p0}, Lco/vine/android/FindFriendsNUXActivity;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v2
const v3, 0x7f10000d
invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
:goto_13
const v2, 0x7f0a00e4
invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v1
iget-object v2, p0, Lco/vine/android/FindFriendsNUXActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
invoke-virtual {v2}, Lco/vine/android/widget/tabs/TabsAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;
move-result-object v0
instance-of v2, v0, Lco/vine/android/FindFriendsNUXActivity$FilterableFriendsList;
if-eqz v2, :cond_2f
if-eqz v1, :cond_2f
check-cast v0, Lco/vine/android/FindFriendsNUXActivity$FilterableFriendsList;
invoke-interface {v0}, Lco/vine/android/FindFriendsNUXActivity$FilterableFriendsList;->shouldShowSearchIcon()Z
move-result v2
invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
:cond_2f
iput-object v1, p0, Lco/vine/android/FindFriendsNUXActivity;->mSearch:Landroid/view/MenuItem;
const/4 v2, 0x1
const-string v1, " - Lco/vine/android/FindFriendsNUXActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v2
:pswitch_33
invoke-virtual {p0}, Lco/vine/android/FindFriendsNUXActivity;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v2
const v3, 0x7f10000c
invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
goto :goto_13
:pswitch_data_3e
.packed-switch 0x1
:pswitch_33
.end packed-switch
.end method
.method public onCurrentTabClicked()V
.registers 1
return-void
.end method
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 7
const/4 v0, 0x0
invoke-virtual {p1}, Landroid/widget/TextView;->getId()I
move-result v1
packed-switch v1, :pswitch_data_22
:goto_8
:cond_8
return v0
:pswitch_9
const/4 v1, 0x3
if-eq p2, v1, :cond_16
if-eqz p3, :cond_8
invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v1
const/16 v2, 0x42
if-ne v1, v2, :cond_8
:cond_16
iget-object v1, p0, Lco/vine/android/FindFriendsNUXActivity;->mQuery:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V
iget-object v1, p0, Lco/vine/android/FindFriendsNUXActivity;->mQuery:Landroid/widget/EditText;
invoke-static {p0, v1, v0}, Lco/vine/android/util/Util;->setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V
const/4 v0, 0x1
goto :goto_8
:pswitch_data_22
.packed-switch 0x7f0a01a9
:pswitch_9
.end packed-switch
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/FindFriendsNUXActivity; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x1
const/4 v3, 0x0
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v2
sparse-switch v2, :sswitch_data_6c
iget-object v2, p0, Lco/vine/android/FindFriendsNUXActivity;->mUserIdsToFollow:Ljava/util/HashSet;
invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z
move-result v2
if-nez v2, :cond_62
new-instance v0, Landroid/app/ProgressDialog;
const v2, 0x7f0f0037
invoke-direct {v0, p0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Lco/vine/android/FindFriendsNUXActivity;->mProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
const v2, 0x7f0e0103
invoke-virtual {p0, v2}, Lco/vine/android/FindFriendsNUXActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
:try_start_28
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
:try_end_2b
.catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_69
:goto_2b
new-instance v1, Ljava/util/ArrayList;
iget-object v2, p0, Lco/vine/android/FindFriendsNUXActivity;->mUserIdsToFollow:Ljava/util/HashSet;
invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iget-object v2, p0, Lco/vine/android/FindFriendsNUXActivity;->mAppController:Lco/vine/android/client/AppController;
iget-object v3, p0, Lco/vine/android/FindFriendsNUXActivity;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v3
invoke-virtual {v2, v3, v1}, Lco/vine/android/client/AppController;->bulkFollowUsers(Lco/vine/android/client/Session;Ljava/util/ArrayList;)Ljava/lang/String;
:goto_3d
const-string v1, " - Lco/vine/android/FindFriendsNUXActivity; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v4
:sswitch_3e
invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
invoke-virtual {p0}, Lco/vine/android/FindFriendsNUXActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v2, p0, Lco/vine/android/FindFriendsNUXActivity;->mClear:Landroid/widget/ImageButton;
invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V
iget-object v2, p0, Lco/vine/android/FindFriendsNUXActivity;->mQuery:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z
iget-object v2, p0, Lco/vine/android/FindFriendsNUXActivity;->mQuery:Landroid/widget/EditText;
invoke-static {p0, v2, v4}, Lco/vine/android/util/Util;->setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V
goto :goto_3d
:sswitch_5c
iget-object v2, p0, Lco/vine/android/FindFriendsNUXActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
goto :goto_3d
:cond_62
invoke-static {p0, v4}, Lco/vine/android/StartActivity;->toStart(Landroid/content/Context;Z)V
invoke-virtual {p0}, Lco/vine/android/FindFriendsNUXActivity;->finish()V
goto :goto_3d
:catch_69
move-exception v2
goto :goto_2b
nop
:sswitch_data_6c
.sparse-switch
0x7f0a00e4 -> :sswitch_3e
0x7f0a0246 -> :sswitch_5c
.end sparse-switch
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 7
iget-object v1, p0, Lco/vine/android/FindFriendsNUXActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
invoke-virtual {v1}, Lco/vine/android/widget/tabs/TabsAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;
move-result-object v0
instance-of v1, v0, Lco/vine/android/FindFriendsNUXActivity$FilterableFriendsList;
if-eqz v1, :cond_f
check-cast v0, Lco/vine/android/FindFriendsNUXActivity$FilterableFriendsList;
invoke-interface {v0, p1, p2, p3, p4}, Lco/vine/android/FindFriendsNUXActivity$FilterableFriendsList;->onTextChanged(Ljava/lang/CharSequence;III)V
:cond_f
return-void
.end method
.method public removeUserToFollow(J)V
.registers 5
iget-object v0, p0, Lco/vine/android/FindFriendsNUXActivity;->mUserIdsToFollow:Ljava/util/HashSet;
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method  setCurrentTabByTag(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lco/vine/android/FindFriendsNUXActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_f
invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V
:cond_f
iget-object v1, p0, Lco/vine/android/FindFriendsNUXActivity;->mScrollBar:Lco/vine/android/widget/tabs/ViewPagerScrollBar;
iget-object v2, p0, Lco/vine/android/FindFriendsNUXActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
move-result v2
invoke-virtual {v1, v2}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->setPosition(I)V
return-void
.end method
.method public showSearchIcon(Z)V
.registers 3
iget-object v0, p0, Lco/vine/android/FindFriendsNUXActivity;->mSearch:Landroid/view/MenuItem;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/FindFriendsNUXActivity;->mSearch:Landroid/view/MenuItem;
invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
:cond_9
return-void
.end method
.method public toggleFollowAll(ZLjava/util/ArrayList;Lco/vine/android/Friendships;)V
.registers 9
if-eqz p1, :cond_6
invoke-virtual {p0, p2, p3}, Lco/vine/android/FindFriendsNUXActivity;->addUsersToFollow(Ljava/util/ArrayList;Lco/vine/android/Friendships;)V
:cond_5
return-void
:cond_6
invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_a
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_5
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/api/VineUser;
iget-object v2, p0, Lco/vine/android/FindFriendsNUXActivity;->mUserIdsToFollow:Ljava/util/HashSet;
iget-wide v3, v1, Lco/vine/android/api/VineUser;->userId:J
invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
iget-wide v2, v1, Lco/vine/android/api/VineUser;->userId:J
invoke-virtual {p3, v2, v3}, Lco/vine/android/Friendships;->removeFollowing(J)V
goto :goto_a
.end method