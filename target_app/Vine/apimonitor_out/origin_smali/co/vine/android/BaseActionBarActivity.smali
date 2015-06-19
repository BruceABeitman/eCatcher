.class public abstract Lco/vine/android/BaseActionBarActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "BaseActionBarActivity.java"

# interfaces
.implements Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;


# static fields
.field public static final COLOR_TRANSITION_DURATION:I = 0x64

.field public static final FINISH_BROADCAST_ACTION:Ljava/lang/String; = "co.vine.android.FINISH"

.field private static FINISH_INTENT_FILTER:Landroid/content/IntentFilter; = null

.field private static final TAG:Ljava/lang/String; = "BaseActionBarActivity"

.field private static mDebugMenuSecrets:[I


# instance fields
.field private mDebugMenu:I

.field private mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

.field private final mFinishReceiver:Landroid/content/BroadcastReceiver;

.field protected mMenu:Landroid/view/Menu;

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field private mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

.field private mVineGreen:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lco/vine/android/BaseActionBarActivity;->FINISH_INTENT_FILTER:Landroid/content/IntentFilter;

    sget-object v0, Lco/vine/android/BaseActionBarActivity;->FINISH_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "co.vine.android.FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lco/vine/android/BaseActionBarActivity;->mDebugMenuSecrets:[I

    return-void

    nop

    :array_18
    .array-data 0x4
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    new-instance v0, Lco/vine/android/BaseActionBarActivity$1;

    invoke-direct {v0, p0}, Lco/vine/android/BaseActionBarActivity$1;-><init>(Lco/vine/android/BaseActionBarActivity;)V

    iput-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mFinishReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/BaseActionBarActivity;->mDebugMenu:I

    return-void
.end method

.method private setupActionBarJBOnly(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_f
    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_18
    if-eqz p3, :cond_21

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_21
    return-void
.end method


# virtual methods
.method protected applyDefaultTitleViewStylingToFakeActionBar()V
    .registers 6

    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->getFakeActionBar()Lco/vine/android/widget/FakeActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/widget/FakeActionBar;->getTitleView()Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f090061

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Lco/vine/android/widget/FakeActionBar;->getTitleView()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v3

    iget-object v3, v3, Lco/vine/android/widget/Typefaces;->mediumContent:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0}, Lco/vine/android/widget/FakeActionBar;->getTitleView()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0b0046

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method protected createSlidingMenuHelper()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;
    .registers 2

    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    invoke-direct {v0, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected dismissDialog()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_c
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    iget-object v1, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    invoke-virtual {v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getFakeActionBar()Lco/vine/android/widget/FakeActionBar;
    .registers 2

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    return-object v0
.end method

.method public getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    .registers 2

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getSlidingMenuHelper()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;
    .registers 2

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    return-object v0
.end method

.method public isFakeActionBarEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected isSlidingMenuEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    :try_start_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If extending BaseActivity, please use multiple parameter version of this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;IZZ)V
    .registers 12

    const/4 v1, 0x1

    :try_start_1
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/util/AndroidRuntimeException; {:try_start_1 .. :try_end_4} :catch_72

    :goto_4
    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->isFakeActionBarEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    new-instance v3, Lco/vine/android/widget/FakeActionBar;

    invoke-direct {v3, p0}, Lco/vine/android/widget/FakeActionBar;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    iput-object v3, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    iget-object v3, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    invoke-virtual {v3}, Lco/vine/android/widget/FakeActionBar;->onCreate()V

    invoke-virtual {p0, v1}, Lco/vine/android/BaseActionBarActivity;->requestWindowFeature(I)Z

    :cond_19
    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lco/vine/android/BaseActionBarActivity;->mVineGreen:I

    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->isSlidingMenuEnabled()Z

    move-result v3

    if-eqz v3, :cond_41

    const-string v3, "Sliding menu is enabled."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->createSlidingMenuHelper()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    move-result-object v3

    iput-object v3, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    iget-object v3, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    invoke-virtual {v3, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->onCreate(Landroid/os/Bundle;)V

    iget-object v3, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    invoke-virtual {v3, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->setMenuStateListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;)V

    :cond_41
    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->preSetContentView()V

    invoke-virtual {p0, p2}, Lco/vine/android/BaseActionBarActivity;->setContentView(I)V

    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    if-eqz p3, :cond_77

    invoke-static {p0, p4}, Lco/vine/android/client/VineAccountHelper;->isLoggedIn(Landroid/content/Context;Z)Z

    move-result v3

    if-nez v3, :cond_77

    :goto_53
    if-eqz v1, :cond_5a

    if-nez v2, :cond_5a

    invoke-static {p0}, Lco/vine/android/StartActivity;->toStart(Landroid/content/Context;)V

    :cond_5a
    invoke-static {p0}, Lco/vine/android/util/SystemUtil;->isViewServerEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-static {p0}, Lcom/android/debug/hv/ViewServer;->get(Landroid/content/Context;)Lcom/android/debug/hv/ViewServer;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/debug/hv/ViewServer;->addWindow(Landroid/app/Activity;)V

    :cond_67
    iget-object v3, p0, Lco/vine/android/BaseActionBarActivity;->mFinishReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Lco/vine/android/BaseActionBarActivity;->FINISH_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v5, "co.vine.android.BROADCAST"

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lco/vine/android/BaseActionBarActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catch_72
    move-exception v0

    invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_77
    const/4 v1, 0x0

    goto :goto_53
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v2, 0x1

    const v0, 0x7f0a0240

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/BaseActionBarActivity;->updateMuteActionState(Landroid/view/MenuItem;)V

    iput-object p1, p0, Lco/vine/android/BaseActionBarActivity;->mMenu:Landroid/view/Menu;

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    iget-object v1, p0, Lco/vine/android/BaseActionBarActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Lco/vine/android/widget/FakeActionBar;->onCreateOptionsMenu(Landroid/view/Menu;Z)V

    :cond_18
    return v2
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 5

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    :goto_4
    return v1

    :catch_5
    move-exception v0

    invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_4
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    invoke-static {p0}, Lco/vine/android/util/SystemUtil;->isViewServerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/android/debug/hv/ViewServer;->get(Landroid/content/Context;)Lcom/android/debug/hv/ViewServer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/debug/hv/ViewServer;->removeWindow(Landroid/app/Activity;)V

    :cond_10
    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mFinishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lco/vine/android/BaseActionBarActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    iget-object v1, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    invoke-virtual {v1, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    sget-boolean v1, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z

    if-eqz v1, :cond_38

    iget v1, p0, Lco/vine/android/BaseActionBarActivity;->mDebugMenu:I

    sget-object v2, Lco/vine/android/BaseActionBarActivity;->mDebugMenuSecrets:[I

    array-length v2, v2

    if-ge v1, v2, :cond_38

    sget-object v1, Lco/vine/android/BaseActionBarActivity;->mDebugMenuSecrets:[I

    iget v2, p0, Lco/vine/android/BaseActionBarActivity;->mDebugMenu:I

    aget v1, v1, v2

    if-ne p1, v1, :cond_38

    iget v1, p0, Lco/vine/android/BaseActionBarActivity;->mDebugMenu:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lco/vine/android/BaseActionBarActivity;->mDebugMenu:I

    iget v1, p0, Lco/vine/android/BaseActionBarActivity;->mDebugMenu:I

    sget-object v2, Lco/vine/android/BaseActionBarActivity;->mDebugMenuSecrets:[I

    array-length v2, v2

    if-ne v1, v2, :cond_38

    new-instance v1, Landroid/content/Intent;

    const-string v2, "co.vine.android.debug_receiver"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lco/vine/android/BaseActionBarActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_38
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_d
.end method

.method public onMenuClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onMenuClose()V
    .registers 1

    return-void
.end method

.method public onMenuClosed()V
    .registers 1

    return-void
.end method

.method public onMenuDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpen()V
    .registers 1

    return-void
.end method

.method public onMenuOpened()V
    .registers 1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_36

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_c
    return v1

    :sswitch_d
    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->toggle()V

    goto :goto_c

    :cond_17
    :try_start_17
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_c

    :catch_1b
    move-exception v0

    goto :goto_c

    :sswitch_1d
    invoke-static {}, Lco/vine/android/AppImpl;->getInstance()Lco/vine/android/AppImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lco/vine/android/AppImpl;->startCapture(Landroid/app/Activity;)V

    goto :goto_c

    :sswitch_25
    invoke-static {p0}, Lco/vine/android/util/MuteUtil;->isMuted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_33

    move v0, v1

    :goto_2c
    invoke-static {p0, v0}, Lco/vine/android/util/MuteUtil;->setMuted(Landroid/content/Context;Z)V

    invoke-virtual {p0, p1}, Lco/vine/android/BaseActionBarActivity;->updateMuteActionState(Landroid/view/MenuItem;)V

    goto :goto_c

    :cond_33
    const/4 v0, 0x0

    goto :goto_2c

    nop

    :sswitch_data_36
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f0a023c -> :sswitch_1d
        0x7f0a0240 -> :sswitch_25
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->dismissDialog()V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    invoke-virtual {v0, p1}, Lco/vine/android/widget/FakeActionBar;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->applyDefaultTitleViewStylingToFakeActionBar()V

    :cond_f
    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->onPostCreate(Landroid/os/Bundle;)V

    :cond_18
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    invoke-virtual {v1, p1, v0}, Lco/vine/android/widget/FakeActionBar;->onPrepareOptionsMenu(Landroid/view/Menu;Z)V

    :cond_d
    return v0
.end method

.method protected onResume()V
    .registers 5

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    if-eqz v0, :cond_75

    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_75

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lco/vine/android/util/MuteUtil;->ACTION_CHANGED_TO_MUTE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "co.vine.android.BROADCAST"

    invoke-virtual {p0, v0, v1}, Lco/vine/android/BaseActionBarActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    const-string v0, "Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-static {p0}, Lco/vine/android/util/SystemUtil;->isViewServerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-static {p0}, Lcom/android/debug/hv/ViewServer;->get(Landroid/content/Context;)Lcom/android/debug/hv/ViewServer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/debug/hv/ViewServer;->setFocusedWindow(Landroid/app/Activity;)V

    :cond_5a
    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0a0240

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/BaseActionBarActivity;->updateMuteActionState(Landroid/view/MenuItem;)V

    :cond_6a
    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mFinishReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lco/vine/android/BaseActionBarActivity;->FINISH_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v2, "co.vine.android.BROADCAST"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lco/vine/android/BaseActionBarActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :cond_75
    invoke-static {p0}, Lco/vine/android/util/MuteUtil;->isMuted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lco/vine/android/util/MuteUtil;->ACTION_CHANGED_TO_UNMUTE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "co.vine.android.BROADCAST"

    invoke-virtual {p0, v0, v1}, Lco/vine/android/BaseActionBarActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_c
    return-void
.end method

.method protected onStart()V
    .registers 1

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStart()V

    invoke-static {p0}, Lco/vine/android/util/FlurryUtils;->start(Landroid/content/Context;)V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    invoke-static {p0}, Lco/vine/android/util/FlurryUtils;->stop(Landroid/content/Context;)V

    return-void
.end method

.method public preSetContentView()V
    .registers 1

    return-void
.end method

.method protected restoreActivityState()V
    .registers 4

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "BaseActionBarActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restoring activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-void
.end method

.method public setActionBarColor()V
    .registers 2

    iget v0, p0, Lco/vine/android/BaseActionBarActivity;->mVineGreen:I

    invoke-virtual {p0, v0}, Lco/vine/android/BaseActionBarActivity;->setActionBarColor(I)V

    return-void
.end method

.method public setActionBarColor(I)V
    .registers 6

    const/high16 v3, -0x100

    if-eqz p1, :cond_54

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    or-int v1, p1, v3

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FakeActionBar;->setActionBarColor(I)V

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    invoke-virtual {v0}, Lco/vine/android/widget/FakeActionBar;->getActionBar()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    :goto_18
    instance-of v0, p0, Lco/vine/android/HomeTabActivity;

    if-eqz v0, :cond_38

    sget v0, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    if-eq p1, v0, :cond_27

    if-lez p1, :cond_27

    sget v0, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    or-int/2addr v0, v3

    if-ne p1, v0, :cond_4b

    :cond_27
    move-object v0, p0

    check-cast v0, Lco/vine/android/HomeTabActivity;

    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/HomeTabActivity;->setProfileColor(I)V

    :cond_38
    :goto_38
    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->invalidateOptionsMenu()V

    return-void

    :cond_3c
    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    or-int v2, p1, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_18

    :cond_4b
    move-object v0, p0

    check-cast v0, Lco/vine/android/HomeTabActivity;

    or-int v1, p1, v3

    invoke-virtual {v0, v1}, Lco/vine/android/HomeTabActivity;->setProfileColor(I)V

    goto :goto_38

    :cond_54
    iget v0, p0, Lco/vine/android/BaseActionBarActivity;->mVineGreen:I

    if-eqz v0, :cond_38

    iget v0, p0, Lco/vine/android/BaseActionBarActivity;->mVineGreen:I

    invoke-virtual {p0, v0}, Lco/vine/android/BaseActionBarActivity;->setActionBarColor(I)V

    goto :goto_38
.end method

.method public setActionBarTransition(Landroid/graphics/drawable/TransitionDrawable;)V
    .registers 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    invoke-virtual {v0, p1}, Lco/vine/android/widget/FakeActionBar;->setActionBarTransition(Landroid/graphics/drawable/TransitionDrawable;)V

    :goto_9
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    return-void

    :cond_f
    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9
.end method

.method public setBehindContentView(I)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/BaseActionBarActivity;->setBehindContentView(Landroid/view/View;)Landroid/view/View;

    return-object v0
.end method

.method public setBehindContentView(Landroid/view/View;)Landroid/view/View;
    .registers 4

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lco/vine/android/BaseActionBarActivity;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    return-object p1
.end method

.method public setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public setContentView(I)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    if-nez v0, :cond_8

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    if-eqz v0, :cond_15

    :cond_8
    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/BaseActionBarActivity;->setContentView(Landroid/view/View;)V

    :goto_14
    return-void

    :cond_15
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->setContentView(I)V

    goto :goto_14
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4

    const/4 v1, -0x1

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    if-nez v0, :cond_9

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    if-eqz v0, :cond_12

    :cond_9
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lco/vine/android/BaseActionBarActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_11
    return-void

    :cond_12
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->setContentView(Landroid/view/View;)V

    goto :goto_11
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    invoke-virtual {v0, p1, p2}, Lco/vine/android/widget/FakeActionBar;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    invoke-virtual {v0}, Lco/vine/android/widget/FakeActionBar;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lco/vine/android/BaseActionBarActivity;->mSlidingMenuHelper:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;->registerAboveContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b
    return-void
.end method

.method protected setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V
    .registers 6

    if-lez p3, :cond_a

    invoke-virtual {p0, p3}, Lco/vine/android/BaseActionBarActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, p1, p2, v0, p4}, Lco/vine/android/BaseActionBarActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 8

    iget-object v1, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    if-eqz v1, :cond_25

    if-eqz p1, :cond_b

    iget-object v1, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    invoke-virtual {v1, p1}, Lco/vine/android/widget/FakeActionBar;->setHomeButtonEnabled(Ljava/lang/Boolean;)V

    :cond_b
    if-eqz p2, :cond_12

    iget-object v1, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    invoke-virtual {v1, p2}, Lco/vine/android/widget/FakeActionBar;->setDisplayShowTitleEnabled(Ljava/lang/Boolean;)V

    :cond_12
    if-eqz p4, :cond_19

    iget-object v1, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    invoke-virtual {v1, p4}, Lco/vine/android/widget/FakeActionBar;->setDisplayHomeAsUpEnabled(Ljava/lang/Boolean;)V

    :cond_19
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lco/vine/android/BaseActionBarActivity;->mFakeActionBar:Lco/vine/android/widget/FakeActionBar;

    invoke-virtual {v1, p3}, Lco/vine/android/widget/FakeActionBar;->setTitle(Ljava/lang/String;)V

    :cond_24
    :goto_24
    return-void

    :cond_25
    invoke-virtual {p0}, Lco/vine/android/BaseActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4f

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_34
    if-eqz p2, :cond_3d

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_3d
    if-eqz p4, :cond_46

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_46
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-virtual {v0, p3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_24

    invoke-direct {p0, p1, p2, p4}, Lco/vine/android/BaseActionBarActivity;->setupActionBarJBOnly(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_24
.end method

.method public updateMuteActionState(Landroid/view/MenuItem;)V
    .registers 5

    if-eqz p1, :cond_17

    invoke-static {p0}, Lco/vine/android/util/MuteUtil;->isMuted(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "Is muted? {}"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_18

    const v1, 0x7f0e0254

    :goto_14
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_17
    return-void

    :cond_18
    const v1, 0x7f0e0148

    goto :goto_14
.end method
