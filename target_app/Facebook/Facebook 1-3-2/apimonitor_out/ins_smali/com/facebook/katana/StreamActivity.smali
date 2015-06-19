.class public Lcom/facebook/katana/StreamActivity;
.super Lcom/facebook/katana/FacebookListActivity;
.source "StreamActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/facebook/katana/TabProgressSource;
.field public static final ACTION_SHARE:Ljava/lang/String; = "com.facebook.katana.SHARE"
.field public static final EXTRA_LOGOUT:Ljava/lang/String; = "extra_logout"
.field public static final EXTRA_POP_TO_FIRST:Ljava/lang/String; = "extra_ptf"
.field public static final EXTRA_USER_ID:Ljava/lang/String; = "extra_user_id"
.field public static final EXTRA_WALL:Ljava/lang/String; = "extra_wall"
.field private static final FEEDBACK_ID:I = 0x2
.field private static final OPEN_LINK_IN_BROWSER_ID:I = 0x6
.field private static final PHOTO_SOURCE_CHOOSER_DIALOG_ID:I = 0x4
.field private static final PICK_EXISTING_PHOTO_REQUEST_CODE:I = 0xf
.field private static final PROGRESS_PUBLISHING_DIALOG:I = 0x2
.field private static final PROGRESS_REMOVING_POST_DIALOG:I = 0x3
.field private static final REFRESH_ID:I = 0xc
.field private static final REMOVE_POST_ID:I = 0x5
.field private static final STREAM_SCROLL_POS:Ljava/lang/String; = "stream_scroll_pos"
.field private static final TAKE_CAMERA_PHOTO_REQUEST_CODE:I = 0xe
.field private static final VIEW_PROFILE_ID:I = 0x3
.field private static final VIEW_TARGET_WALL_ID:I = 0x4
.field private static final VIEW_URL_0_ID:I = 0xb
.field private static final VIEW_URL_1_ID:I = 0xc
.field private static final VIEW_URL_2_ID:I = 0xd
.field private static sStackSize:I
.field private mAdapter:Lcom/facebook/katana/StreamAdapter;
.field private mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
.field private mHome:Z
.field private mPhotoUploader:Lcom/facebook/katana/PhotoUploader;
.field private mProgressListener:Lcom/facebook/katana/TabProgressListener;
.field private mPublishReqId:Ljava/lang/String;
.field private mRemoveReqId:Ljava/lang/String;
.field private mShowingProgress:Z
.field private mUserId:J
.field private mWall:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/FacebookListActivity;-><init>()V
return-void
.end method
.method static synthetic access$10(Lcom/facebook/katana/StreamActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/StreamActivity;->mWall:Z
return v0
.end method
.method static synthetic access$11(Lcom/facebook/katana/StreamActivity;)J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
return-wide v0
.end method
.method static synthetic access$12(Lcom/facebook/katana/StreamActivity;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/StreamActivity;->showProgress(Z)V
return-void
.end method
.method static synthetic access$13(Lcom/facebook/katana/StreamActivity;)Lcom/facebook/katana/StreamAdapter;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
return-object v0
.end method
.method static synthetic access$14(Lcom/facebook/katana/StreamActivity;Lcom/facebook/katana/binding/FacebookStreamContainer;)Z
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/katana/StreamActivity;->handleStreamError(Lcom/facebook/katana/binding/FacebookStreamContainer;)Z
move-result v0
return v0
.end method
.method static synthetic access$15(Lcom/facebook/katana/StreamActivity;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/StreamActivity;->mPublishReqId:Ljava/lang/String;
return-void
.end method
.method static synthetic access$16(Lcom/facebook/katana/StreamActivity;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/StreamActivity;->mRemoveReqId:Ljava/lang/String;
return-void
.end method
.method static synthetic access$17(Lcom/facebook/katana/StreamActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/StreamActivity;->mHome:Z
return v0
.end method
.method static synthetic access$18(Lcom/facebook/katana/StreamActivity;)Lcom/facebook/katana/binding/AppSession;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
return-object v0
.end method
.method static synthetic access$19(Lcom/facebook/katana/StreamActivity;Lcom/facebook/katana/service/api/FacebookPost$Profile;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/StreamActivity;->goToProfile(Lcom/facebook/katana/service/api/FacebookPost$Profile;)V
return-void
.end method
.method static synthetic access$20(Lcom/facebook/katana/StreamActivity;Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/StreamActivity;->openMediaItem(Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;)V
return-void
.end method
.method private getSourceIds()[J
.registers 8
const/4 v6, 0x1
const/4 v5, 0x0
iget-object v1, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v1
iget-wide v3, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
cmp-long v1, v1, v3
if-nez v1, :cond_21
iget-boolean v1, p0, Lcom/facebook/katana/StreamActivity;->mWall:Z
if-eqz v1, :cond_1d
new-array v0, v6, [J
iget-wide v1, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
aput-wide v1, v0, v5
:goto_1c
return-object v0
:cond_1d
const/4 v0, 0x0
check-cast v0, [J
goto :goto_1c
:cond_21
new-array v0, v6, [J
iget-wide v1, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
aput-wide v1, v0, v5
goto :goto_1c
.end method
.method private goToProfile(Lcom/facebook/katana/service/api/FacebookPost$Profile;)V
.registers 5
invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getUserId()J
move-result-wide v1
invoke-static {p0, v1, v2}, Lcom/facebook/katana/ProfileTabHostActivity;->intentForProfile(Landroid/content/Context;J)Landroid/content/Intent;
move-result-object v0
const-string v1, "extra_user_display_name"
invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getDisplayName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "extra_image_url"
invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getPic()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "extra_user_type"
invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getType()I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const/4 v1, 0x3
invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/StreamActivity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method private handleStreamError(Lcom/facebook/katana/binding/FacebookStreamContainer;)Z
.registers 9
const/4 v6, 0x1
invoke-virtual {p1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPosts()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
if-nez v2, :cond_3b
iget-wide v2, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
iget-object v4, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v4}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v4
cmp-long v2, v2, v4
if-eqz v2, :cond_3b
new-instance v0, Landroid/content/Intent;
const-class v2, Lcom/facebook/katana/UserInfoActivity;
invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "extra_uid"
iget-wide v3, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v2, "extra_profile_photo"
invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v2, "extra_limited"
invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/facebook/katana/StreamActivity;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p0}, Lcom/facebook/katana/StreamActivity;->finish()V
const/4 v1, 0x1
:goto_3a
return v1
:cond_3b
const/4 v1, 0x0
goto :goto_3a
.end method
.method private openMediaItem(Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;)V
.registers 3
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v0, p0, p1}, Lcom/facebook/katana/binding/AppSession;->openMediaItem(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;)V
return-void
.end method
.method private refresh()V
.registers 12
const-wide/16 v5, -0x1
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v2
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-direct {p0}, Lcom/facebook/katana/StreamActivity;->getSourceIds()[J
move-result-object v4
const/16 v9, 0x14
const/4 v10, 0x0
move-object v1, p0
move-wide v7, v5
invoke-virtual/range {v0 .. v10}, Lcom/facebook/katana/binding/AppSession;->streamGet(Landroid/content/Context;J[JJJII)Ljava/lang/String;
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/facebook/katana/StreamActivity;->showProgress(Z)V
return-void
.end method
.method private setupEmptyView()V
.registers 3
const v0, 0x7f0b0013
invoke-virtual {p0, v0}, Lcom/facebook/katana/StreamActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f08013f
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
const v0, 0x7f0b0015
invoke-virtual {p0, v0}, Lcom/facebook/katana/StreamActivity;->findViewById(I)Landroid/view/View;
move-result-object p0
check-cast p0, Landroid/widget/TextView;
const v0, 0x7f080138
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V
return-void
.end method
.method private showProgress(Z)V
.registers 8
const v5, 0x7f0b0014
const v4, 0x7f0b0013
const/16 v3, 0x8
const/4 v2, 0x0
iget-object v1, p0, Lcom/facebook/katana/StreamActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
if-eqz v1, :cond_12
iget-object v1, p0, Lcom/facebook/katana/StreamActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
invoke-interface {v1, p1}, Lcom/facebook/katana/TabProgressListener;->onShowProgress(Z)V
:cond_12
iput-boolean p1, p0, Lcom/facebook/katana/StreamActivity;->mShowingProgress:Z
const v1, 0x7f0b00b2
invoke-virtual {p0, v1}, Lcom/facebook/katana/StreamActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
if-eqz p1, :cond_31
if-eqz v0, :cond_22
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
:cond_22
invoke-virtual {p0, v4}, Lcom/facebook/katana/StreamActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v5}, Lcom/facebook/katana/StreamActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
:goto_30
return-void
:cond_31
if-eqz v0, :cond_36
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
:cond_36
invoke-virtual {p0, v4}, Lcom/facebook/katana/StreamActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v5}, Lcom/facebook/katana/StreamActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
goto :goto_30
.end method
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
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 6
const/4 v1, 0x0
invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/FacebookListActivity;->onActivityResult(IILandroid/content/Intent;)V
if-nez p2, :cond_7
:goto_6
:cond_6
return-void
:cond_7
sparse-switch p1, :sswitch_data_34
goto :goto_6
:sswitch_b
if-eqz p3, :cond_6
iget-boolean v0, p0, Lcom/facebook/katana/StreamActivity;->mHome:Z
if-nez v0, :cond_21
const-string v0, "extra_ptf"
invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_6
const/4 v0, -0x1
invoke-virtual {p0, v0, p3}, Lcom/facebook/katana/StreamActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lcom/facebook/katana/StreamActivity;->finish()V
goto :goto_6
:cond_21
const-string v0, "extra_logout"
invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_6
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
goto :goto_6
:sswitch_2d
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mPhotoUploader:Lcom/facebook/katana/PhotoUploader;
invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/katana/PhotoUploader;->onActivityResult(IILandroid/content/Intent;)V
goto :goto_6
nop
:sswitch_data_34
.sparse-switch
0x2 -> :sswitch_b
0x3 -> :sswitch_b
0xe -> :sswitch_2d
0xf -> :sswitch_2d
.end sparse-switch
.end method
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/StreamActivity; onContextItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
move-result-object v2
check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
:try_end_6
.catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_f
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v5
packed-switch v5, :pswitch_data_d0
:cond_d
:goto_d
:pswitch_d
const/4 v5, 0x1
:goto_e
const-string v1, " - Lcom/facebook/katana/StreamActivity; onContextItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v5
:catch_f
move-exception v5
move-object v1, v5
const/4 v5, 0x0
goto :goto_e
:pswitch_13
iget-object v5, p0, Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
invoke-virtual {v5, v6}, Lcom/facebook/katana/StreamAdapter;->getItemByPosition(I)Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v4
new-instance v3, Landroid/content/Intent;
const-class v5, Lcom/facebook/katana/FeedbackActivity;
invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v5, "extra_post_id"
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v5, "extra_wall"
iget-boolean v6, p0, Lcom/facebook/katana/StreamActivity;->mWall:Z
invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v5, "extra_uid"
iget-wide v6, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const/4 v5, 0x2
invoke-virtual {p0, v3, v5}, Lcom/facebook/katana/StreamActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_d
:pswitch_3e
iget-object v5, p0, Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
invoke-virtual {v5, v6}, Lcom/facebook/katana/StreamAdapter;->getItemByPosition(I)Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v5
invoke-direct {p0, v5}, Lcom/facebook/katana/StreamActivity;->goToProfile(Lcom/facebook/katana/service/api/FacebookPost$Profile;)V
goto :goto_d
:pswitch_4e
iget-object v5, p0, Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
invoke-virtual {v5, v6}, Lcom/facebook/katana/StreamAdapter;->getItemByPosition(I)Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost;->getTargetProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v5
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getUserId()J
move-result-wide v5
iget-wide v7, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
cmp-long v5, v5, v7
if-nez v5, :cond_6c
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v5
invoke-direct {p0, v5}, Lcom/facebook/katana/StreamActivity;->goToProfile(Lcom/facebook/katana/service/api/FacebookPost$Profile;)V
goto :goto_d
:cond_6c
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost;->getTargetProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v5
invoke-direct {p0, v5}, Lcom/facebook/katana/StreamActivity;->goToProfile(Lcom/facebook/katana/service/api/FacebookPost$Profile;)V
goto :goto_d
:pswitch_74
iget-object v5, p0, Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
invoke-virtual {v5, v6}, Lcom/facebook/katana/StreamAdapter;->getItemByPosition(I)Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost;->getAttachment()Lcom/facebook/katana/service/api/FacebookPost$Attachment;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getHref()Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_d
iget-object v5, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getHref()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, p0, v6}, Lcom/facebook/katana/binding/AppSession;->openURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
goto/16 :goto_d
:pswitch_93
iget-object v5, p0, Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
invoke-virtual {v5, v6}, Lcom/facebook/katana/StreamAdapter;->getItemByPosition(I)Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v4
iget-object v5, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v6, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v6}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v6
invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v6
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;
move-result-object v8
invoke-virtual {v5, p0, v6, v7, v8}, Lcom/facebook/katana/binding/AppSession;->streamRemovePost(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
move-result-object v5
iput-object v5, p0, Lcom/facebook/katana/StreamActivity;->mRemoveReqId:Ljava/lang/String;
const/4 v5, 0x3
invoke-virtual {p0, v5}, Lcom/facebook/katana/StreamActivity;->showDialog(I)V
goto/16 :goto_d
:pswitch_b7
new-instance v5, Landroid/content/Intent;
const-string v6, "android.intent.action.VIEW"
invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;
move-result-object v7
invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v7
invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {p0, v5}, Lcom/facebook/katana/StreamActivity;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_d
nop
:pswitch_data_d0
.packed-switch 0x2
:pswitch_13
:pswitch_3e
:pswitch_4e
:pswitch_93
:pswitch_74
:pswitch_d
:pswitch_d
:pswitch_d
:pswitch_d
:pswitch_b7
:pswitch_b7
:pswitch_b7
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 14
const-string v1, " + Lcom/facebook/katana/StreamActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v11, 0x8
const/4 v10, 0x0
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreate(Landroid/os/Bundle;)V
const v6, 0x7f030041
invoke-virtual {p0, v6}, Lcom/facebook/katana/StreamActivity;->setContentView(I)V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v6
iput-object v6, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v6, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v6, :cond_1e
invoke-virtual {p0}, Lcom/facebook/katana/StreamActivity;->getIntent()Landroid/content/Intent;
move-result-object v6
invoke-static {p0, v6}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;Landroid/content/Intent;)V
:goto_1d
:cond_1d
const-string v1, " - Lcom/facebook/katana/StreamActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1e
iget-object v6, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v6}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v6
invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v1
invoke-virtual {p0}, Lcom/facebook/katana/StreamActivity;->getIntent()Landroid/content/Intent;
move-result-object v6
const-string v7, "extra_user_id"
invoke-virtual {v6, v7, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v6
iput-wide v6, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
invoke-virtual {p0}, Lcom/facebook/katana/StreamActivity;->getIntent()Landroid/content/Intent;
move-result-object v6
const-string v7, "extra_wall"
invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v6
iput-boolean v6, p0, Lcom/facebook/katana/StreamActivity;->mWall:Z
iget-wide v6, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
iget-object v8, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v8}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v8
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v8
cmp-long v6, v6, v8
if-nez v6, :cond_11a
iget-boolean v6, p0, Lcom/facebook/katana/StreamActivity;->mWall:Z
if-nez v6, :cond_11a
const/4 v6, 0x1
:goto_55
iput-boolean v6, p0, Lcom/facebook/katana/StreamActivity;->mHome:Z
iget-object v6, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-wide v7, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
iget-boolean v9, p0, Lcom/facebook/katana/StreamActivity;->mWall:Z
invoke-virtual {v6, v7, v8, v9}, Lcom/facebook/katana/binding/AppSession;->getStreamContainer(JZ)Lcom/facebook/katana/binding/FacebookStreamContainer;
move-result-object v4
if-eqz v4, :cond_69
invoke-direct {p0, v4}, Lcom/facebook/katana/StreamActivity;->handleStreamError(Lcom/facebook/katana/binding/FacebookStreamContainer;)Z
move-result v6
if-nez v6, :cond_1d
:cond_69
new-instance v6, Lcom/facebook/katana/StreamActivity$1;
invoke-direct {v6, p0}, Lcom/facebook/katana/StreamActivity$1;-><init>(Lcom/facebook/katana/StreamActivity;)V
iput-object v6, p0, Lcom/facebook/katana/StreamActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
const v6, 0x7f0b00a1
invoke-virtual {p0, v6}, Lcom/facebook/katana/StreamActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/Button;
new-instance v6, Lcom/facebook/katana/StreamActivity$2;
invoke-direct {v6, p0}, Lcom/facebook/katana/StreamActivity$2;-><init>(Lcom/facebook/katana/StreamActivity;)V
invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v6, 0x7f0b009f
invoke-virtual {p0, v6}, Lcom/facebook/katana/StreamActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-boolean v6, p0, Lcom/facebook/katana/StreamActivity;->mWall:Z
if-eqz v6, :cond_11d
iget-wide v6, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
cmp-long v6, v1, v6
if-eqz v6, :cond_11d
invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V
:goto_95
const v6, 0x7f0b00a0
invoke-virtual {p0, v6}, Lcom/facebook/katana/StreamActivity;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/EditText;
invoke-virtual {p0}, Lcom/facebook/katana/StreamActivity;->getIntent()Landroid/content/Intent;
move-result-object v6
invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v6
if-eqz v6, :cond_c3
invoke-virtual {p0}, Lcom/facebook/katana/StreamActivity;->getIntent()Landroid/content/Intent;
move-result-object v6
invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v6
const-string v7, "com.facebook.katana.SHARE"
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_c3
invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z
invoke-virtual {p0}, Lcom/facebook/katana/StreamActivity;->getWindow()Landroid/view/Window;
move-result-object v6
const/4 v7, 0x4
invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V
:cond_c3
iget-boolean v6, p0, Lcom/facebook/katana/StreamActivity;->mHome:Z
if-nez v6, :cond_dd
iget-wide v6, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
iget-object v8, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v8}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v8
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v8
cmp-long v6, v6, v8
if-nez v6, :cond_127
const v6, 0x7f080151
:goto_da
invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(I)V
:cond_dd
new-instance v6, Lcom/facebook/katana/StreamActivity$4;
invoke-direct {v6, p0}, Lcom/facebook/katana/StreamActivity$4;-><init>(Lcom/facebook/katana/StreamActivity;)V
invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
invoke-virtual {p0}, Lcom/facebook/katana/StreamActivity;->getParent()Landroid/app/Activity;
move-result-object v6
if-eqz v6, :cond_f5
const v6, 0x7f0b0034
invoke-virtual {p0, v6}, Lcom/facebook/katana/StreamActivity;->findViewById(I)Landroid/view/View;
move-result-object v6
invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V
:cond_f5
invoke-direct {p0}, Lcom/facebook/katana/StreamActivity;->setupEmptyView()V
invoke-virtual {p0}, Lcom/facebook/katana/StreamActivity;->getListView()Landroid/widget/ListView;
move-result-object v6
invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
invoke-virtual {p0}, Lcom/facebook/katana/StreamActivity;->getListView()Landroid/widget/ListView;
move-result-object v6
invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
sget v6, Lcom/facebook/katana/StreamActivity;->sStackSize:I
add-int/lit8 v6, v6, 0x1
sput v6, Lcom/facebook/katana/StreamActivity;->sStackSize:I
new-instance v6, Lcom/facebook/katana/PhotoUploader;
const/4 v7, 0x0
const/16 v8, 0xe
const/16 v9, 0xf
invoke-direct {v6, p0, v7, v8, v9}, Lcom/facebook/katana/PhotoUploader;-><init>(Landroid/app/Activity;Ljava/lang/String;II)V
iput-object v6, p0, Lcom/facebook/katana/StreamActivity;->mPhotoUploader:Lcom/facebook/katana/PhotoUploader;
goto/16 :goto_1d
:cond_11a
move v6, v10
goto/16 :goto_55
:cond_11d
new-instance v6, Lcom/facebook/katana/StreamActivity$3;
invoke-direct {v6, p0}, Lcom/facebook/katana/StreamActivity$3;-><init>(Lcom/facebook/katana/StreamActivity;)V
invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto/16 :goto_95
:cond_127
const v6, 0x7f08015a
goto :goto_da
.end method
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.registers 18
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/StreamActivity; onCreateContextMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
move-object/from16 v0, p3
check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
move-object v4, v0
:try_end_5
.catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_5} :catch_10
iget-object v8, p0, Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
iget v9, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
invoke-virtual {v8, v9}, Lcom/facebook/katana/StreamAdapter;->getItemByPosition(I)Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v5
if-nez v5, :cond_12
:cond_f
:goto_f
const-string v1, " - Lcom/facebook/katana/StreamActivity; onCreateContextMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_10
move-exception v2
goto :goto_f
:cond_12
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookPost;->getPostType()I
move-result v8
packed-switch v8, :pswitch_data_f2
goto :goto_f
:pswitch_1a
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookPost;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v8
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getDisplayName()Ljava/lang/String;
move-result-object v8
invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookPost;->canInteractWithFeedback()Z
move-result v8
if-eqz v8, :cond_34
const/4 v8, 0x0
const/4 v9, 0x2
const/4 v10, 0x0
const v11, 0x7f080132
invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
:cond_34
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookPost;->getPostType()I
move-result v8
const/4 v9, 0x1
if-ne v8, v9, :cond_44
const/4 v8, 0x0
const/4 v9, 0x6
const/4 v10, 0x0
const v11, 0x7f080134
invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
:cond_44
iget-boolean v8, p0, Lcom/facebook/katana/StreamActivity;->mHome:Z
if-eqz v8, :cond_51
const/4 v8, 0x0
const/4 v9, 0x3
const/4 v10, 0x0
const v11, 0x7f080158
invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
:cond_51
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookPost;->getTargetProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v8
if-eqz v8, :cond_80
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookPost;->getTargetProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v8
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getUserId()J
move-result-wide v8
iget-wide v10, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
cmp-long v8, v8, v10
if-nez v8, :cond_d1
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookPost;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v8
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getDisplayName()Ljava/lang/String;
move-result-object v1
:goto_6d
const/4 v8, 0x0
const/4 v9, 0x4
const/4 v10, 0x0
const v11, 0x7f080159
const/4 v12, 0x1
new-array v12, v12, [Ljava/lang/Object;
const/4 v13, 0x0
aput-object v1, v12, v13
invoke-virtual {p0, v11, v12}, Lcom/facebook/katana/StreamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
:cond_80
iget-boolean v8, p0, Lcom/facebook/katana/StreamActivity;->mWall:Z
if-eqz v8, :cond_aa
iget-wide v8, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
iget-object v10, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v10}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v10
invoke-virtual {v10}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v10
cmp-long v8, v8, v10
if-nez v8, :cond_aa
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookPost;->getAppId()J
move-result-wide v8
const-wide v10, 0x51a67c8e50L
cmp-long v8, v8, v10
if-nez v8, :cond_aa
const/4 v8, 0x0
const/4 v9, 0x5
const/4 v10, 0x0
const v11, 0x7f08014c
invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
:cond_aa
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookPost;->getMessage()Ljava/lang/String;
move-result-object v8
const-string v9, "^(https?://)?([a-zA-Z0-9_-]+\\.[a-zA-Z0-9_-]+)+(/*[A-Za-z0-9/\\-_&:?\\+=//.%]*)*"
const/4 v10, 0x0
const/4 v11, 0x3
invoke-static {v8, v9, v10, v7, v11}, Lcom/facebook/katana/util/StringUtils;->parseExpression(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
const/4 v3, 0x0
invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_bf
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-eqz v9, :cond_f
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
packed-switch v3, :pswitch_data_fe
:goto_ce
add-int/lit8 v3, v3, 0x1
goto :goto_bf
:cond_d1
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookPost;->getTargetProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v8
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getDisplayName()Ljava/lang/String;
move-result-object v1
goto :goto_6d
:pswitch_da
const/4 v9, 0x0
const/16 v10, 0xb
const/4 v11, 0x0
invoke-interface {p1, v9, v10, v11, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
goto :goto_ce
:pswitch_e2
const/4 v9, 0x0
const/16 v10, 0xc
const/4 v11, 0x0
invoke-interface {p1, v9, v10, v11, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
goto :goto_ce
:pswitch_ea
const/4 v9, 0x0
const/16 v10, 0xd
const/4 v11, 0x0
invoke-interface {p1, v9, v10, v11, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
goto :goto_ce
:pswitch_data_fe
.packed-switch 0x0
:pswitch_da
:pswitch_e2
:pswitch_ea
.end packed-switch
:pswitch_data_f2
.packed-switch 0x0
:pswitch_1a
:pswitch_1a
:pswitch_1a
:pswitch_1a
.end packed-switch
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
packed-switch p1, :pswitch_data_42
const/4 v1, 0x0
:goto_6
return-object v1
:pswitch_7
new-instance v0, Landroid/app/ProgressDialog;
invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
const v1, 0x7f080146
invoke-virtual {p0, v1}, Lcom/facebook/katana/StreamActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V
move-object v1, v0
goto :goto_6
:pswitch_21
new-instance v0, Landroid/app/ProgressDialog;
invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
const v1, 0x7f08014f
invoke-virtual {p0, v1}, Lcom/facebook/katana/StreamActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V
move-object v1, v0
goto :goto_6
:pswitch_3b
iget-object v1, p0, Lcom/facebook/katana/StreamActivity;->mPhotoUploader:Lcom/facebook/katana/PhotoUploader;
invoke-virtual {v1}, Lcom/facebook/katana/PhotoUploader;->createDialog()Landroid/app/Dialog;
move-result-object v1
goto :goto_6
:pswitch_data_42
.packed-switch 0x2
:pswitch_7
:pswitch_21
:pswitch_3b
.end packed-switch
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/StreamActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
const/16 v0, 0xc
const v1, 0x7f080147
invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f020081
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/facebook/katana/StreamActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/facebook/katana/StreamActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onDestroy()V
sget v0, Lcom/facebook/katana/StreamActivity;->sStackSize:I
const/4 v1, 0x1
sub-int/2addr v0, v1
sput v0, Lcom/facebook/katana/StreamActivity;->sStackSize:I
const-string v1, " - Lcom/facebook/katana/StreamActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 25
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/StreamActivity; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
move-object v3, v0
move-object v0, v3
move/from16 v1, p3
invoke-virtual {v0, v1}, Lcom/facebook/katana/StreamAdapter;->getItemByPosition(I)Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v17
if-nez v17, :cond_7c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
move-object v3, v0
invoke-virtual {v3}, Lcom/facebook/katana/StreamAdapter;->isLoadingMore()Z
move-result v3
if-nez v3, :cond_7b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
move-object v3, v0
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/facebook/katana/StreamActivity;->mUserId:J
move-wide v4, v0
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/facebook/katana/StreamActivity;->mWall:Z
move v6, v0
invoke-virtual {v3, v4, v5, v6}, Lcom/facebook/katana/binding/AppSession;->getStreamContainer(JZ)Lcom/facebook/katana/binding/FacebookStreamContainer;
move-result-object v14
if-eqz v14, :cond_7b
invoke-virtual {v14}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPosts()Ljava/util/List;
move-result-object v18
invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I
move-result v3
if-lez v3, :cond_7b
invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I
move-result v3
const/4 v4, 0x1
sub-int/2addr v3, v4
move-object/from16 v0, v18
move v1, v3
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v16
check-cast v16, Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
move-object v3, v0
const/4 v4, 0x1
invoke-virtual {v3, v4}, Lcom/facebook/katana/StreamAdapter;->loadingMore(Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
move-object v3, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
move-object v4, v0
invoke-virtual {v4}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v5
invoke-direct/range {p0 .. p0}, Lcom/facebook/katana/StreamActivity;->getSourceIds()[J
move-result-object v7
const-wide/16 v8, -0x1
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getCreatedTime()J
move-result-wide v10
const/16 v12, 0x14
const/4 v13, 0x2
move-object/from16 v4, p0
invoke-virtual/range {v3 .. v13}, Lcom/facebook/katana/binding/AppSession;->streamGet(Landroid/content/Context;J[JJJII)Ljava/lang/String;
const/4 v3, 0x1
move-object/from16 v0, p0
move v1, v3
invoke-direct {v0, v1}, Lcom/facebook/katana/StreamActivity;->showProgress(Z)V
:goto_7b
:cond_7b
const-string v1, " - Lcom/facebook/katana/StreamActivity; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_7c
invoke-virtual/range {v17 .. v17}, Lcom/facebook/katana/service/api/FacebookPost;->getPostType()I
move-result v3
packed-switch v3, :pswitch_data_bc
goto :goto_7b
:pswitch_84
invoke-virtual/range {v17 .. v17}, Lcom/facebook/katana/service/api/FacebookPost;->canInteractWithFeedback()Z
move-result v3
if-eqz v3, :cond_7b
new-instance v15, Landroid/content/Intent;
const-class v3, Lcom/facebook/katana/FeedbackActivity;
move-object v0, v15
move-object/from16 v1, p0
move-object v2, v3
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v3, "extra_post_id"
invoke-virtual/range {v17 .. v17}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v3, "extra_wall"
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/facebook/katana/StreamActivity;->mWall:Z
move v4, v0
invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v3, "extra_uid"
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/facebook/katana/StreamActivity;->mUserId:J
move-wide v4, v0
invoke-virtual {v15, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const/4 v3, 0x2
move-object/from16 v0, p0
move-object v1, v15
move v2, v3
invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/StreamActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_7b
nop
:pswitch_data_bc
.packed-switch 0x0
:pswitch_84
:pswitch_84
:pswitch_84
:pswitch_84
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
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/StreamActivity; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
packed-switch v0, :pswitch_data_10
:goto_7
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
move v2, v0
const-string v1, " - Lcom/facebook/katana/StreamActivity; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:pswitch_c
invoke-direct {p0}, Lcom/facebook/katana/StreamActivity;->refresh()V
goto :goto_7
:pswitch_data_10
.packed-switch 0xc
:pswitch_c
.end packed-switch
.end method
.method protected onPause()V
.registers 4
const-string v1, " + Lcom/facebook/katana/StreamActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onPause()V
iget-object v1, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-eqz v1, :cond_e
iget-object v1, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v2, p0, Lcom/facebook/katana/StreamActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v1, v2}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V
:cond_e
iget-boolean v1, p0, Lcom/facebook/katana/StreamActivity;->mHome:Z
if-eqz v1, :cond_2a
invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "stream_scroll_pos"
invoke-virtual {p0}, Lcom/facebook/katana/StreamActivity;->getListView()Landroid/widget/ListView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_2a
const-string v1, " - Lcom/facebook/katana/StreamActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
.registers 8
const/4 v5, 0x1
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
const/16 v0, 0xc
invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-wide v2, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
iget-boolean v4, p0, Lcom/facebook/katana/StreamActivity;->mWall:Z
invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->isStreamGetPending(JZ)Z
move-result v1
if-eqz v1, :cond_1b
const/4 v1, 0x0
:goto_17
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
return v5
:cond_1b
move v1, v5
goto :goto_17
.end method
.method protected onResume()V
.registers 15
const-string v1, " + Lcom/facebook/katana/StreamActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-wide/16 v5, -0x1
const/4 v2, 0x0
const/4 v13, 0x1
const/4 v10, 0x0
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onResume()V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v0, :cond_16
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:cond_15
:goto_15
const-string v1, " - Lcom/facebook/katana/StreamActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_16
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mRemoveReqId:Ljava/lang/String;
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/StreamActivity;->mRemoveReqId:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->isRequestPending(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2a
const/4 v0, 0x3
invoke-virtual {p0, v0}, Lcom/facebook/katana/StreamActivity;->removeDialog(I)V
iput-object v2, p0, Lcom/facebook/katana/StreamActivity;->mRemoveReqId:Ljava/lang/String;
:cond_2a
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mPublishReqId:Ljava/lang/String;
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/StreamActivity;->mPublishReqId:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->isRequestPending(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_3e
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lcom/facebook/katana/StreamActivity;->removeDialog(I)V
iput-object v2, p0, Lcom/facebook/katana/StreamActivity;->mPublishReqId:Ljava/lang/String;
:cond_3e
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/StreamActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-wide v1, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
iget-boolean v3, p0, Lcom/facebook/katana/StreamActivity;->mWall:Z
invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->getStreamContainer(JZ)Lcom/facebook/katana/binding/FacebookStreamContainer;
move-result-object v12
if-nez v12, :cond_c1
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-wide v1, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
iget-boolean v3, p0, Lcom/facebook/katana/StreamActivity;->mWall:Z
invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->isStreamGetPending(JZ)Z
move-result v0
if-nez v0, :cond_74
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v2
invoke-direct {p0}, Lcom/facebook/katana/StreamActivity;->getSourceIds()[J
move-result-object v4
const/16 v9, 0x14
move-object v1, p0
move-wide v7, v5
invoke-virtual/range {v0 .. v10}, Lcom/facebook/katana/binding/AppSession;->streamGet(Landroid/content/Context;J[JJJII)Ljava/lang/String;
:cond_74
invoke-direct {p0, v13}, Lcom/facebook/katana/StreamActivity;->showProgress(Z)V
:goto_77
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
if-nez v0, :cond_d5
new-instance v0, Lcom/facebook/katana/StreamAdapter;
invoke-virtual {p0}, Lcom/facebook/katana/StreamActivity;->getListView()Landroid/widget/ListView;
move-result-object v2
iget-object v1, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->getUserImagesCache()Lcom/facebook/katana/binding/UserImagesCache;
move-result-object v4
iget-object v1, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->getPhotosCache()Lcom/facebook/katana/binding/StreamPhotosCache;
move-result-object v5
new-instance v6, Lcom/facebook/katana/StreamActivity$5;
invoke-direct {v6, p0}, Lcom/facebook/katana/StreamActivity$5;-><init>(Lcom/facebook/katana/StreamActivity;)V
move-object v1, p0
move-object v3, v12
invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/StreamAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/facebook/katana/binding/FacebookStreamContainer;Lcom/facebook/katana/binding/UserImagesCache;Lcom/facebook/katana/binding/StreamPhotosCache;Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;)V
iput-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
invoke-virtual {p0}, Lcom/facebook/katana/StreamActivity;->getListView()Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
:goto_a2
iget-boolean v0, p0, Lcom/facebook/katana/StreamActivity;->mHome:Z
if-eqz v0, :cond_15
invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "stream_scroll_pos"
const/4 v2, -0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v11
if-lez v11, :cond_ba
invoke-virtual {p0}, Lcom/facebook/katana/StreamActivity;->getListView()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v11}, Landroid/widget/ListView;->setSelection(I)V
:cond_ba
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->releaseWallContainers()V
goto/16 :goto_15
:cond_c1
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-wide v1, p0, Lcom/facebook/katana/StreamActivity;->mUserId:J
iget-boolean v3, p0, Lcom/facebook/katana/StreamActivity;->mWall:Z
invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->isStreamGetPending(JZ)Z
move-result v0
if-eqz v0, :cond_d1
invoke-direct {p0, v13}, Lcom/facebook/katana/StreamActivity;->showProgress(Z)V
goto :goto_77
:cond_d1
invoke-direct {p0, v10}, Lcom/facebook/katana/StreamActivity;->showProgress(Z)V
goto :goto_77
:cond_d5
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
invoke-virtual {v0}, Lcom/facebook/katana/StreamAdapter;->refreshStream()V
goto :goto_a2
.end method
.method public bridge synthetic onSearchRequested()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onSearchRequested()Z
move-result v0
return v0
.end method
.method protected onStop()V
.registers 3
const-string v1, " + Lcom/facebook/katana/StreamActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onStop()V
invoke-virtual {p0}, Lcom/facebook/katana/StreamActivity;->getListView()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
invoke-virtual {v0}, Lcom/facebook/katana/StreamAdapter;->close()V
iput-object v1, p0, Lcom/facebook/katana/StreamActivity;->mAdapter:Lcom/facebook/katana/StreamAdapter;
:cond_16
const-string v1, " - Lcom/facebook/katana/StreamActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public setProgressListener(Lcom/facebook/katana/TabProgressListener;)V
.registers 4
iput-object p1, p0, Lcom/facebook/katana/StreamActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/facebook/katana/StreamActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
iget-boolean v1, p0, Lcom/facebook/katana/StreamActivity;->mShowingProgress:Z
invoke-interface {v0, v1}, Lcom/facebook/katana/TabProgressListener;->onShowProgress(Z)V
:cond_d
return-void
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