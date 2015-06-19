.class Landroid/support/v7/app/ActionBarActivityDelegateJB;
.super Landroid/support/v7/app/ActionBarActivityDelegateICS;
.source "ActionBarActivityDelegateJB.java"


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateICS;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    return-void
.end method


# virtual methods
.method createActionModeCallbackWrapper(Landroid/content/Context;Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;
    .registers 4

    new-instance v0, Landroid/support/v7/internal/view/ActionModeWrapperJB$CallbackWrapper;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/internal/view/ActionModeWrapperJB$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/support/v7/view/ActionMode$Callback;)V

    return-object v0
.end method

.method createActionModeWrapper(Landroid/content/Context;Landroid/view/ActionMode;)Landroid/support/v7/internal/view/ActionModeWrapper;
    .registers 4

    new-instance v0, Landroid/support/v7/internal/view/ActionModeWrapperJB;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/internal/view/ActionModeWrapperJB;-><init>(Landroid/content/Context;Landroid/view/ActionMode;)V

    return-object v0
.end method

.method public createSupportActionBar()Landroid/support/v7/app/ActionBar;
    .registers 4

    new-instance v0, Landroid/support/v7/app/ActionBarImplJB;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateJB;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateJB;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/ActionBarImplJB;-><init>(Landroid/app/Activity;Landroid/support/v7/app/ActionBar$Callback;)V

    return-object v0
.end method
