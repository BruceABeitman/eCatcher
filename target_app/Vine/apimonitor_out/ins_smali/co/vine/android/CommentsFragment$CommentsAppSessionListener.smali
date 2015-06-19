.class  Lco/vine/android/CommentsFragment$CommentsAppSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "CommentsFragment.java"
.field final synthetic this$0:Lco/vine/android/CommentsFragment;
.method constructor <init>(Lco/vine/android/CommentsFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method public onCaptchaRequired(Ljava/lang/String;Ljava/lang/String;Lco/vine/android/service/PendingAction;)V
.registers 11
iget-object v0, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
invoke-virtual {v0, p1}, Lco/vine/android/CommentsFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v6
if-eqz v6, :cond_1b
iget-object v0, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
iget-object v0, v0, Lco/vine/android/CommentsFragment;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
iget-object v1, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
invoke-virtual {v1}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget v3, p3, Lco/vine/android/service/PendingAction;->actionCode:I
iget-object v4, p3, Lco/vine/android/service/PendingAction;->bundle:Landroid/os/Bundle;
move-object v2, p1
move-object v5, p2
invoke-virtual/range {v0 .. v5}, Lco/vine/android/PendingRequestHelper;->onCaptchaRequired(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V
:cond_1b
return-void
.end method
.method public onDeleteCommentComplete(Ljava/lang/String;ILjava/lang/String;J)V
.registers 10
iget-object v1, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
invoke-virtual {v1, p1}, Lco/vine/android/CommentsFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v0
if-eqz v0, :cond_26
const/16 v1, 0xc8
if-ne p2, v1, :cond_26
iget-object v1, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
iget-object v1, v1, Lco/vine/android/CommentsFragment;->mAdapter:Landroid/widget/BaseAdapter;
check-cast v1, Lco/vine/android/CommentsAdapter;
invoke-virtual {v1, p4, p5}, Lco/vine/android/CommentsAdapter;->deleteComment(J)V
iget-object v1, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
iget-object v1, v1, Lco/vine/android/CommentsFragment;->mAdapter:Landroid/widget/BaseAdapter;
invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I
move-result v1
if-nez v1, :cond_26
iget-object v1, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
const/4 v2, 0x1
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Lco/vine/android/CommentsFragment;->showSadface(ZZ)V
:cond_26
return-void
.end method
.method public onGetCommentsComplete(Ljava/lang/String;ILjava/lang/String;IJLjava/util/ArrayList;)V
.registers 15
const/4 v5, 0x0
const/16 v6, 0xc8
iget-object v3, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
invoke-virtual {v3, p1}, Lco/vine/android/CommentsFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v2
if-eqz v2, :cond_91
iget-object v3, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
const/4 v4, 0x3
invoke-virtual {v3, v4}, Lco/vine/android/CommentsFragment;->hideProgress(I)V
if-eqz p7, :cond_19
invoke-virtual {p7}, Ljava/util/ArrayList;->size()I
move-result v3
if-nez v3, :cond_92
:cond_19
if-eq p2, v6, :cond_25
iget-object v3, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
iget-object v3, v3, Lco/vine/android/CommentsFragment;->mEmptyText:Landroid/widget/TextView;
const v4, 0x7f0e00d9
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V
:cond_25
iget-object v3, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
const/4 v4, 0x1
invoke-virtual {v3, v4, v5}, Lco/vine/android/CommentsFragment;->showSadface(ZZ)V
:goto_2b
if-ne p2, v6, :cond_65
iget-object v3, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
#setter for: Lco/vine/android/CommentsFragment;->mNextPage:I
invoke-static {v3, p4}, Lco/vine/android/CommentsFragment;->access$402(Lco/vine/android/CommentsFragment;I)I
iget-object v3, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
#setter for: Lco/vine/android/CommentsFragment;->mAnchor:J
invoke-static {v3, p5, p6}, Lco/vine/android/CommentsFragment;->access$502(Lco/vine/android/CommentsFragment;J)J
iget-object v3, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
#calls: Lco/vine/android/CommentsFragment;->saveTopItemInfo()V
invoke-static {v3}, Lco/vine/android/CommentsFragment;->access$600(Lco/vine/android/CommentsFragment;)V
iget-object v3, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
iget-object v0, v3, Lco/vine/android/CommentsFragment;->mAdapter:Landroid/widget/BaseAdapter;
check-cast v0, Lco/vine/android/CommentsAdapter;
invoke-virtual {v0, p7}, Lco/vine/android/CommentsAdapter;->mergeComments(Ljava/util/ArrayList;)V
iget-object v3, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
#getter for: Lco/vine/android/CommentsFragment;->mLastTopItemId:J
invoke-static {v3}, Lco/vine/android/CommentsFragment;->access$700(Lco/vine/android/CommentsFragment;)J
move-result-wide v3
invoke-virtual {v0, v3, v4}, Lco/vine/android/CommentsAdapter;->getPositionForId(J)I
move-result v1
iget-object v3, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
iget-object v3, v3, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;
iget-object v4, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
iget-object v4, v4, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v4
add-int/2addr v4, v1
iget-object v5, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
#getter for: Lco/vine/android/CommentsFragment;->mLastTopItemPixelOffset:I
invoke-static {v5}, Lco/vine/android/CommentsFragment;->access$800(Lco/vine/android/CommentsFragment;)I
move-result v5
invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V
:cond_65
iget-object v3, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
#getter for: Lco/vine/android/CommentsFragment;->mFetched:Z
invoke-static {v3}, Lco/vine/android/CommentsFragment;->access$900(Lco/vine/android/CommentsFragment;)Z
move-result v3
if-eqz v3, :cond_86
iget-object v3, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
#getter for: Lco/vine/android/CommentsFragment;->mNextPage:I
invoke-static {v3}, Lco/vine/android/CommentsFragment;->access$400(Lco/vine/android/CommentsFragment;)I
move-result v3
if-lez v3, :cond_7d
if-eqz p7, :cond_7d
invoke-virtual {p7}, Ljava/util/ArrayList;->size()I
move-result v3
if-nez v3, :cond_86
:cond_7d
iget-object v3, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
iget-object v3, v3, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;
check-cast v3, Lco/vine/android/widget/ConversationList;
invoke-virtual {v3}, Lco/vine/android/widget/ConversationList;->deactivateRefresh()V
:cond_86
if-eq p2, v6, :cond_91
iget-object v3, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
iget-object v3, v3, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;
check-cast v3, Lco/vine/android/widget/ConversationList;
invoke-virtual {v3}, Lco/vine/android/widget/ConversationList;->deactivateRefresh()V
:cond_91
return-void
:cond_92
iget-object v3, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
invoke-virtual {v3, v5}, Lco/vine/android/CommentsFragment;->showSadface(Z)V
goto :goto_2b
.end method
.method public onGetTagTypeAheadComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
.registers 8
iget-object v0, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
invoke-virtual {v0, p1}, Lco/vine/android/CommentsFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v0
if-eqz v0, :cond_1f
const/16 v0, 0xc8
if-ne p2, v0, :cond_1f
invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_1f
invoke-static {p4, p5}, Lco/vine/android/provider/VineSuggestionsProvider;->addRealtimeTagSuggestions(Ljava/lang/String;Ljava/util/ArrayList;)V
iget-object v0, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
#getter for: Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;
invoke-static {v0}, Lco/vine/android/CommentsFragment;->access$1100(Lco/vine/android/CommentsFragment;)Lco/vine/android/widget/PopupEditText;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lco/vine/android/widget/PopupEditText;->performFilter(Z)V
:cond_1f
return-void
.end method
.method public onGetUserTypeAheadComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
.registers 8
iget-object v0, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
invoke-virtual {v0, p1}, Lco/vine/android/CommentsFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v0
if-eqz v0, :cond_1f
const/16 v0, 0xc8
if-ne p2, v0, :cond_1f
invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_1f
invoke-static {p4, p5}, Lco/vine/android/provider/VineSuggestionsProvider;->addRealtimeUserSuggestions(Ljava/lang/String;Ljava/util/ArrayList;)V
iget-object v0, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
#getter for: Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;
invoke-static {v0}, Lco/vine/android/CommentsFragment;->access$1100(Lco/vine/android/CommentsFragment;)Lco/vine/android/widget/PopupEditText;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lco/vine/android/widget/PopupEditText;->performFilter(Z)V
:cond_1f
return-void
.end method
.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
.registers 3
invoke-super {p0, p1}, Lco/vine/android/client/AppSessionListener;->onPhotoImageLoaded(Ljava/util/HashMap;)V
iget-object v0, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
iget-object v0, v0, Lco/vine/android/CommentsFragment;->mAdapter:Landroid/widget/BaseAdapter;
check-cast v0, Lco/vine/android/CommentsAdapter;
invoke-virtual {v0, p1}, Lco/vine/android/CommentsAdapter;->updateProfileImages(Ljava/util/HashMap;)V
iget-object v0, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
#getter for: Lco/vine/android/CommentsFragment;->mUsersAdapter:Lco/vine/android/UsersAutoCompleteAdapter;
invoke-static {v0}, Lco/vine/android/CommentsFragment;->access$1000(Lco/vine/android/CommentsFragment;)Lco/vine/android/UsersAutoCompleteAdapter;
move-result-object v0
invoke-virtual {v0, p1}, Lco/vine/android/UsersAutoCompleteAdapter;->setUserImages(Ljava/util/HashMap;)V
return-void
.end method
.method public onPostCommentComplete(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Lco/vine/android/api/VineComment;)V
.registers 12
iget-object v2, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
invoke-virtual {v2}, Lco/vine/android/CommentsFragment;->dismissDialog()V
iget-object v2, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
invoke-virtual {v2, p1}, Lco/vine/android/CommentsFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v1
if-eqz v1, :cond_30
iget-object v2, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
#getter for: Lco/vine/android/CommentsFragment;->mPostId:J
invoke-static {v2}, Lco/vine/android/CommentsFragment;->access$000(Lco/vine/android/CommentsFragment;)J
move-result-wide v2
cmp-long v2, p4, v2
if-nez v2, :cond_30
iget-object v2, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
iget-object v0, v2, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;
new-instance v2, Lco/vine/android/CommentsFragment$CommentsAppSessionListener$1;
invoke-direct {v2, p0, v0}, Lco/vine/android/CommentsFragment$CommentsAppSessionListener$1;-><init>(Lco/vine/android/CommentsFragment$CommentsAppSessionListener;Landroid/widget/ListView;)V
invoke-virtual {v0, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z
const/16 v2, 0xc8
if-eq p2, v2, :cond_31
iget-object v2, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
#getter for: Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;
invoke-static {v2}, Lco/vine/android/CommentsFragment;->access$1100(Lco/vine/android/CommentsFragment;)Lco/vine/android/widget/PopupEditText;
move-result-object v2
invoke-virtual {v2, p6}, Lco/vine/android/widget/PopupEditText;->setText(Ljava/lang/CharSequence;)V
:goto_30
:cond_30
return-void
:cond_31
iget-object v2, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
iget-object v2, v2, Lco/vine/android/CommentsFragment;->mAdapter:Landroid/widget/BaseAdapter;
check-cast v2, Lco/vine/android/CommentsAdapter;
invoke-virtual {v2, p7}, Lco/vine/android/CommentsAdapter;->addMyComment(Lco/vine/android/api/VineComment;)V
iget-object v2, p0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;->this$0:Lco/vine/android/CommentsFragment;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Lco/vine/android/CommentsFragment;->showSadface(Z)V
goto :goto_30
.end method