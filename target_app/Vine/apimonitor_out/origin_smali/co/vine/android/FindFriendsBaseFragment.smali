.class public abstract Lco/vine/android/FindFriendsBaseFragment;
.super Lco/vine/android/BaseCursorListFragment;
.source "FindFriendsBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
.implements Lco/vine/android/FindFriendsNUXActivity$FilterableFriendsList;


# static fields
.field protected static final DIALOG_STORE_CONTACTS:I = 0x1

.field protected static final EVENT_SOURCE_TITLE:Ljava/lang/String; = "Find Friends: Address"

.field protected static final LOADER_ID_FILTER:I = 0x1

.field protected static final STATE_FETCHED:Ljava/lang/String; = "fetch"

.field protected static final STATE_FRIENDSHIPS:Ljava/lang/String; = "friendships"


# instance fields
.field protected mActivity:Lco/vine/android/FindFriendsBaseActivity;

.field protected mBold:[Landroid/text/style/StyleSpan;

.field protected mFetched:Z

.field protected mFriendships:Lco/vine/android/Friendships;

.field protected mNewFollowsCount:I

.field protected mProjection:[Ljava/lang/String;

.field protected volatile mSearchQuery:Ljava/lang/String;

.field protected mSortOrder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/BaseCursorListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected fetchContent(I)V
    .registers 5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/FindFriendsBaseFragment;->mFetched:Z

    invoke-virtual {p0, p1}, Lco/vine/android/FindFriendsBaseFragment;->showProgress(I)V

    packed-switch p1, :pswitch_data_36

    :goto_9
    return-void

    :pswitch_a
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/FindFriendsBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0f0037

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0e00f4

    invoke-virtual {p0, v1}, Lco/vine/android/FindFriendsBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iput-object v0, p0, Lco/vine/android/FindFriendsBaseFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lco/vine/android/FindFriendsBaseFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/FindFriendsBaseFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/client/AppController;->fetchAddressFriends(Lco/vine/android/client/Session;)Ljava/lang/String;

    goto :goto_9

    nop

    :pswitch_data_36
    .packed-switch 0x3
        :pswitch_a
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 9

    invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lco/vine/android/FindFriendsBaseFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_21

    sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$UsersQuery;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/FindFriendsBaseFragment;->mProjection:[Ljava/lang/String;

    const-string v0, "username ASC"

    iput-object v0, p0, Lco/vine/android/FindFriendsBaseFragment;->mSortOrder:Ljava/lang/String;

    new-instance v0, Lco/vine/android/UsersAdapter;

    invoke-virtual {p0}, Lco/vine/android/FindFriendsBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/FindFriendsBaseFragment;->mAppController:Lco/vine/android/client/AppController;

    const/4 v3, 0x1

    iget-object v5, p0, Lco/vine/android/FindFriendsBaseFragment;->mFriendships:Lco/vine/android/Friendships;

    const/4 v6, 0x0

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lco/vine/android/UsersAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;ZLandroid/view/View$OnClickListener;Lco/vine/android/Friendships;I)V

    iput-object v0, p0, Lco/vine/android/FindFriendsBaseFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    :cond_21
    iget-object v0, p0, Lco/vine/android/FindFriendsBaseFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/vine/android/FindFriendsBaseFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lco/vine/android/FindFriendsBaseActivity;

    iput-object p1, p0, Lco/vine/android/FindFriendsBaseFragment;->mActivity:Lco/vine/android/FindFriendsBaseActivity;

    return-void
.end method

.method public abstract onClick(Landroid/view/View;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onCreate(Landroid/os/Bundle;)V

    new-array v0, v3, [Landroid/text/style/StyleSpan;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lco/vine/android/FindFriendsBaseFragment;->mBold:[Landroid/text/style/StyleSpan;

    if-eqz p1, :cond_41

    const-string v0, "fetch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "fetch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lco/vine/android/FindFriendsBaseFragment;->mFetched:Z

    :cond_22
    const-string v0, "friendships"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "friendships"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lco/vine/android/Friendships;

    iput-object v0, p0, Lco/vine/android/FindFriendsBaseFragment;->mFriendships:Lco/vine/android/Friendships;

    :cond_34
    :goto_34
    iget-object v0, p0, Lco/vine/android/FindFriendsBaseFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/FindFriendsBaseFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->removeUsers(Lco/vine/android/client/Session;I)Ljava/lang/String;

    return-void

    :cond_41
    new-instance v0, Lco/vine/android/Friendships;

    invoke-direct {v0}, Lco/vine/android/Friendships;-><init>()V

    iput-object v0, p0, Lco/vine/android/FindFriendsBaseFragment;->mFriendships:Lco/vine/android/Friendships;

    goto :goto_34
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
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

    packed-switch p1, :pswitch_data_58

    sget-object v0, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FIND_FRIENDS_ADDRESS:Landroid/net/Uri;

    iget-object v1, p0, Lco/vine/android/FindFriendsBaseFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/FindFriendsBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lco/vine/android/FindFriendsBaseFragment;->mProjection:[Ljava/lang/String;

    iget-object v6, p0, Lco/vine/android/FindFriendsBaseFragment;->mSortOrder:Ljava/lang/String;

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    return-object v0

    :pswitch_1f
    sget-object v0, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FRIENDS_FILTER:Landroid/net/Uri;

    iget-object v1, p0, Lco/vine/android/FindFriendsBaseFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v0, "filter"

    iget-object v1, p0, Lco/vine/android/FindFriendsBaseFragment;->mSearchQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "group_type"

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/FindFriendsBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/FindFriendsBaseFragment;->mProjection:[Ljava/lang/String;

    iget-object v6, p0, Lco/vine/android/FindFriendsBaseFragment;->mSortOrder:Ljava/lang/String;

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const v1, 0x7f03003d

    invoke-virtual {p0, p1, v1, p2}, Lco/vine/android/FindFriendsBaseFragment;->createView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/FindFriendsBaseFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-object v0
.end method

.method public onDialogDone(Landroid/content/DialogInterface;II)V
    .registers 10

    invoke-virtual {p0}, Lco/vine/android/FindFriendsBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {p0}, Lco/vine/android/FindFriendsBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/FindFriendsBaseFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v5

    invoke-virtual {v5}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v1, v0}, Lco/vine/android/client/VineAccountHelper;->setDidShowStoreContactsPrompt(Landroid/accounts/AccountManager;Landroid/accounts/Account;)V

    packed-switch p2, :pswitch_data_46

    :goto_20
    return-void

    :pswitch_21
    const/4 v4, -0x1

    if-ne p3, v4, :cond_44

    const/4 v3, 0x1

    :goto_25
    iget-object v4, p0, Lco/vine/android/FindFriendsBaseFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4, v3}, Lco/vine/android/client/AppController;->updateEnableAddressBook(Z)Ljava/lang/String;

    invoke-virtual {p0}, Lco/vine/android/FindFriendsBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "enable_address_book"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lco/vine/android/FindFriendsBaseFragment;->fetchContent(I)V

    goto :goto_20

    :cond_44
    const/4 v3, 0x0

    goto :goto_25

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_21
    .end packed-switch
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

    move-result-object v1

    instance-of v1, v1, Lco/vine/android/widget/UserViewHolder;

    if-eqz v1, :cond_13

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/UserViewHolder;

    iget-wide v1, v0, Lco/vine/android/widget/UserViewHolder;->userId:J

    invoke-virtual {p0, v1, v2}, Lco/vine/android/FindFriendsBaseFragment;->startProfileActivity(J)V

    :cond_13
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5
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

    invoke-super {p0, p1, p2}, Lco/vine/android/BaseCursorListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lco/vine/android/FindFriendsBaseFragment;->mActivity:Lco/vine/android/FindFriendsBaseActivity;

    instance-of v0, v0, Lco/vine/android/FindFriendsNUXActivity;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lco/vine/android/FindFriendsBaseFragment;->mActivity:Lco/vine/android/FindFriendsBaseActivity;

    check-cast v0, Lco/vine/android/FindFriendsNUXActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/vine/android/FindFriendsNUXActivity;->showSearchIcon(Z)V

    :cond_17
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lco/vine/android/FindFriendsBaseFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/FindFriendsBaseFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "fetch"

    iget-boolean v1, p0, Lco/vine/android/FindFriendsBaseFragment;->mFetched:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "friendships"

    iget-object v1, p0, Lco/vine/android/FindFriendsBaseFragment;->mFriendships:Lco/vine/android/Friendships;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public abstract onTextChanged(Ljava/lang/CharSequence;III)V
.end method

.method public shouldShowSearchIcon()Z
    .registers 2

    iget-object v0, p0, Lco/vine/android/FindFriendsBaseFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lco/vine/android/FindFriendsBaseFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected abstract startProfileActivity(J)V
.end method
