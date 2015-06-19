.class public Lco/vine/android/HomeTabActivity;
.super Lco/vine/android/BaseTimelineActivity;
.source "HomeTabActivity.java"
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lco/vine/android/widget/tabs/IconTabHost$OnTabClickedListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
.field public static final ACTION_VERIFICATION_COMPLETE:Ljava/lang/String; = null
.field public static final ACTION_VM_SENT:Ljava/lang/String; = "co.vine.android.VM_SENT"
.field private static ACTIVITY_COUNT_FILTER:Landroid/content/IntentFilter; = null
.field public static final DIALOG_STORE_CONTACTS:I = 0x1
.field public static final HOST_POST:Ljava/lang/String; = "post"
.field public static final HOST_TIMELINES:Ljava/lang/String; = "timelines"
.field public static final INDEX_ACTIVITY_TAB:I = 0x1
.field public static final INDEX_EXPLORE_TAB:I = 0x2
.field public static final INDEX_PROFILE_TAB:I = 0x3
.field public static final PREFIX_CONFIRM_EMAIL:Ljava/lang/String; = "confirmEmail"
.field public static final PREFIX_SHARED_VIDEO:Ljava/lang/String; = "v"
.field public static final PREFIX_USER_ID:Ljava/lang/String; = "u"
.field public static final REQUEST_CODE_VIEW_NOTIF:I = 0x1
.field public static final REQUEST_CODE_VM_ONBOARD:I = 0x2
.field public static final SCHEME_VINE:Ljava/lang/String; = "vine"
.field public static final TAG_ACTIVITY:Ljava/lang/String; = "activity"
.field public static final TAG_EXPLORE:Ljava/lang/String; = "explore"
.field public static final TAG_HOME:Ljava/lang/String; = "home"
.field public static final TAG_PROFILE:Ljava/lang/String; = "profile"
.field private mActivityCount:I
.field private mActivityCountReceiver:Landroid/content/BroadcastReceiver;
.field private mExploreRefreshReciver:Landroid/content/BroadcastReceiver;
.field private mExploreRefreshReciverIsRegistered:Z
.field private final mHandler:Landroid/os/Handler;
.field private mInboxMenu:Landroid/view/MenuItem;
.field private mLastMessageMap:Landroid/support/v4/util/LongSparseArray;
.field private mMenu:Landroid/view/Menu;
.field private mMessageCount:I
.field private mRecentTab:Ljava/lang/String;
.field private mScrollAwayNavEnabled:Z
.field private mShouldShowMenu:Z
.field private mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
.field private mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
.field private mViewPager:Landroid/support/v4/view/ViewPager;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lco/vine/android/util/BuildUtil;->getAuthority()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".EMAIL_VERIFIED"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lco/vine/android/HomeTabActivity;->ACTION_VERIFICATION_COMPLETE:Ljava/lang/String;
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
sput-object v0, Lco/vine/android/HomeTabActivity;->ACTIVITY_COUNT_FILTER:Landroid/content/IntentFilter;
sget-object v0, Lco/vine/android/HomeTabActivity;->ACTIVITY_COUNT_FILTER:Landroid/content/IntentFilter;
const-string v1, "co.vine.android.service.activityCounts"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lco/vine/android/BaseTimelineActivity;-><init>()V
new-instance v0, Lco/vine/android/HomeTabActivity$1;
invoke-direct {v0, p0}, Lco/vine/android/HomeTabActivity$1;-><init>(Lco/vine/android/HomeTabActivity;)V
iput-object v0, p0, Lco/vine/android/HomeTabActivity;->mActivityCountReceiver:Landroid/content/BroadcastReceiver;
new-instance v0, Lco/vine/android/HomeTabActivity$2;
invoke-direct {v0, p0}, Lco/vine/android/HomeTabActivity$2;-><init>(Lco/vine/android/HomeTabActivity;)V
iput-object v0, p0, Lco/vine/android/HomeTabActivity;->mExploreRefreshReciver:Landroid/content/BroadcastReceiver;
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lco/vine/android/HomeTabActivity;->mHandler:Landroid/os/Handler;
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/HomeTabActivity;->mScrollAwayNavEnabled:Z
return-void
.end method
.method static synthetic access$002(Lco/vine/android/HomeTabActivity;I)I
.registers 2
iput p1, p0, Lco/vine/android/HomeTabActivity;->mActivityCount:I
return p1
.end method
.method static synthetic access$102(Lco/vine/android/HomeTabActivity;I)I
.registers 2
iput p1, p0, Lco/vine/android/HomeTabActivity;->mMessageCount:I
return p1
.end method
.method static synthetic access$200(Lco/vine/android/HomeTabActivity;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/HomeTabActivity;->invalidateMessagesBadge()V
return-void
.end method
.method static synthetic access$300(Lco/vine/android/HomeTabActivity;)Lco/vine/android/widget/tabs/TabsAdapter;
.registers 2
iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
return-object v0
.end method
.method static synthetic access$400(Lco/vine/android/HomeTabActivity;)Landroid/support/v4/view/ViewPager;
.registers 2
iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
return-object v0
.end method
.method static synthetic access$500(Lco/vine/android/HomeTabActivity;)Landroid/support/v4/util/LongSparseArray;
.registers 2
iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mLastMessageMap:Landroid/support/v4/util/LongSparseArray;
return-object v0
.end method
.method private fetchClientFlags()V
.registers 4
:try_start_0
invoke-static {p0}, Lco/vine/android/util/Util;->getActiveNetworkType(Landroid/content/Context;)I
move-result v1
if-nez v1, :cond_12
invoke-static {p0}, Lco/vine/android/util/ClientFlagsHelper;->isClientFlagsTtlInRange(Landroid/content/Context;)Z
move-result v1
if-nez v1, :cond_12
iget-object v1, p0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lco/vine/android/client/AppController;->fetchClientFlags(Z)V
:cond_12
:goto_12
:try_end_12
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13
return-void
:catch_13
move-exception v0
invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
goto :goto_12
.end method
.method private invalidateMessagesBadge()V
.registers 10
const/4 v8, 0x2
invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
if-eqz v3, :cond_6f
iget-object v4, p0, Lco/vine/android/HomeTabActivity;->mInboxMenu:Landroid/view/MenuItem;
if-eqz v4, :cond_6f
iget-object v4, p0, Lco/vine/android/HomeTabActivity;->mInboxMenu:Landroid/view/MenuItem;
invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;
move-result-object v0
const/4 v1, 0x0
instance-of v4, v0, Lco/vine/android/drawable/CenteredTextDrawable;
if-eqz v4, :cond_19
move-object v1, v0
check-cast v1, Lco/vine/android/drawable/CenteredTextDrawable;
:cond_19
if-nez v1, :cond_63
new-instance v1, Lco/vine/android/drawable/CenteredTextDrawable;
new-array v4, v8, [I
fill-array-data v4, :array_88
invoke-direct {v1, v3, v4}, Lco/vine/android/drawable/CenteredTextDrawable;-><init>(Landroid/content/res/Resources;[I)V
const/4 v4, 0x1
new-instance v5, Landroid/graphics/PorterDuffColorFilter;
invoke-static {p0}, Lco/vine/android/util/Util;->getProfileColor(Landroid/content/Context;)I
move-result v6
const/high16 v7, -0x100
or-int/2addr v6, v7
sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v1, v4, v5}, Lco/vine/android/drawable/CenteredTextDrawable;->setColorFilter(ILandroid/graphics/ColorFilter;)V
const/high16 v4, 0x40c0
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v5
iget v5, v5, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v4, v5
float-to-int v2, v4
new-instance v4, Landroid/graphics/Rect;
invoke-direct {v4, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V
invoke-virtual {v1, v4}, Lco/vine/android/drawable/CenteredTextDrawable;->setTextPadding(Landroid/graphics/Rect;)V
const/4 v4, -0x1
invoke-virtual {v1, v4}, Lco/vine/android/drawable/CenteredTextDrawable;->setTextColor(I)V
invoke-static {p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;
move-result-object v4
iget-object v4, v4, Lco/vine/android/widget/Typefaces;->boldContentBold:Landroid/graphics/Typeface;
invoke-virtual {v1, v4}, Lco/vine/android/drawable/CenteredTextDrawable;->setTypeFace(Landroid/graphics/Typeface;)V
const/high16 v4, 0x4140
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v5
invoke-static {v8, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v4
invoke-virtual {v1, v4}, Lco/vine/android/drawable/CenteredTextDrawable;->setTextSize(F)V
:cond_63
iget v4, p0, Lco/vine/android/HomeTabActivity;->mMessageCount:I
if-nez v4, :cond_70
iget-object v4, p0, Lco/vine/android/HomeTabActivity;->mInboxMenu:Landroid/view/MenuItem;
const v5, 0x7f020134
invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
:goto_6f
:cond_6f
return-void
:cond_70
iget v4, p0, Lco/vine/android/HomeTabActivity;->mMessageCount:I
const/16 v5, 0x63
if-le v4, v5, :cond_81
const-string v4, "99+"
:goto_78
invoke-virtual {v1, v4}, Lco/vine/android/drawable/CenteredTextDrawable;->setText(Ljava/lang/String;)V
iget-object v4, p0, Lco/vine/android/HomeTabActivity;->mInboxMenu:Landroid/view/MenuItem;
invoke-interface {v4, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
goto :goto_6f
:cond_81
iget v4, p0, Lco/vine/android/HomeTabActivity;->mMessageCount:I
invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
goto :goto_78
:array_88
.array-data 0x4
0x7ft 0x2t 0x2t 0x7ft
0x7et 0x2t 0x2t 0x7ft
.end array-data
.end method
.method private logTabChange(Ljava/lang/String;)V
.registers 6
const-string v0, "Current Tab"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " - "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lco/vine/android/util/CrashUtil;->set(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p1, :cond_2d
const-string v0, "switcher"
invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_2d
invoke-static {p1}, Lco/vine/android/util/FlurryUtils;->trackTabChange(Ljava/lang/String;)V
:cond_2d
return-void
.end method
.method private makeAcitivytNewIndicator(Landroid/content/res/Resources;)Lco/vine/android/drawable/CenteredTextDrawable;
.registers 8
const/4 v5, 0x0
invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
iget v0, v3, Landroid/util/DisplayMetrics;->density:F
new-instance v1, Landroid/graphics/drawable/GradientDrawable;
invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V
const/high16 v3, 0x4000
mul-float/2addr v3, v0
float-to-int v3, v3
const v4, -0xdbdbdc
invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V
invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V
const/high16 v3, 0x4080
mul-float/2addr v3, v0
invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V
const v3, 0x7f090096
invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
const/high16 v3, 0x4198
mul-float/2addr v3, v0
float-to-int v3, v3
const/high16 v4, 0x41a0
mul-float/2addr v4, v0
float-to-int v4, v4
invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V
new-instance v2, Lco/vine/android/drawable/CenteredTextDrawable;
const/4 v3, 0x1
new-array v3, v3, [Landroid/graphics/drawable/Drawable;
aput-object v1, v3, v5
invoke-direct {v2, v3}, Lco/vine/android/drawable/CenteredTextDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
const/4 v3, -0x1
invoke-virtual {v2, v3}, Lco/vine/android/drawable/CenteredTextDrawable;->setTextColor(I)V
invoke-static {p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;
move-result-object v3
iget-object v3, v3, Lco/vine/android/widget/Typefaces;->boldContentBold:Landroid/graphics/Typeface;
invoke-virtual {v2, v3}, Lco/vine/android/drawable/CenteredTextDrawable;->setTypeFace(Landroid/graphics/Typeface;)V
const/4 v3, 0x2
const/high16 v4, 0x4140
invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v5
invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v3
invoke-virtual {v2, v3}, Lco/vine/android/drawable/CenteredTextDrawable;->setTextSize(F)V
return-object v2
.end method
.method private setupTabs()V
.registers 3
const v0, 0x1020012
invoke-virtual {p0, v0}, Lco/vine/android/HomeTabActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lco/vine/android/widget/tabs/IconTabHost;
iput-object v0, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
if-nez v0, :cond_17
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v0}, Lco/vine/android/widget/tabs/IconTabHost;->setup()V
const v0, 0x7f0a00da
invoke-virtual {p0, v0}, Lco/vine/android/HomeTabActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v4/view/ViewPager;
iput-object v0, p0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
return-void
.end method
.method private showSlidingMenuWithVmOnboard()V
.registers 5
iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mHandler:Landroid/os/Handler;
new-instance v1, Lco/vine/android/HomeTabActivity$4;
invoke-direct {v1, p0}, Lco/vine/android/HomeTabActivity$4;-><init>(Lco/vine/android/HomeTabActivity;)V
const-wide/16 v2, 0xfa
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method private showSlidingMenuWithVmOnboardAfterSend()V
.registers 5
iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mHandler:Landroid/os/Handler;
new-instance v1, Lco/vine/android/HomeTabActivity$5;
invoke-direct {v1, p0}, Lco/vine/android/HomeTabActivity$5;-><init>(Lco/vine/android/HomeTabActivity;)V
const-wide/16 v2, 0xfa
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method private showSlidingMenuWithoutOnboard()V
.registers 5
invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "vmOnboardInProgress"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mHandler:Landroid/os/Handler;
new-instance v1, Lco/vine/android/HomeTabActivity$3;
invoke-direct {v1, p0}, Lco/vine/android/HomeTabActivity$3;-><init>(Lco/vine/android/HomeTabActivity;)V
const-wide/16 v2, 0xfa
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method public static start(Landroid/app/Activity;Ljava/lang/String;)V
.registers 5
new-instance v1, Landroid/content/Intent;
const-class v2, Lco/vine/android/HomeTabActivity;
invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v2, 0x400
invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p0}, Landroid/app/Activity;->finish()V
return-void
.end method
.method private trimSegment(Ljava/lang/String;)Ljava/lang/String;
.registers 5
const-string v0, "\\s+"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "\\"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected getCurrentTimeLineFragment()Lco/vine/android/BaseTimelineFragment;
.registers 5
const/4 v2, 0x0
:try_start_1
iget-object v3, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
invoke-virtual {v3}, Lco/vine/android/widget/tabs/TabsAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;
move-result-object v1
instance-of v3, v1, Lco/vine/android/BaseTimelineFragment;
if-eqz v3, :cond_e
check-cast v1, Lco/vine/android/BaseTimelineFragment;
:goto_d
:try_end_d
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_10
return-object v1
:cond_e
move-object v1, v2
goto :goto_d
:catch_10
move-exception v0
move-object v1, v2
goto :goto_d
.end method
.method public invalidateActivityBadge()V
.registers 12
const/16 v10, 0x63
const/4 v8, 0x1
iget-object v7, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
if-eqz v7, :cond_6b
iget-object v9, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
iget v7, p0, Lco/vine/android/HomeTabActivity;->mActivityCount:I
if-lez v7, :cond_6c
move v7, v8
:goto_e
invoke-virtual {v9, v8, v7}, Lco/vine/android/widget/tabs/TabsAdapter;->setNew(IZ)V
iget-object v7, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
invoke-virtual {v7, v8}, Lco/vine/android/widget/tabs/TabsAdapter;->getNewIndicatorForTab(I)Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
if-eqz v5, :cond_6b
if-eqz v1, :cond_6b
invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
const/4 v6, 0x0
instance-of v7, v0, Lco/vine/android/drawable/CenteredTextDrawable;
if-eqz v7, :cond_2b
move-object v6, v0
check-cast v6, Lco/vine/android/drawable/CenteredTextDrawable;
:cond_2b
if-nez v6, :cond_34
invoke-direct {p0, v5}, Lco/vine/android/HomeTabActivity;->makeAcitivytNewIndicator(Landroid/content/res/Resources;)Lco/vine/android/drawable/CenteredTextDrawable;
move-result-object v6
invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_34
const/4 v2, 0x0
iget v7, p0, Lco/vine/android/HomeTabActivity;->mActivityCount:I
const/16 v8, 0x9
if-le v7, v8, :cond_3d
add-int/lit8 v2, v2, 0x1
:cond_3d
iget v7, p0, Lco/vine/android/HomeTabActivity;->mActivityCount:I
if-le v7, v10, :cond_43
add-int/lit8 v2, v2, 0x1
:cond_43
const/high16 v7, 0x40c0
invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v8
iget v8, v8, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v7, v8
float-to-int v4, v7
mul-int/lit8 v7, v2, 0x2
rsub-int/lit8 v7, v7, 0x6
int-to-float v7, v7
invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v8
iget v8, v8, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v7, v8
float-to-int v3, v7
new-instance v7, Landroid/graphics/Rect;
invoke-direct {v7, v3, v4, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
invoke-virtual {v6, v7}, Lco/vine/android/drawable/CenteredTextDrawable;->setTextPadding(Landroid/graphics/Rect;)V
iget v7, p0, Lco/vine/android/HomeTabActivity;->mActivityCount:I
if-le v7, v10, :cond_6e
const-string v7, "99+"
:goto_68
invoke-virtual {v6, v7}, Lco/vine/android/drawable/CenteredTextDrawable;->setText(Ljava/lang/String;)V
:cond_6b
return-void
:cond_6c
const/4 v7, 0x0
goto :goto_e
:cond_6e
iget v7, p0, Lco/vine/android/HomeTabActivity;->mActivityCount:I
invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v7
goto :goto_68
.end method
.method protected isAutoCaptureIconEnabled()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isConversationSideMenuEnabled()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public markActivitiesRead()V
.registers 4
const/4 v2, 0x0
invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "unread_notification_count"
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
iput v2, p0, Lco/vine/android/HomeTabActivity;->mActivityCount:I
invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->invalidateActivityBadge()V
return-void
.end method
.method public markMessagesAsDismissed()V
.registers 4
invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "pref_dismissed"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 16
const/4 v11, 0x0
const/4 v9, -0x1
const/4 v10, 0x1
iget-object v8, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
if-eqz v8, :cond_42
iget-object v8, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
invoke-virtual {v8}, Lco/vine/android/widget/tabs/TabsAdapter;->getTabs()Ljava/util/ArrayList;
move-result-object v7
if-nez p1, :cond_43
invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v5
invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v8
const-string v9, "inviteBannerWasClicked"
invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v8
invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V
const-string v8, "profile_follow_count"
invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
iget-object v8, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v8}, Lco/vine/android/widget/tabs/IconTabHost;->getCurrentTab()I
move-result v8
invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lco/vine/android/widget/tabs/TabInfo;
invoke-virtual {v8}, Lco/vine/android/widget/tabs/TabInfo;->fragment()Landroid/support/v4/app/Fragment;
move-result-object v3
const/4 v8, 0x5
if-le v0, v8, :cond_42
instance-of v8, v3, Lco/vine/android/HomeTimelineFragment;
if-eqz v8, :cond_42
check-cast v3, Lco/vine/android/HomeTimelineFragment;
invoke-virtual {v3}, Lco/vine/android/HomeTimelineFragment;->removeBanner()V
:goto_42
:cond_42
return-void
:cond_43
if-ne p1, v10, :cond_63
if-ne p2, v10, :cond_63
invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_4b
:cond_4b
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_42
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lco/vine/android/widget/tabs/TabInfo;
invoke-virtual {v6}, Lco/vine/android/widget/tabs/TabInfo;->fragment()Landroid/support/v4/app/Fragment;
move-result-object v2
instance-of v8, v2, Lco/vine/android/BaseTimelineFragment;
if-eqz v8, :cond_4b
invoke-virtual {v2, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V
goto :goto_4b
:cond_63
if-ne p1, v10, :cond_7a
if-ne p2, v9, :cond_7a
invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z
move-result v8
if-eqz v8, :cond_42
iget-object v8, p0, Lco/vine/android/HomeTabActivity;->mMenu:Landroid/view/Menu;
if-eqz v8, :cond_42
iget-object v8, p0, Lco/vine/android/HomeTabActivity;->mMenu:Landroid/view/Menu;
const v9, 0x7f0a023c
invoke-interface {v8, v9}, Landroid/view/Menu;->removeItem(I)V
goto :goto_42
:cond_7a
const/4 v8, 0x2
if-ne p1, v8, :cond_a2
if-ne p2, v9, :cond_90
invoke-static {p0}, Lco/vine/android/util/Util;->isCapableOfRecording(Landroid/content/Context;)Z
move-result v8
if-eqz v8, :cond_8c
invoke-direct {p0}, Lco/vine/android/HomeTabActivity;->showSlidingMenuWithVmOnboard()V
:goto_88
invoke-direct {p0}, Lco/vine/android/HomeTabActivity;->fetchClientFlags()V
goto :goto_42
:cond_8c
invoke-direct {p0}, Lco/vine/android/HomeTabActivity;->showSlidingMenuWithoutOnboard()V
goto :goto_88
:cond_90
invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v8
invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v8
const-string v9, "vmOnboardInProgress"
invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v8
invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V
goto :goto_88
:cond_a2
iget-object v8, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v8}, Lco/vine/android/widget/tabs/IconTabHost;->getCurrentTab()I
move-result v8
invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lco/vine/android/widget/tabs/TabInfo;
invoke-virtual {v8}, Lco/vine/android/widget/tabs/TabInfo;->fragment()Landroid/support/v4/app/Fragment;
move-result-object v1
if-eqz v1, :cond_42
invoke-virtual {v1, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V
goto :goto_42
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 35
const-string v1, " + Lco/vine/android/HomeTabActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v28, 0x7f030052
const/16 v29, 0x1
move-object/from16 v0, p0
move-object/from16 v1, p1
move/from16 v2, v28
move/from16 v3, v29
invoke-super {v0, v1, v2, v3}, Lco/vine/android/BaseTimelineActivity;->onCreate(Landroid/os/Bundle;IZ)V
invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z
move-result v28
if-eqz v28, :cond_19
invoke-direct/range {p0 .. p0}, Lco/vine/android/HomeTabActivity;->setupTabs()V
:cond_19
sget-boolean v28, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v28, :cond_2b
new-instance v28, Landroid/content/Intent;
const-string v29, "co.vine.android.debug_receiver"
invoke-direct/range {v28 .. v29}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Lco/vine/android/HomeTabActivity;->sendBroadcast(Landroid/content/Intent;)V
:cond_2b
const-string v28, "HomeTabActivity pid: {}"
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v29
invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v29
invoke-static/range {v28 .. v29}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V
const/16 v28, 0x1
move-object/from16 v0, p0
move/from16 v1, v28
invoke-virtual {v0, v1}, Lco/vine/android/HomeTabActivity;->setRequestedOrientation(I)V
const/16 v28, 0x0
invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v28
const/16 v29, 0x0
const/16 v30, 0x0
const/16 v31, 0x0
move-object/from16 v0, p0
move-object/from16 v1, v28
move-object/from16 v2, v29
move-object/from16 v3, v30
move-object/from16 v4, v31
invoke-virtual {v0, v1, v2, v3, v4}, Lco/vine/android/HomeTabActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V
new-instance v28, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;
move-object/from16 v0, v28
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lco/vine/android/HomeTabActivity$HomeTabSessionListener;-><init>(Lco/vine/android/HomeTabActivity;)V
move-object/from16 v0, v28
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/HomeTabActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
new-instance v28, Landroid/support/v4/util/LongSparseArray;
invoke-direct/range {v28 .. v28}, Landroid/support/v4/util/LongSparseArray;-><init>()V
move-object/from16 v0, v28
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/HomeTabActivity;->mLastMessageMap:Landroid/support/v4/util/LongSparseArray;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/HomeTabActivity;->getIntent()Landroid/content/Intent;
move-result-object v15
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;
move-object/from16 v28, v0
if-nez v28, :cond_8a
invoke-static/range {p0 .. p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;
move-result-object v28
move-object/from16 v0, v28
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;
:cond_8a
move-object/from16 v0, p0
iget-object v7, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v7}, Lco/vine/android/client/AppController;->isLoggedIn()Z
move-result v28
if-nez v28, :cond_95
:cond_94
:goto_94
const-string v1, " - Lco/vine/android/HomeTabActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_95
invoke-static/range {p0 .. p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v20
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
move-object/from16 v25, v0
const v28, 0x7f0a00da
move-object/from16 v0, p0
move/from16 v1, v28
invoke-virtual {v0, v1}, Lco/vine/android/HomeTabActivity;->findViewById(I)Landroid/view/View;
move-result-object v28
check-cast v28, Landroid/support/v4/view/ViewPager;
move-object/from16 v0, v28
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
move-object/from16 v28, v0
invoke-virtual/range {p0 .. p0}, Lco/vine/android/HomeTabActivity;->getResources()Landroid/content/res/Resources;
move-result-object v29
const v30, 0x7f0b0054
invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v29
invoke-virtual/range {v28 .. v29}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
move-object/from16 v28, v0
const v29, 0x7f09000e
invoke-virtual/range {v28 .. v29}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
move-object/from16 v28, v0
const/16 v29, 0x3
invoke-virtual/range {v28 .. v29}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V
new-instance v28, Lco/vine/android/HomeTabActivity$HomeTabTabsAdapter;
move-object/from16 v0, v28
move-object/from16 v1, p0
move-object/from16 v2, v25
invoke-direct {v0, v1, v2}, Lco/vine/android/HomeTabActivity$HomeTabTabsAdapter;-><init>(Lco/vine/android/HomeTabActivity;Landroid/widget/TabHost;)V
move-object/from16 v0, v28
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v14
move-object/from16 v0, v25
move-object/from16 v1, p0
invoke-virtual {v0, v1}, Lco/vine/android/widget/tabs/IconTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
move-object/from16 v0, v25
move-object/from16 v1, p0
invoke-virtual {v0, v1}, Lco/vine/android/widget/tabs/IconTabHost;->setOnTabClickedListener(Lco/vine/android/widget/tabs/IconTabHost$OnTabClickedListener;)V
new-instance v26, Landroid/os/Bundle;
invoke-direct/range {v26 .. v26}, Landroid/os/Bundle;-><init>()V
const-string v28, "empty_desc"
const v29, 0x7f0e00da
move-object/from16 v0, v26
move-object/from16 v1, v28
move/from16 v2, v29
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
move-object/from16 v28, v0
const-string v29, "home"
move-object/from16 v0, v25
move-object/from16 v1, v29
invoke-virtual {v0, v1}, Lco/vine/android/widget/tabs/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
move-result-object v29
const v30, 0x7f030048
const v31, 0x7f020193
const/16 v32, 0x0
move/from16 v0, v30
move-object/from16 v1, v25
move/from16 v2, v31
move/from16 v3, v32
invoke-static {v14, v0, v1, v2, v3}, Lco/vine/android/widget/tabs/TabIndicator;->newIconIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lco/vine/android/widget/tabs/TabIndicator;
move-result-object v30
invoke-virtual/range {v29 .. v30}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
move-result-object v29
const-class v30, Lco/vine/android/HomeTimelineFragment;
move-object/from16 v0, v28
move-object/from16 v1, v29
move-object/from16 v2, v30
move-object/from16 v3, v26
invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/widget/tabs/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/HomeTabActivity;->restoreActivityState()V
new-instance v6, Landroid/os/Bundle;
invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
const-string v28, "empty_desc"
const v29, 0x7f0e003f
move-object/from16 v0, v28
move/from16 v1, v29
invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v28, "co.vine.android.ACTIVITY_NOTIFICATION_PRESSED"
invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v29
invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v28
if-nez v28, :cond_176
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mRecentTab:Ljava/lang/String;
move-object/from16 v28, v0
const-string v29, "activity"
invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v28
if-eqz v28, :cond_3f6
:cond_176
const-string v28, "take_focus"
const/16 v29, 0x1
move-object/from16 v0, v28
move/from16 v1, v29
invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v28, "Activity"
invoke-static/range {v28 .. v28}, Lco/vine/android/util/FlurryUtils;->trackNotificationClicked(Ljava/lang/String;)V
:cond_186
:goto_186
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
move-object/from16 v28, v0
const-string v29, "activity"
move-object/from16 v0, v25
move-object/from16 v1, v29
invoke-virtual {v0, v1}, Lco/vine/android/widget/tabs/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
move-result-object v29
const v30, 0x7f03001f
const v31, 0x7f02013a
const/16 v32, 0x0
move/from16 v0, v30
move-object/from16 v1, v25
move/from16 v2, v31
move/from16 v3, v32
invoke-static {v14, v0, v1, v2, v3}, Lco/vine/android/widget/tabs/TabIndicator;->newIconIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lco/vine/android/widget/tabs/TabIndicator;
move-result-object v30
invoke-virtual/range {v29 .. v30}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
move-result-object v29
const-class v30, Lco/vine/android/ActivityFragment;
move-object/from16 v0, v28
move-object/from16 v1, v29
move-object/from16 v2, v30
invoke-virtual {v0, v1, v2, v6}, Lco/vine/android/widget/tabs/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
new-instance v11, Landroid/os/Bundle;
invoke-direct {v11}, Landroid/os/Bundle;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mRecentTab:Ljava/lang/String;
move-object/from16 v28, v0
const-string v29, "explore"
invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v28
if-eqz v28, :cond_1d7
const-string v28, "take_focus"
const/16 v29, 0x1
move-object/from16 v0, v28
move/from16 v1, v29
invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
:cond_1d7
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
move-object/from16 v28, v0
const-string v29, "explore"
move-object/from16 v0, v25
move-object/from16 v1, v29
invoke-virtual {v0, v1}, Lco/vine/android/widget/tabs/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
move-result-object v29
const v30, 0x7f030048
const v31, 0x7f020166
const/16 v32, 0x0
move/from16 v0, v30
move-object/from16 v1, v25
move/from16 v2, v31
move/from16 v3, v32
invoke-static {v14, v0, v1, v2, v3}, Lco/vine/android/widget/tabs/TabIndicator;->newIconIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lco/vine/android/widget/tabs/TabIndicator;
move-result-object v30
invoke-virtual/range {v29 .. v30}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
move-result-object v29
const-class v30, Lco/vine/android/ExploreFragment;
move-object/from16 v0, v28
move-object/from16 v1, v29
move-object/from16 v2, v30
invoke-virtual {v0, v1, v2, v11}, Lco/vine/android/widget/tabs/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
new-instance v21, Landroid/os/Bundle;
invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mRecentTab:Ljava/lang/String;
move-object/from16 v28, v0
const-string v29, "profile"
invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v28
if-eqz v28, :cond_22a
const-string v28, "take_focus"
const/16 v29, 0x1
move-object/from16 v0, v21
move-object/from16 v1, v28
move/from16 v2, v29
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
:cond_22a
const-string v28, "user_id"
invoke-virtual {v7}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v29
move-object/from16 v0, v21
move-object/from16 v1, v28
move-wide/from16 v2, v29
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v28, "refresh"
const/16 v29, 0x1
move-object/from16 v0, v21
move-object/from16 v1, v28
move/from16 v2, v29
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
move-object/from16 v28, v0
const-string v29, "profile"
move-object/from16 v0, v25
move-object/from16 v1, v29
invoke-virtual {v0, v1}, Lco/vine/android/widget/tabs/IconTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
move-result-object v29
const v30, 0x7f030048
const v31, 0x7f0201c8
const/16 v32, 0x0
move/from16 v0, v30
move-object/from16 v1, v25
move/from16 v2, v31
move/from16 v3, v32
invoke-static {v14, v0, v1, v2, v3}, Lco/vine/android/widget/tabs/TabIndicator;->newIconIndicator(Landroid/view/LayoutInflater;ILandroid/widget/TabHost;II)Lco/vine/android/widget/tabs/TabIndicator;
move-result-object v30
invoke-virtual/range {v29 .. v30}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
move-result-object v29
const-class v30, Lco/vine/android/ProfileFragment;
move-object/from16 v0, v28
move-object/from16 v1, v29
move-object/from16 v2, v30
move-object/from16 v3, v21
invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/widget/tabs/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;
move-object/from16 v28, v0
invoke-virtual/range {v28 .. v28}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v23
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;
move-object/from16 v28, v0
move-object/from16 v0, v28
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->determineCleanup(Lco/vine/android/client/Session;)V
const-string v28, "unread_notification_count"
const/16 v29, 0x0
move-object/from16 v0, v20
move-object/from16 v1, v28
move/from16 v2, v29
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v28
move/from16 v0, v28
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/HomeTabActivity;->mActivityCount:I
invoke-virtual/range {p0 .. p0}, Lco/vine/android/HomeTabActivity;->invalidateActivityBadge()V
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;
move-object/from16 v28, v0
invoke-virtual/range {v28 .. v28}, Lco/vine/android/client/AppController;->fetchActivityCounts()Ljava/lang/String;
invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v8
invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v5
const-string v28, "android.intent.action.VIEW"
move-object/from16 v0, v28
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v28
if-eqz v28, :cond_519
if-eqz v8, :cond_519
new-instance v17, Ljava/util/ArrayList;
invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v28
move-object/from16 v0, v17
move-object/from16 v1, v28
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v22
invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v13
if-eqz v13, :cond_32c
invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z
move-result v28
if-nez v28, :cond_32c
const-string v28, "vine.co"
move-object/from16 v0, v28
invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v28
if-eqz v28, :cond_4d1
const/16 v28, 0x0
move-object/from16 v0, v17
move/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v16
check-cast v16, Ljava/lang/String;
const-string v28, "v"
move-object/from16 v0, v28
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v28
if-eqz v28, :cond_430
invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I
move-result v28
const/16 v29, 0x1
move/from16 v0, v28
move/from16 v1, v29
if-le v0, v1, :cond_430
const/16 v28, 0x1
move-object/from16 v0, v17
move/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v28
check-cast v28, Ljava/lang/String;
move-object/from16 v0, p0
move-object/from16 v1, v28
invoke-direct {v0, v1}, Lco/vine/android/HomeTabActivity;->trimSegment(Ljava/lang/String;)Ljava/lang/String;
move-result-object v24
move-object/from16 v0, p0
move-object/from16 v1, v24
invoke-static {v0, v1}, Lco/vine/android/SingleActivity;->start(Landroid/content/Context;Ljava/lang/String;)V
:goto_32c
:cond_32c
new-instance v12, Lco/vine/android/HomeTabActivity$DelayHandler;
move-object/from16 v0, p0
invoke-direct {v12, v0}, Lco/vine/android/HomeTabActivity$DelayHandler;-><init>(Landroid/content/Context;)V
const/16 v28, 0x1
move/from16 v0, v28
invoke-virtual {v12, v0}, Lco/vine/android/HomeTabActivity$DelayHandler;->hasMessages(I)Z
move-result v28
if-eqz v28, :cond_344
const/16 v28, 0x1
move/from16 v0, v28
invoke-virtual {v12, v0}, Lco/vine/android/HomeTabActivity$DelayHandler;->removeMessages(I)V
:cond_344
const/16 v28, 0x2
move/from16 v0, v28
invoke-virtual {v12, v0}, Lco/vine/android/HomeTabActivity$DelayHandler;->hasMessages(I)Z
move-result v28
if-eqz v28, :cond_355
const/16 v28, 0x2
move/from16 v0, v28
invoke-virtual {v12, v0}, Lco/vine/android/HomeTabActivity$DelayHandler;->removeMessages(I)V
:cond_355
const/16 v28, 0x4
const/16 v29, 0x0
move/from16 v0, v28
move-object/from16 v1, v29
invoke-virtual {v12, v0, v1}, Lco/vine/android/HomeTabActivity$DelayHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v28
move-object/from16 v0, v28
invoke-virtual {v12, v0}, Lco/vine/android/HomeTabActivity$DelayHandler;->sendMessage(Landroid/os/Message;)Z
const/16 v28, 0x1
const/16 v29, 0x0
move/from16 v0, v28
move-object/from16 v1, v29
invoke-virtual {v12, v0, v1}, Lco/vine/android/HomeTabActivity$DelayHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v28
const-wide/32 v29, 0xea60
move-object/from16 v0, v28
move-wide/from16 v1, v29
invoke-virtual {v12, v0, v1, v2}, Lco/vine/android/HomeTabActivity$DelayHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
const/16 v28, 0x2
const/16 v29, 0x0
move/from16 v0, v28
move-object/from16 v1, v29
invoke-virtual {v12, v0, v1}, Lco/vine/android/HomeTabActivity$DelayHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v28
const-wide/32 v29, 0xea60
move-object/from16 v0, v28
move-wide/from16 v1, v29
invoke-virtual {v12, v0, v1, v2}, Lco/vine/android/HomeTabActivity$DelayHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
const/16 v28, 0x3
const/16 v29, 0x0
move/from16 v0, v28
move-object/from16 v1, v29
invoke-virtual {v12, v0, v1}, Lco/vine/android/HomeTabActivity$DelayHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v28
const-wide/32 v29, 0xea60
move-object/from16 v0, v28
move-wide/from16 v1, v29
invoke-virtual {v12, v0, v1, v2}, Lco/vine/android/HomeTabActivity$DelayHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
invoke-static {}, Lco/vine/android/AppImpl;->getInstance()Lco/vine/android/AppImpl;
move-result-object v28
move-object/from16 v0, v28
move-object/from16 v1, p0
invoke-virtual {v0, v1}, Lco/vine/android/AppImpl;->startCameraService(Landroid/app/Activity;)V
invoke-static/range {p0 .. p0}, Lco/vine/android/service/VineUploadService;->getUpgradeDraftsIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v28
move-object/from16 v0, p0
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Lco/vine/android/HomeTabActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
invoke-static/range {p0 .. p0}, Lco/vine/android/client/VineAccountHelper;->syncNormalVideoPlayable(Landroid/content/Context;)V
:try_start_3c1
invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
move-result v10
if-nez v10, :cond_94
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;
move-object/from16 v28, v0
invoke-virtual/range {v28 .. v28}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v28
move-object/from16 v0, p0
move-wide/from16 v1, v28
invoke-static {v0, v1, v2}, Lco/vine/android/service/GCMRegistrationService;->getRegisterIntent(Landroid/content/Context;J)Landroid/content/Intent;
move-result-object v28
move-object/from16 v0, p0
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Lco/vine/android/HomeTabActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:try_end_3e0
.catch Ljava/lang/Throwable; {:try_start_3c1 .. :try_end_3e0} :catch_3e2
goto/16 :goto_94
:catch_3e2
move-exception v9
const-string v28, "Failed to validate Google Player Service status."
const/16 v29, 0x0
move/from16 v0, v29
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v29, v0
move-object/from16 v0, v28
move-object/from16 v1, v29
invoke-static {v9, v0, v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto/16 :goto_94
:cond_3f6
const-string v28, "co.vine.android.MESSAGE_NOTIFICATION_PRESSED"
invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v29
invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v28
if-eqz v28, :cond_411
const/16 v28, 0x1
move/from16 v0, v28
move-object/from16 v1, p0
iput-boolean v0, v1, Lco/vine/android/HomeTabActivity;->mShouldShowMenu:Z
const-string v28, "Message"
invoke-static/range {v28 .. v28}, Lco/vine/android/util/FlurryUtils;->trackNotificationClicked(Ljava/lang/String;)V
goto/16 :goto_186
:cond_411
const-string v28, "co.vine.android.VM_SENT"
invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v29
invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v28
if-eqz v28, :cond_186
const-string v28, "is_vm_onboarding"
const/16 v29, 0x0
move-object/from16 v0, v28
move/from16 v1, v29
invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v28
if-eqz v28, :cond_186
invoke-direct/range {p0 .. p0}, Lco/vine/android/HomeTabActivity;->showSlidingMenuWithVmOnboardAfterSend()V
goto/16 :goto_186
:cond_430
const-string v28, "u"
move-object/from16 v0, v28
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v28
if-eqz v28, :cond_469
:try_start_43c
invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v28
move-object/from16 v0, p0
move-object/from16 v1, v28
invoke-direct {v0, v1}, Lco/vine/android/HomeTabActivity;->trimSegment(Ljava/lang/String;)Ljava/lang/String;
move-result-object v27
invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v28
const-string v30, "Deep Link: /u/<userId>"
move-object/from16 v0, p0
move-wide/from16 v1, v28
move-object/from16 v3, v30
invoke-static {v0, v1, v2, v3}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;JLjava/lang/String;)V
:try_end_457
.catch Ljava/lang/NumberFormatException; {:try_start_43c .. :try_end_457} :catch_459
goto/16 :goto_32c
:catch_459
move-exception v9
const v28, 0x7f0e0115
move-object/from16 v0, p0
move/from16 v1, v28
invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/HomeTabActivity;->finish()V
goto/16 :goto_32c
:cond_469
const-string v28, "confirmEmail"
move-object/from16 v0, v28
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v28
if-eqz v28, :cond_4c4
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;
move-object/from16 v28, v0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;
move-object/from16 v29, v0
invoke-virtual/range {v29 .. v29}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v29
invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v30
invoke-virtual/range {v28 .. v30}, Lco/vine/android/client/AppController;->verifyEmail(Lco/vine/android/client/Session;Ljava/lang/String;)Ljava/lang/String;
new-instance v28, Landroid/app/ProgressDialog;
move-object/from16 v0, v28
move-object/from16 v1, p0
invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
move-object/from16 v0, v28
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/HomeTabActivity;->mProgressDialog:Landroid/app/ProgressDialog;
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mProgressDialog:Landroid/app/ProgressDialog;
move-object/from16 v28, v0
const v29, 0x7f0e0129
move-object/from16 v0, p0
move/from16 v1, v29
invoke-virtual {v0, v1}, Lco/vine/android/HomeTabActivity;->getString(I)Ljava/lang/String;
move-result-object v29
invoke-virtual/range {v28 .. v29}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
:try_start_4af
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/HomeTabActivity;->mProgressDialog:Landroid/app/ProgressDialog;
move-object/from16 v28, v0
invoke-virtual/range {v28 .. v28}, Landroid/app/ProgressDialog;->show()V
:try_end_4b8
.catch Ljava/lang/Exception; {:try_start_4af .. :try_end_4b8} :catch_4ba
goto/16 :goto_32c
:catch_4ba
move-exception v9
const-string v28, "Failed to show pd."
move-object/from16 v0, v28
invoke-static {v0, v9}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_32c
:cond_4c4
const-string v28, "Deep Link: Vanity URL"
move-object/from16 v0, p0
move-object/from16 v1, v17
move-object/from16 v2, v28
invoke-static {v0, v1, v2}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
goto/16 :goto_32c
:cond_4d1
const-string v28, "vine"
move-object/from16 v0, v28
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v28
if-eqz v28, :cond_32c
const-string v28, "post"
move-object/from16 v0, v28
invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v28
if-eqz v28, :cond_508
:try_start_4e7
invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v28
invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v18
move-object/from16 v0, p0
move-wide/from16 v1, v18
invoke-static {v0, v1, v2}, Lco/vine/android/SingleActivity;->start(Landroid/content/Context;J)V
:try_end_4f6
.catch Ljava/lang/NumberFormatException; {:try_start_4e7 .. :try_end_4f6} :catch_4f8
goto/16 :goto_32c
:catch_4f8
move-exception v9
const v28, 0x7f0e0115
move-object/from16 v0, p0
move/from16 v1, v28
invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/HomeTabActivity;->finish()V
goto/16 :goto_32c
:cond_508
const-string v28, "timelines"
move-object/from16 v0, v28
invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v28
if-eqz v28, :cond_32c
move-object/from16 v0, p0
invoke-static {v0, v8}, Lco/vine/android/ExploreVideoListActivity;->start(Landroid/content/Context;Landroid/net/Uri;)V
goto/16 :goto_32c
:cond_519
const-string v28, "co.vine.android.UPLOAD_LIST"
move-object/from16 v0, v28
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v28
if-eqz v28, :cond_32c
invoke-static {}, Lco/vine/android/AppImpl;->getInstance()Lco/vine/android/AppImpl;
move-result-object v28
move-object/from16 v0, v28
move-object/from16 v1, p0
invoke-virtual {v0, v1}, Lco/vine/android/AppImpl;->startUploadsListActivity(Landroid/app/Activity;)V
goto/16 :goto_32c
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/HomeTabActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v1
const v2, 0x7f100007
invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z
move-result v1
if-eqz v1, :cond_23
const-string v1, "pref_gb_notif_dismissed"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
if-eqz v1, :cond_23
const v1, 0x7f0a023c
invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V
:cond_23
const v1, 0x7f0a0247
invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v1
iput-object v1, p0, Lco/vine/android/HomeTabActivity;->mInboxMenu:Landroid/view/MenuItem;
invoke-direct {p0}, Lco/vine/android/HomeTabActivity;->invalidateMessagesBadge()V
iput-object p1, p0, Lco/vine/android/HomeTabActivity;->mMenu:Landroid/view/Menu;
invoke-super {p0, p1}, Lco/vine/android/BaseTimelineActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
move-result v1
move v2, v1
const-string v1, " - Lco/vine/android/HomeTabActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
.end method
.method public onCurrentTabClicked()V
.registers 1
invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->scrollTop()V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lco/vine/android/HomeTabActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseTimelineActivity;->onDestroy()V
iget-boolean v0, p0, Lco/vine/android/HomeTabActivity;->mExploreRefreshReciverIsRegistered:Z
if-eqz v0, :cond_f
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/HomeTabActivity;->mExploreRefreshReciverIsRegistered:Z
iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mExploreRefreshReciver:Landroid/content/BroadcastReceiver;
invoke-virtual {p0, v0}, Lco/vine/android/HomeTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
:cond_f
const-string v1, " - Lco/vine/android/HomeTabActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDialogDone(Landroid/content/DialogInterface;II)V
.registers 7
packed-switch p2, :pswitch_data_28
:goto_3
return-void
:pswitch_4
const/4 v2, -0x1
if-ne p3, v2, :cond_26
const/4 v1, 0x1
:goto_8
if-eqz v1, :cond_f
iget-object v2, p0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v2}, Lco/vine/android/client/AppController;->sendAddressBook()Ljava/lang/String;
:cond_f
iget-object v2, p0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v2, v1}, Lco/vine/android/client/AppController;->updateEnableAddressBook(Z)Ljava/lang/String;
invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v2
invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v2, "enable_address_book"
invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v2
invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
goto :goto_3
:cond_26
const/4 v1, 0x0
goto :goto_8
:pswitch_data_28
.packed-switch 0x1
:pswitch_4
.end packed-switch
.end method
.method public onLongClick(Landroid/view/View;)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/HomeTabActivity; onLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x0
const/4 v1, -0x1
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Integer;
invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
move-result v4
packed-switch v4, :pswitch_data_4c
:goto_f
if-lez v1, :cond_2b
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v2
invoke-virtual {p1}, Landroid/view/View;->getBottom()I
move-result v4
invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I
move-result v5
add-int v3, v4, v5
invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
const/16 v4, 0x33
invoke-virtual {v0, v4, v2, v3}, Landroid/widget/Toast;->setGravity(III)V
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_2b
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
const-class v5, Lco/vine/android/widget/tabs/TabIndicator;
invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_3a
invoke-virtual {p1, v6}, Landroid/view/View;->performHapticFeedback(I)Z
:cond_3a
const/4 v4, 0x1
const-string v1, " - Lco/vine/android/HomeTabActivity; onLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v4
:pswitch_3c
const v1, 0x7f0e023e
goto :goto_f
:pswitch_40
const v1, 0x7f0e0236
goto :goto_f
:pswitch_44
const v1, 0x7f0e0238
goto :goto_f
:pswitch_48
const v1, 0x7f0e023c
goto :goto_f
:pswitch_data_4c
.packed-switch 0x1
:pswitch_3c
:pswitch_40
:pswitch_44
:pswitch_48
.end packed-switch
.end method
.method public onMenuClose()V
.registers 3
invoke-static {p0}, Lco/vine/android/util/MuteUtil;->isMuted(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_12
new-instance v0, Landroid/content/Intent;
sget-object v1, Lco/vine/android/util/MuteUtil;->ACTION_CHANGED_TO_UNMUTE:Ljava/lang/String;
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "co.vine.android.BROADCAST"
invoke-virtual {p0, v0, v1}, Lco/vine/android/HomeTabActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
:cond_12
return-void
.end method
.method public onMenuOpened()V
.registers 1
invoke-super {p0}, Lco/vine/android/BaseTimelineActivity;->onMenuOpened()V
invoke-direct {p0}, Lco/vine/android/HomeTabActivity;->invalidateMessagesBadge()V
return-void
.end method
.method protected onNewIntent(Landroid/content/Intent;)V
.registers 6
const/4 v3, 0x1
invoke-super {p0, p1}, Lco/vine/android/BaseTimelineActivity;->onNewIntent(Landroid/content/Intent;)V
const-string v1, "co.vine.android.ACTIVITY_NOTIFICATION_PRESSED"
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1e
iget-object v1, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
invoke-virtual {v1}, Lco/vine/android/widget/tabs/TabsAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;
move-result-object v0
instance-of v1, v0, Lco/vine/android/BaseArrayListFragment;
if-eqz v1, :cond_1d
invoke-virtual {p0, v3, v0}, Lco/vine/android/HomeTabActivity;->showPage(ILandroid/support/v4/app/Fragment;)V
:goto_1d
:cond_1d
return-void
:cond_1e
const-string v1, "co.vine.android.MESSAGE_NOTIFICATION_PRESSED"
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2d
iput-boolean v3, p0, Lco/vine/android/HomeTabActivity;->mShouldShowMenu:Z
goto :goto_1d
:cond_2d
const-string v1, "co.vine.android.VM_SENT"
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1d
const-string v1, "is_vm_onboarding"
const/4 v2, 0x0
invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v1
if-eqz v1, :cond_1d
invoke-direct {p0}, Lco/vine/android/HomeTabActivity;->showSlidingMenuWithVmOnboardAfterSend()V
goto :goto_1d
.end method
.method public onNotifyClick()V
.registers 3
invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->toggle(Z)V
return-void
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/HomeTabActivity; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v2
sparse-switch v2, :sswitch_data_64
invoke-super {p0, p1}, Lco/vine/android/BaseTimelineActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v1
:goto_c
move v2, v1
const-string v1, " - Lco/vine/android/HomeTabActivity; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
:sswitch_d
const-string v2, "Menu"
invoke-static {v2}, Lco/vine/android/util/FlurryUtils;->trackVisitFindFriends(Ljava/lang/String;)V
new-instance v2, Landroid/content/Intent;
const-class v3, Lco/vine/android/FindFriendsActivity;
invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v2}, Lco/vine/android/HomeTabActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_c
:sswitch_1d
const-string v2, "Menu"
invoke-static {v2}, Lco/vine/android/util/FlurryUtils;->trackVisitSettings(Ljava/lang/String;)V
new-instance v2, Landroid/content/Intent;
const-class v3, Lco/vine/android/SettingsActivity;
invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v2, v1}, Lco/vine/android/HomeTabActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_c
:sswitch_2d
const-string v2, "Menu"
invoke-static {v2}, Lco/vine/android/util/FlurryUtils;->trackVisitSearch(Ljava/lang/String;)V
new-instance v2, Landroid/content/Intent;
const-class v3, Lco/vine/android/SearchActivity;
invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v2}, Lco/vine/android/HomeTabActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_c
:sswitch_3d
const-string v2, "Menu"
invoke-static {v2}, Lco/vine/android/util/FlurryUtils;->trackVisitInbox(Ljava/lang/String;)V
invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
move-result-object v2
invoke-virtual {v2, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->toggle(Z)V
goto :goto_c
:sswitch_4a
invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z
move-result v2
if-eqz v2, :cond_5f
const v2, 0x7f030054
const v3, 0x7f0a011f
const/4 v4, 0x0
invoke-static {p0, v2, v3, v4}, Lco/vine/android/ViewOverlayActivity;->getIntent(Landroid/content/Context;III)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0, v1}, Lco/vine/android/HomeTabActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_c
:cond_5f
invoke-super {p0, p1}, Lco/vine/android/BaseTimelineActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v1
goto :goto_c
:sswitch_data_64
.sparse-switch
0x7f0a00e4 -> :sswitch_2d
0x7f0a0145 -> :sswitch_d
0x7f0a018c -> :sswitch_1d
0x7f0a023c -> :sswitch_4a
0x7f0a0247 -> :sswitch_3d
.end sparse-switch
.end method
.method protected onPause()V
.registers 5
const-string v1, " + Lco/vine/android/HomeTabActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseTimelineActivity;->onPause()V
iget-boolean v0, p0, Lco/vine/android/HomeTabActivity;->mExploreRefreshReciverIsRegistered:Z
if-nez v0, :cond_14
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/HomeTabActivity;->mExploreRefreshReciverIsRegistered:Z
iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mExploreRefreshReciver:Landroid/content/BroadcastReceiver;
sget-object v1, Lco/vine/android/client/AppController;->ACTION_UPDATED_FILTER:Landroid/content/IntentFilter;
const-string v2, "co.vine.android.BROADCAST"
const/4 v3, 0x0
invoke-virtual {p0, v0, v1, v2, v3}, Lco/vine/android/HomeTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
:try_start_14
:cond_14
iget-object v0, p0, Lco/vine/android/HomeTabActivity;->mActivityCountReceiver:Landroid/content/BroadcastReceiver;
invoke-virtual {p0, v0}, Lco/vine/android/HomeTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
:try_end_19
.catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_19} :catch_1a
:goto_19
const-string v1, " - Lco/vine/android/HomeTabActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_1a
move-exception v0
goto :goto_19
.end method
.method protected onResume()V
.registers 10
const-string v1, " + Lco/vine/android/HomeTabActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseTimelineActivity;->onResume()V
iget-object v5, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
if-eqz v5, :cond_15
iget-object v5, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
if-eqz v5, :cond_15
iget-object v5, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
iget-object v6, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v6}, Lco/vine/android/widget/tabs/IconTabHost;->getCurrentTab()I
move-result v6
iput v6, v5, Lco/vine/android/widget/tabs/TabsAdapter;->previousTab:I
:cond_15
invoke-static {}, Lco/vine/android/AppImpl;->getInstance()Lco/vine/android/AppImpl;
move-result-object v5
invoke-virtual {v5, p0}, Lco/vine/android/AppImpl;->getNotifyFailedIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v0
if-eqz v0, :cond_22
invoke-virtual {p0, v0}, Lco/vine/android/HomeTabActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:cond_22
iget-object v5, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v5}, Lco/vine/android/widget/tabs/IconTabHost;->getTabWidget()Landroid/widget/TabWidget;
move-result-object v4
if-nez v4, :cond_43
const/4 v2, 0x0
:goto_2b
const/4 v1, 0x0
:goto_2c
if-ge v1, v2, :cond_48
invoke-virtual {v4, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;
move-result-object v3
if-eqz v3, :cond_40
add-int/lit8 v5, v1, 0x1
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
invoke-virtual {v3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
:cond_40
add-int/lit8 v1, v1, 0x1
goto :goto_2c
:cond_43
invoke-virtual {v4}, Landroid/widget/TabWidget;->getTabCount()I
move-result v2
goto :goto_2b
:cond_48
iget-object v5, p0, Lco/vine/android/HomeTabActivity;->mActivityCountReceiver:Landroid/content/BroadcastReceiver;
sget-object v6, Lco/vine/android/HomeTabActivity;->ACTIVITY_COUNT_FILTER:Landroid/content/IntentFilter;
const-string v7, "co.vine.android.BROADCAST"
const/4 v8, 0x0
invoke-virtual {p0, v5, v6, v7, v8}, Lco/vine/android/HomeTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
iget-object v5, p0, Lco/vine/android/HomeTabActivity;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v5}, Lco/vine/android/client/AppController;->fetchActivityCounts()Ljava/lang/String;
invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->invalidateActivityBadge()V
invoke-direct {p0}, Lco/vine/android/HomeTabActivity;->invalidateMessagesBadge()V
const-string v1, " - Lco/vine/android/HomeTabActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onScroll(I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/HomeTabActivity; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-boolean v2, p0, Lco/vine/android/HomeTabActivity;->mScrollAwayNavEnabled:Z
if-eqz v2, :cond_22
iget-object v2, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v2}, Lco/vine/android/widget/tabs/IconTabHost;->getTabWidget()Landroid/widget/TabWidget;
move-result-object v1
check-cast v1, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;
invoke-virtual {v1, p1}, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->onScroll(I)V
iget-object v2, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
invoke-virtual {v2}, Lco/vine/android/widget/tabs/TabsAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;
move-result-object v0
instance-of v2, v0, Lco/vine/android/BaseArrayListFragment;
if-eqz v2, :cond_22
check-cast v0, Lco/vine/android/BaseArrayListFragment;
invoke-virtual {v1}, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->getNavBottom()I
move-result v2
invoke-virtual {v0, v2}, Lco/vine/android/BaseArrayListFragment;->setNavBottom(I)V
:cond_22
const-string v1, " - Lco/vine/android/HomeTabActivity; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStart()V
.registers 3
const-string v1, " + Lco/vine/android/HomeTabActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseTimelineActivity;->onStart()V
invoke-direct {p0}, Lco/vine/android/HomeTabActivity;->fetchClientFlags()V
invoke-static {p0}, Lco/vine/android/util/ClientFlagsHelper;->zeroRatingIsEnabled(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x1
invoke-static {v0}, Lco/vine/android/util/FlurryUtils;->trackZeroRatedSessionStarted(Z)V
:cond_10
const-string v1, " - Lco/vine/android/HomeTabActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStop()V
.registers 3
const-string v1, " + Lco/vine/android/HomeTabActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseTimelineActivity;->onStop()V
const-string v1, " - Lco/vine/android/HomeTabActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSupportContentChanged()V
.registers 2
invoke-super {p0}, Lco/vine/android/BaseTimelineActivity;->onSupportContentChanged()V
invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z
move-result v0
if-nez v0, :cond_c
invoke-direct {p0}, Lco/vine/android/HomeTabActivity;->setupTabs()V
:cond_c
return-void
.end method
.method public onTabChanged(Ljava/lang/String;)V
.registers 5
sget-boolean v1, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v1, :cond_b
invoke-static {}, Lco/vine/android/util/Util;->printCursorWindowStats()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:cond_b
iget-object v1, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v1}, Lco/vine/android/widget/tabs/IconTabHost;->getCurrentTab()I
move-result v0
iget-object v1, p0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
iput-object p1, p0, Lco/vine/android/HomeTabActivity;->mRecentTab:Ljava/lang/String;
const-string v1, "activity"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_23
invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->markActivitiesRead()V
:cond_23
packed-switch v0, :pswitch_data_3c
invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V
:goto_2e
invoke-direct {p0, p1}, Lco/vine/android/HomeTabActivity;->logTabChange(Ljava/lang/String;)V
return-void
:pswitch_32
invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V
goto :goto_2e
nop
:pswitch_data_3c
.packed-switch 0x0
:pswitch_32
.end packed-switch
.end method
.method public resetNav()V
.registers 5
iget-object v3, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
if-eqz v3, :cond_2c
iget-object v3, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v3}, Lco/vine/android/widget/tabs/IconTabHost;->getTabWidget()Landroid/widget/TabWidget;
move-result-object v2
check-cast v2, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;
if-eqz v2, :cond_2c
invoke-virtual {v2}, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->resetScroll()V
invoke-virtual {v2}, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->invalidate()V
invoke-virtual {v2}, Lco/vine/android/widget/tabs/ScrollAwayTabWidget;->getNavBottom()I
move-result v1
iget-object v3, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
invoke-virtual {v3}, Lco/vine/android/widget/tabs/TabsAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_29
instance-of v3, v0, Lco/vine/android/BaseArrayListFragment;
if-eqz v3, :cond_29
check-cast v0, Lco/vine/android/BaseArrayListFragment;
invoke-virtual {v0, v1}, Lco/vine/android/BaseArrayListFragment;->setNavBottom(I)V
:cond_29
const/4 v3, 0x1
iput-boolean v3, p0, Lco/vine/android/HomeTabActivity;->mScrollAwayNavEnabled:Z
:cond_2c
return-void
.end method
.method public scrollTop()V
.registers 5
iget-object v3, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
invoke-virtual {v3}, Lco/vine/android/widget/tabs/TabsAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;
move-result-object v0
invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->resetNav()V
instance-of v3, v0, Lco/vine/android/BaseArrayListFragment;
if-eqz v3, :cond_2b
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;
move-result-object v2
if-nez v2, :cond_14
:cond_13
:goto_13
return-void
:cond_14
const v3, 0x102000a
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/twitter/android/widget/TopScrollable;
if-eqz v1, :cond_13
invoke-interface {v1}, Lcom/twitter/android/widget/TopScrollable;->scrollTop()Z
move-result v3
if-nez v3, :cond_13
check-cast v0, Lco/vine/android/BaseArrayListFragment;
invoke-virtual {v0}, Lco/vine/android/BaseArrayListFragment;->invokeScrollFirstItem()V
goto :goto_13
:cond_2b
instance-of v3, v0, Lcom/twitter/android/widget/TopScrollable;
if-eqz v3, :cond_13
check-cast v0, Lcom/twitter/android/widget/TopScrollable;
invoke-interface {v0}, Lcom/twitter/android/widget/TopScrollable;->scrollTop()Z
goto :goto_13
.end method
.method public setProfileColor(I)V
.registers 5
const/4 v2, 0x3
iget-object v1, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v1}, Lco/vine/android/widget/tabs/IconTabHost;->getCurrentTab()I
move-result v0
if-ne v0, v2, :cond_19
iget-object v1, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v1}, Lco/vine/android/widget/tabs/IconTabHost;->getTabWidget()Landroid/widget/TabWidget;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lco/vine/android/widget/tabs/TabIndicator;
invoke-virtual {v1, p1}, Lco/vine/android/widget/tabs/TabIndicator;->setColor(I)V
:goto_18
return-void
:cond_19
iget-object v1, p0, Lco/vine/android/HomeTabActivity;->mTabHost:Lco/vine/android/widget/tabs/IconTabHost;
invoke-virtual {v1}, Lco/vine/android/widget/tabs/IconTabHost;->getTabWidget()Landroid/widget/TabWidget;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lco/vine/android/widget/tabs/TabIndicator;
invoke-virtual {v1}, Lco/vine/android/widget/tabs/TabIndicator;->unSetColor()V
goto :goto_18
.end method
.method public setScrollAwayNavEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lco/vine/android/HomeTabActivity;->mScrollAwayNavEnabled:Z
return-void
.end method
.method public showMenuIfNeeded()V
.registers 3
const/4 v1, 0x0
iget-boolean v0, p0, Lco/vine/android/HomeTabActivity;->mShouldShowMenu:Z
if-eqz v0, :cond_13
const-string v0, "Menu requested."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iput-boolean v1, p0, Lco/vine/android/HomeTabActivity;->mShouldShowMenu:Z
invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showMenu(Z)V
:cond_13
return-void
.end method
.method public showPage(ILandroid/support/v4/app/Fragment;)V
.registers 6
iget-object v1, p0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v1, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
instance-of v1, p2, Lco/vine/android/BaseArrayListFragment;
if-eqz v1, :cond_10
move-object v1, p2
check-cast v1, Lco/vine/android/BaseArrayListFragment;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lco/vine/android/BaseArrayListFragment;->onMoveTo(I)V
:cond_10
iget-object v1, p0, Lco/vine/android/HomeTabActivity;->mTabsAdapter:Lco/vine/android/widget/tabs/TabsAdapter;
iget-object v2, p0, Lco/vine/android/HomeTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
move-result v2
invoke-virtual {v1, v2}, Lco/vine/android/widget/tabs/TabsAdapter;->getTab(I)Lco/vine/android/widget/tabs/TabInfo;
move-result-object v1
invoke-virtual {v1}, Lco/vine/android/widget/tabs/TabInfo;->fragment()Landroid/support/v4/app/Fragment;
move-result-object v0
instance-of v1, v0, Lco/vine/android/BaseArrayListFragment;
if-eqz v1, :cond_2a
check-cast v0, Lco/vine/android/BaseArrayListFragment;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Lco/vine/android/BaseArrayListFragment;->onMoveAway(I)V
:cond_2a
invoke-virtual {p0}, Lco/vine/android/HomeTabActivity;->resetNav()V
invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lco/vine/android/HomeTabActivity;->logTabChange(Ljava/lang/String;)V
return-void
.end method