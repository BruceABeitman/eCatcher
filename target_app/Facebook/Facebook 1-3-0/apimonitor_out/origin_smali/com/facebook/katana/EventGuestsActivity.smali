.class public Lcom/facebook/katana/EventGuestsActivity;
.super Lcom/facebook/katana/FacebookListActivity;
.source "EventGuestsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/EventGuestsActivity$EventsAppSessionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/katana/FacebookListActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/facebook/katana/EventGuestsAdapter;

.field private mAppSession:Lcom/facebook/katana/binding/AppSession;

.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/FacebookListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$10(Lcom/facebook/katana/EventGuestsActivity;)Lcom/facebook/katana/EventGuestsAdapter;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/EventGuestsActivity;->mAdapter:Lcom/facebook/katana/EventGuestsAdapter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic facebookOnBackPressed()Z
    .registers 2

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->facebookOnBackPressed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic finish()V
    .registers 1

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f03000d

    invoke-virtual {p0, v3}, Lcom/facebook/katana/EventGuestsActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/katana/EventGuestsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/EventGuestsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-nez v3, :cond_17

    invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V

    :goto_16
    return-void

    :cond_17
    invoke-virtual {p0}, Lcom/facebook/katana/EventGuestsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/facebook/katana/EventGuestsAdapter;

    iget-object v4, p0, Lcom/facebook/katana/EventGuestsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v4}, Lcom/facebook/katana/binding/AppSession;->getUserImagesCache()Lcom/facebook/katana/binding/UserImagesCache;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/facebook/katana/EventGuestsAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/UserImagesCache;)V

    iput-object v3, p0, Lcom/facebook/katana/EventGuestsActivity;->mAdapter:Lcom/facebook/katana/EventGuestsAdapter;

    iget-object v3, p0, Lcom/facebook/katana/EventGuestsActivity;->mAdapter:Lcom/facebook/katana/EventGuestsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/facebook/katana/EventGuestsActivity$EventsAppSessionListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/facebook/katana/EventGuestsActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/EventGuestsActivity;Lcom/facebook/katana/EventGuestsActivity$EventsAppSessionListener;)V

    iput-object v3, p0, Lcom/facebook/katana/EventGuestsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {p0}, Lcom/facebook/katana/EventGuestsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_event_id"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v3, p0, Lcom/facebook/katana/EventGuestsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v3, p0, v0, v1}, Lcom/facebook/katana/binding/AppSession;->eventGetMembers(Landroid/content/Context;J)Ljava/lang/String;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_16
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/katana/EventGuestsActivity;->mAdapter:Lcom/facebook/katana/EventGuestsAdapter;

    invoke-virtual {v1, p3}, Lcom/facebook/katana/EventGuestsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/EventGuestsAdapter$Item;

    invoke-virtual {v0}, Lcom/facebook/katana/EventGuestsAdapter$Item;->getUser()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/facebook/katana/util/ApplicationUtils;->OpenUserProfile(Landroid/content/Context;J)V

    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onPause()V

    iget-object v0, p0, Lcom/facebook/katana/EventGuestsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/facebook/katana/EventGuestsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/EventGuestsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    :cond_e
    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onResume()V

    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/EventGuestsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v0, p0, Lcom/facebook/katana/EventGuestsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_11

    invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/facebook/katana/EventGuestsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/EventGuestsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    goto :goto_10
.end method

.method public bridge synthetic onSearchRequested()Z
    .registers 2

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic titleBarClickHandler(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->titleBarClickHandler(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->titleBarPrimaryActionClickHandler(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic titleBarSearchClickHandler(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->titleBarSearchClickHandler(Landroid/view/View;)V

    return-void
.end method
