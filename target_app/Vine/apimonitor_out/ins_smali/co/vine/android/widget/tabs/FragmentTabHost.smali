.class public Lco/vine/android/widget/tabs/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"
.implements Landroid/widget/TabHost$OnTabChangeListener;
.field private mAttached:Z
.field private mContainerId:I
.field private mContext:Landroid/content/Context;
.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;
.field private mLastTab:Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;
.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;
.field private mRealTabContent:Landroid/widget/FrameLayout;
.field private final mTabs:Ljava/util/ArrayList;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0, p1, v1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mTabs:Ljava/util/ArrayList;
invoke-direct {p0, p1, v1}, Lco/vine/android/widget/tabs/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mTabs:Ljava/util/ArrayList;
invoke-direct {p0, p1, p2}, Lco/vine/android/widget/tabs/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method private doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;
.registers 10
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_8
const-string p1, "users"
:cond_8
const/4 v2, 0x0
iget-object v4, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mTabs:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_f
:goto_f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_25
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;
iget-object v4, v3, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->mTag:Ljava/lang/String;
invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_f
move-object v2, v3
goto :goto_f
:cond_25
if-nez v2, :cond_44
new-instance v4, Ljava/lang/IllegalStateException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "No tab known for tag "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-static {v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
move-object v0, p2
:goto_43
return-object v0
:cond_44
iget-object v4, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mLastTab:Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;
if-eq v4, v2, :cond_89
if-nez p2, :cond_50
iget-object v4, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object p2
:cond_50
iget-object v4, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mLastTab:Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;
if-eqz v4, :cond_65
iget-object v4, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mLastTab:Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;
#getter for: Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {v4}, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->access$100(Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;
move-result-object v4
if-eqz v4, :cond_65
iget-object v4, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mLastTab:Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;
#getter for: Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {v4}, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->access$100(Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;
move-result-object v4
invoke-virtual {p2, v4}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
:cond_65
#getter for: Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {v2}, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->access$100(Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;
move-result-object v4
if-nez v4, :cond_8b
iget-object v4, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mContext:Landroid/content/Context;
iget-object v5, v2, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;
invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v5
iget-object v6, v2, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->bundle:Landroid/os/Bundle;
invoke-static {v4, v5, v6}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
move-result-object v4
#setter for: Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {v2, v4}, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->access$102(Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
iget v4, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mContainerId:I
#getter for: Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {v2}, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->access$100(Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;
move-result-object v5
iget-object v6, v2, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->mTag:Ljava/lang/String;
invoke-virtual {p2, v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
:goto_87
iput-object v2, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mLastTab:Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;
:cond_89
move-object v0, p2
goto :goto_43
:cond_8b
#getter for: Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {v2}, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->access$100(Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;
move-result-object v4
invoke-virtual {p2, v4}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
goto :goto_87
.end method
.method private ensureContent()V
.registers 4
iget-object v0, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;
if-nez v0, :cond_2d
iget v0, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mContainerId:I
invoke-virtual {p0, v0}, Lco/vine/android/widget/tabs/FragmentTabHost;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iput-object v0, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;
iget-object v0, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;
if-nez v0, :cond_2d
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "No tab content FrameLayout found for id "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mContainerId:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2d
return-void
.end method
.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 14
const v10, 0x1020013
const/4 v9, 0x1
const/4 v8, 0x0
const/4 v7, -0x1
const/4 v6, 0x0
new-array v4, v9, [I
const v5, 0x10100f3
aput v5, v4, v6
invoke-virtual {p1, p2, v4, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
if-eqz v0, :cond_1d
invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v4
iput v4, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mContainerId:I
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
:cond_1d
invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
invoke-virtual {p0, v10}, Lco/vine/android/widget/tabs/FragmentTabHost;->findViewById(I)Landroid/view/View;
move-result-object v4
if-nez v4, :cond_75
new-instance v2, Landroid/widget/LinearLayout;
invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V
new-instance v4, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0, v2, v4}, Lco/vine/android/widget/tabs/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v3, Landroid/widget/TabWidget;
invoke-direct {v3, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V
invoke-virtual {v3, v10}, Landroid/widget/TabWidget;->setId(I)V
invoke-virtual {v3, v6}, Landroid/widget/TabWidget;->setOrientation(I)V
new-instance v4, Landroid/widget/LinearLayout$LayoutParams;
const/4 v5, -0x2
invoke-direct {v4, v7, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v1, Landroid/widget/FrameLayout;
invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
const v4, 0x1020011
invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setId(I)V
new-instance v4, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v4, v6, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v1, Landroid/widget/FrameLayout;
invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;
iget-object v4, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;
iget v5, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mContainerId:I
invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setId(I)V
new-instance v4, Landroid/widget/LinearLayout$LayoutParams;
const/high16 v5, 0x3f80
invoke-direct {v4, v7, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:cond_75
return-void
.end method
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
.registers 9
new-instance v3, Lco/vine/android/widget/tabs/DummyTabFactory;
iget-object v4, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mContext:Landroid/content/Context;
invoke-direct {v3, v4}, Lco/vine/android/widget/tabs/DummyTabFactory;-><init>(Landroid/content/Context;)V
invoke-virtual {p1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;
invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;
move-result-object v2
new-instance v1, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;
invoke-direct {v1, v2, p2, p3}, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
iget-boolean v3, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mAttached:Z
if-eqz v3, :cond_40
iget-object v3, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v3
#setter for: Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {v1, v3}, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->access$102(Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
#getter for: Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {v1}, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->access$100(Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;
move-result-object v3
if-eqz v3, :cond_40
#getter for: Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {v1}, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->access$100(Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isDetached()Z
move-result v3
if-nez v3, :cond_40
iget-object v3, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
#getter for: Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {v1}, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->access$100(Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
:cond_40
iget-object v3, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mTabs:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {p0, p1}, Lco/vine/android/widget/tabs/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V
return-void
.end method
.method protected onAttachedToWindow()V
.registers 7
invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V
invoke-virtual {p0}, Lco/vine/android/widget/tabs/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
iget-object v4, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mTabs:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_e
:goto_e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_50
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;
iget-object v4, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
iget-object v5, v3, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->mTag:Ljava/lang/String;
invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v4
#setter for: Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {v3, v4}, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->access$102(Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
#getter for: Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {v3}, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->access$100(Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;
move-result-object v4
if-eqz v4, :cond_e
#getter for: Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {v3}, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->access$100(Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;
move-result-object v4
invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->isDetached()Z
move-result v4
if-nez v4, :cond_e
iget-object v4, v3, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->mTag:Ljava/lang/String;
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_40
iput-object v3, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mLastTab:Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;
goto :goto_e
:cond_40
if-nez v1, :cond_48
iget-object v4, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
:cond_48
#getter for: Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {v3}, Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;->access$100(Lco/vine/android/widget/tabs/FragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;
move-result-object v4
invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
goto :goto_e
:cond_50
const/4 v4, 0x1
iput-boolean v4, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mAttached:Z
invoke-direct {p0, v0, v1}, Lco/vine/android/widget/tabs/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
if-eqz v1, :cond_61
invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
iget-object v4, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z
:cond_61
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mAttached:Z
return-void
.end method
.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 4
const-string v1, " + Lco/vine/android/widget/tabs/FragmentTabHost; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v0, p1
check-cast v0, Lco/vine/android/widget/tabs/FragmentTabHost$SavedState;
invoke-virtual {v0}, Lco/vine/android/widget/tabs/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;
move-result-object v1
invoke-super {p0, v1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget-object v1, v0, Lco/vine/android/widget/tabs/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;
invoke-virtual {p0, v1}, Lco/vine/android/widget/tabs/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V
const-string v1, " - Lco/vine/android/widget/tabs/FragmentTabHost; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
const-string v1, " + Lco/vine/android/widget/tabs/FragmentTabHost; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v1
new-instance v0, Lco/vine/android/widget/tabs/FragmentTabHost$SavedState;
invoke-direct {v0, v1}, Lco/vine/android/widget/tabs/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V
invoke-virtual {p0}, Lco/vine/android/widget/tabs/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lco/vine/android/widget/tabs/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;
move-object v2, v0
const-string v1, " - Lco/vine/android/widget/tabs/FragmentTabHost; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v0, v2
return-object v0
.end method
.method public onTabChanged(Ljava/lang/String;)V
.registers 4
iget-boolean v1, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mAttached:Z
if-eqz v1, :cond_e
const/4 v1, 0x0
invoke-direct {p0, p1, v1}, Lco/vine/android/widget/tabs/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
:cond_e
iget-object v1, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;
if-eqz v1, :cond_17
iget-object v1, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;
invoke-interface {v1, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V
:cond_17
return-void
.end method
.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;
return-void
.end method
.method public setup()V
.registers 3
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Must call setup() that takes a Context and FragmentManager"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
.registers 3
invoke-super {p0}, Landroid/widget/TabHost;->setup()V
iput-object p1, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mContext:Landroid/content/Context;
iput-object p2, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
invoke-direct {p0}, Lco/vine/android/widget/tabs/FragmentTabHost;->ensureContent()V
return-void
.end method
.method public setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V
.registers 6
invoke-super {p0}, Landroid/widget/TabHost;->setup()V
iput-object p1, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mContext:Landroid/content/Context;
iput-object p2, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
iput p3, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mContainerId:I
invoke-direct {p0}, Lco/vine/android/widget/tabs/FragmentTabHost;->ensureContent()V
iget-object v0, p0, Lco/vine/android/widget/tabs/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;
invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setId(I)V
invoke-virtual {p0}, Lco/vine/android/widget/tabs/FragmentTabHost;->getId()I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_1e
const v0, 0x1020012
invoke-virtual {p0, v0}, Lco/vine/android/widget/tabs/FragmentTabHost;->setId(I)V
:cond_1e
return-void
.end method