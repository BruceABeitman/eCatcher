.class public Lco/vine/android/util/ConversationMenuHelper;
.super Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;
.source "ConversationMenuHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;,
        Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;
    }
.end annotation


# static fields
.field private static final FETCH_THRESHOLD_MS:J = 0xc8L

.field private static final MSG_SEARCH_USERS:I = 0x1

.field private static final QUERY_FETCH_THRESHOLD:I = 0x2

.field private static final TAG_INBOX_FRAGMENT:Ljava/lang/String; = "Inbox"


# instance fields
.field private mActionContainer:Landroid/view/ViewGroup;

.field private final mActivity:Lco/vine/android/BaseControllerActionBarActivity;

.field private mAppController:Lco/vine/android/client/AppController;

.field private final mAppSessionListener:Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;

.field private mFriendSearchAdapter:Lco/vine/android/FriendSearchAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mInboxFragment:Lco/vine/android/InboxFragment;

.field private mIsSearching:Z

.field private final mMessageSentFadeListener:Landroid/view/animation/Animation$AnimationListener;

.field private mNothingFoundText:Landroid/view/View;

.field private mOnboardingOverlay:Landroid/widget/TextView;

.field private mOthersText:Landroid/widget/TextView;

.field private mProfileColor:I

.field private mSadFace:Landroid/view/View;

.field private mSearchContainer:Landroid/view/ViewGroup;

.field private mSearchField:Landroid/widget/EditText;

.field private mSearchInProgress:Landroid/widget/ProgressBar;

.field private mSearchOnBackgroundView:Landroid/view/View;

.field private mSearchResultView:Lcom/twitter/android/widget/RefreshableListView;

.field private final mTapToStartFadeListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTapToStartText:Landroid/widget/TextView;

.field private mWaitingToStartSearchUserId:J

.field private mWaitingToStartUserId:J


# direct methods
.method public constructor <init>(Lco/vine/android/BaseControllerActionBarActivity;)V
    .registers 4

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-wide v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mWaitingToStartUserId:J

    iput-wide v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mWaitingToStartSearchUserId:J

    new-instance v0, Lco/vine/android/util/ConversationMenuHelper$2;

    invoke-direct {v0, p0}, Lco/vine/android/util/ConversationMenuHelper$2;-><init>(Lco/vine/android/util/ConversationMenuHelper;)V

    iput-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mTapToStartFadeListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lco/vine/android/util/ConversationMenuHelper$4;

    invoke-direct {v0, p0}, Lco/vine/android/util/ConversationMenuHelper$4;-><init>(Lco/vine/android/util/ConversationMenuHelper;)V

    iput-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mMessageSentFadeListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p1, p0, Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    new-instance v0, Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;

    invoke-direct {v0, p0}, Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;-><init>(Lco/vine/android/util/ConversationMenuHelper;)V

    iput-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mAppSessionListener:Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/util/ConversationMenuHelper;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mTapToStartText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lco/vine/android/util/ConversationMenuHelper;)Lco/vine/android/FriendSearchAdapter;
    .registers 2

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mFriendSearchAdapter:Lco/vine/android/FriendSearchAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lco/vine/android/util/ConversationMenuHelper;Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Lco/vine/android/util/ConversationMenuHelper;->displaySearchResults(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lco/vine/android/util/ConversationMenuHelper;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lco/vine/android/util/ConversationMenuHelper;)Lco/vine/android/BaseControllerActionBarActivity;
    .registers 2

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    return-object v0
.end method

.method static synthetic access$400(Lco/vine/android/util/ConversationMenuHelper;)Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mMessageSentFadeListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$500(Lco/vine/android/util/ConversationMenuHelper;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mOnboardingOverlay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lco/vine/android/util/ConversationMenuHelper;)J
    .registers 3

    iget-wide v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mWaitingToStartUserId:J

    return-wide v0
.end method

.method static synthetic access$602(Lco/vine/android/util/ConversationMenuHelper;J)J
    .registers 3

    iput-wide p1, p0, Lco/vine/android/util/ConversationMenuHelper;->mWaitingToStartUserId:J

    return-wide p1
.end method

.method static synthetic access$700(Lco/vine/android/util/ConversationMenuHelper;)J
    .registers 3

    iget-wide v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mWaitingToStartSearchUserId:J

    return-wide v0
.end method

