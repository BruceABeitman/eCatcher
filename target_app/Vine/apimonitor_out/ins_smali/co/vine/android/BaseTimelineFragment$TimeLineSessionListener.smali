.class  Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "BaseTimelineFragment.java"
.field final synthetic this$0:Lco/vine/android/BaseTimelineFragment;
.method constructor <init>(Lco/vine/android/BaseTimelineFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method public onAbortAllRequestsComplete()V
.registers 2
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v0}, Lco/vine/android/BaseTimelineFragment;->refreshSilently()V
return-void
.end method
.method public onCaptchaRequired(Ljava/lang/String;Ljava/lang/String;Lco/vine/android/service/PendingAction;)V
.registers 11
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v0, p1}, Lco/vine/android/BaseTimelineFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v6
if-eqz v6, :cond_1b
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v0, v0, Lco/vine/android/BaseTimelineFragment;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v1}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget v3, p3, Lco/vine/android/service/PendingAction;->actionCode:I
iget-object v4, p3, Lco/vine/android/service/PendingAction;->bundle:Landroid/os/Bundle;
move-object v2, p1
move-object v5, p2
invoke-virtual/range {v0 .. v5}, Lco/vine/android/PendingRequestHelper;->onCaptchaRequired(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V
:cond_1b
return-void
.end method
.method public onDeletePostComplete(Ljava/lang/String;JILjava/lang/String;)V
.registers 9
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v1, p1}, Lco/vine/android/BaseTimelineFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v0
if-eqz v0, :cond_18
const/16 v1, 0xc8
if-ne p4, v1, :cond_19
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v1}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x7f0e0179
invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
:goto_18
:cond_18
return-void
:cond_19
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v1}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x7f0e017a
invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
goto :goto_18
.end method
.method public onFetchClientFlagsComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineClientFlags;Z)V
.registers 9
const/16 v0, 0xc8
if-ne p2, v0, :cond_22
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v0}, Lco/vine/android/BaseTimelineFragment;->isFocused()Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-boolean v0, v0, Lco/vine/android/BaseTimelineFragment;->mClientFlagsBannerWasDismissed:Z
if-nez v0, :cond_22
if-eqz p5, :cond_23
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v0}, Lco/vine/android/BaseTimelineFragment;->showClientFlagsBanner()V
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v1, p4, Lco/vine/android/api/VineClientFlags;->messageTitle:Ljava/lang/String;
iget-object v2, p4, Lco/vine/android/api/VineClientFlags;->messageText:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lco/vine/android/BaseTimelineFragment;->populateClientFlagsBanner(Ljava/lang/String;Ljava/lang/String;)V
:cond_22
:goto_22
return-void
:cond_23
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
#calls: Lco/vine/android/BaseTimelineFragment;->hideClientFlagsBanner()V
invoke-static {v0}, Lco/vine/android/BaseTimelineFragment;->access$100(Lco/vine/android/BaseTimelineFragment;)V
goto :goto_22
.end method
.method public onGetCommentsComplete(Ljava/lang/String;ILjava/lang/String;IJLjava/util/ArrayList;)V
.registers 8
invoke-super/range {p0 .. p7}, Lco/vine/android/client/AppSessionListener;->onGetCommentsComplete(Ljava/lang/String;ILjava/lang/String;IJLjava/util/ArrayList;)V
return-void
.end method
.method public onGetTimeLineComplete(Ljava/lang/String;ILjava/lang/String;IIZLjava/util/ArrayList;Ljava/lang/String;IIIJZILjava/lang/String;)V
.registers 30
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v2, p1}, Lco/vine/android/BaseTimelineFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v12
if-eqz v12, :cond_72
if-eqz p6, :cond_66
const/16 v2, 0xc8
if-ne p2, v2, :cond_66
sget-boolean v2, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v2, :cond_31
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v2, v2, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
invoke-virtual {v2}, Lco/vine/android/widget/GenericTimelineAdapter;->getStartLoadingTime()J
move-result-wide v2
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-lez v2, :cond_31
const-string v2, "Time since started loading to end fetch: {}ms"
iget-object v3, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v3, v3, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
invoke-virtual {v3}, Lco/vine/android/widget/GenericTimelineAdapter;->timeSinceStartLoadingTime()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V
:cond_31
if-eqz p7, :cond_66
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
move/from16 v0, p10
iput v0, v2, Lco/vine/android/BaseTimelineFragment;->mNextPage:I
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
move-wide/from16 v0, p12
iput-wide v0, v2, Lco/vine/android/BaseTimelineFragment;->mAnchor:J
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v2, v2, Lco/vine/android/BaseTimelineFragment;->mAdapter:Landroid/widget/BaseAdapter;
check-cast v2, Lco/vine/android/widget/FeedAdapter;
iget v3, v12, Lco/vine/android/PendingRequest;->fetchType:I
const/4 v4, 0x1
if-ne v3, v4, :cond_94
const/4 v3, 0x1
:goto_4b
move-object/from16 v0, p7
invoke-virtual {v2, v0, v3}, Lco/vine/android/widget/FeedAdapter;->mergePosts(Ljava/util/ArrayList;Z)V
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v2, v2, Lco/vine/android/BaseTimelineFragment;->mAppController:Lco/vine/android/client/AppController;
const/4 v11, 0x0
move-object/from16 v3, p7
move/from16 v4, p4
move-object/from16 v5, p8
move/from16 v6, p9
move/from16 v7, p10
move/from16 v8, p11
move-wide/from16 v9, p12
invoke-virtual/range {v2 .. v11}, Lco/vine/android/client/AppController;->saveLoadedPosts(Ljava/util/ArrayList;ILjava/lang/String;IIIJZ)Ljava/lang/String;
:cond_66
iget v2, v12, Lco/vine/android/PendingRequest;->fetchType:I
packed-switch v2, :pswitch_data_be
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget v3, v12, Lco/vine/android/PendingRequest;->fetchType:I
invoke-virtual {v2, v3}, Lco/vine/android/BaseTimelineFragment;->hideProgress(I)V
:goto_72
:cond_72
invoke-static/range {p16 .. p16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_93
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
#getter for: Lco/vine/android/BaseTimelineFragment;->mCallback:Landroid/support/v7/app/ActionBarActivity;
invoke-static {v2}, Lco/vine/android/BaseTimelineFragment;->access$000(Lco/vine/android/BaseTimelineFragment;)Landroid/support/v7/app/ActionBarActivity;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v2
if-eqz v2, :cond_93
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
#getter for: Lco/vine/android/BaseTimelineFragment;->mCallback:Landroid/support/v7/app/ActionBarActivity;
invoke-static {v2}, Lco/vine/android/BaseTimelineFragment;->access$000(Lco/vine/android/BaseTimelineFragment;)Landroid/support/v7/app/ActionBarActivity;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v2
move-object/from16 v0, p16
invoke-virtual {v2, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
:cond_93
return-void
:cond_94
const/4 v3, 0x0
goto :goto_4b
:pswitch_96
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v2, v2, Lco/vine/android/BaseTimelineFragment;->mAdapter:Landroid/widget/BaseAdapter;
if-eqz v2, :cond_b6
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v2, v2, Lco/vine/android/BaseTimelineFragment;->mAdapter:Landroid/widget/BaseAdapter;
invoke-virtual {v2}, Landroid/widget/BaseAdapter;->isEmpty()Z
move-result v2
if-eqz v2, :cond_b6
if-nez p5, :cond_b6
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget v3, v12, Lco/vine/android/PendingRequest;->fetchType:I
invoke-virtual {v2, v3}, Lco/vine/android/BaseTimelineFragment;->hideProgress(I)V
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
const/4 v3, 0x1
invoke-virtual {v2, v3}, Lco/vine/android/BaseTimelineFragment;->showSadface(Z)V
goto :goto_72
:cond_b6
iget-object v2, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Lco/vine/android/BaseTimelineFragment;->showSadface(Z)V
goto :goto_72
nop
:pswitch_data_be
.packed-switch 0x3
:pswitch_96
.end packed-switch
.end method
.method public onLikePost(Ljava/lang/String;ILjava/lang/String;J)V
.registers 8
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v1, p1}, Lco/vine/android/BaseTimelineFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v0
if-eqz v0, :cond_21
const/16 v1, 0xc8
if-eq p2, v1, :cond_21
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mLikeCache:Lco/vine/android/LikeCache;
invoke-virtual {v1, p4, p5}, Lco/vine/android/LikeCache;->removeEntry(J)V
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
invoke-virtual {v1, p4, p5}, Lco/vine/android/widget/GenericTimelineAdapter;->showUnlikedByMe(J)V
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mAdapter:Landroid/widget/BaseAdapter;
invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
:cond_21
return-void
.end method
.method public onLowMemory()V
.registers 3
invoke-super {p0}, Lco/vine/android/client/AppSessionListener;->onLowMemory()V
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v0, v1, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
if-eqz v0, :cond_c
invoke-virtual {v0}, Lco/vine/android/widget/GenericTimelineAdapter;->onLowMemory()V
:cond_c
return-void
.end method
.method public onMobileDataNetworkActivated()V
.registers 6
const/4 v4, 0x0
iget-object v3, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v3}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-static {v3}, Lco/vine/android/util/ClientFlagsHelper;->shouldShowClientFlagsBanner(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_35
iget-object v3, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v3}, Lco/vine/android/BaseTimelineFragment;->isFocused()Z
move-result v3
if-eqz v3, :cond_35
iget-object v3, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v3}, Lco/vine/android/BaseTimelineFragment;->showClientFlagsBanner()V
iget-object v3, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v3}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-static {v3}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string v3, "client_flags_message_title"
invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "client_flags_message_text"
invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v3, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v3, v2, v1}, Lco/vine/android/BaseTimelineFragment;->populateClientFlagsBanner(Ljava/lang/String;Ljava/lang/String;)V
:cond_35
return-void
.end method
.method public onPhotoImageError(Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Download of image failed: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p2, Lco/vine/android/network/HttpResult;->reasonPhrase:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " key: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p1, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
return-void
.end method
.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
.registers 3
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v0, v0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
invoke-virtual {v0, p1}, Lco/vine/android/widget/GenericTimelineAdapter;->setImages(Ljava/util/HashMap;)V
return-void
.end method
.method public onReportPostComplete(Ljava/lang/String;ILjava/lang/String;J)V
.registers 9
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v1, p1}, Lco/vine/android/BaseTimelineFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v0
if-eqz v0, :cond_18
const/16 v1, 0xc8
if-ne p2, v1, :cond_19
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v1}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x7f0e017e
invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
:goto_18
:cond_18
return-void
:cond_19
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v1}, Lco/vine/android/BaseTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x7f0e017f
invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
goto :goto_18
.end method
.method public onRevine(Ljava/lang/String;ILjava/lang/String;JLco/vine/android/api/VineRepost;)V
.registers 11
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v1, p1}, Lco/vine/android/BaseTimelineFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v0
if-eqz v0, :cond_2b
const/16 v1, 0xc8
if-ne p2, v1, :cond_2b
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mRevineCache:Lco/vine/android/RevineCache;
invoke-virtual {v1, p4, p5}, Lco/vine/android/RevineCache;->revine(J)V
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mRevineCache:Lco/vine/android/RevineCache;
iget-wide v2, p6, Lco/vine/android/api/VineRepost;->repostId:J
invoke-virtual {v1, p4, p5, v2, v3}, Lco/vine/android/RevineCache;->putMyRepostId(JJ)V
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mAdapter:Landroid/widget/BaseAdapter;
invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
const/4 v2, 0x1
invoke-virtual {v1, p4, p5, v2}, Lco/vine/android/widget/GenericTimelineAdapter;->updateRevinedCount(JZ)V
:cond_2b
return-void
.end method
.method public onTrimMemory(I)V
.registers 4
invoke-super {p0, p1}, Lco/vine/android/client/AppSessionListener;->onTrimMemory(I)V
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v0, v1, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
if-eqz v0, :cond_c
invoke-virtual {v0, p1}, Lco/vine/android/widget/GenericTimelineAdapter;->onTrimMemory(I)V
:cond_c
return-void
.end method
.method public onUnlikePost(Ljava/lang/String;ILjava/lang/String;J)V
.registers 8
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v1, p1}, Lco/vine/android/BaseTimelineFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v0
if-eqz v0, :cond_21
const/16 v1, 0xc8
if-eq p2, v1, :cond_21
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mLikeCache:Lco/vine/android/LikeCache;
invoke-virtual {v1, p4, p5}, Lco/vine/android/LikeCache;->like(J)V
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
invoke-virtual {v1, p4, p5}, Lco/vine/android/widget/GenericTimelineAdapter;->showLikedByMe(J)V
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mAdapter:Landroid/widget/BaseAdapter;
invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
:cond_21
return-void
.end method
.method public onUnrevine(Ljava/lang/String;ILjava/lang/String;J)V
.registers 9
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
invoke-virtual {v1, p1}, Lco/vine/android/BaseTimelineFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v0
if-eqz v0, :cond_29
const/16 v1, 0xc8
if-ne p2, v1, :cond_29
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mRevineCache:Lco/vine/android/RevineCache;
invoke-virtual {v1, p4, p5}, Lco/vine/android/RevineCache;->unRevine(J)V
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mRevineCache:Lco/vine/android/RevineCache;
invoke-virtual {v1, p4, p5}, Lco/vine/android/RevineCache;->removeMyRepostId(J)V
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mAdapter:Landroid/widget/BaseAdapter;
invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
iget-object v1, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v1, v1, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
const/4 v2, 0x0
invoke-virtual {v1, p4, p5, v2}, Lco/vine/android/widget/GenericTimelineAdapter;->updateRevinedCount(JZ)V
:cond_29
return-void
.end method
.method public onVideoPathError(Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Download of video failed: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p2, Lco/vine/android/network/HttpResult;->reasonPhrase:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " key: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p1, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
return-void
.end method
.method public onVideoPathObtained(Ljava/util/HashMap;)V
.registers 3
iget-object v0, p0, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->this$0:Lco/vine/android/BaseTimelineFragment;
iget-object v0, v0, Lco/vine/android/BaseTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
invoke-virtual {v0, p1}, Lco/vine/android/widget/GenericTimelineAdapter;->onVideoPathObtained(Ljava/util/HashMap;)V
return-void
.end method