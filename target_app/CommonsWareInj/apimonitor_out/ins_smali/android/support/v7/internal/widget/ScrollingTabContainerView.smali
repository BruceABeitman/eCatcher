.class public Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"
.implements Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;
.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"
.field private mAllowCollapse:Z
.field private mContentHeight:I
.field private final mInflater:Landroid/view/LayoutInflater;
.field  mMaxTabWidth:I
.field private mSelectedTabIndex:I
.field  mStackedTabMaxWidth:I
.field private mTabClickListener:Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener;
.field private mTabLayout:Landroid/widget/LinearLayout;
.field  mTabSelector:Ljava/lang/Runnable;
.field private mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
.method public constructor <init>(Landroid/content/Context;)V
.registers 7
const/4 v3, 0x0
invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mInflater:Landroid/view/LayoutInflater;
invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V
invoke-static {p1}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->getTabContainerHeight()I
move-result v1
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V
invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mInflater:Landroid/view/LayoutInflater;
sget v2, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_tabbar:I
invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/LinearLayout;
iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
new-instance v2, Landroid/view/ViewGroup$LayoutParams;
const/4 v3, -0x2
const/4 v4, -0x1
invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {p0, v1, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method static synthetic access$200(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
return-object v0
.end method
.method static synthetic access$300(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
.registers 4
invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
move-result-object v0
return-object v0
.end method
.method private createSpinner()Landroid/support/v7/internal/widget/SpinnerICS;
.registers 5
new-instance v0, Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;
move-result-object v1
const/4 v2, 0x0
sget v3, Landroid/support/v7/appcompat/R$attr;->actionDropDownStyle:I
invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/internal/widget/SpinnerICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
const/4 v2, -0x2
const/4 v3, -0x1
invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/SpinnerICS;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/SpinnerICS;->setOnItemClickListenerInt(Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;)V
return-object v0
.end method
.method private createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
.registers 9
const/4 v5, 0x0
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mInflater:Landroid/view/LayoutInflater;
sget v2, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_tab:I
iget-object v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
const/4 v4, 0x0
invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->attach(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/app/ActionBar$Tab;Z)V
if-eqz p2, :cond_22
invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
new-instance v1, Landroid/widget/AbsListView$LayoutParams;
const/4 v2, -0x1
iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mContentHeight:I
invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:goto_21
return-object v0
:cond_22
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener;
if-nez v1, :cond_31
new-instance v1, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener;
invoke-direct {v1, p0, v5}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener;
:cond_31
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabClickListener;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_21
.end method
.method private isCollapsed()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerICS;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-ne v0, p0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method private performCollapse()V
.registers 6
const/4 v4, 0x0
invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->isCollapsed()Z
move-result v0
if-eqz v0, :cond_8
:goto_7
return-void
:cond_8
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
if-nez v0, :cond_12
invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/support/v7/internal/widget/SpinnerICS;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
:cond_12
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
const/4 v2, -0x2
const/4 v3, -0x1
invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerICS;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v0
if-nez v0, :cond_35
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
new-instance v1, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;
invoke-direct {v1, p0, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;)V
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/SpinnerICS;->setAdapter(Landroid/widget/SpinnerAdapter;)V
:cond_35
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
if-eqz v0, :cond_40
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z
iput-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
:cond_40
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
iget v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/SpinnerICS;->setSelection(I)V
goto :goto_7
.end method
.method private performExpand()Z
.registers 6
const/4 v4, 0x0
invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->isCollapsed()Z
move-result v0
if-nez v0, :cond_8
:goto_7
return v4
:cond_8
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
const/4 v2, -0x2
const/4 v3, -0x1
invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerICS;->getSelectedItemPosition()I
move-result v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V
goto :goto_7
.end method
.method public addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V
.registers 10
const/4 v5, 0x0
invoke-direct {p0, p1, v5}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
const/4 v3, -0x1
const/high16 v4, 0x3f80
invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {v1, v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
if-eqz v1, :cond_21
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/SpinnerICS;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v1
check-cast v1, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V
:cond_21
if-eqz p3, :cond_27
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V
:cond_27
iget-boolean v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z
if-eqz v1, :cond_2e
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V
:cond_2e
return-void
.end method
.method public addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V
.registers 9
const/4 v5, 0x0
invoke-direct {p0, p1, v5}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
const/4 v3, -0x1
const/high16 v4, 0x3f80
invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
if-eqz v1, :cond_21
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/SpinnerICS;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v1
check-cast v1, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V
:cond_21
if-eqz p2, :cond_27
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V
:cond_27
iget-boolean v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z
if-eqz v1, :cond_2e
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V
:cond_2e
return-void
.end method
.method public animateToTab(I)V
.registers 4
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
if-eqz v1, :cond_f
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z
:cond_f
new-instance v1, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;
invoke-direct {v1, p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public onAttachedToWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z
:cond_c
return-void
.end method
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 4
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->getTabContainerHeight()I
move-result v1
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V
invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I
return-void
.end method
.method public onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z
:cond_c
return-void
.end method
.method public onItemClick(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/widget/ScrollingTabContainerView; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v0, p2
check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/support/v7/app/ActionBar$Tab;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v7/app/ActionBar$Tab;->select()V
const-string v1, " - Landroid/support/v7/internal/widget/ScrollingTabContainerView; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onMeasure(II)V
.registers 14
const/high16 v10, 0x4000
const/4 v6, 0x1
const/4 v7, 0x0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v5
if-ne v5, v10, :cond_6d
move v2, v6
:goto_b
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V
iget-object v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I
move-result v1
if-le v1, v6, :cond_78
if-eq v5, v10, :cond_1c
const/high16 v8, -0x8000
if-ne v5, v8, :cond_78
:cond_1c
const/4 v8, 0x2
if-le v1, v8, :cond_6f
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v8
int-to-float v8, v8
const v9, 0x3ecccccd
mul-float/2addr v8, v9
float-to-int v8, v8
iput v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I
:goto_2b
iget v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I
iget v9, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I
invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I
move-result v8
iput v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I
:goto_35
iget v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mContentHeight:I
invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result p2
if-nez v2, :cond_7c
iget-boolean v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z
if-eqz v8, :cond_7c
move v0, v6
:goto_42
if-eqz v0, :cond_82
iget-object v6, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
invoke-virtual {v6, v7, p2}, Landroid/widget/LinearLayout;->measure(II)V
iget-object v6, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I
move-result v6
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v7
if-le v6, v7, :cond_7e
invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->performCollapse()V
:goto_58
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I
move-result v4
invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I
move-result v3
if-eqz v2, :cond_6c
if-eq v4, v3, :cond_6c
iget v6, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I
invoke-virtual {p0, v6}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V
:cond_6c
return-void
:cond_6d
move v2, v7
goto :goto_b
:cond_6f
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v8
div-int/lit8 v8, v8, 0x2
iput v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I
goto :goto_2b
:cond_78
const/4 v8, -0x1
iput v8, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I
goto :goto_35
:cond_7c
move v0, v7
goto :goto_42
:cond_7e
invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->performExpand()Z
goto :goto_58
:cond_82
invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->performExpand()Z
goto :goto_58
.end method
.method public removeAllTabs()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
if-eqz v0, :cond_14
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerICS;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V
:cond_14
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z
if-eqz v0, :cond_1b
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V
:cond_1b
return-void
.end method
.method public removeTabAt(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
if-eqz v0, :cond_14
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerICS;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V
:cond_14
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z
if-eqz v0, :cond_1b
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V
:cond_1b
return-void
.end method
.method public setAllowCollapse(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z
return-void
.end method
.method public setContentHeight(I)V
.registers 2
iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mContentHeight:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V
return-void
.end method
.method public setTabSelected(I)V
.registers 7
iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I
iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I
move-result v3
const/4 v1, 0x0
:goto_9
if-ge v1, v3, :cond_21
iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-ne v1, p1, :cond_1f
const/4 v2, 0x1
:goto_14
invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V
if-eqz v2, :cond_1c
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->animateToTab(I)V
:cond_1c
add-int/lit8 v1, v1, 0x1
goto :goto_9
:cond_1f
const/4 v2, 0x0
goto :goto_14
:cond_21
iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
if-eqz v4, :cond_2c
if-ltz p1, :cond_2c
iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {v4, p1}, Landroid/support/v7/internal/widget/SpinnerICS;->setSelection(I)V
:cond_2c
return-void
.end method
.method public updateTab(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->update()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
if-eqz v0, :cond_1a
iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerICS;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V
:cond_1a
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z
if-eqz v0, :cond_21
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V
:cond_21
return-void
.end method