.method static synthetic access$800(Lco/vine/android/util/ConversationMenuHelper;)Lco/vine/android/client/AppController;
    .registers 2

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mAppController:Lco/vine/android/client/AppController;

    return-object v0
.end method

.method static synthetic access$900(Lco/vine/android/util/ConversationMenuHelper;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mIsSearching:Z

    return v0
.end method

.method private displaySearchResults(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchResultView:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/RefreshableListView;->setVisibility(I)V

    iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper;->mSadFace:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper;->mNothingFoundText:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_18
    return-void

    :cond_19
    iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper;->mSadFace:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper;->mFriendSearchAdapter:Lco/vine/android/FriendSearchAdapter;

    if-nez v1, :cond_3a

    new-instance v1, Lco/vine/android/FriendSearchAdapter;

    iget-object v2, p0, Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    iget-object v3, p0, Lco/vine/android/util/ConversationMenuHelper;->mAppController:Lco/vine/android/client/AppController;

    invoke-direct {v1, v2, v3, p1}, Lco/vine/android/FriendSearchAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;Ljava/util/List;)V

    iput-object v1, p0, Lco/vine/android/util/ConversationMenuHelper;->mFriendSearchAdapter:Lco/vine/android/FriendSearchAdapter;

    iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchResultView:Lcom/twitter/android/widget/RefreshableListView;

    iget-object v2, p0, Lco/vine/android/util/ConversationMenuHelper;->mFriendSearchAdapter:Lco/vine/android/FriendSearchAdapter;

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_34
    iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchResultView:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v1, v4}, Lcom/twitter/android/widget/RefreshableListView;->setVisibility(I)V

    goto :goto_18

    :cond_3a
    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mFriendSearchAdapter:Lco/vine/android/FriendSearchAdapter;

    invoke-virtual {v0}, Lco/vine/android/FriendSearchAdapter;->clear()V

    invoke-virtual {v0, p1}, Lco/vine/android/FriendSearchAdapter;->setData(Ljava/util/List;)V

    invoke-virtual {v0}, Lco/vine/android/FriendSearchAdapter;->notifyDataSetChanged()V

    goto :goto_34
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public getOthersText()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mOthersText:Landroid/widget/TextView;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    :goto_5
    const/4 v0, 0x0

    return v0

    :pswitch_7
    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->fetchFriendsTypeAhead(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_42

    :goto_8
    :pswitch_8
    return-void

    :pswitch_9
    iget-object v2, p0, Lco/vine/android/util/ConversationMenuHelper;->mTapToStartText:Landroid/widget/TextView;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lco/vine/android/util/ConversationMenuHelper;->mTapToStartText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_37

    iget-object v2, p0, Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    const v3, 0x7f04000f

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lco/vine/android/util/ConversationMenuHelper;->mTapToStartFadeListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lco/vine/android/util/ConversationMenuHelper;->mTapToStartText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    :goto_29
    iget-object v2, p0, Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    iget-object v3, p0, Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    const-string v4, "New VM"

    invoke-static {v3, v5, v1, v4}, Lco/vine/android/AbstractRecordingActivity;->getIntentForMessaging(Landroid/content/Context;IZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lco/vine/android/util/Util;->startActionOnRecordingAvailable(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_8

    :cond_37
    const/4 v1, 0x0

    goto :goto_29

    :pswitch_39
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lco/vine/android/util/ConversationMenuHelper;->toggleContactSearch(Z)V

    goto :goto_8

    :pswitch_3e
    invoke-virtual {p0, v5}, Lco/vine/android/util/ConversationMenuHelper;->toggleContactSearch(Z)V

    goto :goto_8

    :pswitch_data_42
    .packed-switch 0x7f0a00b6
        :pswitch_9
        :pswitch_39
        :pswitch_8
        :pswitch_3e
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lco/vine/android/util/ConversationMenuHelper;->mFriendSearchAdapter:Lco/vine/android/FriendSearchAdapter;

    invoke-virtual {v2, p3}, Lco/vine/android/FriendSearchAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mWaitingToStartSearchUserId:J

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_16

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The userRemoteId of the clicked search result item is invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    iget-object v2, p0, Lco/vine/android/util/ConversationMenuHelper;->mAppController:Lco/vine/android/client/AppController;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lco/vine/android/client/AppController;->fetchConversationRowIdFromUserRemoteId(JI)V

    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper;->mAppSessionListener:Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->removeListener(Lco/vine/android/client/AppSessionListener;)V

    return-void
.end method

.method public onResume()V
    .registers 4

    invoke-virtual {p0}, Lco/vine/android/util/ConversationMenuHelper;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent(Z)V

    :cond_e
    iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/util/ConversationMenuHelper;->mAppSessionListener:Lco/vine/android/util/ConversationMenuHelper$ConversationMenuHelperAppSessionListener;

    invoke-virtual {v1, v2}, Lco/vine/android/client/AppController;->addListener(Lco/vine/android/client/AppSessionListener;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 12

    const/16 v6, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lco/vine/android/util/ConversationMenuHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_32

    const/4 v2, 0x0

    invoke-static {v2, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {p0, v5}, Lco/vine/android/util/ConversationMenuHelper;->showSearchProgressBar(Z)V

    iget-object v2, p0, Lco/vine/android/util/ConversationMenuHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mIsSearching:Z

    :cond_31
    :goto_31
    return-void

    :cond_32
    iget-boolean v2, p0, Lco/vine/android/util/ConversationMenuHelper;->mIsSearching:Z

    if-eqz v2, :cond_31

    invoke-virtual {p0, v4}, Lco/vine/android/util/ConversationMenuHelper;->showSearchProgressBar(Z)V

    iget-object v2, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchResultView:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v2, v6}, Lcom/twitter/android/widget/RefreshableListView;->setVisibility(I)V

    iget-object v2, p0, Lco/vine/android/util/ConversationMenuHelper;->mSadFace:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v4, p0, Lco/vine/android/util/ConversationMenuHelper;->mIsSearching:Z

    goto :goto_31
.end method

.method public setPersonalizedColor(I)V
    .registers 5

    sget v0, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    if-eq p1, v0, :cond_6

    if-gtz p1, :cond_18

    :cond_6
    const v0, 0xffffff

    iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    invoke-virtual {v1}, Lco/vine/android/BaseControllerActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    and-int p1, v0, v1

    :cond_18
    const/high16 v0, -0x100

    or-int/2addr v0, p1

    iput v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mProfileColor:I

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mActionContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lco/vine/android/util/ConversationMenuHelper;->mProfileColor:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mInboxFragment:Lco/vine/android/InboxFragment;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mInboxFragment:Lco/vine/android/InboxFragment;

    invoke-virtual {v0, p1}, Lco/vine/android/InboxFragment;->setPersonalizedColor(I)V

    :cond_2d
    return-void
.end method

.method public setupConversationSlidingMenu()V
    .registers 10

    const v8, 0x7f0a00bd

    const/4 v7, 0x1

    iget-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    invoke-static {v5}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mAppController:Lco/vine/android/client/AppController;

    iget-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    const v6, 0x7f03002f

    invoke-virtual {v5, v6}, Lco/vine/android/BaseControllerActionBarActivity;->setBehindContentView(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a00bb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchField:Landroid/widget/EditText;

    iget-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v5, 0x7f0a00b4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mActionContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    invoke-static {v5}, Lco/vine/android/util/Util;->getProfileColor(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {p0, v5}, Lco/vine/android/util/ConversationMenuHelper;->setPersonalizedColor(I)V

    const v5, 0x7f0a00b8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchContainer:Landroid/view/ViewGroup;

    const v5, 0x7f0a00bf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/widget/RefreshableListView;

    iput-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchResultView:Lcom/twitter/android/widget/RefreshableListView;

    iget-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchResultView:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v5, p0}, Lcom/twitter/android/widget/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v5, 0x7f0a00be

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchOnBackgroundView:Landroid/view/View;

    iget-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchOnBackgroundView:Landroid/view/View;

    new-instance v6, Lco/vine/android/util/ConversationMenuHelper$1;

    invoke-direct {v6, p0}, Lco/vine/android/util/ConversationMenuHelper$1;-><init>(Lco/vine/android/util/ConversationMenuHelper;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a00c0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mSadFace:Landroid/view/View;

    const v5, 0x7f0a00c2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mNothingFoundText:Landroid/view/View;

    const v5, 0x7f0a00bc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mTapToStartText:Landroid/widget/TextView;

    const v5, 0x7f0a00b6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a00b7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a00b9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    const v6, 0x7f0a00b3

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v5, v6}, Lco/vine/android/util/ViewUtil;->setActionBarHeight(Landroid/support/v7/app/ActionBarActivity;Landroid/view/View;)V

    const v5, 0x7f0a00ba

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchInProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v7}, Lco/vine/android/util/ConversationMenuHelper;->setSlidingActionBarEnabled(Z)V

    invoke-virtual {p0}, Lco/vine/android/util/ConversationMenuHelper;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v3

    const/16 v5, 0x23

    invoke-virtual {v3, v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidth(I)V

    iget-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    invoke-virtual {v5}, Lco/vine/android/BaseControllerActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0071

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    invoke-virtual {v3, v7}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    iget-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    invoke-virtual {v5, v8}, Lco/vine/android/BaseControllerActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lco/vine/android/views/TouchableRelativeLayout;

    new-instance v6, Lco/vine/android/util/ViewBehindTouchListener;

    iget-object v7, p0, Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    invoke-direct {v6, v7, v3}, Lco/vine/android/util/ViewBehindTouchListener;-><init>(Landroid/content/Context;Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V

    invoke-virtual {v5, v6}, Lco/vine/android/views/TouchableRelativeLayout;->setTouchListener(Lco/vine/android/views/TouchableRelativeLayout$TouchListener;)V

    iget-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    invoke-virtual {v5}, Lco/vine/android/BaseControllerActionBarActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v5, "Inbox"

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_123

    new-instance v5, Lco/vine/android/InboxFragment;

    invoke-direct {v5}, Lco/vine/android/InboxFragment;-><init>()V

    iput-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mInboxFragment:Lco/vine/android/InboxFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mInboxFragment:Lco/vine/android/InboxFragment;

    const-string v6, "Inbox"

    invoke-virtual {v2, v8, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_10d
    iget-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mInboxFragment:Lco/vine/android/InboxFragment;

    invoke-virtual {v3, v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnClosedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;)V

    iget-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mInboxFragment:Lco/vine/android/InboxFragment;

    invoke-virtual {v3, v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnOpenedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v5, p0, Lco/vine/android/util/ConversationMenuHelper;->mHandler:Landroid/os/Handler;

    return-void

    :cond_123
    check-cast v1, Lco/vine/android/InboxFragment;

    iput-object v1, p0, Lco/vine/android/util/ConversationMenuHelper;->mInboxFragment:Lco/vine/android/InboxFragment;

    goto :goto_10d
.end method

.method public showSearchProgressBar(Z)V
    .registers 4

    iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchInProgress:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public showVmOnboarding()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mTapToStartText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mTapToStartText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showVmOnboardingAfterSend()V
    .registers 9

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {p0}, Lco/vine/android/util/ConversationMenuHelper;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getMenu()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    invoke-virtual {v4}, Lco/vine/android/BaseControllerActionBarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030067

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const v4, 0x7f0e0281

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;-><init>(Lco/vine/android/util/ConversationMenuHelper;Lco/vine/android/util/ConversationMenuHelper$1;)V

    invoke-virtual {v1, v2}, Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;->setView(Landroid/view/View;)V

    iget-object v4, p0, Lco/vine/android/util/ConversationMenuHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v4, Lco/vine/android/util/ConversationMenuHelper$3;

    invoke-direct {v4, p0, v1}, Lco/vine/android/util/ConversationMenuHelper$3;-><init>(Lco/vine/android/util/ConversationMenuHelper;Lco/vine/android/util/ConversationMenuHelper$OnboardingOverlayFadeOutRunnable;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Lco/vine/android/util/ConversationMenuHelper;->mOnboardingOverlay:Landroid/widget/TextView;

    return-void
.end method

.method public toggleContactSearch(Z)V
    .registers 6

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v3, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchOnBackgroundView:Landroid/view/View;

    if-eqz p1, :cond_28

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2a

    move v0, v1

    :goto_f
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mActionContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2c

    :goto_16
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_2e

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_20
    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mActivity:Lco/vine/android/BaseControllerActionBarActivity;

    iget-object v1, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchField:Landroid/widget/EditText;

    invoke-static {v0, v1, p1}, Lco/vine/android/util/Util;->setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V

    return-void

    :cond_28
    move v0, v2

    goto :goto_7

    :cond_2a
    move v0, v2

    goto :goto_f

    :cond_2c
    move v2, v1

    goto :goto_16

    :cond_2e
    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lco/vine/android/util/ConversationMenuHelper;->mSearchField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method
