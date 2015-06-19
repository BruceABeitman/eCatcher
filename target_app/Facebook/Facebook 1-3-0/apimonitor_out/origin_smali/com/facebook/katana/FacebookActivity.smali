.class Lcom/facebook/katana/FacebookActivity;
.super Landroid/app/Activity;
.source "FacebookActivity.java"


# static fields
.field public static final INTENT_WITHIN_TAB:Ljava/lang/String; = "within_tab"


# instance fields
.field public mTransitioningToBackground:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/FacebookActivity;->mTransitioningToBackground:Z

    return-void
.end method


# virtual methods
.method public facebookOnBackPressed()Z
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/katana/FacebookActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public finish()V
    .registers 2

    instance-of v0, p0, Lcom/facebook/katana/LoginActivity;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/FacebookActivity;->mTransitioningToBackground:Z

    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1a

    invoke-static {}, Lcom/facebook/katana/util/PlatformUtils;->isEclairOrLater()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p1, p2}, Lcom/facebook/katana/util/EclairKeyHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_11
    return v0

    :cond_12
    invoke-virtual {p0}, Lcom/facebook/katana/FacebookActivity;->facebookOnBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    goto :goto_11

    :cond_1a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_17

    invoke-static {}, Lcom/facebook/katana/util/PlatformUtils;->isEclairOrLater()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1, p2}, Lcom/facebook/katana/util/EclairKeyHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/facebook/katana/FacebookActivity;->facebookOnBackPressed()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_16
.end method

.method protected onPause()V
    .registers 4

    invoke-virtual {p0}, Lcom/facebook/katana/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "within_tab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v1, p0, Lcom/facebook/katana/FacebookActivity;->mTransitioningToBackground:Z

    invoke-static {v0, v1, p0}, Lcom/facebook/katana/service/FacebookService;->pause(ZZLandroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 4

    invoke-virtual {p0}, Lcom/facebook/katana/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "within_tab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0, p0}, Lcom/facebook/katana/service/FacebookService;->resume(ZLandroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/FacebookActivity;->mTransitioningToBackground:Z

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    invoke-static {p0}, Lcom/facebook/katana/util/ApplicationUtils;->onSearchRequested(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected setPrimaryActionIcon(I)V
    .registers 4

    const v1, 0x7f0b00b3

    invoke-virtual {p0, v1}, Lcom/facebook/katana/FacebookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_12

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_11
    return-void

    :cond_12
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_11
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    invoke-static {p1}, Lcom/facebook/katana/service/FacebookService;->processActivityChange(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/FacebookActivity;->mTransitioningToBackground:Z

    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    invoke-static {p1}, Lcom/facebook/katana/service/FacebookService;->processActivityChange(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/FacebookActivity;->mTransitioningToBackground:Z

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public titleBarClickHandler(Landroid/view/View;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/FacebookActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "titleBarPrimaryActionClickHandler has no operation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public titleBarSearchClickHandler(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/UsersTabHostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.facebook.katana.DefaultTab"

    const-string v2, "user_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/FacebookActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
