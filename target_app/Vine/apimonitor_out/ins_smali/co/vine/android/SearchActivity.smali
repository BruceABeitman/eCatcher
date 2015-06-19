.class public Lco/vine/android/SearchActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "SearchActivity.java"
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;
.field public static final TAB_TAGS:Ljava/lang/String; = "tags"
.field public static final TAB_USERS:Ljava/lang/String; = "users"
.field private mClear:Landroid/widget/ImageButton;
.field private mCurrentFragment:Ljava/lang/ref/WeakReference;
.field private mQuery:Landroid/widget/EditText;
.field private mTabHost:Lco/vine/android/widget/tabs/FragmentTabHost;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V
return-void
.end method
.method private performSearch()V
.registers 3
iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V
iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lco/vine/android/util/Util;->setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V
iget-object v0, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_37
iget-object v0, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_37
iget-object v0, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/BaseSearchFragment;
iget-object v1, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lco/vine/android/BaseSearchFragment;->setQueryText(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/BaseSearchFragment;
invoke-virtual {v0}, Lco/vine/android/BaseSearchFragment;->performSearch()V
:cond_37
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
.method public clearQueryText()V
.registers 3
iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z
iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;
const/4 v1, 0x1
invoke-static {p0, v0, v1}, Lco/vine/android/util/Util;->setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V
return-void
.end method
.method public getQueryText()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected modernShowDivider()V
.registers 4
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-lt v1, v2, :cond_10
iget-object v1, p0, Lco/vine/android/SearchActivity;->mTabHost:Lco/vine/android/widget/tabs/FragmentTabHost;
invoke-virtual {v1}, Lco/vine/android/widget/tabs/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setShowDividers(I)V
:cond_10
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/SearchActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
sparse-switch v0, :sswitch_data_42
:goto_7
:cond_7
const-string v1, " - Lco/vine/android/SearchActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_8
iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;
const/4 v1, 0x1
invoke-static {p0, v0, v1}, Lco/vine/android/util/Util;->setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V
goto :goto_7
:sswitch_f
iget-object v0, p0, Lco/vine/android/SearchActivity;->mClear:Landroid/widget/ImageButton;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
invoke-virtual {p0}, Lco/vine/android/SearchActivity;->clearQueryText()V
iget-object v0, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_7
iget-object v0, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_7
iget-object v0, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/BaseSearchFragment;
const-string v1, ""
invoke-virtual {v0, v1}, Lco/vine/android/BaseSearchFragment;->setQueryText(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/BaseSearchFragment;
invoke-virtual {v0}, Lco/vine/android/BaseSearchFragment;->cleanSearchResults()V
goto :goto_7
:sswitch_3e
invoke-direct {p0}, Lco/vine/android/SearchActivity;->performSearch()V
goto :goto_7
:sswitch_data_42
.sparse-switch
0x7f0a01a9 -> :sswitch_8
0x7f0a01e9 -> :sswitch_f
0x7f0a01ec -> :sswitch_3e
0x7f0a01ee -> :sswitch_3e
.end sparse-switch
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 23
const-string v1, " + Lco/vine/android/SearchActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v17, 0x7f03008b
const/16 v18, 0x1
move-object/from16 v0, p0
move-object/from16 v1, p1
move/from16 v2, v17
move/from16 v3, v18
invoke-super {v0, v1, v2, v3}, Lco/vine/android/BaseControllerActionBarActivity;->onCreate(Landroid/os/Bundle;IZ)V
const/16 v17, 0x1
invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v17
const/16 v18, 0x1
invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v18
const/16 v19, 0x0
const/16 v20, 0x1
invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v20
move-object/from16 v0, p0
move-object/from16 v1, v17
move-object/from16 v2, v18
move-object/from16 v3, v19
move-object/from16 v4, v20
invoke-virtual {v0, v1, v2, v3, v4}, Lco/vine/android/SearchActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/SearchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v5
if-eqz v5, :cond_46
const/16 v17, 0x1
move/from16 v0, v17
invoke-virtual {v5, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V
const v17, 0x7f03008a
move/from16 v0, v17
invoke-virtual {v5, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V
:cond_46
invoke-virtual {v5}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v17
const v18, 0x7f0a01a9
invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v9
check-cast v9, Landroid/widget/EditText;
const v17, 0x3f8ccccd
const/high16 v18, 0x4140
const/16 v19, 0x1
move/from16 v0, v19
new-array v0, v0, [Landroid/widget/TextView;
move-object/from16 v19, v0
const/16 v20, 0x0
aput-object v9, v19, v20
move-object/from16 v0, p0
move/from16 v1, v17
move/from16 v2, v18
move-object/from16 v3, v19
invoke-static {v0, v1, v2, v3}, Lco/vine/android/util/ViewUtil;->reduceTextSizeViaFontScaleIfNeeded(Landroid/content/Context;FF[Landroid/widget/TextView;)V
move-object/from16 v0, p0
invoke-virtual {v9, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
move-object/from16 v0, p0
invoke-virtual {v9, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
const/high16 v17, 0x8
move/from16 v0, v17
invoke-virtual {v9, v0}, Landroid/widget/EditText;->setInputType(I)V
invoke-virtual {v9}, Landroid/widget/EditText;->requestFocus()Z
move-object/from16 v0, p0
iput-object v9, v0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;
const v17, 0x7f0a01e9
move-object/from16 v0, p0
move/from16 v1, v17
invoke-virtual {v0, v1}, Lco/vine/android/SearchActivity;->findViewById(I)Landroid/view/View;
move-result-object v6
check-cast v6, Landroid/widget/ImageButton;
move-object/from16 v0, p0
invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p0
iput-object v6, v0, Lco/vine/android/SearchActivity;->mClear:Landroid/widget/ImageButton;
if-nez p1, :cond_1ef
const v17, 0x7f0a01ea
move-object/from16 v0, p0
move/from16 v1, v17
invoke-virtual {v0, v1}, Lco/vine/android/SearchActivity;->findViewById(I)Landroid/view/View;
move-result-object v17
check-cast v17, Lco/vine/android/widget/tabs/FragmentTabHost;
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/SearchActivity;->mTabHost:Lco/vine/android/widget/tabs/FragmentTabHost;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/SearchActivity;->mTabHost:Lco/vine/android/widget/tabs/FragmentTabHost;
move-object/from16 v17, v0
invoke-virtual/range {p0 .. p0}, Lco/vine/android/SearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v18
const v19, 0x7f0a01eb
move-object/from16 v0, v17
move-object/from16 v1, p0
move-object/from16 v2, v18
move/from16 v3, v19
invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/widget/tabs/FragmentTabHost;->setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V
invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v8
new-instance v14, Landroid/os/Bundle;
invoke-direct {v14}, Landroid/os/Bundle;-><init>()V
const-string v17, "empty_desc"
const v18, 0x7f0e0154
move-object/from16 v0, v17
move/from16 v1, v18
invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v17, "refresh"
const/16 v18, 0x0
move-object/from16 v0, v17
move/from16 v1, v18
invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/SearchActivity;->mTabHost:Lco/vine/android/widget/tabs/FragmentTabHost;
move-object/from16 v17, v0
const-string v18, "users"
invoke-virtual/range {v17 .. v18}, Lco/vine/android/widget/tabs/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
move-result-object v16
const v17, 0x7f03008d
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/SearchActivity;->mTabHost:Lco/vine/android/widget/tabs/FragmentTabHost;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lco/vine/android/widget/tabs/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;
move-result-object v18
const/16 v19, 0x0
move/from16 v0, v17
move-object/from16 v1, v18
move/from16 v2, v19
invoke-virtual {v8, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v15
const v17, 0x7f0a01f0
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v13
check-cast v13, Landroid/widget/TextView;
const v17, 0x7f0e0173
move-object/from16 v0, p0
move/from16 v1, v17
invoke-virtual {v0, v1}, Lco/vine/android/SearchActivity;->getString(I)Ljava/lang/String;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v17, 0x7f0a01ef
move/from16 v0, v17
invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/ImageView;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/SearchActivity;->getResources()Landroid/content/res/Resources;
move-result-object v17
const v18, 0x7f020267
invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v17
move-object/from16 v0, v17
invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
move-object/from16 v0, v16
invoke-virtual {v0, v15}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/SearchActivity;->mTabHost:Lco/vine/android/widget/tabs/FragmentTabHost;
move-object/from16 v17, v0
const-class v18, Lco/vine/android/UserSearchFragment;
move-object/from16 v0, v17
move-object/from16 v1, v16
move-object/from16 v2, v18
invoke-virtual {v0, v1, v2, v14}, Lco/vine/android/widget/tabs/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
new-instance v10, Landroid/os/Bundle;
invoke-direct {v10}, Landroid/os/Bundle;-><init>()V
const-string v17, "empty_desc"
const v18, 0x7f0e0155
move-object/from16 v0, v17
move/from16 v1, v18
invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v17, "refresh"
const/16 v18, 0x0
move-object/from16 v0, v17
move/from16 v1, v18
invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/SearchActivity;->mTabHost:Lco/vine/android/widget/tabs/FragmentTabHost;
move-object/from16 v17, v0
const-string v18, "tags"
invoke-virtual/range {v17 .. v18}, Lco/vine/android/widget/tabs/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
move-result-object v12
const v17, 0x7f03008d
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/SearchActivity;->mTabHost:Lco/vine/android/widget/tabs/FragmentTabHost;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Lco/vine/android/widget/tabs/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;
move-result-object v18
const/16 v19, 0x0
move/from16 v0, v17
move-object/from16 v1, v18
move/from16 v2, v19
invoke-virtual {v8, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v11
const v17, 0x7f0a01f0
move/from16 v0, v17
invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v13
check-cast v13, Landroid/widget/TextView;
const v17, 0x7f0e0241
move-object/from16 v0, p0
move/from16 v1, v17
invoke-virtual {v0, v1}, Lco/vine/android/SearchActivity;->getString(I)Ljava/lang/String;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v17, 0x7f0a01ef
move/from16 v0, v17
invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/ImageView;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/SearchActivity;->getResources()Landroid/content/res/Resources;
move-result-object v17
const v18, 0x7f02026d
invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v17
move-object/from16 v0, v17
invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v12, v11}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/SearchActivity;->mTabHost:Lco/vine/android/widget/tabs/FragmentTabHost;
move-object/from16 v17, v0
const-class v18, Lco/vine/android/TagSearchFragment;
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-virtual {v0, v12, v1, v10}, Lco/vine/android/widget/tabs/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/SearchActivity;->modernShowDivider()V
:cond_1ef
const-string v1, " - Lco/vine/android/SearchActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lco/vine/android/SearchActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onDestroy()V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/SearchActivity;->mTabHost:Lco/vine/android/widget/tabs/FragmentTabHost;
const-string v1, " - Lco/vine/android/SearchActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 6
invoke-virtual {p1}, Landroid/widget/TextView;->getId()I
move-result v1
packed-switch v1, :pswitch_data_36
:cond_7
const/4 v1, 0x0
:goto_8
return v1
:pswitch_9
const/4 v0, 0x2
iget-object v1, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_22
iget-object v1, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_22
iget-object v1, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/BaseSearchFragment;
invoke-virtual {v1}, Lco/vine/android/BaseSearchFragment;->getMinimumSearchQueryLength()I
move-result v0
:cond_22
const/4 v1, 0x3
if-ne p2, v1, :cond_7
iget-object v1, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-interface {v1}, Landroid/text/Editable;->length()I
move-result v1
if-lt v1, v0, :cond_7
invoke-direct {p0}, Lco/vine/android/SearchActivity;->performSearch()V
const/4 v1, 0x1
goto :goto_8
:pswitch_data_36
.packed-switch 0x7f0a01a9
:pswitch_9
.end packed-switch
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 9
const v1, 0x7f0a01e9
invoke-virtual {p0, v1}, Lco/vine/android/SearchActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v1
if-lez v1, :cond_45
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
:goto_13
iget-object v1, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_44
iget-object v1, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_44
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v2
iget-object v1, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/BaseSearchFragment;
invoke-virtual {v1}, Lco/vine/android/BaseSearchFragment;->getMinimumSearchQueryLength()I
move-result v1
if-lt v2, v1, :cond_4b
iget-object v1, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/BaseSearchFragment;
invoke-virtual {p0}, Lco/vine/android/SearchActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lco/vine/android/BaseSearchFragment;->showSearchHint(Landroid/content/res/Resources;Ljava/lang/String;)V
:cond_44
:goto_44
return-void
:cond_45
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
goto :goto_13
:cond_4b
iget-object v1, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/BaseSearchFragment;
invoke-virtual {v1}, Lco/vine/android/BaseSearchFragment;->hideSearchHint()V
goto :goto_44
.end method
.method public restoreQueryText(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;
invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V
iget-object v0, p0, Lco/vine/android/SearchActivity;->mQuery:Landroid/widget/EditText;
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lco/vine/android/util/Util;->setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V
return-void
.end method
.method public setCurrentTab(Lco/vine/android/BaseSearchFragment;)V
.registers 3
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lco/vine/android/SearchActivity;->mCurrentFragment:Ljava/lang/ref/WeakReference;
return-void
.end method