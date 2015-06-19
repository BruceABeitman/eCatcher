.class public Lcom/facebook/katana/EventBirthdaysActivity;
.super Lcom/facebook/katana/FacebookListActivity;
.source "EventBirthdaysActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/EventBirthdaysActivity$EventsAppSessionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/katana/FacebookListActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/facebook/katana/EventBirthdaysAdapter;

.field private mAppSession:Lcom/facebook/katana/binding/AppSession;

.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/FacebookListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$10(Lcom/facebook/katana/EventBirthdaysActivity;)Lcom/facebook/katana/EventBirthdaysAdapter;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/EventBirthdaysActivity;->mAdapter:Lcom/facebook/katana/EventBirthdaysAdapter;

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

    const v4, 0x7f03000d

    invoke-virtual {p0, v4}, Lcom/facebook/katana/EventBirthdaysActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/katana/EventBirthdaysActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v4, p0, Lcom/facebook/katana/EventBirthdaysActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-nez v4, :cond_17

    invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V

    :goto_16
    return-void

    :cond_17
    invoke-virtual {p0}, Lcom/facebook/katana/EventBirthdaysActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/katana/EventBirthdaysActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_user_ids"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "user_id"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_32
    array-length v4, v0

    if-lt v1, v4, :cond_5c

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/facebook/katana/EventBirthdaysAdapter;

    iget-object v5, p0, Lcom/facebook/katana/EventBirthdaysActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v5}, Lcom/facebook/katana/binding/AppSession;->getUserImagesCache()Lcom/facebook/katana/binding/UserImagesCache;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/facebook/katana/EventBirthdaysAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/UserImagesCache;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/facebook/katana/EventBirthdaysActivity;->mAdapter:Lcom/facebook/katana/EventBirthdaysAdapter;

    iget-object v4, p0, Lcom/facebook/katana/EventBirthdaysActivity;->mAdapter:Lcom/facebook/katana/EventBirthdaysAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v4, Lcom/facebook/katana/EventBirthdaysActivity$EventsAppSessionListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/facebook/katana/EventBirthdaysActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/EventBirthdaysActivity;Lcom/facebook/katana/EventBirthdaysActivity$EventsAppSessionListener;)V

    iput-object v4, p0, Lcom/facebook/katana/EventBirthdaysActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_16

    :cond_5c
    if-eqz v1, :cond_63

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_63
    aget-wide v4, v0, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_32
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

    iget-object v1, p0, Lcom/facebook/katana/EventBirthdaysActivity;->mAdapter:Lcom/facebook/katana/EventBirthdaysAdapter;

    invoke-virtual {v1, p3}, Lcom/facebook/katana/EventBirthdaysAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/EventBirthdaysAdapter$Item;

    invoke-virtual {v0}, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->getUserId()J

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

    iget-object v0, p0, Lcom/facebook/katana/EventBirthdaysActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/EventBirthdaysActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onResume()V

    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/EventBirthdaysActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v0, p0, Lcom/facebook/katana/EventBirthdaysActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_11

    invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/facebook/katana/EventBirthdaysActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/EventBirthdaysActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

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
