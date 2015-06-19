.class public Lco/vine/android/widget/FakeActionBar;
.super Ljava/lang/Object;
.source "FakeActionBar.java"
.implements Landroid/view/View$OnClickListener;
.field private mActionBar:Landroid/widget/RelativeLayout;
.field private mActionBarContainer:Landroid/widget/RelativeLayout;
.field private mActionBarLeft:Landroid/widget/RelativeLayout;
.field private mActionBarRight:Landroid/widget/LinearLayout;
.field private final mActivity:Landroid/support/v7/app/ActionBarActivity;
.field private mBackIcon:Landroid/widget/ImageView;
.field private mContentView:Landroid/view/View;
.field private mDisplayHomeAsUp:Z
.field private mDisplayShowTitle:Ljava/lang/Boolean;
.field private mDistanceMarker:Landroid/view/View;
.field private mHomeButtonEnabled:Z
.field private mHomeIcon:Landroid/widget/ImageView;
.field private mMenu:Landroid/view/Menu;
.field private final mMenuItemPacks:Ljava/util/ArrayList;
.field public mTheme:Lco/vine/android/widget/FakeActionBar$Theme;
.field private mTitle:Ljava/lang/String;
.field private mTitleView:Landroid/widget/TextView;
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mMenuItemPacks:Ljava/util/ArrayList;
iput-object p1, p0, Lco/vine/android/widget/FakeActionBar;->mActivity:Landroid/support/v7/app/ActionBarActivity;
sget-object v0, Lco/vine/android/widget/FakeActionBar$Theme;->LIGHT:Lco/vine/android/widget/FakeActionBar$Theme;
iput-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mTheme:Lco/vine/android/widget/FakeActionBar$Theme;
return-void
.end method
.method static synthetic access$000(Lco/vine/android/widget/FakeActionBar;)Landroid/support/v7/app/ActionBarActivity;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActivity:Landroid/support/v7/app/ActionBarActivity;
return-object v0
.end method
.method public getActionBar()Landroid/widget/RelativeLayout;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActionBar:Landroid/widget/RelativeLayout;
return-object v0
.end method
.method public getActionBarLeft()Landroid/widget/RelativeLayout;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActionBarLeft:Landroid/widget/RelativeLayout;
return-object v0
.end method
.method public getActionBarRight()Landroid/widget/LinearLayout;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActionBarRight:Landroid/widget/LinearLayout;
return-object v0
.end method
.method public getBackIcon()Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mBackIcon:Landroid/widget/ImageView;
return-object v0
.end method
.method public getDistanceMaker()Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mDistanceMarker:Landroid/view/View;
return-object v0
.end method
.method public getHomeIcon()Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mHomeIcon:Landroid/widget/ImageView;
return-object v0
.end method
.method public getMenuItemPack(I)Lco/vine/android/widget/FakeActionBar$MenuItemPack;
.registers 5
iget-object v2, p0, Lco/vine/android/widget/FakeActionBar;->mMenuItemPacks:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_6
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1b
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/widget/FakeActionBar$MenuItemPack;
iget-object v2, v1, Lco/vine/android/widget/FakeActionBar$MenuItemPack;->item:Landroid/view/MenuItem;
invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I
move-result v2
if-ne v2, p1, :cond_6
:goto_1a
return-object v1
:cond_1b
const/4 v1, 0x0
goto :goto_1a
.end method
.method public getRoot()Landroid/widget/RelativeLayout;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActionBarContainer:Landroid/widget/RelativeLayout;
return-object v0
.end method
.method public getTitleView()Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mTitleView:Landroid/widget/TextView;
return-object v0
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/widget/FakeActionBar; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mBackIcon:Landroid/widget/ImageView;
if-eq p1, v0, :cond_8
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mHomeIcon:Landroid/widget/ImageView;
if-ne p1, v0, :cond_d
:cond_8
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->finish()V
:cond_d
const-string v1, " - Lco/vine/android/widget/FakeActionBar; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreate()V
.registers 4
const-string v1, " + Lco/vine/android/widget/FakeActionBar; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03003b
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActionBarContainer:Landroid/widget/RelativeLayout;
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActionBarContainer:Landroid/widget/RelativeLayout;
const v1, 0x7f0a00e7
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActionBar:Landroid/widget/RelativeLayout;
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActivity:Landroid/support/v7/app/ActionBarActivity;
iget-object v1, p0, Lco/vine/android/widget/FakeActionBar;->mActionBar:Landroid/widget/RelativeLayout;
invoke-static {v0, v1}, Lco/vine/android/util/ViewUtil;->setActionBarHeight(Landroid/support/v7/app/ActionBarActivity;Landroid/view/View;)V
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActionBarContainer:Landroid/widget/RelativeLayout;
const v1, 0x7f0a00e6
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mDistanceMarker:Landroid/view/View;
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActivity:Landroid/support/v7/app/ActionBarActivity;
iget-object v1, p0, Lco/vine/android/widget/FakeActionBar;->mDistanceMarker:Landroid/view/View;
invoke-static {v0, v1}, Lco/vine/android/util/ViewUtil;->setActionBarHeight(Landroid/support/v7/app/ActionBarActivity;Landroid/view/View;)V
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActionBarContainer:Landroid/widget/RelativeLayout;
const v1, 0x7f0a00e8
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActionBarLeft:Landroid/widget/RelativeLayout;
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActionBarContainer:Landroid/widget/RelativeLayout;
const v1, 0x7f0a00ec
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActionBarRight:Landroid/widget/LinearLayout;
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActionBar:Landroid/widget/RelativeLayout;
const v1, 0x7f0a00e9
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mBackIcon:Landroid/widget/ImageView;
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActionBar:Landroid/widget/RelativeLayout;
const v1, 0x7f0a00ea
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mHomeIcon:Landroid/widget/ImageView;
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActionBar:Landroid/widget/RelativeLayout;
const v1, 0x7f0a00eb
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mTitleView:Landroid/widget/TextView;
const-string v1, " - Lco/vine/android/widget/FakeActionBar; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;Z)V
.registers 14
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/widget/FakeActionBar; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iput-object p1, p0, Lco/vine/android/widget/FakeActionBar;->mMenu:Landroid/view/Menu;
iget-object v9, p0, Lco/vine/android/widget/FakeActionBar;->mMenuItemPacks:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_8
:goto_8
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-eqz v9, :cond_20
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lco/vine/android/widget/FakeActionBar$MenuItemPack;
iget-object v9, v5, Lco/vine/android/widget/FakeActionBar$MenuItemPack;->view:Landroid/view/View;
if-eqz v9, :cond_8
iget-object v9, p0, Lco/vine/android/widget/FakeActionBar;->mActionBarRight:Landroid/widget/LinearLayout;
iget-object v10, v5, Lco/vine/android/widget/FakeActionBar$MenuItemPack;->view:Landroid/view/View;
invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V
goto :goto_8
:cond_20
if-nez p2, :cond_23
:goto_22
const-string v1, " - Lco/vine/android/widget/FakeActionBar; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_23
iget-object v9, p0, Lco/vine/android/widget/FakeActionBar;->mMenu:Landroid/view/Menu;
invoke-interface {v9}, Landroid/view/Menu;->size()I
move-result v6
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
:goto_2f
if-ge v0, v6, :cond_76
iget-object v9, p0, Lco/vine/android/widget/FakeActionBar;->mMenu:Landroid/view/Menu;
invoke-interface {v9, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;
move-result-object v3
invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z
move-result v9
if-eqz v9, :cond_73
const/4 v8, 0x0
invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;
move-result-object v7
if-eqz v2, :cond_55
new-instance v8, Landroid/widget/ImageView;
iget-object v9, p0, Lco/vine/android/widget/FakeActionBar;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
move-object v9, v8
check-cast v9, Landroid/widget/ImageView;
invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_55
if-eqz v7, :cond_64
new-instance v8, Landroid/widget/TextView;
iget-object v9, p0, Lco/vine/android/widget/FakeActionBar;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
move-object v9, v8
check-cast v9, Landroid/widget/TextView;
invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_64
if-eqz v8, :cond_73
new-instance v9, Lco/vine/android/widget/FakeActionBar$1;
invoke-direct {v9, p0, v3}, Lco/vine/android/widget/FakeActionBar$1;-><init>(Lco/vine/android/widget/FakeActionBar;Landroid/view/MenuItem;)V
invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v9, p0, Lco/vine/android/widget/FakeActionBar;->mActionBarRight:Landroid/widget/LinearLayout;
invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
:cond_73
add-int/lit8 v0, v0, 0x1
goto :goto_2f
:cond_76
iget-object v9, p0, Lco/vine/android/widget/FakeActionBar;->mMenuItemPacks:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V
iget-object v9, p0, Lco/vine/android/widget/FakeActionBar;->mMenuItemPacks:Ljava/util/ArrayList;
invoke-virtual {v9, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
goto :goto_22
.end method
.method public onPostCreate(Landroid/os/Bundle;)V
.registers 14
const/16 v11, 0x8
const/4 v10, 0x1
const/4 v9, 0x0
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mContentView:Landroid/view/View;
if-eqz v6, :cond_c
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mActionBarContainer:Landroid/widget/RelativeLayout;
if-nez v6, :cond_14
:cond_c
new-instance v6, Ljava/lang/IllegalStateException;
const-string v7, "custom setContentView is not called."
invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v6
:cond_14
iget-boolean v6, p0, Lco/vine/android/widget/FakeActionBar;->mDisplayHomeAsUp:Z
if-nez v6, :cond_1c
iget-boolean v6, p0, Lco/vine/android/widget/FakeActionBar;->mHomeButtonEnabled:Z
if-eqz v6, :cond_d5
:cond_1c
iget-boolean v6, p0, Lco/vine/android/widget/FakeActionBar;->mDisplayHomeAsUp:Z
if-eqz v6, :cond_c8
iget-object v7, p0, Lco/vine/android/widget/FakeActionBar;->mBackIcon:Landroid/widget/ImageView;
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mTheme:Lco/vine/android/widget/FakeActionBar$Theme;
sget-object v8, Lco/vine/android/widget/FakeActionBar$Theme;->DARK:Lco/vine/android/widget/FakeActionBar$Theme;
if-ne v6, v8, :cond_c3
const v6, 0x7f020012
:goto_2b
invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mBackIcon:Landroid/widget/ImageView;
invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setClickable(Z)V
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mBackIcon:Landroid/widget/ImageView;
invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mBackIcon:Landroid/widget/ImageView;
invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_3d
const/4 v2, 0x0
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v6}, Landroid/support/v7/app/ActionBarActivity;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v4
if-eqz v4, :cond_80
new-array v6, v10, [I
const v7, 0x10102ce
aput v7, v6, v9
invoke-virtual {v4, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v0
new-instance v5, Landroid/util/TypedValue;
invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V
invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
move-result v6
if-eqz v6, :cond_80
iget v6, v5, Landroid/util/TypedValue;->resourceId:I
new-array v7, v10, [I
const v8, 0x1010002
aput v8, v7, v9
invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
move-result-object v1
const/4 v6, -0x1
invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v3
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
if-lez v3, :cond_80
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v6}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;
move-result-object v6
invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
:cond_80
if-nez v2, :cond_92
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v6}, Landroid/support/v7/app/ActionBarActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v6
iget-object v7, p0, Lco/vine/android/widget/FakeActionBar;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v7}, Landroid/support/v7/app/ActionBarActivity;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v7
invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v2
:cond_92
iget-boolean v6, p0, Lco/vine/android/widget/FakeActionBar;->mHomeButtonEnabled:Z
if-eqz v6, :cond_cf
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mHomeIcon:Landroid/widget/ImageView;
invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setClickable(Z)V
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mHomeIcon:Landroid/widget/ImageView;
invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mHomeIcon:Landroid/widget/ImageView;
invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mHomeIcon:Landroid/widget/ImageView;
invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_aa
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mDisplayShowTitle:Ljava/lang/Boolean;
invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
move-result v6
if-eqz v6, :cond_db
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mTitle:Ljava/lang/String;
if-eqz v6, :cond_db
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mTitleView:Landroid/widget/TextView;
invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mTitleView:Landroid/widget/TextView;
iget-object v7, p0, Lco/vine/android/widget/FakeActionBar;->mTitle:Ljava/lang/String;
invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_c2
return-void
:cond_c3
const v6, 0x7f020013
goto/16 :goto_2b
:cond_c8
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mBackIcon:Landroid/widget/ImageView;
invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V
goto/16 :goto_3d
:cond_cf
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mHomeIcon:Landroid/widget/ImageView;
invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_aa
:cond_d5
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mHomeIcon:Landroid/widget/ImageView;
invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_aa
:cond_db
iget-object v6, p0, Lco/vine/android/widget/FakeActionBar;->mTitleView:Landroid/widget/TextView;
invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_c2
.end method
.method public onPrepareOptionsMenu(Landroid/view/Menu;Z)V
.registers 3
return-void
.end method
.method public setActionBarColor(I)V
.registers 3
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActionBar:Landroid/widget/RelativeLayout;
invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
return-void
.end method
.method public setActionBarTransition(Landroid/graphics/drawable/TransitionDrawable;)V
.registers 3
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActionBar:Landroid/widget/RelativeLayout;
invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 6
iput-object p1, p0, Lco/vine/android/widget/FakeActionBar;->mContentView:Landroid/view/View;
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const/4 v1, 0x3
iget-object v2, p0, Lco/vine/android/widget/FakeActionBar;->mDistanceMarker:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getId()I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
iget-object v1, p0, Lco/vine/android/widget/FakeActionBar;->mActionBarContainer:Landroid/widget/RelativeLayout;
iget-object v2, p0, Lco/vine/android/widget/FakeActionBar;->mContentView:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
return-void
.end method
.method public setDisplayHomeAsUpEnabled(Ljava/lang/Boolean;)V
.registers 3
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
iput-boolean v0, p0, Lco/vine/android/widget/FakeActionBar;->mDisplayHomeAsUp:Z
return-void
.end method
.method public setDisplayShowTitleEnabled(Ljava/lang/Boolean;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/FakeActionBar;->mDisplayShowTitle:Ljava/lang/Boolean;
return-void
.end method
.method public setHomeButtonEnabled(Ljava/lang/Boolean;)V
.registers 3
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
iput-boolean v0, p0, Lco/vine/android/widget/FakeActionBar;->mHomeButtonEnabled:Z
return-void
.end method
.method public setTheme(Lco/vine/android/widget/FakeActionBar$Theme;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/FakeActionBar;->mTheme:Lco/vine/android/widget/FakeActionBar$Theme;
return-void
.end method
.method public setTitle(Ljava/lang/Integer;)V
.registers 4
iget-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mActivity:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/widget/FakeActionBar;->mTitle:Ljava/lang/String;
return-void
.end method
.method public setTitle(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/FakeActionBar;->mTitle:Ljava/lang/String;
return-void
.end method