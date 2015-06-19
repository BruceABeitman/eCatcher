.class public abstract Lco/vine/android/BaseTimelineFragment;
.super Lco/vine/android/BaseArrayListFragment;
.source "BaseTimelineFragment.java"
.implements Lco/vine/android/widget/SpanClickListener;
.implements Landroid/view/View$OnClickListener;
.field private static final REQUEST_CODE_OPTIONS:I = 0xa
.field private static final STATE_LIKE_CACHE:Ljava/lang/String; = "state_like_cache"
.field private static final STATE_REVINE_CACHE:Ljava/lang/String; = "state_revine_cache"
.field private mCallback:Landroid/support/v7/app/ActionBarActivity;
.field protected mClientFlagsBannerParent:Landroid/view/ViewGroup;
.field protected mClientFlagsBannerWasDismissed:Z
.field protected mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
.field protected mFetched:Z
.field private mFlurryEventSource:Ljava/lang/String;
.field protected final mHeaderParents:Ljava/util/HashSet;
.field protected mLastFetchType:I
.field protected mLikeCache:Lco/vine/android/LikeCache;
.field protected final mMergePostReceiver:Landroid/content/BroadcastReceiver;
.field private mMergePostReceiverRegistered:Z
.field private final mMuteChangeReceiver:Landroid/content/BroadcastReceiver;
.field protected mRevineCache:Lco/vine/android/RevineCache;
.field protected final mVineSpanClicker:Lco/vine/android/VineSpanClicker;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lco/vine/android/BaseArrayListFragment;-><init>()V
new-instance v0, Lco/vine/android/VineSpanClicker;
invoke-direct {v0, p0}, Lco/vine/android/VineSpanClicker;-><init>(Lco/vine/android/BaseFragment;)V
iput-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mVineSpanClicker:Lco/vine/android/VineSpanClicker;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mHeaderParents:Ljava/util/HashSet;
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/BaseTimelineFragment;->mMergePostReceiverRegistered:Z
new-instance v0, Lco/vine/android/BaseTimelineFragment$1;
invoke-direct {v0, p0}, Lco/vine/android/BaseTimelineFragment$1;-><init>(Lco/vine/android/BaseTimelineFragment;)V
iput-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mMergePostReceiver:Landroid/content/BroadcastReceiver;
new-instance v0, Lco/vine/android/BaseTimelineFragment$2;
invoke-direct {v0, p0}, Lco/vine/android/BaseTimelineFragment$2;-><init>(Lco/vine/android/BaseTimelineFragment;)V
iput-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mMuteChangeReceiver:Landroid/content/BroadcastReceiver;
return-void
.end method
.method static synthetic access$000(Lco/vine/android/BaseTimelineFragment;)Landroid/support/v7/app/ActionBarActivity;
.registers 2
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mCallback:Landroid/support/v7/app/ActionBarActivity;
return-object v0
.end method
.method static synthetic access$100(Lco/vine/android/BaseTimelineFragment;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseTimelineFragment;->hideClientFlagsBanner()V
return-void
.end method
.method private hideClientFlagsBanner()V
.registers 3
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mClientFlagsBannerParent:Landroid/view/ViewGroup;
if-eqz v0, :cond_12
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mClientFlagsBannerParent:Landroid/view/ViewGroup;
const v1, 0x7f0a0237
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_12
return-void
.end method
.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
.registers 5
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v0, p1, p2, p3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mHeaderParents:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
return-void
.end method
.method protected fetchContent(IZ)V
.registers 6
const/4 v1, 0x1
iput p1, p0, Lco/vine/android/BaseTimelineFragment;->mLastFetchType:I
invoke-virtual {p0, p1}, Lco/vine/android/BaseTimelineFragment;->hasPendingRequest(I)Z
move-result v0
if-eqz v0, :cond_a
:goto_9
return-void
:cond_a
iput-boolean v1, p0, Lco/vine/android/BaseTimelineFragment;->mFetched:Z
packed-switch p1, :pswitch_data_28
:goto_f
if-eqz p2, :cond_14
invoke-virtual {p0, p1}, Lco/vine/android/BaseTimelineFragment;->showProgress(I)V
:cond_14
iget v0, p0, Lco/vine/android/BaseTimelineFragment;->mNextPage:I
iget-wide v1, p0, Lco/vine/android/BaseTimelineFragment;->mAnchor:J
invoke-virtual {p0, v0, v1, v2, p2}, Lco/vine/android/BaseTimelineFragment;->fetchPosts(IJZ)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, p1}, Lco/vine/android/BaseTimelineFragment;->addRequest(Ljava/lang/String;I)Ljava/lang/String;
goto :goto_9
:pswitch_20
iput v1, p0, Lco/vine/android/BaseTimelineFragment;->mNextPage:I
const-wide/16 v0, 0x0
iput-wide v0, p0, Lco/vine/android/BaseTimelineFragment;->mAnchor:J
goto :goto_f
nop
:pswitch_data_28
.packed-switch 0x2
:pswitch_20
:pswitch_20
:pswitch_20
.end packed-switch
.end method
.method protected abstract fetchPosts(IJZ)Ljava/lang/String;
.end method
.method public getHeaderViewParents()Ljava/util/HashSet;
.registers 2
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mHeaderParents:Ljava/util/HashSet;
return-object v0
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 9
invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onActivityCreated(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
instance-of v0, v0, Lco/vine/android/HomeTabActivity;
if-eqz v0, :cond_12
invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->setUpUnderNavHeader()V
:cond_12
new-instance v0, Lco/vine/android/widget/FeedAdapter;
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment;->mListView:Landroid/widget/ListView;
iget-object v3, p0, Lco/vine/android/BaseTimelineFragment;->mLikeCache:Lco/vine/android/LikeCache;
iget-object v4, p0, Lco/vine/android/BaseTimelineFragment;->mRevineCache:Lco/vine/android/RevineCache;
iget-object v6, p0, Lco/vine/android/BaseTimelineFragment;->mFlurryEventSource:Ljava/lang/String;
move-object v5, p0
invoke-direct/range {v0 .. v6}, Lco/vine/android/widget/FeedAdapter;-><init>(Landroid/app/Activity;Landroid/widget/ListView;Lco/vine/android/LikeCache;Lco/vine/android/RevineCache;Lco/vine/android/BaseTimelineFragment;Ljava/lang/String;)V
iput-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
iput-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mAdapter:Landroid/widget/BaseAdapter;
return-void
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 6
packed-switch p1, :pswitch_data_16
invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseArrayListFragment;->onActivityResult(IILandroid/content/Intent;)V
:goto_6
return-void
:pswitch_7
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v0, v1, p2, p3}, Lco/vine/android/PostOptionsDialogActivity;->onActivityResult(Lco/vine/android/client/AppController;Landroid/app/Activity;ILandroid/content/Intent;)Lco/vine/android/PostOptionsDialogActivity$Result;
move-result-object v0
invoke-virtual {p0, v0}, Lco/vine/android/BaseTimelineFragment;->processPostOptionsResult(Lco/vine/android/PostOptionsDialogActivity$Result;)V
goto :goto_6
nop
:pswitch_data_16
.packed-switch 0xa
:pswitch_7
.end packed-switch
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 3
invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onAttach(Landroid/app/Activity;)V
instance-of v0, p1, Landroid/support/v7/app/ActionBarActivity;
if-eqz v0, :cond_b
check-cast p1, Landroid/support/v7/app/ActionBarActivity;
iput-object p1, p0, Lco/vine/android/BaseTimelineFragment;->mCallback:Landroid/support/v7/app/ActionBarActivity;
:cond_b
return-void
.end method
.method public onBackPressed()Z
.registers 2
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
invoke-virtual {v0}, Lco/vine/android/widget/GenericTimelineAdapter;->onBackPressed()Z
move-result v0
return v0
.end method
.method public onClick(Landroid/view/View;)V
.registers 12
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v2
sparse-switch v2, :sswitch_data_dc
:goto_7
:cond_7
return-void
:sswitch_8
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/Long;
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment;->mLikeCache:Lco/vine/android/LikeCache;
invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Lco/vine/android/LikeCache;->isLike(J)Z
move-result v2
if-eqz v2, :cond_43
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment;->mFlurryEventSource:Ljava/lang/String;
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v2
invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
move-result-wide v3
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Lco/vine/android/client/AppController;->unlikePost(Ljava/lang/String;Lco/vine/android/client/Session;JZ)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Lco/vine/android/BaseTimelineFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment;->mLikeCache:Lco/vine/android/LikeCache;
invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Lco/vine/android/LikeCache;->unlike(J)V
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Lco/vine/android/widget/GenericTimelineAdapter;->showUnlikedByMe(J)V
goto :goto_7
:cond_43
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment;->mFlurryEventSource:Ljava/lang/String;
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v2
invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
move-result-wide v3
iget-object v5, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v5}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v5
iget-object v7, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v7}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v7
invoke-virtual {v7}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;
move-result-object v7
const/4 v8, 0x0
invoke-virtual/range {v0 .. v8}, Lco/vine/android/client/AppController;->likePost(Ljava/lang/String;Lco/vine/android/client/Session;JJLjava/lang/String;Z)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Lco/vine/android/BaseTimelineFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment;->mLikeCache:Lco/vine/android/LikeCache;
invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Lco/vine/android/LikeCache;->like(J)V
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Lco/vine/android/widget/GenericTimelineAdapter;->showLikedByMe(J)V
goto :goto_7
:sswitch_7c
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/api/VinePost;
invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
if-eqz v1, :cond_7
iget-wide v2, v0, Lco/vine/android/api/VinePost;->userId:J
iget-object v4, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v4
cmp-long v2, v2, v4
if-nez v2, :cond_a1
const/4 v2, 0x1
:goto_95
const/4 v3, 0x0
invoke-static {v0, v1, v2, v3}, Lco/vine/android/PostOptionsDialogActivity;->getMoreIntent(Lco/vine/android/api/VinePost;Landroid/content/Context;ZZ)Landroid/content/Intent;
move-result-object v2
const/16 v3, 0xa
invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto/16 :goto_7
:cond_a1
const/4 v2, 0x0
goto :goto_95
:sswitch_a3
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/api/VinePost;
invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
if-eqz v1, :cond_7
iget-wide v2, v0, Lco/vine/android/api/VinePost;->userId:J
iget-object v4, p0, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v4
cmp-long v2, v2, v4
if-nez v2, :cond_d1
const/4 v2, 0x1
:goto_bc
iget-object v3, p0, Lco/vine/android/BaseTimelineFragment;->mRevineCache:Lco/vine/android/RevineCache;
iget-wide v4, v0, Lco/vine/android/api/VinePost;->postId:J
invoke-virtual {v3, v4, v5}, Lco/vine/android/RevineCache;->getMyRepostId(J)J
move-result-wide v3
iget-object v5, p0, Lco/vine/android/BaseTimelineFragment;->mFlurryEventSource:Ljava/lang/String;
invoke-static/range {v0 .. v5}, Lco/vine/android/PostOptionsDialogActivity;->getShareIntent(Lco/vine/android/api/VinePost;Landroid/content/Context;ZJLjava/lang/String;)Landroid/content/Intent;
move-result-object v2
const/16 v3, 0xa
invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto/16 :goto_7
:cond_d1
const/4 v2, 0x0
goto :goto_bc
:sswitch_d3
invoke-direct {p0}, Lco/vine/android/BaseTimelineFragment;->hideClientFlagsBanner()V
const/4 v2, 0x1
iput-boolean v2, p0, Lco/vine/android/BaseTimelineFragment;->mClientFlagsBannerWasDismissed:Z
goto/16 :goto_7
nop
:sswitch_data_dc
.sparse-switch
0x7f0a014d -> :sswitch_7c
0x7f0a014f -> :sswitch_8
0x7f0a0151 -> :sswitch_a3
0x7f0a0239 -> :sswitch_d3
.end sparse-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;
invoke-direct {v0, p0}, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;-><init>(Lco/vine/android/BaseTimelineFragment;)V
iput-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
if-eqz p1, :cond_29
const-string v0, "state_like_cache"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_29
const-string v0, "state_like_cache"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lco/vine/android/LikeCache;
iput-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mLikeCache:Lco/vine/android/LikeCache;
const-string v0, "state_revine_cache"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lco/vine/android/RevineCache;
iput-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mRevineCache:Lco/vine/android/RevineCache;
:goto_28
return-void
:cond_29
new-instance v0, Lco/vine/android/LikeCache;
invoke-direct {v0}, Lco/vine/android/LikeCache;-><init>()V
iput-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mLikeCache:Lco/vine/android/LikeCache;
new-instance v0, Lco/vine/android/RevineCache;
invoke-direct {v0}, Lco/vine/android/RevineCache;-><init>()V
iput-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mRevineCache:Lco/vine/android/RevineCache;
goto :goto_28
.end method
.method public onDestroy()V
.registers 4
:try_start_0
invoke-super {p0}, Lco/vine/android/BaseArrayListFragment;->onDestroy()V
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
invoke-virtual {v1}, Lco/vine/android/widget/GenericTimelineAdapter;->onDestroy()V
:try_end_8
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9
:goto_8
return-void
:catch_9
move-exception v0
const-string v1, "Failed to remove timeline fragment"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_8
.end method
.method public onDestroyView()V
.registers 3
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
invoke-virtual {v0}, Lco/vine/android/widget/GenericTimelineAdapter;->onDestroyView()V
iget-boolean v0, p0, Lco/vine/android/BaseTimelineFragment;->mMergePostReceiverRegistered:Z
if-eqz v0, :cond_12
invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment;->mMergePostReceiver:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
:cond_12
invoke-super {p0}, Lco/vine/android/BaseArrayListFragment;->onDestroyView()V
return-void
.end method
.method public onMoveAway(I)V
.registers 4
invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onMoveAway(I)V
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->isFocused()Z
move-result v1
invoke-virtual {v0, v1}, Lco/vine/android/widget/GenericTimelineAdapter;->onPause(Z)V
return-void
.end method
.method public onMoveTo(I)V
.registers 4
invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onMoveTo(I)V
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mAdapter:Landroid/widget/BaseAdapter;
invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x3
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lco/vine/android/BaseTimelineFragment;->fetchContent(IZ)V
:cond_10
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->isFocused()Z
move-result v1
invoke-virtual {v0, v1}, Lco/vine/android/widget/GenericTimelineAdapter;->onResume(Z)V
return-void
.end method
.method public onPause()V
.registers 3
invoke-super {p0}, Lco/vine/android/BaseArrayListFragment;->onPause()V
invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment;->mMuteChangeReceiver:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return-void
.end method
.method public onResume()V
.registers 6
invoke-super {p0}, Lco/vine/android/BaseArrayListFragment;->onResume()V
invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment;->mMuteChangeReceiver:Landroid/content/BroadcastReceiver;
sget-object v2, Lco/vine/android/util/MuteUtil;->MUTE_INTENT_FILTER:Landroid/content/IntentFilter;
const-string v3, "co.vine.android.BROADCAST"
const/4 v4, 0x0
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
return-void
.end method
.method public onRevineBySpanClicked(J)V
.registers 4
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mVineSpanClicker:Lco/vine/android/VineSpanClicker;
invoke-virtual {v0, p1, p2}, Lco/vine/android/VineSpanClicker;->onRevineBySpanClicked(J)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "state_like_cache"
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment;->mLikeCache:Lco/vine/android/LikeCache;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v0, "state_revine_cache"
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment;->mRevineCache:Lco/vine/android/RevineCache;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
return-void
.end method
.method public onScroll(Landroid/widget/AbsListView;III)V
.registers 5
invoke-super {p0, p1, p2, p3, p4}, Lco/vine/android/BaseArrayListFragment;->onScroll(Landroid/widget/AbsListView;III)V
return-void
.end method
.method protected onScrollLastItem()V
.registers 4
const/4 v2, 0x1
iget-boolean v0, p0, Lco/vine/android/BaseTimelineFragment;->mRefreshable:Z
if-eqz v0, :cond_2f
iget v0, p0, Lco/vine/android/BaseTimelineFragment;->mNextPage:I
if-lez v0, :cond_2f
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mAdapter:Landroid/widget/BaseAdapter;
invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I
move-result v0
const/16 v1, 0x190
if-gt v0, v1, :cond_2f
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->isFocused()Z
move-result v1
invoke-virtual {v0, v1}, Lco/vine/android/widget/GenericTimelineAdapter;->onPause(Z)V
invoke-virtual {p0, v2, v2}, Lco/vine/android/BaseTimelineFragment;->fetchContent(IZ)V
invoke-virtual {p0, v2}, Lco/vine/android/BaseTimelineFragment;->showProgress(I)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
iget v1, p0, Lco/vine/android/BaseTimelineFragment;->mNextPage:I
invoke-static {v0, v1}, Lco/vine/android/util/FlurryUtils;->trackTimeLinePageScroll(Ljava/lang/String;I)V
:cond_2f
return-void
.end method
.method public declared-synchronized onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 4
monitor-enter p0
:try_start_1
invoke-super {p0, p1, p2}, Lco/vine/android/BaseArrayListFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
invoke-virtual {v0, p1, p2}, Lco/vine/android/widget/GenericTimelineAdapter;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public onSpanClicked(Landroid/view/View;ILjava/lang/Object;)V
.registers 5
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mVineSpanClicker:Lco/vine/android/VineSpanClicker;
invoke-virtual {v0, p1, p2, p3}, Lco/vine/android/VineSpanClicker;->onSpanClicked(Landroid/view/View;ILjava/lang/Object;)V
return-void
.end method
.method protected populateClientFlagsBanner(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_c
const v0, 0x7f0a008d
invoke-virtual {p0, v0, p1}, Lco/vine/android/BaseTimelineFragment;->setBannerText(ILjava/lang/String;)V
:cond_c
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_18
const v0, 0x7f0a0093
invoke-virtual {p0, v0, p2}, Lco/vine/android/BaseTimelineFragment;->setBannerText(ILjava/lang/String;)V
:cond_18
return-void
.end method
.method protected refresh()V
.registers 3
const/4 v1, 0x2
invoke-virtual {p0, v1}, Lco/vine/android/BaseTimelineFragment;->hideProgress(I)V
const/4 v0, 0x1
invoke-virtual {p0, v1, v0}, Lco/vine/android/BaseTimelineFragment;->fetchContent(IZ)V
return-void
.end method
.method protected refreshSilently()V
.registers 3
const/4 v1, 0x2
invoke-virtual {p0, v1}, Lco/vine/android/BaseTimelineFragment;->hideProgress(I)V
const/4 v0, 0x0
invoke-virtual {p0, v1, v0}, Lco/vine/android/BaseTimelineFragment;->fetchContent(IZ)V
return-void
.end method
.method public registerMergePostReceiver()V
.registers 6
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/BaseTimelineFragment;->mMergePostReceiverRegistered:Z
invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment;->mMergePostReceiver:Landroid/content/BroadcastReceiver;
sget-object v2, Lco/vine/android/service/VineService;->SHOW_POST_FILTER:Landroid/content/IntentFilter;
const-string v3, "co.vine.android.BROADCAST"
const/4 v4, 0x0
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
return-void
.end method
.method protected setBannerText(ILjava/lang/String;)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mClientFlagsBannerParent:Landroid/view/ViewGroup;
if-eqz v0, :cond_f
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mClientFlagsBannerParent:Landroid/view/ViewGroup;
invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_f
return-void
.end method
.method protected setFlurryEventSource(Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lco/vine/android/BaseTimelineFragment;->mFlurryEventSource:Ljava/lang/String;
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mVineSpanClicker:Lco/vine/android/VineSpanClicker;
invoke-virtual {v0, p1}, Lco/vine/android/VineSpanClicker;->setFlurryEventSource(Ljava/lang/String;)V
return-void
.end method
.method public setUpUnderNavHeader()V
.registers 6
const/4 v4, 0x0
invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
const v2, 0x7f03009d
invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment;->mListView:Landroid/widget/ListView;
check-cast v1, Lco/vine/android/widget/PinnedHeaderListView;
invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0b0084
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
invoke-virtual {v1, v0, v2}, Lco/vine/android/widget/PinnedHeaderListView;->setRefreshHeader(Landroid/view/View;I)V
const/4 v1, 0x0
invoke-virtual {p0, v0, v4, v1}, Lco/vine/android/BaseTimelineFragment;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
return-void
.end method
.method protected showClientFlagsBanner()V
.registers 9
const/4 v7, 0x0
iget-object v5, p0, Lco/vine/android/BaseTimelineFragment;->mClientFlagsBannerParent:Landroid/view/ViewGroup;
if-nez v5, :cond_37
iget-object v3, p0, Lco/vine/android/BaseTimelineFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v5
invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v5
const v6, 0x7f0300ab
invoke-virtual {v5, v6, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
const v5, 0x7f0a0239
invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageButton;
invoke-virtual {p0}, Lco/vine/android/BaseTimelineFragment;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f090027
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I
move-result v5
invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setColorFilter(I)V
invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v3, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V
iput-object v0, p0, Lco/vine/android/BaseTimelineFragment;->mClientFlagsBannerParent:Landroid/view/ViewGroup;
:cond_37
iget-object v5, p0, Lco/vine/android/BaseTimelineFragment;->mClientFlagsBannerParent:Landroid/view/ViewGroup;
const v6, 0x7f0a0237
invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/view/ViewGroup;
invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I
move-result v4
invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V
if-eqz v4, :cond_50
iget-object v5, p0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
invoke-virtual {v5}, Lco/vine/android/widget/GenericTimelineAdapter;->notifyDataSetChanged()V
:cond_50
return-void
.end method
.method protected trackNewCount()Z
.registers 2
const/4 v0, 0x0
return v0
.end method