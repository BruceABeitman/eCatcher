.class  Lco/vine/android/ActivityFragment$ActivityListener;
.super Lco/vine/android/client/AppSessionListener;
.source "ActivityFragment.java"
.field final synthetic this$0:Lco/vine/android/ActivityFragment;
.method constructor <init>(Lco/vine/android/ActivityFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method public onFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
.registers 8
iget-object v1, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
invoke-virtual {v1, p1}, Lco/vine/android/ActivityFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v0
if-eqz v0, :cond_15
const/16 v1, 0xc8
if-eq p2, v1, :cond_15
iget-object v1, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
iget-object v1, v1, Lco/vine/android/ActivityFragment;->mAdapter:Landroid/widget/BaseAdapter;
check-cast v1, Lco/vine/android/ActivityAdapter;
invoke-virtual {v1, p4, p5}, Lco/vine/android/ActivityAdapter;->unfollow(J)V
:cond_15
return-void
.end method
.method public onGetActivityComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VinePagedData;Lco/vine/android/api/VinePagedData;)V
.registers 16
iget-object v5, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
invoke-virtual {v5, p1}, Lco/vine/android/ActivityFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v4
if-eqz v4, :cond_a8
iget-object v5, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
iget v6, v4, Lco/vine/android/PendingRequest;->fetchType:I
invoke-virtual {v5, v6}, Lco/vine/android/ActivityFragment;->hideProgress(I)V
iget-object v5, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
invoke-virtual {v5}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v5
invoke-static {v5}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v3
iget-object v5, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
const-string v6, "settings_private"
const/4 v7, 0x0
invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v6
#setter for: Lco/vine/android/ActivityFragment;->mPrivate:Z
invoke-static {v5, v6}, Lco/vine/android/ActivityFragment;->access$002(Lco/vine/android/ActivityFragment;Z)Z
const/4 v1, 0x0
if-eqz p4, :cond_2d
iget-object v5, p4, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
if-nez v5, :cond_a9
const/4 v1, 0x0
:goto_2d
:cond_2d
const/4 v2, 0x0
if-eqz p5, :cond_35
iget-object v5, p5, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
if-nez v5, :cond_b1
const/4 v2, 0x0
:goto_35
:cond_35
iget-object v5, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
iget-object v5, v5, Lco/vine/android/ActivityFragment;->mAdapter:Landroid/widget/BaseAdapter;
invoke-virtual {v5}, Landroid/widget/BaseAdapter;->getCount()I
move-result v5
if-nez v5, :cond_b9
if-nez v1, :cond_b9
if-nez v2, :cond_b9
const/16 v5, 0xc8
if-eq p2, v5, :cond_59
iget-object v5, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
const v6, 0x7f0e00d8
iput v6, v5, Lco/vine/android/ActivityFragment;->mEmptyTextStringRes:I
iget-object v5, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
iget-object v5, v5, Lco/vine/android/ActivityFragment;->mEmptyText:Landroid/widget/TextView;
iget-object v6, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
iget v6, v6, Lco/vine/android/ActivityFragment;->mEmptyTextStringRes:I
invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V
:cond_59
iget-object v5, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
const/4 v6, 0x1
invoke-virtual {v5, v6}, Lco/vine/android/ActivityFragment;->showSadface(Z)V
:goto_5f
const/16 v5, 0xc8
if-ne p2, v5, :cond_8d
if-eqz p4, :cond_71
iget-object v5, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
iget v6, p4, Lco/vine/android/api/VinePagedData;->nextPage:I
iput v6, v5, Lco/vine/android/ActivityFragment;->mNextPage:I
iget-object v5, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
iget-wide v6, p4, Lco/vine/android/api/VinePagedData;->anchor:J
iput-wide v6, v5, Lco/vine/android/ActivityFragment;->mAnchor:J
:cond_71
iget-object v5, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
iget-object v5, v5, Lco/vine/android/ActivityFragment;->mAdapter:Landroid/widget/BaseAdapter;
if-eqz v5, :cond_8d
iget-object v5, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
iget-object v5, v5, Lco/vine/android/ActivityFragment;->mAdapter:Landroid/widget/BaseAdapter;
check-cast v5, Lco/vine/android/ActivityAdapter;
if-nez p4, :cond_c0
const/4 v6, 0x0
move-object v8, v6
:goto_81
if-nez p5, :cond_c4
const/4 v6, 0x0
:goto_84
iget v7, v4, Lco/vine/android/PendingRequest;->fetchType:I
const/4 v9, 0x1
if-ne v7, v9, :cond_c7
const/4 v7, 0x1
:goto_8a
invoke-virtual {v5, v8, v6, v7}, Lco/vine/android/ActivityAdapter;->mergeData(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
:cond_8d
iget-object v5, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
invoke-virtual {v5}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_a8
iget-object v5, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
invoke-virtual {v5}, Lco/vine/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v5
const/4 v6, 0x1
invoke-static {v5, v6}, Lco/vine/android/service/GCMNotificationService;->getClearNotificationIntent(Landroid/content/Context;I)Landroid/content/Intent;
move-result-object v5
invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
check-cast v0, Lco/vine/android/HomeTabActivity;
invoke-virtual {v0}, Lco/vine/android/HomeTabActivity;->markActivitiesRead()V
:cond_a8
return-void
:cond_a9
iget-object v5, p4, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v1
goto/16 :goto_2d
:cond_b1
iget-object v5, p5, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v2
goto/16 :goto_35
:cond_b9
iget-object v5, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
const/4 v6, 0x0
invoke-virtual {v5, v6}, Lco/vine/android/ActivityFragment;->showSadface(Z)V
goto :goto_5f
:cond_c0
iget-object v6, p4, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object v8, v6
goto :goto_81
:cond_c4
iget-object v6, p5, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
goto :goto_84
:cond_c7
const/4 v7, 0x0
goto :goto_8a
.end method
.method public onGetUsersMeComplete(Ljava/lang/String;ILjava/lang/String;JLco/vine/android/api/VineUser;)V
.registers 9
if-eqz p6, :cond_e
invoke-virtual {p6}, Lco/vine/android/api/VineUser;->isPrivate()Z
move-result v0
if-eqz v0, :cond_e
iget-object v0, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
const/4 v1, 0x1
#setter for: Lco/vine/android/ActivityFragment;->mPrivate:Z
invoke-static {v0, v1}, Lco/vine/android/ActivityFragment;->access$002(Lco/vine/android/ActivityFragment;Z)Z
:cond_e
return-void
.end method
.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
.registers 3
iget-object v0, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
iget-object v0, v0, Lco/vine/android/ActivityFragment;->mAdapter:Landroid/widget/BaseAdapter;
check-cast v0, Lco/vine/android/ActivityAdapter;
invoke-virtual {v0, p1}, Lco/vine/android/ActivityAdapter;->setImages(Ljava/util/HashMap;)V
return-void
.end method
.method public onUnFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
.registers 8
iget-object v1, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
invoke-virtual {v1, p1}, Lco/vine/android/ActivityFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v0
if-eqz v0, :cond_15
const/16 v1, 0xc8
if-eq p2, v1, :cond_15
iget-object v1, p0, Lco/vine/android/ActivityFragment$ActivityListener;->this$0:Lco/vine/android/ActivityFragment;
iget-object v1, v1, Lco/vine/android/ActivityFragment;->mAdapter:Landroid/widget/BaseAdapter;
check-cast v1, Lco/vine/android/ActivityAdapter;
invoke-virtual {v1, p4, p5}, Lco/vine/android/ActivityAdapter;->follow(J)V
:cond_15
return-void
.end method