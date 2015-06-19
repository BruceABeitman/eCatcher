.class public Lcom/facebook/katana/EventDetailsActivity;
.super Lcom/facebook/katana/FacebookListActivity;
.source "EventDetailsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/katana/FacebookListActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final RSVP_DIALOG:I

.field private mAdapter:Lcom/facebook/katana/EventDetailsAdapter;

.field private mAppSession:Lcom/facebook/katana/binding/AppSession;

.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/katana/FacebookListActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/EventDetailsActivity;->RSVP_DIALOG:I

    return-void
.end method

.method static synthetic access$10(Lcom/facebook/katana/EventDetailsActivity;)Lcom/facebook/katana/EventDetailsAdapter;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;

    return-object v0
.end method

.method static synthetic access$11(Lcom/facebook/katana/EventDetailsActivity;)Landroid/database/Cursor;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$12(Lcom/facebook/katana/EventDetailsActivity;)Lcom/facebook/katana/binding/AppSession;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method private showGuestsList(J)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/EventGuestsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_event_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/EventDetailsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
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
    .registers 4

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/facebook/katana/EventDetailsActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_17

    invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V

    :goto_16
    return-void

    :cond_17
    new-instance v0, Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/EventDetailsActivity;Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;)V

    iput-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/EventDetailsActivity;->prepareEvent(Z)V

    goto :goto_16
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9

    const/4 v5, 0x3

    new-array v2, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f080045

    invoke-virtual {p0, v6}, Lcom/facebook/katana/EventDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const v6, 0x7f080050

    invoke-virtual {p0, v6}, Lcom/facebook/katana/EventDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const v6, 0x7f080046

    invoke-virtual {p0, v6}, Lcom/facebook/katana/EventDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f080044

    invoke-virtual {p0, v5}, Lcom/facebook/katana/EventDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/facebook/katana/EventDetailsActivity$1;

    invoke-direct {v3, p0}, Lcom/facebook/katana/EventDetailsActivity$1;-><init>(Lcom/facebook/katana/EventDetailsActivity;)V

    iget-object v5, p0, Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;

    invoke-virtual {v5}, Lcom/facebook/katana/EventDetailsAdapter;->getRsvpStatus()I

    move-result v4

    sget-object v5, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->NOT_REPLIED:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_44

    const/4 v4, -0x1

    :cond_44
    invoke-virtual {v1, v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/katana/EventDetailsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v1, p3, v3

    if-gez v1, :cond_19

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_6e

    :cond_13
    :goto_13
    return-void

    :pswitch_14
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/facebook/katana/EventDetailsActivity;->showDialog(I)V

    goto :goto_13

    :cond_19
    iget-object v3, p0, Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;

    invoke-virtual {v3}, Lcom/facebook/katana/EventDetailsAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_13

    iget-object v3, p0, Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;

    invoke-virtual {v3, v1}, Lcom/facebook/katana/EventDetailsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/EventDetailsAdapter$Item;

    invoke-virtual {v0}, Lcom/facebook/katana/EventDetailsAdapter$Item;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_74

    :pswitch_30
    goto :goto_13

    :pswitch_31
    iget-object v3, p0, Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;

    invoke-virtual {v3}, Lcom/facebook/katana/EventDetailsAdapter;->getCreatorId()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lcom/facebook/katana/util/ApplicationUtils;->OpenUserProfile(Landroid/content/Context;J)V

    goto :goto_13

    :pswitch_3b
    iget-object v3, p0, Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;

    invoke-virtual {v3}, Lcom/facebook/katana/EventDetailsAdapter;->getEventId()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/facebook/katana/EventDetailsActivity;->showGuestsList(J)V

    goto :goto_13

    :pswitch_45
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "geo:0,0?q="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/katana/EventDetailsAdapter$Item;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_5c
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/facebook/katana/EventDetailsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_6a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5c .. :try_end_6a} :catch_6b

    goto :goto_13

    :catch_6b
    move-exception v3

    goto :goto_13

    nop

    :pswitch_data_6e
    .packed-switch 0x7f0b001d
        :pswitch_14
    .end packed-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_31
        :pswitch_30
        :pswitch_45
        :pswitch_3b
    .end packed-switch
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

    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onResume()V

    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_11

    invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;-><init>(Lcom/facebook/katana/EventDetailsActivity;Lcom/facebook/katana/EventDetailsActivity$EventsAppSessionListener;)V

    iput-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    :cond_1d
    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    goto :goto_10
.end method

.method public bridge synthetic onSearchRequested()Z
    .registers 2

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public prepareEvent(Z)V
    .registers 16

    const/4 v13, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/facebook/katana/EventDetailsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/facebook/katana/EventDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/EventDetailsAdapter$EventQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, ""

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/EventDetailsActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4a

    :cond_2d
    if-eqz p1, :cond_3f

    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->getEvents(Landroid/content/Context;J)Ljava/lang/String;

    goto :goto_c

    :cond_3f
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/facebook/katana/EventDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_c

    :cond_4a
    new-instance v5, Lcom/facebook/katana/EventDetailsAdapter;

    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->getPhotosCache()Lcom/facebook/katana/binding/StreamPhotosCache;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/katana/EventDetailsActivity;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v11

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/facebook/katana/EventDetailsAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;Landroid/database/Cursor;JJ)V

    iput-object v5, p0, Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;

    invoke-virtual {p0}, Lcom/facebook/katana/EventDetailsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/EventDetailsAdapter;->getFooterView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v13}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/facebook/katana/EventDetailsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/EventDetailsAdapter;->getHeaderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v13}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/facebook/katana/EventDetailsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/EventDetailsAdapter;->getRsvpView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/facebook/katana/EventDetailsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/EventDetailsAdapter;->getHeaderDivider()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v13}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/facebook/katana/EventDetailsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/facebook/katana/EventDetailsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/facebook/katana/EventDetailsActivity;->mAdapter:Lcom/facebook/katana/EventDetailsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/EventDetailsAdapter;->setEventInfo()V

    goto/16 :goto_c
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
