.class public Lco/vine/android/FriendsRecipientPickerFragment;
.super Lco/vine/android/BaseRecipientPickerFragment;
.source "FriendsRecipientPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/FriendsRecipientPickerFragment$FilterRunnable;
    }
.end annotation


# static fields
.field private static final LOADER_ID_FILTER_FRIENDS:I = 0x1


# instance fields
.field private mAnchorManager:Lco/vine/android/util/StringAnchorManager;

.field private mCallback:Lco/vine/android/RecipientPickerActivity;

.field private mFindFriendsCta:Landroid/widget/Button;

.field private mFriendsPickerAdapter:Lco/vine/android/FriendsPickerAdapter;

.field private mIsFetched:Z

.field private mIsFiltering:Z

.field private mIsLoaderReady:Z

.field private mLastFiredQuery:Ljava/lang/String;

.field private mRefreshingTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/BaseRecipientPickerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lco/vine/android/FriendsRecipientPickerFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mLastFiredQuery:Ljava/lang/String;

    return-object p1
.end method

.method private fetchContent(I)V
    .registers 6

    invoke-virtual {p0, p1}, Lco/vine/android/FriendsRecipientPickerFragment;->hasPendingRequest(I)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_38

    const/4 v0, 0x1

    :goto_21
    iget-object v2, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mAppController:Lco/vine/android/client/AppController;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lco/vine/android/client/AppController;->fetchFriends(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1}, Lco/vine/android/FriendsRecipientPickerFragment;->showProgress(I)V

    invoke-virtual {p0, v1, p1}, Lco/vine/android/FriendsRecipientPickerFragment;->addRequest(Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_6

    :pswitch_31
    const/4 v0, 0x1

    goto :goto_21

    :pswitch_33
    const/4 v0, 0x1

    goto :goto_21

    :pswitch_35
    const/4 v0, 0x3

    goto :goto_21

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_35
        :pswitch_33
        :pswitch_31
        :pswitch_33
    .end packed-switch
.end method

.method private showFindFriendsCta(Z)V
    .registers 4

    iget-object v1, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mFindFriendsCta:Landroid/widget/Button;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method


# virtual methods
.method protected handleFocus()V
    .registers 3

    const/4 v1, 0x3

    iget-boolean v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mIsFetched:Z

    if-nez v0, :cond_b

    invoke-virtual {p0, v1}, Lco/vine/android/FriendsRecipientPickerFragment;->showProgress(I)V

    invoke-direct {p0, v1}, Lco/vine/android/FriendsRecipientPickerFragment;->fetchContent(I)V

    :cond_b
    invoke-virtual {p0, v1}, Lco/vine/android/FriendsRecipientPickerFragment;->hideProgress(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lco/vine/android/BaseRecipientPickerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/vine/android/FriendsRecipientPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lco/vine/android/provider/Vine;->getUserSectionsAnchorManager(Landroid/content/Context;I)Lco/vine/android/util/StringAnchorManager;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mAnchorManager:Lco/vine/android/util/StringAnchorManager;

    sget-object v0, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FRIENDS:Landroid/net/Uri;

    iget-object v1, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mContentUri:Landroid/net/Uri;

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$UsersQuery;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mProjection:[Ljava/lang/String;

    invoke-virtual {p0}, Lco/vine/android/FriendsRecipientPickerFragment;->refreshSelections()V

    iget-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->disablePTR()V

    const-string v0, "last_section_refresh DESC, section_index ASC"

    iput-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mSortOrder:Ljava/lang/String;

    iget-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_43

    new-instance v0, Lco/vine/android/FriendsPickerAdapter;

    invoke-virtual {p0}, Lco/vine/android/FriendsRecipientPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-direct {v0, v1, v2, v3, p0}, Lco/vine/android/FriendsPickerAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;ILco/vine/android/FriendsRecipientPickerFragment;)V

    iput-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mFriendsPickerAdapter:Lco/vine/android/FriendsPickerAdapter;

    iget-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mFriendsPickerAdapter:Lco/vine/android/FriendsPickerAdapter;

    iput-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    :cond_43
    iget-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lco/vine/android/BaseRecipientPickerFragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lco/vine/android/RecipientPickerActivity;

    iput-object p1, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mCallback:Lco/vine/android/RecipientPickerActivity;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    :goto_7
    return-void

    :pswitch_8
    const-string v0, "VM Share"

    invoke-static {v0}, Lco/vine/android/util/FlurryUtils;->trackVisitFindFriends(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/FriendsRecipientPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/vine/android/FindFriendsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lco/vine/android/FriendsRecipientPickerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    :pswitch_data_1c
    .packed-switch 0x7f0a0145
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_42

    invoke-super {p0, p1, p2}, Lco/vine/android/BaseRecipientPickerFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v0

    :goto_8
    return-object v0

    :pswitch_9
    sget-object v0, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FRIENDS_FILTER:Landroid/net/Uri;

    iget-object v1, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v0, "filter"

    iget-object v1, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "group_type"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/FriendsRecipientPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mProjection:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const v0, 0x7f03007c

    invoke-virtual {p0, p1, v0, p2}, Lco/vine/android/FriendsRecipientPickerFragment;->createView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onGetFriendsComplete(I)V
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mIsFetched:Z

    iget-wide v3, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mRefreshingTime:J

    iget-object v5, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mAnchorManager:Lco/vine/android/util/StringAnchorManager;

    invoke-virtual {v5}, Lco/vine/android/util/StringAnchorManager;->getRefreshTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_28

    move v0, v1

    :goto_11
    const-string v3, "Has refresh time changed? {}"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lco/vine/android/FriendsRecipientPickerFragment;->hideProgress(I)V

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lco/vine/android/FriendsRecipientPickerFragment;->refreshSelections()V

    iput-boolean v1, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mIsLoaderReady:Z

    invoke-virtual {p0, v2}, Lco/vine/android/FriendsRecipientPickerFragment;->initLoader(I)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    move v0, v2

    goto :goto_11

    :cond_2a
    iget-boolean v3, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mIsLoaderReady:Z

    if-nez v3, :cond_27

    iput-boolean v1, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mIsLoaderReady:Z

    invoke-virtual {p0, v2}, Lco/vine/android/FriendsRecipientPickerFragment;->initLoader(I)V

    goto :goto_27
.end method

.method public onGetFriendsTypeAheadComplete(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_17

    iget-object v1, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mLastFiredQuery:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v1, Lco/vine/android/provider/FriendsPickerExclusiveCursor;

    invoke-direct {v1, p2}, Lco/vine/android/provider/FriendsPickerExclusiveCursor;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v3, v1}, Lco/vine/android/FriendsRecipientPickerFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    :goto_14
    iput-object v3, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mLastFiredQuery:Ljava/lang/String;

    return-void

    :cond_17
    invoke-virtual {p0}, Lco/vine/android/FriendsRecipientPickerFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0, v2}, Lco/vine/android/FriendsRecipientPickerFragment;->restartLoader(I)Z

    goto :goto_14

    :cond_2b
    invoke-virtual {p0, v2}, Lco/vine/android/FriendsRecipientPickerFragment;->initLoader(I)V

    goto :goto_14
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

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/FriendsPickerViewHolder;

    iget-object v1, v0, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    invoke-virtual {p0, v1}, Lco/vine/android/FriendsRecipientPickerFragment;->isRecipientSelected(Lco/vine/android/api/VineRecipient;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    invoke-virtual {p0, v1}, Lco/vine/android/FriendsRecipientPickerFragment;->removeRecipient(Lco/vine/android/api/VineRecipient;)V

    invoke-virtual {p0}, Lco/vine/android/FriendsRecipientPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/vine/android/FriendsPickerViewHolder;->setSelected(Landroid/content/res/Resources;Z)V

    :goto_1b
    return-void

    :cond_1c
    iget-object v1, v0, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    invoke-virtual {p0, v1}, Lco/vine/android/FriendsRecipientPickerFragment;->addRecipient(Lco/vine/android/api/VineRecipient;)V

    invoke-virtual {p0}, Lco/vine/android/FriendsRecipientPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lco/vine/android/FriendsPickerViewHolder;->setSelected(Landroid/content/res/Resources;Z)V

    goto :goto_1b
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x1

    iget-boolean v2, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mIsFiltering:Z

    if-eqz v2, :cond_7

    if-nez p1, :cond_38

    :cond_7
    iget-boolean v2, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mIsFiltering:Z

    if-nez v2, :cond_d

    if-eqz p1, :cond_38

    :cond_d
    instance-of v2, p2, Lco/vine/android/provider/FriendsPickerExclusiveCursor;

    if-nez v2, :cond_17

    new-instance v1, Lco/vine/android/provider/FriendsPickerExclusiveCursor;

    invoke-direct {v1, p2}, Lco/vine/android/provider/FriendsPickerExclusiveCursor;-><init>(Landroid/database/Cursor;)V

    move-object p2, v1

    :cond_17
    move-object v2, p2

    check-cast v2, Lco/vine/android/provider/FriendsPickerExclusiveCursor;

    invoke-virtual {v2}, Lco/vine/android/provider/FriendsPickerExclusiveCursor;->prepare()V

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v3, :cond_39

    move v2, v3

    :goto_24
    invoke-virtual {p0, v2}, Lco/vine/android/FriendsRecipientPickerFragment;->showSadface(Z)V

    const/16 v2, 0xa

    if-ge v0, v2, :cond_35

    iget-object v2, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mCallback:Lco/vine/android/RecipientPickerActivity;

    const-string v4, "address_book"

    invoke-virtual {v2, v4}, Lco/vine/android/RecipientPickerActivity;->showPage(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lco/vine/android/FriendsRecipientPickerFragment;->showFindFriendsCta(Z)V

    :cond_35
    invoke-super {p0, p1, p2}, Lco/vine/android/BaseRecipientPickerFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    :cond_38
    return-void

    :cond_39
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lco/vine/android/FriendsRecipientPickerFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onRecipientItemRemoved(Lco/vine/android/api/VineRecipient;)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mFriendsPickerAdapter:Lco/vine/android/FriendsPickerAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/FriendsPickerAdapter;->onRecipientItemRemoved(Lco/vine/android/api/VineRecipient;)V

    return-void
.end method

.method protected onScrollLastItem(Landroid/database/Cursor;)V
    .registers 3

    iget-boolean v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mIsFiltering:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mAnchorManager:Lco/vine/android/util/StringAnchorManager;

    invoke-virtual {v0}, Lco/vine/android/util/StringAnchorManager;->haveMore()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lco/vine/android/FriendsRecipientPickerFragment;->fetchContent(I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lco/vine/android/FriendsRecipientPickerFragment;->showProgress(I)V

    :cond_14
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lco/vine/android/BaseRecipientPickerFragment;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mIsFiltering:Z

    iget-object v1, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lco/vine/android/FriendsRecipientPickerFragment$FilterRunnable;

    invoke-direct {v2, p0, v0}, Lco/vine/android/FriendsRecipientPickerFragment$FilterRunnable;-><init>(Lco/vine/android/FriendsRecipientPickerFragment;Ljava/lang/String;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1d
    return-void

    :cond_1e
    iput-boolean v2, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mIsFiltering:Z

    invoke-virtual {p0, v2}, Lco/vine/android/FriendsRecipientPickerFragment;->restartLoader(I)Z

    goto :goto_1d
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lco/vine/android/BaseRecipientPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0a0145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mFindFriendsCta:Landroid/widget/Button;

    iget-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mFindFriendsCta:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mFindFriendsCta:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->bringToFront()V

    return-void
.end method

.method public refresh()V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lco/vine/android/FriendsRecipientPickerFragment;->showProgress(I)V

    invoke-virtual {p0}, Lco/vine/android/FriendsRecipientPickerFragment;->handleFocus()V

    return-void
.end method

.method public refreshSelections()V
    .registers 5

    iget-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mAnchorManager:Lco/vine/android/util/StringAnchorManager;

    invoke-virtual {v0}, Lco/vine/android/util/StringAnchorManager;->getRefreshTime()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mRefreshingTime:J

    const-string v0, "Refreshing time: {}."

    iget-wide v1, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mRefreshingTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "section_type=0 AND last_section_refresh=?"

    iput-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mSelection:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mRefreshingTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment;->mSelArgs:[Ljava/lang/String;

    return-void
.end method

.method protected showSadface(Z)V
    .registers 2

    invoke-super {p0, p1, p1}, Lco/vine/android/BaseRecipientPickerFragment;->showSadface(ZZ)V

    invoke-direct {p0, p1}, Lco/vine/android/FriendsRecipientPickerFragment;->showFindFriendsCta(Z)V

    return-void
.end method
