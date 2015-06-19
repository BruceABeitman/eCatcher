.class abstract Landroid/support/v7/app/ActionBarActivityDelegate;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ActionBarActivityDelegate$1;,
        Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;
    }
.end annotation


# static fields
.field static final METADATA_UI_OPTIONS:Ljava/lang/String; = "android.support.UI_OPTIONS"

.field private static final TAG:Ljava/lang/String; = "ActionBarActivityDelegate"

.field static final UIOPTION_SPLIT_ACTION_BAR_WHEN_NARROW:Ljava/lang/String; = "splitActionBarWhenNarrow"


# instance fields
.field private mActionBar:Landroid/support/v7/app/ActionBar;

.field final mActivity:Landroid/support/v7/app/ActionBarActivity;

.field private mEnableDefaultActionBarUp:Z

.field mHasActionBar:Z

.field private mMenuInflater:Landroid/view/MenuInflater;

.field mOverlayActionBar:Z


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    return-void
.end method

.method static createDelegate(Landroid/support/v7/app/ActionBarActivity;)Landroid/support/v7/app/ActionBarActivityDelegate;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_c

    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateApi20;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ActionBarActivityDelegateApi20;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    :goto_b
    return-object v0

    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_18

    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateJBMR2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ActionBarActivityDelegateJBMR2;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_b

    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_24

    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateJB;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ActionBarActivityDelegateJB;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_b

    :cond_24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_30

    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateICS;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ActionBarActivityDelegateICS;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_b

    :cond_30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3c

    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateHC;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ActionBarActivityDelegateHC;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_b

    :cond_3c
    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_b
.end method


# virtual methods
.method abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method abstract createSupportActionBar()Landroid/support/v7/app/ActionBar;
.end method

.method protected final getActionBarThemedContext()Landroid/content/Context;
    .registers 3

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    :cond_c
    return-object v1
.end method

.method final getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
    .registers 3

    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;-><init>(Landroid/support/v7/app/ActionBarActivityDelegate;Landroid/support/v7/app/ActionBarActivityDelegate$1;)V

    return-object v0
.end method

.method abstract getHomeAsUpIndicatorAttrId()I
.end method

.method getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_f

    new-instance v0, Landroid/support/v7/internal/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mMenuInflater:Landroid/view/MenuInflater;

    :cond_f
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method final getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .registers 3

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mHasActionBar:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mOverlayActionBar:Z

    if-eqz v0, :cond_1f

    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegate;->createSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mEnableDefaultActionBarUp:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1c
    :goto_1c
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActionBar:Landroid/support/v7/app/ActionBar;

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActionBar:Landroid/support/v7/app/ActionBar;

    goto :goto_1c
.end method

.method protected final getUiOptionsFromMetadata()Ljava/lang/String;
    .registers 8

    :try_start_0
    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBarActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBarActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_1f

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.support.UI_OPTIONS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1e} :catch_20

    move-result-object v3

    :cond_1f
    :goto_1f
    return-object v3

    :catch_20
    move-exception v0

    const-string v4, "ActionBarActivityDelegate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUiOptionsFromMetadata: Activity \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' not in manifest"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_1f
.end method

.method abstract onBackPressed()Z
.end method

.method abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method abstract onContentChanged()V
.end method

.method onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->ActionBarWindow:[I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mHasActionBar:Z

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mOverlayActionBar:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {v1}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-nez v1, :cond_39

    iput-boolean v4, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mEnableDefaultActionBarUp:Z

    :cond_38
    :goto_38
    return-void

    :cond_39
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_38
.end method

.method abstract onCreatePanelMenu(ILandroid/view/Menu;)Z
.end method

.method abstract onCreatePanelView(I)Landroid/view/View;
.end method

.method abstract onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end method

.method abstract onPostResume()V
.end method

.method onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_d

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->superOnPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_c
.end method

.method abstract onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
.end method

.method abstract onStop()V
.end method

.method abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method

.method abstract setContentView(I)V
.end method

.method abstract setContentView(Landroid/view/View;)V
.end method

.method abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method abstract setSupportProgress(I)V
.end method

.method abstract setSupportProgressBarIndeterminate(Z)V
.end method

.method abstract setSupportProgressBarIndeterminateVisibility(Z)V
.end method

.method abstract setSupportProgressBarVisibility(Z)V
.end method

.method abstract startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.end method

.method abstract supportInvalidateOptionsMenu()V
.end method

.method abstract supportRequestWindowFeature(I)Z
.end method
