.class public Lco/vine/android/PostOptionsDialogActivity;
.super Lco/vine/android/SupportListActivity;
.source "PostOptionsDialogActivity.java"
.implements Landroid/view/View$OnClickListener;
.implements Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
.field public static final ACTION_DELETE:Ljava/lang/String; = "action_delete"
.field public static final ACTION_FACEBOOK:Ljava/lang/String; = "action_facebook"
.field public static final ACTION_ORIGINAL_POST:Ljava/lang/String; = "action_original_post"
.field public static final ACTION_REPORT:Ljava/lang/String; = "action_report"
.field public static final ACTION_REVINE:Ljava/lang/String; = "action_revine"
.field public static final ACTION_SHARE_OTHER:Ljava/lang/String; = "action_other"
.field public static final ACTION_TWITTER:Ljava/lang/String; = "action_twitter"
.field public static final ACTION_VM:Ljava/lang/String; = "action_vm"
.field private static final DIALOG_DELETE:I = 0x2
.field private static final DIALOG_REPORT:I = 0x1
.field public static final EXTRA_DELETE:Ljava/lang/String; = "delete"
.field public static final EXTRA_DESCRIPTION:Ljava/lang/String; = "description"
.field public static final EXTRA_FLURRY_EVENT_SOURCE:Ljava/lang/String; = "flurry_event_source"
.field public static final EXTRA_FOLLOWING:Ljava/lang/String; = "following"
.field public static final EXTRA_NAME:Ljava/lang/String; = "name"
.field public static final EXTRA_ORIGINAL_POST:Ljava/lang/String; = "original_post"
.field public static final EXTRA_POST_FACEBOOK:Ljava/lang/String; = "post_facebook"
.field public static final EXTRA_POST_ID:Ljava/lang/String; = "post_id"
.field public static final EXTRA_POST_TWITTER:Ljava/lang/String; = "post_twitter"
.field public static final EXTRA_POST_USER_ID:Ljava/lang/String; = "post_user_id"
.field public static final EXTRA_REPORT:Ljava/lang/String; = "report"
.field public static final EXTRA_REVINE:Ljava/lang/String; = "revine"
.field private static final EXTRA_REVINE_ID:Ljava/lang/String; = "revine_id"
.field public static final EXTRA_SHARE_OTHER:Ljava/lang/String; = "share_other"
.field public static final EXTRA_SHARE_URL:Ljava/lang/String; = "share_url"
.field public static final EXTRA_SHARE_VM:Ljava/lang/String; = "share_vm"
.field public static final EXTRA_THUMBNAIL_URL:Ljava/lang/String; = "thumbnail_url"
.field public static final EXTRA_VIDEO_URL:Ljava/lang/String; = "video_url"
.field public static final EXTRA_WAS_REVINED:Ljava/lang/String; = "was_revined"
.field private static final ID_CANCEL:I = 0x7
.field private static final ID_DELETE:I = 0x6
.field private static final ID_FACEBOOK:I = 0x2
.field private static final ID_ORIGINAL_POST:I = 0x8
.field private static final ID_REPORT:I = 0x5
.field private static final ID_REVINE:I = 0x9
.field private static final ID_SHARE_MORE:I = 0xa
.field private static final ID_SHARE_OTHER:I = 0x4
.field private static final ID_TWITTER:I = 0x1
.field private static final ID_VM:I = 0x3
.field private mArrayAdapter:Landroid/widget/ArrayAdapter;
.field private mDelete:Z
.field private mItems2:Ljava/util/ArrayList;
.field private mName:Ljava/lang/String;
.field private mOriginalPost:Z
.field private mPostFacebook:Z
.field private mPostId:J
.field private mPostTwitter:Z
.field private mReport:Z
.field private mRevine:Z
.field private mShareOther:Z
.field private mVm:Z
.field private mWasRevined:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/SupportListActivity;-><init>()V
return-void
.end method
.method public static getMoreIntent(Lco/vine/android/api/VinePost;Landroid/content/Context;ZZ)Landroid/content/Intent;
.registers 9
new-instance v1, Landroid/content/Intent;
const-class v2, Lco/vine/android/PostOptionsDialogActivity;
invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "post_id"
iget-wide v3, p0, Lco/vine/android/api/VinePost;->postId:J
invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
move-result-object v1
const-string v2, "delete"
invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
move-result-object v1
const-string v2, "report"
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
move-result-object v0
const-string v1, "original_post"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
return-object v0
.end method
.method public static getShareIntent(Lco/vine/android/api/VinePost;Landroid/content/Context;ZJLjava/lang/String;)Landroid/content/Intent;
.registers 13
const/4 v2, 0x1
const/4 v3, 0x0
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/PostOptionsDialogActivity;
invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "post_id"
iget-wide v4, p0, Lco/vine/android/api/VinePost;->postId:J
invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v1, "report"
invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v4, "revine"
if-nez p2, :cond_ba
move v1, v2
:goto_1a
invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "revine_id"
invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v1, "post_user_id"
iget-wide v4, p0, Lco/vine/android/api/VinePost;->userId:J
invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v4, "following"
iget-object v1, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;
if-eqz v1, :cond_bd
iget-object v1, p0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;
invoke-virtual {v1}, Lco/vine/android/api/VineUser;->isFollowing()Z
move-result v1
if-eqz v1, :cond_bd
move v1, v2
:goto_38
invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v4, "was_revined"
const-wide/16 v5, 0x0
cmp-long v1, p3, v5
if-lez v1, :cond_c0
move v1, v2
:goto_44
invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "flurry_event_source"
invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0}, Lco/vine/android/api/VinePost;->isShareable()Z
move-result v1
if-eqz v1, :cond_58
invoke-virtual {p0}, Lco/vine/android/api/VinePost;->isPrivate()Z
move-result v1
if-eqz v1, :cond_5a
:cond_58
if-eqz p2, :cond_b9
:cond_5a
const-string v4, "post_twitter"
invoke-virtual {p0}, Lco/vine/android/api/VinePost;->isShareable()Z
move-result v1
if-nez v1, :cond_64
if-eqz p2, :cond_c2
:cond_64
move v1, v2
:goto_65
invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v4, "post_facebook"
invoke-virtual {p0}, Lco/vine/android/api/VinePost;->isShareable()Z
move-result v1
if-nez v1, :cond_72
if-eqz p2, :cond_c4
:cond_72
move v1, v2
:goto_73
invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v4, "share_other"
invoke-virtual {p0}, Lco/vine/android/api/VinePost;->isShareable()Z
move-result v1
if-nez v1, :cond_80
if-eqz p2, :cond_c6
:cond_80
move v1, v2
:goto_81
invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "share_vm"
invoke-virtual {p0}, Lco/vine/android/api/VinePost;->isShareable()Z
move-result v4
if-nez v4, :cond_8e
if-eqz p2, :cond_c8
:goto_8e
:cond_8e
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "description"
iget-object v2, p0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "share_url"
iget-object v2, p0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "thumbnail_url"
iget-object v2, p0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "video_url"
iget-object v2, p0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "name"
iget-object v2, p0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "original_post"
invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
:cond_b9
return-object v0
:cond_ba
move v1, v3
goto/16 :goto_1a
:cond_bd
move v1, v3
goto/16 :goto_38
:cond_c0
move v1, v3
goto :goto_44
:cond_c2
move v1, v3
goto :goto_65
:cond_c4
move v1, v3
goto :goto_73
:cond_c6
move v1, v3
goto :goto_81
:cond_c8
move v2, v3
goto :goto_8e
.end method
.method private invalidateOptions(Ljava/util/ArrayList;)V
.registers 6
iget-object v2, p0, Lco/vine/android/PostOptionsDialogActivity;->mArrayAdapter:Landroid/widget/ArrayAdapter;
invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V
invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_9
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1b
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/PostOptionsDialogActivity$Option;
iget-object v2, p0, Lco/vine/android/PostOptionsDialogActivity;->mArrayAdapter:Landroid/widget/ArrayAdapter;
invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
goto :goto_9
:cond_1b
iget-object v2, p0, Lco/vine/android/PostOptionsDialogActivity;->mArrayAdapter:Landroid/widget/ArrayAdapter;
invoke-virtual {p0, v2}, Lco/vine/android/PostOptionsDialogActivity;->setListAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->getListView()Landroid/widget/ListView;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V
invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->getListView()Landroid/widget/ListView;
move-result-object v2
invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method public static onActivityResult(Lco/vine/android/client/AppController;Landroid/app/Activity;ILandroid/content/Intent;)Lco/vine/android/PostOptionsDialogActivity$Result;
.registers 33
const/16 v22, 0x0
const/16 v20, 0x0
const/4 v3, -0x1
move/from16 v0, p2
if-ne v0, v3, :cond_33
if-eqz p3, :cond_33
invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v19
const-string v3, "action_report"
move-object/from16 v0, v19
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_3d
const-string v3, "post_id"
const-wide/16 v13, 0x0
move-object/from16 v0, p3
invoke-virtual {v0, v3, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v6
const-wide/16 v13, 0x0
cmp-long v3, v6, v13
if-lez v3, :cond_33
invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v3
move-object/from16 v0, p0
invoke-virtual {v0, v3, v6, v7}, Lco/vine/android/client/AppController;->reportPost(Lco/vine/android/client/Session;J)Ljava/lang/String;
move-result-object v22
:goto_33
:cond_33
new-instance v3, Lco/vine/android/PostOptionsDialogActivity$Result;
move-object/from16 v0, v22
move-object/from16 v1, v20
invoke-direct {v3, v0, v1}, Lco/vine/android/PostOptionsDialogActivity$Result;-><init>(Ljava/lang/String;Landroid/content/Intent;)V
return-object v3
:cond_3d
const-string v3, "action_delete"
move-object/from16 v0, v19
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_62
const-string v3, "post_id"
const-wide/16 v13, 0x0
move-object/from16 v0, p3
invoke-virtual {v0, v3, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v6
const-wide/16 v13, 0x0
cmp-long v3, v6, v13
if-lez v3, :cond_33
invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v3
move-object/from16 v0, p0
invoke-virtual {v0, v3, v6, v7}, Lco/vine/android/client/AppController;->deletePost(Lco/vine/android/client/Session;J)Ljava/lang/String;
move-result-object v22
goto :goto_33
:cond_62
const-string v3, "action_twitter"
move-object/from16 v0, v19
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_79
const-string v3, "twitter"
invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v5
move-object/from16 v0, p1
invoke-static {v0, v3, v5}, Lco/vine/android/ReshareActivity;->getReshareIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
move-result-object v20
goto :goto_33
:cond_79
const-string v3, "action_facebook"
move-object/from16 v0, v19
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_90
const-string v3, "facebook"
invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v5
move-object/from16 v0, p1
invoke-static {v0, v3, v5}, Lco/vine/android/ReshareActivity;->getReshareIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
move-result-object v20
goto :goto_33
:cond_90
const-string v3, "action_vm"
move-object/from16 v0, v19
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_c6
const-string v3, "post_id"
const-wide/16 v13, 0x0
move-object/from16 v0, p3
invoke-virtual {v0, v3, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v6
const-string v3, "video_url"
move-object/from16 v0, p3
invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v27
const-string v3, "thumbnail_url"
move-object/from16 v0, p3
invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v25
const-wide/16 v13, 0x0
cmp-long v3, v6, v13
if-lez v3, :cond_33
move-object/from16 v0, p1
move-object/from16 v1, v27
move-object/from16 v2, v25
invoke-static {v0, v6, v7, v1, v2}, Lco/vine/android/RecipientPickerActivity;->getIntent(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v20
goto/16 :goto_33
:cond_c6
const-string v3, "action_other"
move-object/from16 v0, v19
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_13d
const-string v3, "other"
const-string v5, "post_id"
const-wide/16 v13, 0x0
move-object/from16 v0, p3
invoke-virtual {v0, v5, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v13
invoke-static {v3, v13, v14}, Lco/vine/android/util/FlurryUtils;->trackSharePost(Ljava/lang/String;J)V
invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v23
const-string v3, "name"
move-object/from16 v0, p3
invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
const-string v3, "share_url"
move-object/from16 v0, p3
invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v26
new-instance v24, Landroid/content/Intent;
const-string v3, "android.intent.action.SEND"
move-object/from16 v0, v24
invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v3, "text/plain"
move-object/from16 v0, v24
invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
const/high16 v3, 0x8
move-object/from16 v0, v24
invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
const-string v3, "android.intent.extra.SUBJECT"
const v5, 0x7f0e0209
const/4 v13, 0x1
new-array v13, v13, [Ljava/lang/Object;
const/4 v14, 0x0
aput-object v21, v13, v14
move-object/from16 v0, v23
invoke-virtual {v0, v5, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
move-object/from16 v0, v24
invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v3, "android.intent.extra.TEXT"
const v5, 0x7f0e020a
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/4 v14, 0x0
aput-object v21, v13, v14
const/4 v14, 0x1
aput-object v26, v13, v14
move-object/from16 v0, v23
invoke-virtual {v0, v5, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
move-object/from16 v0, v24
invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-object/from16 v20, v24
goto/16 :goto_33
:cond_13d
const-string v3, "action_original_post"
move-object/from16 v0, v19
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_15f
const-string v3, "post_id"
const-wide/16 v13, 0x0
move-object/from16 v0, p3
invoke-virtual {v0, v3, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v6
const-wide/16 v13, 0x0
cmp-long v3, v6, v13
if-lez v3, :cond_33
move-object/from16 v0, p1
invoke-static {v0, v6, v7}, Lco/vine/android/SingleActivity;->getIntent(Landroid/content/Context;J)Landroid/content/Intent;
move-result-object v20
goto/16 :goto_33
:cond_15f
const-string v3, "action_revine"
move-object/from16 v0, v19
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_33
const-string v3, "post_id"
const-wide/16 v13, 0x0
move-object/from16 v0, p3
invoke-virtual {v0, v3, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v6
const-string v3, "revine_id"
const-wide/16 v13, 0x0
move-object/from16 v0, p3
invoke-virtual {v0, v3, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v8
const-string v3, "post_user_id"
const-wide/16 v13, 0x0
move-object/from16 v0, p3
invoke-virtual {v0, v3, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v11
const-string v3, "following"
const/4 v5, 0x0
move-object/from16 v0, p3
invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v10
const-string v3, "was_revined"
const/4 v5, 0x0
move-object/from16 v0, p3
invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v28
const-string v3, "flurry_event_source"
move-object/from16 v0, p3
invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
if-eqz v28, :cond_1b0
invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v5
const/4 v13, 0x1
move-object/from16 v3, p0
invoke-virtual/range {v3 .. v13}, Lco/vine/android/client/AppController;->unRevine(Ljava/lang/String;Lco/vine/android/client/Session;JJZJZ)Ljava/lang/String;
move-result-object v22
goto/16 :goto_33
:cond_1b0
invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v15
invoke-virtual/range {p0 .. p0}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v3
invoke-virtual {v3}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;
move-result-object v18
move-object/from16 v13, p0
move-object v14, v4
move-wide/from16 v16, v6
invoke-virtual/range {v13 .. v18}, Lco/vine/android/client/AppController;->revine(Ljava/lang/String;Lco/vine/android/client/Session;JLjava/lang/String;)Ljava/lang/String;
move-result-object v22
goto/16 :goto_33
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/PostOptionsDialogActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lco/vine/android/PostOptionsDialogActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 13
const-string v1, " + Lco/vine/android/PostOptionsDialogActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v10, 0x7f0e0057
const/4 v9, 0x7
const/4 v8, 0x1
const/4 v7, 0x0
invoke-super {p0, p1}, Lco/vine/android/SupportListActivity;->onCreate(Landroid/os/Bundle;)V
const v5, 0x7f030068
invoke-virtual {p0, v5}, Lco/vine/android/PostOptionsDialogActivity;->setContentView(I)V
invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v5, "post_twitter"
invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v5
iput-boolean v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mPostTwitter:Z
const-string v5, "post_facebook"
invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v5
iput-boolean v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mPostFacebook:Z
const-string v5, "share_other"
invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v5
iput-boolean v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mShareOther:Z
const-string v5, "share_vm"
invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v5
iput-boolean v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mVm:Z
const-string v5, "report"
invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v5
iput-boolean v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mReport:Z
const-string v5, "delete"
invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v5
iput-boolean v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mDelete:Z
const-string v5, "revine"
invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v5
iput-boolean v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mRevine:Z
const-string v5, "was_revined"
invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v5
iput-boolean v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mWasRevined:Z
const-string v5, "post_id"
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v5
iput-wide v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mPostId:J
const-string v5, "name"
invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
iput-object v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mName:Ljava/lang/String;
const-string v5, "original_post"
invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v5
iput-boolean v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mOriginalPost:Z
invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
new-instance v5, Lco/vine/android/PostOptionsDialogActivity$OptionArrayAdapter;
const v6, 0x7f03006b
invoke-direct {v5, p0, p0, v6}, Lco/vine/android/PostOptionsDialogActivity$OptionArrayAdapter;-><init>(Lco/vine/android/PostOptionsDialogActivity;Landroid/content/Context;I)V
iput-object v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mArrayAdapter:Landroid/widget/ArrayAdapter;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-boolean v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mVm:Z
if-eqz v5, :cond_96
new-instance v5, Lco/vine/android/PostOptionsDialogActivity$Option;
const/4 v6, 0x3
const v7, 0x7f0e0214
invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lco/vine/android/PostOptionsDialogActivity$Option;-><init>(ILjava/lang/String;)V
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_96
iget-boolean v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mRevine:Z
if-eqz v5, :cond_af
iget-boolean v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mWasRevined:Z
if-eqz v5, :cond_161
const v4, 0x7f0e0255
:goto_a1
new-instance v5, Lco/vine/android/PostOptionsDialogActivity$Option;
const/16 v6, 0x9
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lco/vine/android/PostOptionsDialogActivity$Option;-><init>(ILjava/lang/String;)V
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_af
iget-boolean v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mOriginalPost:Z
if-eqz v5, :cond_c4
new-instance v5, Lco/vine/android/PostOptionsDialogActivity$Option;
const/16 v6, 0x8
const v7, 0x7f0e0168
invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lco/vine/android/PostOptionsDialogActivity$Option;-><init>(ILjava/lang/String;)V
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_c4
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iget-boolean v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mPostTwitter:Z
if-eqz v5, :cond_dc
new-instance v5, Lco/vine/android/PostOptionsDialogActivity$Option;
const v6, 0x7f0e0212
invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v8, v6}, Lco/vine/android/PostOptionsDialogActivity$Option;-><init>(ILjava/lang/String;)V
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_dc
iget-boolean v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mPostFacebook:Z
if-eqz v5, :cond_f0
new-instance v5, Lco/vine/android/PostOptionsDialogActivity$Option;
const/4 v6, 0x2
const v7, 0x7f0e0204
invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lco/vine/android/PostOptionsDialogActivity$Option;-><init>(ILjava/lang/String;)V
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_f0
iget-boolean v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mShareOther:Z
if-eqz v5, :cond_104
new-instance v5, Lco/vine/android/PostOptionsDialogActivity$Option;
const/4 v6, 0x4
const v7, 0x7f0e0208
invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lco/vine/android/PostOptionsDialogActivity$Option;-><init>(ILjava/lang/String;)V
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_104
iget-boolean v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mReport:Z
if-eqz v5, :cond_118
new-instance v5, Lco/vine/android/PostOptionsDialogActivity$Option;
const/4 v6, 0x5
const v7, 0x7f0e01a6
invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lco/vine/android/PostOptionsDialogActivity$Option;-><init>(ILjava/lang/String;)V
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_118
iget-boolean v5, p0, Lco/vine/android/PostOptionsDialogActivity;->mDelete:Z
if-eqz v5, :cond_12c
new-instance v5, Lco/vine/android/PostOptionsDialogActivity$Option;
const/4 v6, 0x6
const v7, 0x7f0e00b5
invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lco/vine/android/PostOptionsDialogActivity$Option;-><init>(ILjava/lang/String;)V
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_12c
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v5
if-lez v5, :cond_14f
new-instance v5, Lco/vine/android/PostOptionsDialogActivity$Option;
const/16 v6, 0xa
const v7, 0x7f0e0147
invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lco/vine/android/PostOptionsDialogActivity$Option;-><init>(ILjava/lang/String;)V
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v5, Lco/vine/android/PostOptionsDialogActivity$Option;
invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v9, v6}, Lco/vine/android/PostOptionsDialogActivity$Option;-><init>(ILjava/lang/String;)V
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_14f
iput-object v2, p0, Lco/vine/android/PostOptionsDialogActivity;->mItems2:Ljava/util/ArrayList;
new-instance v5, Lco/vine/android/PostOptionsDialogActivity$Option;
invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v9, v6}, Lco/vine/android/PostOptionsDialogActivity$Option;-><init>(ILjava/lang/String;)V
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-direct {p0, v1}, Lco/vine/android/PostOptionsDialogActivity;->invalidateOptions(Ljava/util/ArrayList;)V
const-string v1, " - Lco/vine/android/PostOptionsDialogActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_161
const v4, 0x7f0e01b2
goto/16 :goto_a1
.end method
.method public onDialogDone(Landroid/content/DialogInterface;II)V
.registers 9
const/4 v4, -0x1
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "post_id"
iget-wide v2, p0, Lco/vine/android/PostOptionsDialogActivity;->mPostId:J
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
packed-switch p2, :pswitch_data_32
:goto_10
return-void
:pswitch_11
packed-switch p3, :pswitch_data_3a
goto :goto_10
:pswitch_15
const-string v1, "action_report"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v4, v0}, Lco/vine/android/PostOptionsDialogActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->finish()V
goto :goto_10
:pswitch_21
packed-switch p3, :pswitch_data_40
goto :goto_10
:pswitch_25
const-string v1, "action_delete"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v4, v0}, Lco/vine/android/PostOptionsDialogActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->finish()V
goto :goto_10
nop
:pswitch_data_32
.packed-switch 0x1
:pswitch_11
:pswitch_21
.end packed-switch
:pswitch_data_3a
.packed-switch -0x1
:pswitch_15
.end packed-switch
:pswitch_data_40
.packed-switch -0x1
:pswitch_25
.end packed-switch
.end method
.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 13
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/PostOptionsDialogActivity; onListItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v4, 0x7f0e0057
const/4 v6, -0x1
invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/Integer;
invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
move-result v1
packed-switch v1, :pswitch_data_b4
:goto_15
const-string v1, " - Lco/vine/android/PostOptionsDialogActivity; onListItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_16
iget-object v3, p0, Lco/vine/android/PostOptionsDialogActivity;->mItems2:Ljava/util/ArrayList;
invoke-direct {p0, v3}, Lco/vine/android/PostOptionsDialogActivity;->invalidateOptions(Ljava/util/ArrayList;)V
goto :goto_15
:pswitch_1c
const-string v3, "action_original_post"
invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v6, v0}, Lco/vine/android/PostOptionsDialogActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->finish()V
goto :goto_15
:pswitch_28
const-string v3, "action_twitter"
invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v6, v0}, Lco/vine/android/PostOptionsDialogActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->finish()V
goto :goto_15
:pswitch_34
const-string v3, "action_facebook"
invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v6, v0}, Lco/vine/android/PostOptionsDialogActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->finish()V
goto :goto_15
:pswitch_40
const-string v3, "action_vm"
invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v6, v0}, Lco/vine/android/PostOptionsDialogActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->finish()V
goto :goto_15
:pswitch_4c
const-string v3, "post_id"
iget-wide v4, p0, Lco/vine/android/PostOptionsDialogActivity;->mPostId:J
invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v3, "action_other"
invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v6, v0}, Lco/vine/android/PostOptionsDialogActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->finish()V
goto :goto_15
:pswitch_5f
const/4 v3, 0x1
invoke-static {v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v2
invoke-virtual {v2, p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setListener(Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;)V
const v3, 0x7f0e01a7
invoke-virtual {v2, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
const v3, 0x7f0e01a6
invoke-virtual {v2, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
invoke-virtual {v2, v4}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNeutralButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v3
invoke-virtual {v2, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
goto :goto_15
:pswitch_7e
const/4 v3, 0x2
invoke-static {v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v2
invoke-virtual {v2, p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setListener(Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;)V
const v3, 0x7f0e00ae
invoke-virtual {v2, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
const v3, 0x7f0e00b5
invoke-virtual {v2, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
invoke-virtual {v2, v4}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNeutralButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v3
invoke-virtual {v2, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
goto/16 :goto_15
:pswitch_9e
const/4 v3, 0x0
invoke-virtual {p0, v3, v0}, Lco/vine/android/PostOptionsDialogActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->finish()V
goto/16 :goto_15
:pswitch_a7
const-string v3, "action_revine"
invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v6, v0}, Lco/vine/android/PostOptionsDialogActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lco/vine/android/PostOptionsDialogActivity;->finish()V
goto/16 :goto_15
:pswitch_data_b4
.packed-switch 0x1
:pswitch_28
:pswitch_34
:pswitch_40
:pswitch_4c
:pswitch_5f
:pswitch_7e
:pswitch_9e
:pswitch_1c
:pswitch_a7
:pswitch_16
.end packed-switch
.end method