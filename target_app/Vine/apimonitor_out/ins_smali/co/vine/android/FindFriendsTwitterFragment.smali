.class public Lco/vine/android/FindFriendsTwitterFragment;
.super Lco/vine/android/BaseCursorListFragment;
.source "FindFriendsTwitterFragment.java"
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lco/vine/android/FindFriendsNUXActivity$FilterableFriendsList;
.field public static final ARG_FROM_SIGN_UP:Ljava/lang/String; = "from_sign_up"
.field private static final EVENT_SOURCE_TITLE:Ljava/lang/String; = "Find Friends: Twitter"
.field protected static final LOADER_ID_FILTER:I = 0x1
.field private static final STATE_FETCHED:Ljava/lang/String; = "fetch"
.field private static final STATE_FRIENDSHIPS:Ljava/lang/String; = "friendships"
.field private static final STATE_FROM_SIGN_UP:Ljava/lang/String; = "from_sign_up"
.field private mActivity:Lco/vine/android/FindFriendsNUXActivity;
.field private mBold:[Landroid/text/style/StyleSpan;
.field private mContactsCountContainer:Landroid/widget/RelativeLayout;
.field private mContactsText:Landroid/widget/TextView;
.field private mFetched:Z
.field private mFilterLoaderIsReady:Z
.field private mFilterRunnable:Ljava/lang/Runnable;
.field private mFriendships:Lco/vine/android/Friendships;
.field private mFromSignup:Z
.field private mNewFollowsCount:I
.field private mProjection:[Ljava/lang/String;
.field private volatile mSearchQuery:Ljava/lang/String;
.field private mSecret:Ljava/lang/String;
.field private mSelectAllToggle:Landroid/widget/TextView;
.field private mSelected:Z
.field private mSortOrder:Ljava/lang/String;
.field private mToken:Ljava/lang/String;
.field private mTwitter:Lcom/twitter/android/sdk/Twitter;
.field private mTwitterFriends:Ljava/util/ArrayList;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lco/vine/android/BaseCursorListFragment;-><init>()V
new-instance v0, Lco/vine/android/FindFriendsTwitterFragment$1;
invoke-direct {v0, p0}, Lco/vine/android/FindFriendsTwitterFragment$1;-><init>(Lco/vine/android/FindFriendsTwitterFragment;)V
iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFilterRunnable:Ljava/lang/Runnable;
return-void
.end method
.method static synthetic access$000(Lco/vine/android/FindFriendsTwitterFragment;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFilterLoaderIsReady:Z
return v0
.end method
.method static synthetic access$002(Lco/vine/android/FindFriendsTwitterFragment;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFilterLoaderIsReady:Z
return p1
.end method
.method static synthetic access$100(Lco/vine/android/FindFriendsTwitterFragment;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFromSignup:Z
return v0
.end method
.method static synthetic access$200(Lco/vine/android/FindFriendsTwitterFragment;)Landroid/widget/RelativeLayout;
.registers 2
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mContactsCountContainer:Landroid/widget/RelativeLayout;
return-object v0
.end method
.method static synthetic access$300(Lco/vine/android/FindFriendsTwitterFragment;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mContactsText:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$400(Lco/vine/android/FindFriendsTwitterFragment;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSelected:Z
return v0
.end method
.method static synthetic access$500(Lco/vine/android/FindFriendsTwitterFragment;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSelectAllToggle:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$600(Lco/vine/android/FindFriendsTwitterFragment;)Lco/vine/android/Friendships;
.registers 2
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;
return-object v0
.end method
.method static synthetic access$700(Lco/vine/android/FindFriendsTwitterFragment;)Lco/vine/android/FindFriendsNUXActivity;
.registers 2
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mActivity:Lco/vine/android/FindFriendsNUXActivity;
return-object v0
.end method
.method static synthetic access$800(Lco/vine/android/FindFriendsTwitterFragment;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mTwitterFriends:Ljava/util/ArrayList;
return-object v0
.end method
.method private fetchContent(I)V
.registers 10
const/4 v6, 0x1
iput-boolean v6, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFetched:Z
packed-switch p1, :pswitch_data_62
:goto_6
return-void
:pswitch_7
invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v4, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v4
invoke-virtual {v4}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
move-result-object v0
if-nez v0, :cond_33
new-instance v4, Lco/vine/android/VineLoggingException;
const-string v5, "Find Friends Twitter account was null"
invoke-direct {v4, v5}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V
const-string v5, "Find Friends Twitter account was null. UniqueLogin: {} "
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
aput-object v3, v6, v7
invoke-static {v4, v5, v6}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
const v4, 0x7f0e00ee
invoke-static {v1, v4}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
goto :goto_6
:cond_33
invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;
move-result-object v2
const-string v4, "account_t_token"
invoke-virtual {v2, v0, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lco/vine/android/FindFriendsTwitterFragment;->mToken:Ljava/lang/String;
const-string v4, "account_t_secret"
invoke-virtual {v2, v0, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSecret:Ljava/lang/String;
iget-object v4, p0, Lco/vine/android/FindFriendsTwitterFragment;->mToken:Ljava/lang/String;
if-eqz v4, :cond_53
iget-object v4, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSecret:Ljava/lang/String;
if-nez v4, :cond_59
:cond_53
iget-object v4, p0, Lco/vine/android/FindFriendsTwitterFragment;->mTwitter:Lcom/twitter/android/sdk/Twitter;
invoke-static {v4, v1}, Lco/vine/android/client/AppController;->startTwitterAuthWithFinish(Lcom/twitter/android/sdk/Twitter;Landroid/app/Activity;)V
goto :goto_6
:cond_59
iget-object v4, p0, Lco/vine/android/FindFriendsTwitterFragment;->mToken:Ljava/lang/String;
iget-object v5, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSecret:Ljava/lang/String;
invoke-direct {p0, v4, v5}, Lco/vine/android/FindFriendsTwitterFragment;->fetchTwitterFriends(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
nop
:pswitch_data_62
.packed-switch 0x3
:pswitch_7
.end packed-switch
.end method
.method private fetchTwitterFriends(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
new-instance v0, Landroid/app/ProgressDialog;
invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x7f0f0037
invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V
const v1, 0x7f0e00f5
invoke-virtual {p0, v1}, Lco/vine/android/FindFriendsTwitterFragment;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mProgressDialog:Landroid/app/ProgressDialog;
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;
iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v2
invoke-virtual {v1, v2, p1, p2}, Lco/vine/android/client/AppController;->fetchTwitterFriends(Lco/vine/android/client/Session;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
return-void
.end method
.method private startProfileActivity(J)V
.registers 6
invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const-string v1, "Find Friends: Twitter"
const/4 v2, 0x0
invoke-static {v0, p1, p2, v1, v2}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;JLjava/lang/String;Z)V
return-void
.end method
.method public getFirstItemPosition()Lcom/twitter/android/widget/ItemPosition;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 9
invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onActivityCreated(Landroid/os/Bundle;)V
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
if-nez v0, :cond_21
sget-object v0, Lco/vine/android/provider/VineDatabaseSQL$UsersQuery;->PROJECTION:[Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mProjection:[Ljava/lang/String;
const-string v0, "username ASC"
iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSortOrder:Ljava/lang/String;
new-instance v0, Lco/vine/android/UsersAdapter;
invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;
const/4 v3, 0x1
iget-object v5, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;
const/4 v6, 0x0
move-object v4, p0
invoke-direct/range {v0 .. v6}, Lco/vine/android/UsersAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;ZLandroid/view/View$OnClickListener;Lco/vine/android/Friendships;I)V
iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
:cond_21
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mListView:Landroid/widget/ListView;
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 6
const/4 v0, -0x1
packed-switch p1, :pswitch_data_4c
invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseCursorListFragment;->onActivityResult(IILandroid/content/Intent;)V
:goto_7
:cond_7
return-void
:pswitch_8
if-ne p2, v0, :cond_22
const-string v0, "tk"
invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mToken:Ljava/lang/String;
const-string v0, "ts"
invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSecret:Ljava/lang/String;
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mToken:Ljava/lang/String;
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSecret:Ljava/lang/String;
invoke-direct {p0, v0, v1}, Lco/vine/android/FindFriendsTwitterFragment;->fetchTwitterFriends(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_7
:cond_22
if-eqz p2, :cond_7
invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->dismissDialog()V
invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0e00f0
invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
goto :goto_7
:pswitch_32
if-ne p2, v0, :cond_7
const-string v0, "token"
invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mToken:Ljava/lang/String;
const-string v0, "secret"
invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSecret:Ljava/lang/String;
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mToken:Ljava/lang/String;
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSecret:Ljava/lang/String;
invoke-direct {p0, v0, v1}, Lco/vine/android/FindFriendsTwitterFragment;->fetchTwitterFriends(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_7
:pswitch_data_4c
.packed-switch 0x1
:pswitch_8
:pswitch_32
.end packed-switch
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 3
invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onAttach(Landroid/app/Activity;)V
instance-of v0, p1, Lco/vine/android/FindFriendsNUXActivity;
if-eqz v0, :cond_b
check-cast p1, Lco/vine/android/FindFriendsNUXActivity;
iput-object p1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mActivity:Lco/vine/android/FindFriendsNUXActivity;
:cond_b
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/FindFriendsTwitterFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v2
sparse-switch v2, :sswitch_data_96
:cond_8
:goto_8
const-string v1, " - Lco/vine/android/FindFriendsTwitterFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_9
const/4 v2, 0x3
invoke-direct {p0, v2}, Lco/vine/android/FindFriendsTwitterFragment;->fetchContent(I)V
:sswitch_d
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/FollowButtonViewHolder;
if-eqz v0, :cond_8
iget-boolean v2, v0, Lco/vine/android/FollowButtonViewHolder;->following:Z
if-nez v2, :cond_45
iget-boolean v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFromSignup:Z
if-eqz v2, :cond_37
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mActivity:Lco/vine/android/FindFriendsNUXActivity;
iget-wide v2, v0, Lco/vine/android/FollowButtonViewHolder;->userId:J
invoke-virtual {v1, v2, v3}, Lco/vine/android/FindFriendsNUXActivity;->addUserToFollow(J)V
:goto_24
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;
iget-wide v2, v0, Lco/vine/android/FollowButtonViewHolder;->userId:J
invoke-virtual {v1, v2, v3}, Lco/vine/android/Friendships;->addFollowing(J)V
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V
iget v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mNewFollowsCount:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mNewFollowsCount:I
goto :goto_8
:cond_37
iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;
iget-object v3, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v3
iget-wide v4, v0, Lco/vine/android/FollowButtonViewHolder;->userId:J
invoke-virtual {v2, v3, v4, v5, v1}, Lco/vine/android/client/AppController;->followUser(Lco/vine/android/client/Session;JZ)Ljava/lang/String;
goto :goto_24
:cond_45
iget-boolean v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFromSignup:Z
if-eqz v2, :cond_5d
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mActivity:Lco/vine/android/FindFriendsNUXActivity;
iget-wide v2, v0, Lco/vine/android/FollowButtonViewHolder;->userId:J
invoke-virtual {v1, v2, v3}, Lco/vine/android/FindFriendsNUXActivity;->removeUserToFollow(J)V
:goto_50
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;
iget-wide v2, v0, Lco/vine/android/FollowButtonViewHolder;->userId:J
invoke-virtual {v1, v2, v3}, Lco/vine/android/Friendships;->removeFollowing(J)V
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V
goto :goto_8
:cond_5d
iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;
iget-object v3, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v3
iget-wide v4, v0, Lco/vine/android/FollowButtonViewHolder;->userId:J
invoke-virtual {v2, v3, v4, v5, v1}, Lco/vine/android/client/AppController;->unfollowUser(Lco/vine/android/client/Session;JZ)Ljava/lang/String;
goto :goto_50
:sswitch_6b
iget-boolean v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSelected:Z
if-nez v2, :cond_8f
:goto_6f
iput-boolean v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSelected:Z
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mActivity:Lco/vine/android/FindFriendsNUXActivity;
iget-boolean v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSelected:Z
iget-object v3, p0, Lco/vine/android/FindFriendsTwitterFragment;->mTwitterFriends:Ljava/util/ArrayList;
iget-object v4, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;
invoke-virtual {v1, v2, v3, v4}, Lco/vine/android/FindFriendsNUXActivity;->toggleFollowAll(ZLjava/util/ArrayList;Lco/vine/android/Friendships;)V
iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSelectAllToggle:Landroid/widget/TextView;
iget-boolean v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSelected:Z
if-eqz v1, :cond_91
const v1, 0x7f0e00b8
:goto_85
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V
goto/16 :goto_8
:cond_8f
const/4 v1, 0x0
goto :goto_6f
:cond_91
const v1, 0x7f0e01bc
goto :goto_85
nop
:sswitch_data_96
.sparse-switch
0x7f0a00f0 -> :sswitch_6b
0x7f0a00f6 -> :sswitch_9
0x7f0a022d -> :sswitch_d
.end sparse-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lco/vine/android/FindFriendsTwitterFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x1
invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onCreate(Landroid/os/Bundle;)V
new-array v1, v4, [Landroid/text/style/StyleSpan;
const/4 v2, 0x0
new-instance v3, Landroid/text/style/StyleSpan;
invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V
aput-object v3, v1, v2
iput-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mBold:[Landroid/text/style/StyleSpan;
if-eqz p1, :cond_6c
const-string v1, "fetch"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_22
const-string v1, "fetch"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFetched:Z
:cond_22
const-string v1, "friendships"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_34
const-string v1, "friendships"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lco/vine/android/Friendships;
iput-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;
:cond_34
const-string v1, "from_sign_up"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_44
const-string v1, "from_sign_up"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFromSignup:Z
:cond_44
:goto_44
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;
iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v2
const/4 v3, 0x6
invoke-virtual {v1, v2, v3}, Lco/vine/android/client/AppController;->removeUsers(Lco/vine/android/client/Session;I)Ljava/lang/String;
new-instance v1, Lcom/twitter/android/sdk/Twitter;
sget-object v2, Lco/vine/android/client/TwitterVineApp;->API_KEY:Ljava/lang/String;
sget-object v3, Lco/vine/android/client/TwitterVineApp;->API_SECRET:Ljava/lang/String;
invoke-direct {v1, v2, v3}, Lcom/twitter/android/sdk/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iput-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mTwitter:Lcom/twitter/android/sdk/Twitter;
new-instance v1, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;
invoke-direct {v1, p0}, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;-><init>(Lco/vine/android/FindFriendsTwitterFragment;)V
iput-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
iput-boolean v4, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSelected:Z
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mTwitterFriends:Ljava/util/ArrayList;
const-string v1, " - Lco/vine/android/FindFriendsTwitterFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_6c
new-instance v1, Lco/vine/android/Friendships;
invoke-direct {v1}, Lco/vine/android/Friendships;-><init>()V
iput-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;
invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_44
const-string v1, "from_sign_up"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFromSignup:Z
goto :goto_44
.end method
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
.registers 10
const/4 v4, 0x0
packed-switch p1, :pswitch_data_58
sget-object v0, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FIND_FRIENDS_TWITTER:Landroid/net/Uri;
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v5
invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v2
new-instance v0, Landroid/support/v4/content/CursorLoader;
invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v3, p0, Lco/vine/android/FindFriendsTwitterFragment;->mProjection:[Ljava/lang/String;
iget-object v6, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSortOrder:Ljava/lang/String;
move-object v5, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
:goto_1e
return-object v0
:pswitch_1f
sget-object v0, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FRIENDS_FILTER:Landroid/net/Uri;
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v5
invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v2
const-string v0, "filter"
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSearchQuery:Ljava/lang/String;
invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
const-string v0, "group_type"
const/4 v1, 0x6
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
new-instance v0, Landroid/support/v4/content/CursorLoader;
invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v2
iget-object v3, p0, Lco/vine/android/FindFriendsTwitterFragment;->mProjection:[Ljava/lang/String;
iget-object v6, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSortOrder:Ljava/lang/String;
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
.registers 9
const v2, 0x7f030041
const/4 v3, 0x0
invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v2, 0x102000a
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ListView;
iput-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mListView:Landroid/widget/ListView;
iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mListView:Landroid/widget/ListView;
const v3, 0x1020004
invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
const v2, 0x7f0a00ee
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/RelativeLayout;
iput-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mContactsCountContainer:Landroid/widget/RelativeLayout;
const v2, 0x7f0a00ef
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mContactsText:Landroid/widget/TextView;
const v2, 0x7f0a00f0
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSelectAllToggle:Landroid/widget/TextView;
iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSelectAllToggle:Landroid/widget/TextView;
invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0a00f6
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mBold:[Landroid/text/style/StyleSpan;
const v3, 0x7f0e00ed
invoke-virtual {p0, v3}, Lco/vine/android/FindFriendsTwitterFragment;->getString(I)Ljava/lang/String;
move-result-object v3
const/16 v4, 0x22
invoke-static {v2, v3, v4}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-object v1
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/FindFriendsTwitterFragment; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
instance-of v1, v1, Lco/vine/android/widget/UserViewHolder;
if-eqz v1, :cond_13
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/widget/UserViewHolder;
iget-wide v1, v0, Lco/vine/android/widget/UserViewHolder;->userId:J
invoke-direct {p0, v1, v2}, Lco/vine/android/FindFriendsTwitterFragment;->startProfileActivity(J)V
:cond_13
const-string v1, " - Lco/vine/android/FindFriendsTwitterFragment; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.registers 5
invoke-super {p0, p1, p2}, Lco/vine/android/BaseCursorListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mActivity:Lco/vine/android/FindFriendsNUXActivity;
if-eqz v0, :cond_17
invoke-interface {p2}, Landroid/database/Cursor;->getCount()I
move-result v0
if-lez v0, :cond_17
iget-boolean v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFromSignup:Z
if-eqz v0, :cond_17
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mActivity:Lco/vine/android/FindFriendsNUXActivity;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lco/vine/android/FindFriendsNUXActivity;->showSearchIcon(Z)V
:cond_17
return-void
.end method
.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
.registers 3
check-cast p2, Landroid/database/Cursor;
invoke-virtual {p0, p1, p2}, Lco/vine/android/FindFriendsTwitterFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
return-void
.end method
.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
.registers 4
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
return-void
.end method
.method public onMoveAway(I)V
.registers 5
invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onMoveAway(I)V
iget-boolean v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFetched:Z
if-eqz v1, :cond_12
iget v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mNewFollowsCount:I
const/16 v2, 0xf
if-le v1, v2, :cond_16
const-string v0, ">15"
:goto_f
invoke-static {v0}, Lco/vine/android/util/FlurryUtils;->trackTwitterNewFollowingCount(Ljava/lang/String;)V
:cond_12
const/4 v1, 0x0
iput v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mNewFollowsCount:I
return-void
:cond_16
iget v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mNewFollowsCount:I
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
goto :goto_f
.end method
.method public onMoveTo(I)V
.registers 3
invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onMoveTo(I)V
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mActivity:Lco/vine/android/FindFriendsNUXActivity;
if-eqz v0, :cond_c
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mActivity:Lco/vine/android/FindFriendsNUXActivity;
invoke-virtual {v0}, Lco/vine/android/FindFriendsNUXActivity;->clearSearch()V
:cond_c
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lco/vine/android/FindFriendsTwitterFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseCursorListFragment;->onResume()V
const-string v1, " - Lco/vine/android/FindFriendsTwitterFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lco/vine/android/FindFriendsTwitterFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "fetch"
iget-boolean v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFetched:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "friendships"
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v0, "from_sign_up"
iget-boolean v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFromSignup:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, " - Lco/vine/android/FindFriendsTwitterFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 9
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFilterRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSearchQuery:Ljava/lang/String;
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mSearchQuery:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1f
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFilterRunnable:Ljava/lang/Runnable;
const-wide/16 v2, 0x12c
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:goto_1e
return-void
:cond_1f
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/FindFriendsTwitterFragment;->restartLoader(I)Z
goto :goto_1e
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 7
invoke-super {p0, p1, p2}, Lco/vine/android/BaseCursorListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
iget-boolean v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mFromSignup:Z
if-nez v2, :cond_2b
invoke-virtual {p0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v2, 0x7f03004f
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
iget-object v2, p0, Lco/vine/android/FindFriendsTwitterFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V
const v2, 0x7f0a0110
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
const v3, 0x7f0e00f1
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
:cond_2b
return-void
.end method
.method public shouldShowSearchIcon()Z
.registers 2
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
if-eqz v0, :cond_e
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
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