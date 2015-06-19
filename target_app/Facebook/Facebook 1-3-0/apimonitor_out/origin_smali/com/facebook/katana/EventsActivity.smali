.class public Lcom/facebook/katana/EventsActivity;
.super Lcom/facebook/katana/FacebookListActivity;
.source "EventsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/EventsActivity$EventsAppSessionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/katana/FacebookListActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final REFRESH_ID:I = 0x2


# instance fields
.field private mAdapter:Lcom/facebook/katana/EventsAdapter;

.field private mAppSession:Lcom/facebook/katana/binding/AppSession;

.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

.field private mUserId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/FacebookListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$10(Lcom/facebook/katana/EventsActivity;)Lcom/facebook/katana/EventsAdapter;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/EventsActivity;->mAdapter:Lcom/facebook/katana/EventsAdapter;

    return-object v0
.end method

.method static synthetic access$11(Lcom/facebook/katana/EventsActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/katana/EventsActivity;->showProgress(Z)V

    return-void
.end method

.method private showBirthdaysGroup(Lcom/facebook/katana/EventsAdapter$Item;)V
    .registers 9

    invoke-virtual {p1}, Lcom/facebook/katana/EventsAdapter$Item;->getBirthdaysCount()I

    move-result v4

    new-array v3, v4, [J

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/facebook/katana/EventsAdapter$Item;->getBirthdaysList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_25

    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/facebook/katana/EventBirthdaysActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "extra_user_ids"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/facebook/katana/EventsActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_25
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/EventsAdapter$Birthday;

    invoke-virtual {v0}, Lcom/facebook/katana/EventsAdapter$Birthday;->getUserId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f
.end method

.method private showEventDetails(J)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/EventDetailsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/facebook/katana/provider/EventsProvider;->EVENT_EID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/EventsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showProgress(Z)V
    .registers 4

    const v0, 0x7f0b00b2

    if-eqz p1, :cond_e

    invoke-virtual {p0, v0}, Lcom/facebook/katana/EventsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0, v0}, Lcom/facebook/katana/EventsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d
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
    .registers 5

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f03000d

    invoke-virtual {p0, v1}, Lcom/facebook/katana/EventsActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/EventsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/EventsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-nez v1, :cond_17

    invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V

    :goto_16
    return-void

    :cond_17
    iget-object v1, p0, Lcom/facebook/katana/EventsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/katana/EventsActivity;->mUserId:J

    invoke-virtual {p0}, Lcom/facebook/katana/EventsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/EventsAdapter;

    iget-object v2, p0, Lcom/facebook/katana/EventsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->getPhotosCache()Lcom/facebook/katana/binding/StreamPhotosCache;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/EventsAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;)V

    iput-object v1, p0, Lcom/facebook/katana/EventsActivity;->mAdapter:Lcom/facebook/katana/EventsAdapter;

    iget-object v1, p0, Lcom/facebook/katana/EventsActivity;->mAdapter:Lcom/facebook/katana/EventsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/facebook/katana/EventsActivity$EventsAppSessionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/EventsActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/EventsActivity;Lcom/facebook/katana/EventsActivity$EventsAppSessionListener;)V

    iput-object v1, p0, Lcom/facebook/katana/EventsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_16
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x2

    const v1, 0x7f080141

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020081

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
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

    iget-object v1, p0, Lcom/facebook/katana/EventsActivity;->mAdapter:Lcom/facebook/katana/EventsAdapter;

    invoke-virtual {v1, p3}, Lcom/facebook/katana/EventsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/EventsAdapter$Item;

    invoke-virtual {v0}, Lcom/facebook/katana/EventsAdapter$Item;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    invoke-direct {p0, v0}, Lcom/facebook/katana/EventsActivity;->showBirthdaysGroup(Lcom/facebook/katana/EventsAdapter$Item;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-virtual {v0}, Lcom/facebook/katana/EventsAdapter$Item;->getType()I

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Lcom/facebook/katana/EventsAdapter$Item;->getEid()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/facebook/katana/EventsActivity;->showEventDetails(J)V

    goto :goto_12
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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    :pswitch_c
    invoke-virtual {p0}, Lcom/facebook/katana/EventsActivity;->refresh()V

    const/4 v0, 0x1

    goto :goto_b

    nop

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onPause()V

    iget-object v0, p0, Lcom/facebook/katana/EventsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/EventsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    iget-object v0, p0, Lcom/facebook/katana/EventsActivity;->mAdapter:Lcom/facebook/katana/EventsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/EventsAdapter;->stopBucketizeTask()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onResume()V

    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/EventsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v0, p0, Lcom/facebook/katana/EventsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_11

    invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/facebook/katana/EventsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/facebook/katana/EventsActivity$EventsAppSessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/EventsActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/EventsActivity;Lcom/facebook/katana/EventsActivity$EventsAppSessionListener;)V

    iput-object v0, p0, Lcom/facebook/katana/EventsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    :cond_1d
    iget-object v0, p0, Lcom/facebook/katana/EventsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/EventsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    invoke-virtual {p0}, Lcom/facebook/katana/EventsActivity;->refresh()V

    iget-object v0, p0, Lcom/facebook/katana/EventsActivity;->mAdapter:Lcom/facebook/katana/EventsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/EventsAdapter;->setItemsAsync()V

    goto :goto_10
.end method

.method public bridge synthetic onSearchRequested()Z
    .registers 2

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method refresh()V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/katana/EventsActivity;->showProgress(Z)V

    iget-object v0, p0, Lcom/facebook/katana/EventsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/EventsActivity;->mUserId:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->getEvents(Landroid/content/Context;J)Ljava/lang/String;

    return-void
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
