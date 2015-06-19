.class public Landroid/support/v7/internal/widget/ActionBarView;
.super Landroid/support/v7/internal/widget/AbsActionBarView;
.source "ActionBarView.java"
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x13
.field public static final DISPLAY_DEFAULT:I = 0x0
.field private static final DISPLAY_RELAYOUT_MASK:I = 0x1f
.field private static final TAG:Ljava/lang/String; = "ActionBarView"
.field private mCallback:Landroid/support/v7/app/ActionBar$OnNavigationListener;
.field private mContext:Landroid/content/Context;
.field private mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;
.field private mCustomNavView:Landroid/view/View;
.field private mDisplayOptions:I
.field  mExpandedActionView:Landroid/view/View;
.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;
.field private mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
.field private mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.field private mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
.field private mIcon:Landroid/graphics/drawable/Drawable;
.field private mIncludeTabs:Z
.field private mIndeterminateProgressStyle:I
.field private mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
.field private mIsCollapsable:Z
.field private mIsCollapsed:Z
.field private mItemPadding:I
.field private mListNavLayout:Landroid/widget/LinearLayout;
.field private mLogo:Landroid/graphics/drawable/Drawable;
.field private mLogoNavItem:Landroid/support/v7/internal/view/menu/ActionMenuItem;
.field private final mNavItemSelectedListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;
.field private mNavigationMode:I
.field private mOptionsMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
.field private mProgressBarPadding:I
.field private mProgressStyle:I
.field private mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
.field private mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;
.field private mSubtitle:Ljava/lang/CharSequence;
.field private mSubtitleStyleRes:I
.field private mSubtitleView:Landroid/widget/TextView;
.field private mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.field private mTabSelector:Ljava/lang/Runnable;
.field private mTitle:Ljava/lang/CharSequence;
.field private mTitleLayout:Landroid/widget/LinearLayout;
.field private mTitleStyleRes:I
.field private mTitleUpView:Landroid/view/View;
.field private mTitleView:Landroid/widget/TextView;
.field private final mUpClickListener:Landroid/view/View$OnClickListener;
.field private mUserTitle:Z
.field  mWindowCallback:Landroid/view/Window$Callback;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 19
invoke-direct/range {p0 .. p2}, Landroid/support/v7/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v2, -0x1
move-object/from16 v0, p0
iput v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
new-instance v2, Landroid/support/v7/internal/widget/ActionBarView$1;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Landroid/support/v7/internal/widget/ActionBarView$1;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V
move-object/from16 v0, p0
iput-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;
new-instance v2, Landroid/support/v7/internal/widget/ActionBarView$2;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Landroid/support/v7/internal/widget/ActionBarView$2;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V
move-object/from16 v0, p0
iput-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;
new-instance v2, Landroid/support/v7/internal/widget/ActionBarView$3;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Landroid/support/v7/internal/widget/ActionBarView$3;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V
move-object/from16 v0, p0
iput-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;
move-object/from16 v0, p1
move-object/from16 v1, p0
iput-object v0, v1, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
const/4 v2, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setBackgroundResource(I)V
sget-object v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I
sget v3, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I
const/4 v4, 0x0
move-object/from16 v0, p1
move-object/from16 v1, p2
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v9
invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v10
invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v15
const/4 v2, 0x2
const/4 v3, 0x0
invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v2
move-object/from16 v0, p0
iput v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I
const/4 v2, 0x1
invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;
const/4 v2, 0x4
invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;
const/16 v2, 0x8
invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
if-nez v2, :cond_a1
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0x9
if-lt v2, v3, :cond_a1
move-object/from16 v0, p1
instance-of v2, v0, Landroid/app/Activity;
if-eqz v2, :cond_93
:try_start_82
move-object/from16 v0, p1
check-cast v0, Landroid/app/Activity;
move-object v2, v0
invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;
move-result-object v2
invoke-virtual {v15, v2}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
:try_end_93
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_82 .. :try_end_93} :catch_1cc
:cond_93
:goto_93
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
if-nez v2, :cond_a1
invoke-virtual {v10, v15}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
:cond_a1
const/4 v2, 0x7
invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
if-nez v2, :cond_d5
move-object/from16 v0, p1
instance-of v2, v0, Landroid/app/Activity;
if-eqz v2, :cond_c7
:try_start_b6
move-object/from16 v0, p1
check-cast v0, Landroid/app/Activity;
move-object v2, v0
invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;
move-result-object v2
invoke-virtual {v15, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
:try_end_c7
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b6 .. :try_end_c7} :catch_1d6
:cond_c7
:goto_c7
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
if-nez v2, :cond_d5
invoke-virtual {v10, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
:cond_d5
invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v14
const/16 v2, 0xe
sget v3, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_home:I
invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v13
const/4 v2, 0x0
move-object/from16 v0, p0
invoke-virtual {v14, v13, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/support/v7/internal/widget/ActionBarView$HomeView;
move-object/from16 v0, p0
iput-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
const/4 v2, 0x0
move-object/from16 v0, p0
invoke-virtual {v14, v13, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/support/v7/internal/widget/ActionBarView$HomeView;
move-object/from16 v0, p0
iput-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
const/4 v3, 0x1
invoke-virtual {v2, v3}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setUp(Z)V
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;
invoke-virtual {v2, v3}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;
move-result-object v3
sget v4, Landroid/support/v7/appcompat/R$string;->abc_action_bar_up_description:I
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
const/4 v2, 0x5
const/4 v3, 0x0
invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v2
move-object/from16 v0, p0
iput v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleStyleRes:I
const/4 v2, 0x6
const/4 v3, 0x0
invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v2
move-object/from16 v0, p0
iput v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleStyleRes:I
const/16 v2, 0xf
const/4 v3, 0x0
invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v2
move-object/from16 v0, p0
iput v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressStyle:I
const/16 v2, 0x10
const/4 v3, 0x0
invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v2
move-object/from16 v0, p0
iput v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I
const/16 v2, 0x11
const/4 v3, 0x0
invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v2
move-object/from16 v0, p0
iput v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressBarPadding:I
const/16 v2, 0x12
const/4 v3, 0x0
invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v2
move-object/from16 v0, p0
iput v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I
const/4 v2, 0x3
const/4 v3, 0x0
invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v2
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setDisplayOptions(I)V
const/16 v2, 0xd
const/4 v3, 0x0
invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v11
if-eqz v11, :cond_18e
const/4 v2, 0x0
move-object/from16 v0, p0
invoke-virtual {v14, v11, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
const/4 v2, 0x0
move-object/from16 v0, p0
iput v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
or-int/lit8 v2, v2, 0x10
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setDisplayOptions(I)V
:cond_18e
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I
move-result v2
move-object/from16 v0, p0
iput v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContentHeight:I
invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
new-instance v2, Landroid/support/v7/internal/view/menu/ActionMenuItem;
const/4 v4, 0x0
const v5, 0x102002c
const/4 v6, 0x0
const/4 v7, 0x0
move-object/from16 v0, p0
iget-object v8, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;
move-object/from16 v3, p1
invoke-direct/range {v2 .. v8}, Landroid/support/v7/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
move-object/from16 v0, p0
iput-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mLogoNavItem:Landroid/support/v7/internal/view/menu/ActionMenuItem;
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;
invoke-virtual {v2, v3}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
const/4 v3, 0x1
invoke-virtual {v2, v3}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setClickable(Z)V
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
const/4 v3, 0x1
invoke-virtual {v2, v3}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V
return-void
:catch_1cc
move-exception v12
const-string v2, "ActionBarView"
const-string v3, "Activity component name not found!"
invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto/16 :goto_93
:catch_1d6
move-exception v12
const-string v2, "ActionBarView"
const-string v3, "Activity component name not found!"
invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto/16 :goto_c7
.end method
.method static synthetic access$000(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/app/ActionBar$OnNavigationListener;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCallback:Landroid/support/v7/app/ActionBar$OnNavigationListener;
return-object v0
.end method
.method static synthetic access$100(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
return-object v0
.end method
.method static synthetic access$1000(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/SpinnerICS;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
return-object v0
.end method
.method static synthetic access$1100(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$1200(Landroid/support/v7/internal/widget/ActionBarView;)I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
return v0
.end method
.method static synthetic access$1300(Landroid/support/v7/internal/widget/ActionBarView;)V
.registers 1
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarView;->initTitle()V
return-void
.end method
.method static synthetic access$1400(Landroid/support/v7/internal/widget/ActionBarView;)I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I
return v0
.end method
.method static synthetic access$200(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/view/menu/ActionMenuItem;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogoNavItem:Landroid/support/v7/internal/view/menu/ActionMenuItem;
return-object v0
.end method
.method static synthetic access$500(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method static synthetic access$600(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
return-object v0
.end method
.method static synthetic access$700(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
return-object v0
.end method
.method static synthetic access$800(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
return-object v0
.end method
.method static synthetic access$900(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
return-object v0
.end method
.method private configPresenters(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
.registers 6
const/4 v3, 0x0
const/4 v2, 0x1
if-eqz p1, :cond_19
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V
:goto_e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V
return-void
:cond_19
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
invoke-virtual {v0, v1, v3}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
invoke-virtual {v0, v1, v3}, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
goto :goto_e
.end method
.method private initTitle()V
.registers 10
const/16 v6, 0x8
const/4 v4, 0x1
const/4 v5, 0x0
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
if-nez v3, :cond_99
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
sget v3, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_title_item:I
invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/LinearLayout;
iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
sget v7, Landroid/support/v7/appcompat/R$id;->action_bar_title:I
invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
sget v7, Landroid/support/v7/appcompat/R$id;->action_bar_subtitle:I
invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
sget v7, Landroid/support/v7/appcompat/R$id;->up:I
invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v3
iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;
invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleStyleRes:I
if-eqz v3, :cond_50
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
iget v8, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleStyleRes:I
invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
:cond_50
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;
if-eqz v3, :cond_5b
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;
invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_5b
iget v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleStyleRes:I
if-eqz v3, :cond_68
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;
iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
iget v8, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleStyleRes:I
invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
:cond_68
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;
if-eqz v3, :cond_78
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;
iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;
invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;
invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V
:cond_78
iget v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
and-int/lit8 v3, v3, 0x4
if-eqz v3, :cond_b8
move v0, v4
:goto_7f
iget v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
and-int/lit8 v3, v3, 0x2
if-eqz v3, :cond_ba
move v2, v4
:goto_86
iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;
if-nez v2, :cond_be
if-eqz v0, :cond_bc
move v3, v5
:goto_8d
invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
if-eqz v0, :cond_c0
if-nez v2, :cond_c0
:goto_96
invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V
:cond_99
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
if-nez v3, :cond_b2
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_b7
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_b7
:cond_b2
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V
:cond_b7
return-void
:cond_b8
move v0, v5
goto :goto_7f
:cond_ba
move v2, v5
goto :goto_86
:cond_bc
const/4 v3, 0x4
goto :goto_8d
:cond_be
move v3, v6
goto :goto_8d
:cond_c0
move v4, v5
goto :goto_96
.end method
.method private setTitleImpl(Ljava/lang/CharSequence;)V
.registers 5
const/4 v1, 0x0
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
if-eqz v2, :cond_2e
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
if-nez v2, :cond_38
iget v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
and-int/lit8 v2, v2, 0x8
if-eqz v2, :cond_38
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_26
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_38
:cond_26
const/4 v0, 0x1
:goto_27
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
if-eqz v0, :cond_3a
:goto_2b
invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
:cond_2e
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogoNavItem:Landroid/support/v7/internal/view/menu/ActionMenuItem;
if-eqz v1, :cond_37
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogoNavItem:Landroid/support/v7/internal/view/menu/ActionMenuItem;
invoke-virtual {v1, p1}, Landroid/support/v7/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
:cond_37
return-void
:cond_38
move v0, v1
goto :goto_27
:cond_3a
const/16 v1, 0x8
goto :goto_2b
.end method
.method public bridge synthetic animateToVisibility(I)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->animateToVisibility(I)V
return-void
.end method
.method public collapseActionView()V
.registers 3
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
if-nez v1, :cond_b
const/4 v0, 0x0
:goto_5
if-eqz v0, :cond_a
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->collapseActionView()Z
:cond_a
return-void
:cond_b
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
iget-object v0, v1, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
goto :goto_5
.end method
.method public bridge synthetic dismissPopupMenus()V
.registers 1
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->dismissPopupMenus()V
return-void
.end method
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 3
new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;
const/16 v1, 0x13
invoke-direct {v0, v1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(I)V
return-object v0
.end method
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
.registers 4
new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-object v0
.end method
.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
.registers 2
if-nez p1, :cond_6
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object p1
:cond_6
return-object p1
.end method
.method public bridge synthetic getAnimatedVisibility()I
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->getAnimatedVisibility()I
move-result v0
return v0
.end method
.method public bridge synthetic getContentHeight()I
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->getContentHeight()I
move-result v0
return v0
.end method
.method public getCustomNavigationView()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
return-object v0
.end method
.method public getDisplayOptions()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
return v0
.end method
.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;
return-object v0
.end method
.method public getDropdownSelectedPosition()I
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerICS;->getSelectedItemPosition()I
move-result v0
return v0
.end method
.method public getNavigationMode()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I
return v0
.end method
.method public getSubtitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;
return-object v0
.end method
.method public getTitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;
return-object v0
.end method
.method public hasEmbeddedTabs()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIncludeTabs:Z
return v0
.end method
.method public hasExpandedActionView()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public bridge synthetic hideOverflowMenu()Z
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->hideOverflowMenu()Z
move-result v0
return v0
.end method
.method public initIndeterminateProgress()V
.registers 6
new-instance v0, Landroid/support/v7/internal/widget/ProgressBarICS;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
const/4 v2, 0x0
const/4 v3, 0x0
iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I
invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
sget v1, Landroid/support/v7/appcompat/R$id;->progress_circular:I
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setId(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
return-void
.end method
.method public initProgress()V
.registers 6
new-instance v0, Landroid/support/v7/internal/widget/ProgressBarICS;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
const/4 v2, 0x0
const/4 v3, 0x0
iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressStyle:I
invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
sget v1, Landroid/support/v7/appcompat/R$id;->progress_horizontal:I
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setId(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
const/16 v1, 0x2710
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setMax(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
return-void
.end method
.method public isCollapsed()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIsCollapsed:Z
return v0
.end method
.method public bridge synthetic isOverflowMenuShowing()Z
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->isOverflowMenuShowing()Z
move-result v0
return v0
.end method
.method public bridge synthetic isOverflowReserved()Z
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->isOverflowReserved()Z
move-result v0
return v0
.end method
.method public isSplitActionBar()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitActionBar:Z
return v0
.end method
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 5
const/4 v2, 0x0
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;
iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;
iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
if-eqz v1, :cond_1b
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;
move-result-object v1
if-ne v1, p0, :cond_1b
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
:cond_1b
iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
and-int/lit8 v1, v1, 0x8
if-eqz v1, :cond_26
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarView;->initTitle()V
:cond_26
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v1, :cond_42
iget-boolean v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIncludeTabs:Z
if-eqz v1, :cond_42
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
if-eqz v0, :cond_3c
const/4 v1, -0x2
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
const/4 v1, -0x1
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
:cond_3c
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V
:cond_42
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
if-eqz v1, :cond_4e
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->initProgress()V
:cond_4e
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
if-eqz v1, :cond_5a
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->initIndeterminateProgress()V
:cond_5a
return-void
.end method
.method public onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->onDetachedFromWindow()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v0, :cond_16
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z
:cond_16
return-void
.end method
.method protected onFinishInflate()V
.registers 3
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->onFinishInflate()V
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
if-eqz v1, :cond_2a
iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
and-int/lit8 v1, v1, 0x10
if-eqz v1, :cond_2a
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eq v0, p0, :cond_2a
instance-of v1, v0, Landroid/view/ViewGroup;
if-eqz v1, :cond_25
check-cast v0, Landroid/view/ViewGroup;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_25
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
:cond_2a
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 38
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingLeft()I
move-result v23
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I
move-result v25
sub-int v27, p5, p3
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I
move-result v28
sub-int v27, v27, v28
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I
move-result v28
sub-int v7, v27, v28
if-gtz v7, :cond_19
:cond_18
:goto_18
return-void
:cond_19
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
move-object/from16 v27, v0
if-eqz v27, :cond_1ce
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
:goto_25
invoke-virtual {v13}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getVisibility()I
move-result v27
const/16 v28, 0x8
move/from16 v0, v27
move/from16 v1, v28
if-eq v0, v1, :cond_45
invoke-virtual {v13}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getLeftOffset()I
move-result v14
add-int v27, v23, v14
move-object/from16 v0, p0
move/from16 v1, v27
move/from16 v2, v25
invoke-virtual {v0, v13, v1, v2, v7}, Landroid/support/v7/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I
move-result v27
add-int v27, v27, v14
add-int v23, v23, v27
:cond_45
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
move-object/from16 v27, v0
if-nez v27, :cond_92
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
move-object/from16 v27, v0
if-eqz v27, :cond_1d4
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
move-object/from16 v27, v0
invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->getVisibility()I
move-result v27
const/16 v28, 0x8
move/from16 v0, v27
move/from16 v1, v28
if-eq v0, v1, :cond_1d4
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
move/from16 v27, v0
and-int/lit8 v27, v27, 0x8
if-eqz v27, :cond_1d4
const/16 v20, 0x1
:goto_73
if-eqz v20, :cond_89
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
move-object/from16 v27, v0
move-object/from16 v0, p0
move-object/from16 v1, v27
move/from16 v2, v23
move/from16 v3, v25
invoke-virtual {v0, v1, v2, v3, v7}, Landroid/support/v7/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I
move-result v27
add-int v23, v23, v27
:cond_89
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I
move/from16 v27, v0
packed-switch v27, :pswitch_data_2b4
:cond_92
:goto_92
:pswitch_92
sub-int v27, p4, p2
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingRight()I
move-result v28
sub-int v16, v27, v28
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
move-object/from16 v27, v0
if-eqz v27, :cond_cf
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
move-object/from16 v27, v0
invoke-virtual/range {v27 .. v27}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v27
move-object/from16 v0, v27
move-object/from16 v1, p0
if-ne v0, v1, :cond_cf
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
move-object/from16 v27, v0
move-object/from16 v0, p0
move-object/from16 v1, v27
move/from16 v2, v16
move/from16 v3, v25
invoke-virtual {v0, v1, v2, v3, v7}, Landroid/support/v7/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
move-object/from16 v27, v0
invoke-virtual/range {v27 .. v27}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getMeasuredWidth()I
move-result v27
sub-int v16, v16, v27
:cond_cf
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
move-object/from16 v27, v0
if-eqz v27, :cond_106
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
move-object/from16 v27, v0
invoke-virtual/range {v27 .. v27}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v27
const/16 v28, 0x8
move/from16 v0, v27
move/from16 v1, v28
if-eq v0, v1, :cond_106
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
move-object/from16 v27, v0
move-object/from16 v0, p0
move-object/from16 v1, v27
move/from16 v2, v16
move/from16 v3, v25
invoke-virtual {v0, v1, v2, v3, v7}, Landroid/support/v7/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
move-object/from16 v27, v0
invoke-virtual/range {v27 .. v27}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredWidth()I
move-result v27
sub-int v16, v16, v27
:cond_106
const/4 v8, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
move-object/from16 v27, v0
if-eqz v27, :cond_238
move-object/from16 v0, p0
iget-object v8, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
:goto_113
:cond_113
if-eqz v8, :cond_183
invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v15
instance-of v0, v15, Landroid/support/v7/app/ActionBar$LayoutParams;
move/from16 v27, v0
if-eqz v27, :cond_250
check-cast v15, Landroid/support/v7/app/ActionBar$LayoutParams;
move-object v4, v15
:goto_122
if-eqz v4, :cond_253
iget v10, v4, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I
:goto_126
invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I
move-result v17
const/16 v21, 0x0
const/4 v5, 0x0
if-eqz v4, :cond_141
iget v0, v4, Landroid/support/v7/app/ActionBar$LayoutParams;->leftMargin:I
move/from16 v27, v0
add-int v23, v23, v27
iget v0, v4, Landroid/support/v7/app/ActionBar$LayoutParams;->rightMargin:I
move/from16 v27, v0
sub-int v16, v16, v27
iget v0, v4, Landroid/support/v7/app/ActionBar$LayoutParams;->topMargin:I
move/from16 v21, v0
iget v5, v4, Landroid/support/v7/app/ActionBar$LayoutParams;->bottomMargin:I
:cond_141
and-int/lit8 v12, v10, 0x7
const/16 v27, 0x1
move/from16 v0, v27
if-ne v12, v0, :cond_262
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getWidth()I
move-result v27
sub-int v27, v27, v17
div-int/lit8 v6, v27, 0x2
move/from16 v0, v23
if-ge v6, v0, :cond_257
const/4 v12, 0x3
:goto_156
:cond_156
const/16 v24, 0x0
packed-switch v12, :pswitch_data_2be
:goto_15b
:pswitch_15b
and-int/lit8 v22, v10, 0x70
const/16 v27, -0x1
move/from16 v0, v27
if-ne v10, v0, :cond_165
const/16 v22, 0x10
:cond_165
const/16 v26, 0x0
sparse-switch v22, :sswitch_data_2cc
:goto_16a
invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I
move-result v9
add-int v27, v24, v9
invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I
move-result v28
add-int v28, v28, v26
move/from16 v0, v24
move/from16 v1, v26
move/from16 v2, v27
move/from16 v3, v28
invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V
add-int v23, v23, v9
:cond_183
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
move-object/from16 v27, v0
if-eqz v27, :cond_18
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
move-object/from16 v27, v0
invoke-virtual/range {v27 .. v27}, Landroid/support/v7/internal/widget/ProgressBarICS;->bringToFront()V
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
move-object/from16 v27, v0
invoke-virtual/range {v27 .. v27}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredHeight()I
move-result v27
div-int/lit8 v11, v27, 0x2
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
move-object/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressBarPadding:I
move/from16 v28, v0
neg-int v0, v11
move/from16 v29, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressBarPadding:I
move/from16 v30, v0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
move-object/from16 v31, v0
invoke-virtual/range {v31 .. v31}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredWidth()I
move-result v31
add-int v30, v30, v31
move-object/from16 v0, v27
move/from16 v1, v28
move/from16 v2, v29
move/from16 v3, v30
invoke-virtual {v0, v1, v2, v3, v11}, Landroid/support/v7/internal/widget/ProgressBarICS;->layout(IIII)V
goto/16 :goto_18
:cond_1ce
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
goto/16 :goto_25
:cond_1d4
const/16 v20, 0x0
goto/16 :goto_73
:pswitch_1d8
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;
move-object/from16 v27, v0
if-eqz v27, :cond_92
if-eqz v20, :cond_1ea
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I
move/from16 v27, v0
add-int v23, v23, v27
:cond_1ea
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;
move-object/from16 v27, v0
move-object/from16 v0, p0
move-object/from16 v1, v27
move/from16 v2, v23
move/from16 v3, v25
invoke-virtual {v0, v1, v2, v3, v7}, Landroid/support/v7/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I
move-result v27
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I
move/from16 v28, v0
add-int v27, v27, v28
add-int v23, v23, v27
goto/16 :goto_92
:pswitch_208
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
move-object/from16 v27, v0
if-eqz v27, :cond_92
if-eqz v20, :cond_21a
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I
move/from16 v27, v0
add-int v23, v23, v27
:cond_21a
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
move-object/from16 v27, v0
move-object/from16 v0, p0
move-object/from16 v1, v27
move/from16 v2, v23
move/from16 v3, v25
invoke-virtual {v0, v1, v2, v3, v7}, Landroid/support/v7/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I
move-result v27
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I
move/from16 v28, v0
add-int v27, v27, v28
add-int v23, v23, v27
goto/16 :goto_92
:cond_238
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
move/from16 v27, v0
and-int/lit8 v27, v27, 0x10
if-eqz v27, :cond_113
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
move-object/from16 v27, v0
if-eqz v27, :cond_113
move-object/from16 v0, p0
iget-object v8, v0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
goto/16 :goto_113
:cond_250
const/4 v4, 0x0
goto/16 :goto_122
:cond_253
const/16 v10, 0x13
goto/16 :goto_126
:cond_257
add-int v27, v6, v17
move/from16 v0, v27
move/from16 v1, v16
if-le v0, v1, :cond_156
const/4 v12, 0x5
goto/16 :goto_156
:cond_262
const/16 v27, -0x1
move/from16 v0, v27
if-ne v10, v0, :cond_156
const/4 v12, 0x3
goto/16 :goto_156
:pswitch_26b
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getWidth()I
move-result v27
sub-int v27, v27, v17
div-int/lit8 v24, v27, 0x2
goto/16 :goto_15b
:pswitch_275
move/from16 v24, v23
goto/16 :goto_15b
:pswitch_279
sub-int v24, v16, v17
goto/16 :goto_15b
:sswitch_27d
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I
move-result v19
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getHeight()I
move-result v27
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I
move-result v28
sub-int v18, v27, v28
sub-int v27, v18, v19
invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I
move-result v28
sub-int v27, v27, v28
div-int/lit8 v26, v27, 0x2
goto/16 :goto_16a
:sswitch_297
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I
move-result v27
add-int v26, v27, v21
goto/16 :goto_16a
:sswitch_29f
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getHeight()I
move-result v27
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I
move-result v28
sub-int v27, v27, v28
invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I
move-result v28
sub-int v27, v27, v28
sub-int v26, v27, v5
goto/16 :goto_16a
nop
:pswitch_data_2b4
.packed-switch 0x0
:pswitch_92
:pswitch_1d8
:pswitch_208
.end packed-switch
:sswitch_data_2cc
.sparse-switch
0x10 -> :sswitch_27d
0x30 -> :sswitch_297
0x50 -> :sswitch_29f
.end sparse-switch
:pswitch_data_2be
.packed-switch 0x1
:pswitch_26b
:pswitch_15b
:pswitch_275
:pswitch_15b
:pswitch_279
.end packed-switch
.end method
.method protected onMeasure(II)V
.registers 47
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getChildCount()I
move-result v7
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIsCollapsable:Z
move/from16 v40, v0
if-eqz v40, :cond_5b
const/16 v38, 0x0
const/16 v22, 0x0
:goto_10
move/from16 v0, v22
if-ge v0, v7, :cond_43
move-object/from16 v0, p0
move/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;
move-result-object v6
invoke-virtual {v6}, Landroid/view/View;->getVisibility()I
move-result v40
const/16 v41, 0x8
move/from16 v0, v40
move/from16 v1, v41
if-eq v0, v1, :cond_40
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
move-object/from16 v40, v0
move-object/from16 v0, v40
if-ne v6, v0, :cond_3e
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
move-object/from16 v40, v0
invoke-virtual/range {v40 .. v40}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I
move-result v40
if-eqz v40, :cond_40
:cond_3e
add-int/lit8 v38, v38, 0x1
:cond_40
add-int/lit8 v22, v22, 0x1
goto :goto_10
:cond_43
if-nez v38, :cond_5b
const/16 v40, 0x0
const/16 v41, 0x0
move-object/from16 v0, p0
move/from16 v1, v40
move/from16 v2, v41
invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setMeasuredDimension(II)V
const/16 v40, 0x1
move/from16 v0, v40
move-object/from16 v1, p0
iput-boolean v0, v1, Landroid/support/v7/internal/widget/ActionBarView;->mIsCollapsed:Z
:goto_5a
:cond_5a
return-void
:cond_5b
const/16 v40, 0x0
move/from16 v0, v40
move-object/from16 v1, p0
iput-boolean v0, v1, Landroid/support/v7/internal/widget/ActionBarView;->mIsCollapsed:Z
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v39
const/high16 v40, 0x4000
move/from16 v0, v39
move/from16 v1, v40
if-eq v0, v1, :cond_96
new-instance v40, Ljava/lang/IllegalStateException;
new-instance v41, Ljava/lang/StringBuilder;
invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v42
invoke-virtual/range {v42 .. v42}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v42
invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v41
const-string v42, " can only be used "
invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v41
const-string v42, "with android:layout_width=\"MATCH_PARENT\" (or fill_parent)"
invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v41
invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v41
invoke-direct/range {v40 .. v41}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v40
:cond_96
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v16
const/high16 v40, -0x8000
move/from16 v0, v16
move/from16 v1, v40
if-eq v0, v1, :cond_c9
new-instance v40, Ljava/lang/IllegalStateException;
new-instance v41, Ljava/lang/StringBuilder;
invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v42
invoke-virtual/range {v42 .. v42}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v42
invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v41
const-string v42, " can only be used "
invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v41
const-string v42, "with android:layout_height=\"wrap_content\""
invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v41
invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v41
invoke-direct/range {v40 .. v41}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v40
:cond_c9
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v9
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContentHeight:I
move/from16 v40, v0
if-lez v40, :cond_346
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContentHeight:I
move/from16 v27, v0
:goto_db
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I
move-result v40
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I
move-result v41
add-int v37, v40, v41
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingLeft()I
move-result v30
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingRight()I
move-result v31
sub-int v15, v27, v37
const/high16 v40, -0x8000
move/from16 v0, v40
invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v8
sub-int v40, v9, v30
sub-int v5, v40, v31
div-int/lit8 v24, v5, 0x2
move/from16 v32, v24
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
move-object/from16 v40, v0
if-eqz v40, :cond_34c
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
move-object/from16 v18, v0
:goto_10d
invoke-virtual/range {v18 .. v18}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getVisibility()I
move-result v40
const/16 v41, 0x8
move/from16 v0, v40
move/from16 v1, v41
if-eq v0, v1, :cond_158
invoke-virtual/range {v18 .. v18}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v26
move-object/from16 v0, v26
iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
move/from16 v40, v0
if-gez v40, :cond_354
const/high16 v40, -0x8000
move/from16 v0, v40
invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v20
:goto_12d
const/high16 v40, 0x4000
move/from16 v0, v40
invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v40
move-object/from16 v0, v18
move/from16 v1, v20
move/from16 v2, v40
invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->measure(II)V
invoke-virtual/range {v18 .. v18}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I
move-result v40
invoke-virtual/range {v18 .. v18}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getLeftOffset()I
move-result v41
add-int v19, v40, v41
const/16 v40, 0x0
sub-int v41, v5, v19
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I
move-result v5
const/16 v40, 0x0
sub-int v41, v5, v19
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I
move-result v24
:cond_158
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
move-object/from16 v40, v0
if-eqz v40, :cond_194
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
move-object/from16 v40, v0
invoke-virtual/range {v40 .. v40}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v40
move-object/from16 v0, v40
move-object/from16 v1, p0
if-ne v0, v1, :cond_194
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
move-object/from16 v40, v0
const/16 v41, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v40
move/from16 v2, v41
invoke-virtual {v0, v1, v5, v8, v2}, Landroid/support/v7/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I
move-result v5
const/16 v40, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
move-object/from16 v41, v0
invoke-virtual/range {v41 .. v41}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getMeasuredWidth()I
move-result v41
sub-int v41, v32, v41
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I
move-result v32
:cond_194
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
move-object/from16 v40, v0
if-eqz v40, :cond_1d2
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
move-object/from16 v40, v0
invoke-virtual/range {v40 .. v40}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v40
const/16 v41, 0x8
move/from16 v0, v40
move/from16 v1, v41
if-eq v0, v1, :cond_1d2
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
move-object/from16 v40, v0
const/16 v41, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v40
move/from16 v2, v41
invoke-virtual {v0, v1, v5, v8, v2}, Landroid/support/v7/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I
move-result v5
const/16 v40, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
move-object/from16 v41, v0
invoke-virtual/range {v41 .. v41}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredWidth()I
move-result v41
sub-int v41, v32, v41
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I
move-result v32
:cond_1d2
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
move-object/from16 v40, v0
if-eqz v40, :cond_362
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
move-object/from16 v40, v0
invoke-virtual/range {v40 .. v40}, Landroid/widget/LinearLayout;->getVisibility()I
move-result v40
const/16 v41, 0x8
move/from16 v0, v40
move/from16 v1, v41
if-eq v0, v1, :cond_362
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
move/from16 v40, v0
and-int/lit8 v40, v40, 0x8
if-eqz v40, :cond_362
const/16 v33, 0x1
:goto_1f8
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
move-object/from16 v40, v0
if-nez v40, :cond_209
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I
move/from16 v40, v0
packed-switch v40, :pswitch_data_4c2
:cond_209
:goto_209
const/4 v14, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
move-object/from16 v40, v0
if-eqz v40, :cond_422
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
:goto_216
:cond_216
if-eqz v14, :cond_2e1
invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v40
move-object/from16 v0, p0
move-object/from16 v1, v40
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
move-result-object v26
move-object/from16 v0, v26
instance-of v0, v0, Landroid/support/v7/app/ActionBar$LayoutParams;
move/from16 v40, v0
if-eqz v40, :cond_43a
move-object/from16 v40, v26
check-cast v40, Landroid/support/v7/app/ActionBar$LayoutParams;
move-object/from16 v4, v40
:goto_232
const/16 v21, 0x0
const/16 v36, 0x0
if-eqz v4, :cond_24c
iget v0, v4, Landroid/support/v7/app/ActionBar$LayoutParams;->leftMargin:I
move/from16 v40, v0
iget v0, v4, Landroid/support/v7/app/ActionBar$LayoutParams;->rightMargin:I
move/from16 v41, v0
add-int v21, v40, v41
iget v0, v4, Landroid/support/v7/app/ActionBar$LayoutParams;->topMargin:I
move/from16 v40, v0
iget v0, v4, Landroid/support/v7/app/ActionBar$LayoutParams;->bottomMargin:I
move/from16 v41, v0
add-int v36, v40, v41
:cond_24c
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContentHeight:I
move/from16 v40, v0
if-gtz v40, :cond_43d
const/high16 v11, -0x8000
:goto_256
const/16 v40, 0x0
move-object/from16 v0, v26
iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
move/from16 v41, v0
if-ltz v41, :cond_26c
move-object/from16 v0, v26
iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
move/from16 v41, v0
move/from16 v0, v41
invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I
move-result v15
:cond_26c
sub-int v41, v15, v36
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I
move-result v10
move-object/from16 v0, v26
iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
move/from16 v40, v0
const/16 v41, -0x2
move/from16 v0, v40
move/from16 v1, v41
if-eq v0, v1, :cond_452
const/high16 v13, 0x4000
:goto_282
const/16 v41, 0x0
move-object/from16 v0, v26
iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
move/from16 v40, v0
if-ltz v40, :cond_456
move-object/from16 v0, v26
iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
move/from16 v40, v0
move/from16 v0, v40
invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I
move-result v40
:goto_298
sub-int v40, v40, v21
move/from16 v0, v41
move/from16 v1, v40
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v12
if-eqz v4, :cond_45a
iget v0, v4, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I
move/from16 v40, v0
:goto_2a8
and-int/lit8 v17, v40, 0x7
const/16 v40, 0x1
move/from16 v0, v17
move/from16 v1, v40
if-ne v0, v1, :cond_2ca
move-object/from16 v0, v26
iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
move/from16 v40, v0
const/16 v41, -0x1
move/from16 v0, v40
move/from16 v1, v41
if-ne v0, v1, :cond_2ca
move/from16 v0, v24
move/from16 v1, v32
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v40
mul-int/lit8 v12, v40, 0x2
:cond_2ca
invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v40
invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v41
move/from16 v0, v40
move/from16 v1, v41
invoke-virtual {v14, v0, v1}, Landroid/view/View;->measure(II)V
invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I
move-result v40
add-int v40, v40, v21
sub-int v5, v5, v40
:cond_2e1
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
move-object/from16 v40, v0
if-nez v40, :cond_31d
if-eqz v33, :cond_31d
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
move-object/from16 v40, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContentHeight:I
move/from16 v41, v0
const/high16 v42, 0x4000
invoke-static/range {v41 .. v42}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v41
const/16 v42, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v40
move/from16 v2, v41
move/from16 v3, v42
invoke-virtual {v0, v1, v5, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I
move-result v5
const/16 v40, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
move-object/from16 v41, v0
invoke-virtual/range {v41 .. v41}, Landroid/widget/LinearLayout;->getMeasuredWidth()I
move-result v41
sub-int v41, v24, v41
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I
move-result v24
:cond_31d
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContentHeight:I
move/from16 v40, v0
if-gtz v40, :cond_4b9
const/16 v28, 0x0
const/16 v22, 0x0
:goto_329
move/from16 v0, v22
if-ge v0, v7, :cond_45e
move-object/from16 v0, p0
move/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;
move-result-object v35
invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getMeasuredHeight()I
move-result v40
add-int v29, v40, v37
move/from16 v0, v29
move/from16 v1, v28
if-le v0, v1, :cond_343
move/from16 v28, v29
:cond_343
add-int/lit8 v22, v22, 0x1
goto :goto_329
:cond_346
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v27
goto/16 :goto_db
:cond_34c
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
move-object/from16 v18, v0
goto/16 :goto_10d
:cond_354
move-object/from16 v0, v26
iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
move/from16 v40, v0
const/high16 v41, 0x4000
invoke-static/range {v40 .. v41}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v20
goto/16 :goto_12d
:cond_362
const/16 v33, 0x0
goto/16 :goto_1f8
:pswitch_366
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;
move-object/from16 v40, v0
if-eqz v40, :cond_209
if-eqz v33, :cond_3bd
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I
move/from16 v40, v0
mul-int/lit8 v23, v40, 0x2
:goto_378
const/16 v40, 0x0
sub-int v41, v5, v23
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I
move-result v5
const/16 v40, 0x0
sub-int v41, v24, v23
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I
move-result v24
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;
move-object/from16 v40, v0
const/high16 v41, -0x8000
move/from16 v0, v41
invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v41
const/high16 v42, 0x4000
move/from16 v0, v42
invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v42
invoke-virtual/range {v40 .. v42}, Landroid/widget/LinearLayout;->measure(II)V
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;
move-object/from16 v40, v0
invoke-virtual/range {v40 .. v40}, Landroid/widget/LinearLayout;->getMeasuredWidth()I
move-result v25
const/16 v40, 0x0
sub-int v41, v5, v25
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I
move-result v5
const/16 v40, 0x0
sub-int v41, v24, v25
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I
move-result v24
goto/16 :goto_209
:cond_3bd
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I
move/from16 v23, v0
goto :goto_378
:pswitch_3c4
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
move-object/from16 v40, v0
if-eqz v40, :cond_209
if-eqz v33, :cond_41b
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I
move/from16 v40, v0
mul-int/lit8 v23, v40, 0x2
:goto_3d6
const/16 v40, 0x0
sub-int v41, v5, v23
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I
move-result v5
const/16 v40, 0x0
sub-int v41, v24, v23
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I
move-result v24
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
move-object/from16 v40, v0
const/high16 v41, -0x8000
move/from16 v0, v41
invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v41
const/high16 v42, 0x4000
move/from16 v0, v42
invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v42
invoke-virtual/range {v40 .. v42}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->measure(II)V
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
move-object/from16 v40, v0
invoke-virtual/range {v40 .. v40}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I
move-result v34
const/16 v40, 0x0
sub-int v41, v5, v34
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I
move-result v5
const/16 v40, 0x0
sub-int v41, v24, v34
invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I
move-result v24
goto/16 :goto_209
:cond_41b
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I
move/from16 v23, v0
goto :goto_3d6
:cond_422
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
move/from16 v40, v0
and-int/lit8 v40, v40, 0x10
if-eqz v40, :cond_216
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
move-object/from16 v40, v0
if-eqz v40, :cond_216
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
goto/16 :goto_216
:cond_43a
const/4 v4, 0x0
goto/16 :goto_232
:cond_43d
move-object/from16 v0, v26
iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
move/from16 v40, v0
const/16 v41, -0x2
move/from16 v0, v40
move/from16 v1, v41
if-eq v0, v1, :cond_44f
const/high16 v11, 0x4000
:goto_44d
goto/16 :goto_256
:cond_44f
const/high16 v11, -0x8000
goto :goto_44d
:cond_452
const/high16 v13, -0x8000
goto/16 :goto_282
:cond_456
move/from16 v40, v5
goto/16 :goto_298
:cond_45a
const/16 v40, 0x13
goto/16 :goto_2a8
:cond_45e
move-object/from16 v0, p0
move/from16 v1, v28
invoke-virtual {v0, v9, v1}, Landroid/support/v7/internal/widget/ActionBarView;->setMeasuredDimension(II)V
:goto_465
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;
move-object/from16 v40, v0
if-eqz v40, :cond_47a
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;
move-object/from16 v40, v0
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getMeasuredHeight()I
move-result v41
invoke-virtual/range {v40 .. v41}, Landroid/support/v7/internal/widget/ActionBarContextView;->setContentHeight(I)V
:cond_47a
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
move-object/from16 v40, v0
if-eqz v40, :cond_5a
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
move-object/from16 v40, v0
invoke-virtual/range {v40 .. v40}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I
move-result v40
const/16 v41, 0x8
move/from16 v0, v40
move/from16 v1, v41
if-eq v0, v1, :cond_5a
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;
move-object/from16 v40, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressBarPadding:I
move/from16 v41, v0
mul-int/lit8 v41, v41, 0x2
sub-int v41, v9, v41
const/high16 v42, 0x4000
invoke-static/range {v41 .. v42}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v41
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getMeasuredHeight()I
move-result v42
const/high16 v43, -0x8000
invoke-static/range {v42 .. v43}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v42
invoke-virtual/range {v40 .. v42}, Landroid/support/v7/internal/widget/ProgressBarICS;->measure(II)V
goto/16 :goto_5a
:cond_4b9
move-object/from16 v0, p0
move/from16 v1, v27
invoke-virtual {v0, v9, v1}, Landroid/support/v7/internal/widget/ActionBarView;->setMeasuredDimension(II)V
goto :goto_465
nop
:pswitch_data_4c2
.packed-switch 0x1
:pswitch_366
:pswitch_3c4
.end packed-switch
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 6
const-string v1, " + Landroid/support/v7/internal/widget/ActionBarView; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v1, p1
check-cast v1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;
move-result-object v2
invoke-super {p0, v2}, Landroid/support/v7/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget v2, v1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I
if-eqz v2, :cond_25
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
if-eqz v2, :cond_25
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
if-eqz v2, :cond_25
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
iget v3, v1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I
invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;
if-eqz v0, :cond_25
invoke-interface {v0}, Landroid/support/v4/internal/view/SupportMenuItem;->expandActionView()Z
:cond_25
iget-boolean v2, v1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z
if-eqz v2, :cond_2c
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->postShowOverflowMenu()V
:cond_2c
const-string v1, " - Landroid/support/v7/internal/widget/ActionBarView; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
const-string v1, " + Landroid/support/v7/internal/widget/ActionBarView; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v1
new-instance v0, Landroid/support/v7/internal/widget/ActionBarView$SavedState;
invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
if-eqz v2, :cond_1d
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
iget-object v2, v2, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
if-eqz v2, :cond_1d
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
iget-object v2, v2, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getItemId()I
move-result v2
iput v2, v0, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I
:cond_1d
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->isOverflowMenuShowing()Z
move-result v2
iput-boolean v2, v0, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z
move-object v2, v0
const-string v1, " - Landroid/support/v7/internal/widget/ActionBarView; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v0, v2
return-object v0
.end method
.method public bridge synthetic postShowOverflowMenu()V
.registers 1
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->postShowOverflowMenu()V
return-void
.end method
.method public setCallback(Landroid/support/v7/app/ActionBar$OnNavigationListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCallback:Landroid/support/v7/app/ActionBar$OnNavigationListener;
return-void
.end method
.method public setCollapsable(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIsCollapsable:Z
return-void
.end method
.method public bridge synthetic setContentHeight(I)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setContentHeight(I)V
return-void
.end method
.method public setContextView(Landroid/support/v7/internal/widget/ActionBarContextView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;
return-void
.end method
.method public setCustomNavigationView(Landroid/view/View;)V
.registers 4
iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
and-int/lit8 v1, v1, 0x10
if-eqz v1, :cond_20
const/4 v0, 0x1
:goto_7
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
if-eqz v1, :cond_12
if-eqz v0, :cond_12
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
:cond_12
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
if-eqz v1, :cond_1f
if-eqz v0, :cond_1f
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
:cond_1f
return-void
:cond_20
const/4 v0, 0x0
goto :goto_7
.end method
.method public setDisplayOptions(I)V
.registers 13
const/16 v7, 0x8
const/4 v0, -0x1
const/4 v8, 0x1
const/4 v6, 0x0
iget v9, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
if-ne v9, v0, :cond_99
:goto_9
iput p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
and-int/lit8 v9, v0, 0x1f
if-eqz v9, :cond_be
and-int/lit8 v9, p1, 0x2
if-eqz v9, :cond_9f
move v4, v8
:goto_14
if-eqz v4, :cond_a2
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
if-nez v9, :cond_a2
move v5, v6
:goto_1b
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v9, v5}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setVisibility(I)V
and-int/lit8 v9, v0, 0x4
if-eqz v9, :cond_33
and-int/lit8 v9, p1, 0x4
if-eqz v9, :cond_a5
move v3, v8
:goto_29
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v9, v3}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setUp(Z)V
if-eqz v3, :cond_33
invoke-virtual {p0, v8}, Landroid/support/v7/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V
:cond_33
and-int/lit8 v9, v0, 0x1
if-eqz v9, :cond_49
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
if-eqz v9, :cond_a7
and-int/lit8 v9, p1, 0x1
if-eqz v9, :cond_a7
move v2, v8
:goto_40
iget-object v10, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
if-eqz v2, :cond_a9
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
:goto_46
invoke-virtual {v10, v9}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V
:cond_49
and-int/lit8 v9, v0, 0x8
if-eqz v9, :cond_54
and-int/lit8 v9, p1, 0x8
if-eqz v9, :cond_ac
invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarView;->initTitle()V
:goto_54
:cond_54
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
if-eqz v9, :cond_76
and-int/lit8 v9, v0, 0x6
if-eqz v9, :cond_76
iget v9, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
and-int/lit8 v9, v9, 0x4
if-eqz v9, :cond_b2
move v1, v8
:goto_63
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;
if-nez v4, :cond_6a
if-eqz v1, :cond_b4
move v7, v6
:goto_6a
:cond_6a
invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V
iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
if-nez v4, :cond_b6
if-eqz v1, :cond_b6
:goto_73
invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V
:cond_76
and-int/lit8 v6, v0, 0x10
if-eqz v6, :cond_87
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
if-eqz v6, :cond_87
and-int/lit8 v6, p1, 0x10
if-eqz v6, :cond_b8
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
invoke-virtual {p0, v6}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
:cond_87
:goto_87
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V
:goto_8a
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v6}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->isEnabled()Z
move-result v6
if-nez v6, :cond_c2
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
const/4 v7, 0x0
invoke-virtual {v6, v7}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
:goto_98
return-void
:cond_99
iget v9, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
xor-int v0, p1, v9
goto/16 :goto_9
:cond_9f
move v4, v6
goto/16 :goto_14
:cond_a2
move v5, v7
goto/16 :goto_1b
:cond_a5
move v3, v6
goto :goto_29
:cond_a7
move v2, v6
goto :goto_40
:cond_a9
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
goto :goto_46
:cond_ac
iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
invoke-virtual {p0, v9}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
goto :goto_54
:cond_b2
move v1, v6
goto :goto_63
:cond_b4
const/4 v7, 0x4
goto :goto_6a
:cond_b6
move v8, v6
goto :goto_73
:cond_b8
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
invoke-virtual {p0, v6}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
goto :goto_87
:cond_be
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->invalidate()V
goto :goto_8a
:cond_c2
and-int/lit8 v6, p1, 0x4
if-eqz v6, :cond_d8
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v7
sget v8, Landroid/support/v7/appcompat/R$string;->abc_action_bar_up_description:I
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v7
invoke-virtual {v6, v7}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
goto :goto_98
:cond_d8
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v7
sget v8, Landroid/support/v7/appcompat/R$string;->abc_action_bar_home_description:I
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v7
invoke-virtual {v6, v7}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
goto :goto_98
.end method
.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/SpinnerICS;->setAdapter(Landroid/widget/SpinnerAdapter;)V
:cond_b
return-void
.end method
.method public setDropdownSelectedPosition(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/SpinnerICS;->setSelection(I)V
return-void
.end method
.method public setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
.registers 6
const/4 v2, 0x1
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v1, :cond_a
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
:cond_a
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz p1, :cond_2f
move v1, v2
:goto_f
iput-boolean v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIncludeTabs:Z
iget-boolean v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIncludeTabs:Z
if-eqz v1, :cond_2e
iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I
const/4 v3, 0x2
if-ne v1, v3, :cond_2e
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
const/4 v1, -0x2
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
const/4 v1, -0x1
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-virtual {p1, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V
:cond_2e
return-void
:cond_2f
const/4 v1, 0x0
goto :goto_f
.end method
.method public setHomeAsUpIndicator(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V
return-void
.end method
.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setHomeButtonEnabled(Z)V
.registers 5
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V
if-nez p1, :cond_13
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
:goto_12
return-void
:cond_13
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_2b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Landroid/support/v7/appcompat/R$string;->abc_action_bar_up_description:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
goto :goto_12
:cond_2b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Landroid/support/v7/appcompat/R$string;->abc_action_bar_home_description:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V
goto :goto_12
.end method
.method public setIcon(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setIcon(Landroid/graphics/drawable/Drawable;)V
.registers 5
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
if-eqz p1, :cond_13
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
if-nez v0, :cond_13
:cond_e
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V
:cond_13
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
if-eqz v0, :cond_2a
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
move-result-object v1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V
:cond_2a
return-void
.end method
.method public setLogo(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setLogo(Landroid/graphics/drawable/Drawable;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
if-eqz p1, :cond_f
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V
:cond_f
return-void
.end method
.method public setMenu(Landroid/support/v4/internal/view/SupportMenu;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
.registers 11
const/4 v7, -0x1
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
if-ne p1, v4, :cond_6
:goto_5
return-void
:cond_6
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
if-eqz v4, :cond_18
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v4, v5}, Landroid/support/v7/internal/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
invoke-virtual {v4, v5}, Landroid/support/v7/internal/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V
:cond_18
move-object v0, p1
check-cast v0, Landroid/support/v7/internal/view/menu/MenuBuilder;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
if-eqz v4, :cond_30
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v3
check-cast v3, Landroid/view/ViewGroup;
if-eqz v3, :cond_30
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_30
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-nez v4, :cond_51
new-instance v4, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
invoke-direct {v4, v5}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V
iput-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v4, p2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
sget v5, Landroid/support/v7/appcompat/R$id;->action_menu_presenter:I
invoke-virtual {v4, v5}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setId(I)V
new-instance v4, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
const/4 v5, 0x0
invoke-direct {v4, p0, v5}, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/internal/widget/ActionBarView;Landroid/support/v7/internal/widget/ActionBarView$1;)V
iput-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
:cond_51
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
const/4 v4, -0x2
invoke-direct {v1, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
iget-boolean v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitActionBar:Z
if-nez v4, :cond_8c
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;
move-result-object v5
sget v6, Landroid/support/v7/appcompat/R$bool;->abc_action_bar_expanded_action_views_exclusive:I
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z
move-result v5
invoke-virtual {v4, v5}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V
invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->configPresenters(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v4, p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
move-result-object v2
check-cast v2, Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->initialize(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v3
check-cast v3, Landroid/view/ViewGroup;
if-eqz v3, :cond_85
if-eq v3, p0, :cond_85
invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_85
invoke-virtual {p0, v2, v1}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:goto_88
iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
goto/16 :goto_5
:cond_8c
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
const/4 v5, 0x0
invoke-virtual {v4, v5}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;
move-result-object v5
invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v5
iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I
const/4 v6, 0x1
invoke-virtual {v4, v5, v6}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
const v5, 0x7fffffff
invoke-virtual {v4, v5}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V
iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->configPresenters(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v4, p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
move-result-object v2
check-cast v2, Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz v4, :cond_db
invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v3
check-cast v3, Landroid/view/ViewGroup;
if-eqz v3, :cond_ce
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eq v3, v4, :cond_ce
invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_ce
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getAnimatedVisibility()I
move-result v4
invoke-virtual {v2, v4}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setVisibility(I)V
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v4, v2, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_88
:cond_db
invoke-virtual {v2, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_88
.end method
.method public setNavigationMode(I)V
.registers 8
const/4 v5, 0x0
iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I
if-eq p1, v0, :cond_10
packed-switch v0, :pswitch_data_86
:goto_8
:cond_8
packed-switch p1, :pswitch_data_8e
:goto_b
:cond_b
iput p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V
:cond_10
return-void
:pswitch_11
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;
if-eqz v2, :cond_8
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
goto :goto_8
:pswitch_1b
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v2, :cond_8
iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIncludeTabs:Z
if-eqz v2, :cond_8
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V
goto :goto_8
:pswitch_29
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
if-nez v2, :cond_5a
new-instance v2, Landroid/support/v7/internal/widget/SpinnerICS;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
sget v4, Landroid/support/v7/appcompat/R$attr;->actionDropDownStyle:I
invoke-direct {v2, v3, v5, v4}, Landroid/support/v7/internal/widget/SpinnerICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;
invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v2
sget v3, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_view_list_nav_layout:I
invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/LinearLayout;
iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
const/4 v2, -0x2
const/4 v3, -0x1
invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/16 v2, 0x11
iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:cond_5a
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {v2}, Landroid/support/v7/internal/widget/SpinnerICS;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v2
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;
if-eq v2, v3, :cond_6b
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;
invoke-virtual {v2, v3}, Landroid/support/v7/internal/widget/SpinnerICS;->setAdapter(Landroid/widget/SpinnerAdapter;)V
:cond_6b
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/SpinnerICS;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;
invoke-virtual {v2, v3}, Landroid/support/v7/internal/widget/SpinnerICS;->setOnItemSelectedListener(Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;)V
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
goto :goto_b
:pswitch_78
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v2, :cond_b
iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIncludeTabs:Z
if-eqz v2, :cond_b
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
goto :goto_b
:pswitch_data_8e
.packed-switch 0x1
:pswitch_29
:pswitch_78
.end packed-switch
:pswitch_data_86
.packed-switch 0x1
:pswitch_11
:pswitch_1b
.end packed-switch
.end method
.method public setSplitActionBar(Z)V
.registers 6
const/4 v2, 0x0
iget-boolean v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitActionBar:Z
if-eq v1, p1, :cond_57
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
if-eqz v1, :cond_33
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
if-eqz v0, :cond_18
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_18
if-eqz p1, :cond_58
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz v1, :cond_25
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V
:cond_25
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
const/4 v3, -0x1
iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
:goto_2e
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->requestLayout()V
:cond_33
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz v1, :cond_3f
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz p1, :cond_67
move v1, v2
:goto_3c
invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V
:cond_3f
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
if-eqz v1, :cond_54
if-nez p1, :cond_6a
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;
move-result-object v2
sget v3, Landroid/support/v7/appcompat/R$bool;->abc_action_bar_expanded_action_views_exclusive:I
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
move-result v2
invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V
:goto_54
:cond_54
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V
:cond_57
return-void
:cond_58
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
const/4 v3, -0x2
iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
goto :goto_2e
:cond_67
const/16 v1, 0x8
goto :goto_3c
:cond_6a
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
const v2, 0x7fffffff
invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V
goto :goto_54
.end method
.method public bridge synthetic setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V
return-void
.end method
.method public bridge synthetic setSplitWhenNarrow(Z)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V
return-void
.end method
.method public setSubtitle(Ljava/lang/CharSequence;)V
.registers 7
const/16 v3, 0x8
const/4 v2, 0x0
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;
if-eqz v1, :cond_38
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;
invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;
if-eqz p1, :cond_39
move v1, v2
:goto_13
invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;
if-nez v1, :cond_3b
iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
and-int/lit8 v1, v1, 0x8
if-eqz v1, :cond_3b
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_30
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_3b
:cond_30
const/4 v0, 0x1
:goto_31
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
if-eqz v0, :cond_3d
:goto_35
invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
:cond_38
return-void
:cond_39
move v1, v3
goto :goto_13
:cond_3b
move v0, v2
goto :goto_31
:cond_3d
move v2, v3
goto :goto_35
.end method
.method public setTitle(Ljava/lang/CharSequence;)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mUserTitle:Z
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V
return-void
.end method
.method public bridge synthetic setVisibility(I)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setVisibility(I)V
return-void
.end method
.method public setWindowCallback(Landroid/view/Window$Callback;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;
return-void
.end method
.method public setWindowTitle(Ljava/lang/CharSequence;)V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mUserTitle:Z
if-nez v0, :cond_7
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V
:cond_7
return-void
.end method
.method public shouldDelayChildPressedState()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public bridge synthetic showOverflowMenu()Z
.registers 2
invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->showOverflowMenu()Z
move-result v0
return v0
.end method