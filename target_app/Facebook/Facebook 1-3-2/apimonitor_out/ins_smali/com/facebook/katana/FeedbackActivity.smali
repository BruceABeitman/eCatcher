.class public Lcom/facebook/katana/FeedbackActivity;
.super Lcom/facebook/katana/FacebookListActivity;
.source "FeedbackActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field public static final EXTRA_POST_ID:Ljava/lang/String; = "extra_post_id"
.field public static final EXTRA_USER_ID:Ljava/lang/String; = "extra_uid"
.field public static final EXTRA_WALL:Ljava/lang/String; = "extra_wall"
.field private static final HOME_ID:I = 0x4
.field private static final PROGRESS_ADDING_COMMENT_DIALOG:I = 0x1
.field private static final PROGRESS_REMOVING_COMMENT_DIALOG:I = 0x2
.field private static final REMOVE_COMMENT_ID:I = 0x2
.field private static final USER_PROFILE_ID:I = 0x3
.field private static final VIEW_URL_0_ID:I = 0xb
.field private static final VIEW_URL_1_ID:I = 0xc
.field private static final VIEW_URL_2_ID:I = 0xd
.field private static final VIEW_USER_INFO_ID:I = 0x5
.field private mAdapter:Lcom/facebook/katana/FeedbackAdapter;
.field private mAddCommentReqId:Ljava/lang/String;
.field private mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
.field private mPost:Lcom/facebook/katana/service/api/FacebookPost;
.field private mRemoveCommentReqId:Ljava/lang/String;
.field private mWallUserId:J
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/FacebookListActivity;-><init>()V
return-void
.end method
.method static synthetic access$10(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/service/api/FacebookPost;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
return-object v0
.end method
.method static synthetic access$11(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/FeedbackAdapter;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
return-object v0
.end method
.method static synthetic access$12(ILjava/lang/Exception;)Z
.registers 3
invoke-static {p0, p1}, Lcom/facebook/katana/FeedbackActivity;->responseIsPositive(ILjava/lang/Exception;)Z
move-result v0
return v0
.end method
.method static synthetic access$13(Lcom/facebook/katana/FeedbackActivity;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/FeedbackActivity;->mAddCommentReqId:Ljava/lang/String;
return-void
.end method
.method static synthetic access$14(Lcom/facebook/katana/FeedbackActivity;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/FeedbackActivity;->mRemoveCommentReqId:Ljava/lang/String;
return-void
.end method
.method static synthetic access$15(Lcom/facebook/katana/FeedbackActivity;)Lcom/facebook/katana/binding/AppSession;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
return-object v0
.end method
.method static synthetic access$16(Lcom/facebook/katana/FeedbackActivity;)J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/FeedbackActivity;->mWallUserId:J
return-wide v0
.end method
.method private static responseIsPositive(ILjava/lang/Exception;)Z
.registers 3
const/16 v0, 0xc8
if-ne v0, p0, :cond_8
if-nez p1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
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
invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/FacebookListActivity;->onActivityResult(IILandroid/content/Intent;)V
if-nez p2, :cond_6
:cond_5
:goto_5
return-void
:cond_6
packed-switch p1, :pswitch_data_1e
goto :goto_5
:pswitch_a
if-eqz p3, :cond_5
const-string v0, "extra_ptf"
const/4 v1, 0x0
invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_5
const/4 v0, -0x1
invoke-virtual {p0, v0, p3}, Lcom/facebook/katana/FeedbackActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackActivity;->finish()V
goto :goto_5
nop
:pswitch_data_1e
.packed-switch 0x3
:pswitch_a
.end packed-switch
.end method
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/FeedbackActivity; onContextItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
move-result-object v8
check-cast v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;
:try_end_6
.catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_f
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
sparse-switch v0, :sswitch_data_6a
:goto_d
const/4 v0, 0x1
:goto_e
move v2, v0
const-string v1, " - Lcom/facebook/katana/FeedbackActivity; onContextItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:catch_f
move-exception v0
move-object v7, v0
const/4 v0, 0x0
goto :goto_e
:sswitch_13
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
iget v1, v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
invoke-virtual {v0, v1}, Lcom/facebook/katana/FeedbackAdapter;->getItemByPosition(I)Lcom/facebook/katana/FeedbackAdapter$Item;
move-result-object v6
check-cast v6, Lcom/facebook/katana/FeedbackAdapter$CommentItem;
invoke-virtual {v6}, Lcom/facebook/katana/FeedbackAdapter$CommentItem;->getComment()Lcom/facebook/katana/service/api/FacebookPost$Comment;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->getFromUserId()J
move-result-wide v0
const/4 v2, 0x3
invoke-static {p0, v0, v1, v2}, Lcom/facebook/katana/util/ApplicationUtils;->OpenUserProfileForResult(Landroid/app/Activity;JI)V
goto :goto_d
:sswitch_2a
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
iget v1, v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
invoke-virtual {v0, v1}, Lcom/facebook/katana/FeedbackAdapter;->getItemByPosition(I)Lcom/facebook/katana/FeedbackAdapter$Item;
move-result-object v6
check-cast v6, Lcom/facebook/katana/FeedbackAdapter$CommentItem;
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-wide v2, p0, Lcom/facebook/katana/FeedbackActivity;->mWallUserId:J
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v6}, Lcom/facebook/katana/FeedbackAdapter$CommentItem;->getComment()Lcom/facebook/katana/service/api/FacebookPost$Comment;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->getId()Ljava/lang/String;
move-result-object v5
move-object v1, p0
invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->streamRemoveComment(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mRemoveCommentReqId:Ljava/lang/String;
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lcom/facebook/katana/FeedbackActivity;->showDialog(I)V
goto :goto_d
:sswitch_52
invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v9
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {p0, v0}, Lcom/facebook/katana/FeedbackActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_d
nop
:sswitch_data_6a
.sparse-switch
0x2 -> :sswitch_2a
0x5 -> :sswitch_13
0xb -> :sswitch_52
0xc -> :sswitch_52
0xd -> :sswitch_52
.end sparse-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 16
const-string v1, " + Lcom/facebook/katana/FeedbackActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030010
invoke-virtual {p0, v0}, Lcom/facebook/katana/FeedbackActivity;->setContentView(I)V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v0, :cond_17
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_16
const-string v1, " - Lcom/facebook/katana/FeedbackActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_17
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "extra_uid"
const-wide/16 v2, 0x0
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v0
iput-wide v0, p0, Lcom/facebook/katana/FeedbackActivity;->mWallUserId:J
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "extra_post_id"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-wide v1, p0, Lcom/facebook/katana/FeedbackActivity;->mWallUserId:J
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
const-string v4, "extra_wall"
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v3
invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->getStreamContainer(JZ)Lcom/facebook/katana/binding/FacebookStreamContainer;
move-result-object v10
if-nez v10, :cond_48
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackActivity;->finish()V
goto :goto_16
:cond_48
invoke-virtual {v10, v12}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPost(Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
if-nez v0, :cond_54
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackActivity;->finish()V
goto :goto_16
:cond_54
new-instance v0, Lcom/facebook/katana/FeedbackActivity$1;
invoke-direct {v0, p0}, Lcom/facebook/katana/FeedbackActivity$1;-><init>(Lcom/facebook/katana/FeedbackActivity;)V
iput-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
new-instance v0, Lcom/facebook/katana/FeedbackAdapter;
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackActivity;->getListView()Landroid/widget/ListView;
move-result-object v2
iget-object v3, p0, Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->getUserImagesCache()Lcom/facebook/katana/binding/UserImagesCache;
move-result-object v4
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->getPhotosCache()Lcom/facebook/katana/binding/StreamPhotosCache;
move-result-object v5
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-wide v6, p0, Lcom/facebook/katana/FeedbackActivity;->mWallUserId:J
iget-object v13, p0, Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;
move-result-object v13
invoke-virtual {v1, v6, v7, v13}, Lcom/facebook/katana/binding/AppSession;->isStreamGetCommentsPending(JLjava/lang/String;)Z
move-result v6
new-instance v7, Lcom/facebook/katana/FeedbackActivity$2;
invoke-direct {v7, p0}, Lcom/facebook/katana/FeedbackActivity$2;-><init>(Lcom/facebook/katana/FeedbackActivity;)V
move-object v1, p0
invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/FeedbackAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/facebook/katana/service/api/FacebookPost;Lcom/facebook/katana/binding/UserImagesCache;Lcom/facebook/katana/binding/StreamPhotosCache;ZLcom/facebook/katana/FeedbackAdapter$CommentsListener;)V
iput-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackActivity;->getListView()Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackActivity;->getListView()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackActivity;->getListView()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackActivity;->getListView()Landroid/widget/ListView;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V
const v0, 0x7f0b0029
invoke-virtual {p0, v0}, Lcom/facebook/katana/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v11
check-cast v11, Landroid/widget/EditText;
new-instance v0, Lcom/facebook/katana/FeedbackActivity$3;
invoke-direct {v0, p0}, Lcom/facebook/katana/FeedbackActivity$3;-><init>(Lcom/facebook/katana/FeedbackActivity;)V
invoke-virtual {v11, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
new-instance v0, Lcom/facebook/katana/FeedbackActivity$4;
invoke-direct {v0, p0}, Lcom/facebook/katana/FeedbackActivity$4;-><init>(Lcom/facebook/katana/FeedbackActivity;)V
invoke-virtual {v11, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
const v0, 0x7f0b002b
invoke-virtual {p0, v0}, Lcom/facebook/katana/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v9
check-cast v9, Landroid/widget/Button;
new-instance v0, Lcom/facebook/katana/FeedbackActivity$5;
invoke-direct {v0, p0}, Lcom/facebook/katana/FeedbackActivity$5;-><init>(Lcom/facebook/katana/FeedbackActivity;)V
invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0b002c
invoke-virtual {p0, v0}, Lcom/facebook/katana/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v8
check-cast v8, Landroid/widget/Button;
new-instance v0, Lcom/facebook/katana/FeedbackActivity$6;
invoke-direct {v0, p0}, Lcom/facebook/katana/FeedbackActivity$6;-><init>(Lcom/facebook/katana/FeedbackActivity;)V
invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto/16 :goto_16
.end method
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.registers 17
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/FeedbackActivity; onCreateContextMenu "
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
.catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_5} :catch_15
iget-object v9, p0, Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
iget v10, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
invoke-virtual {v9, v10}, Lcom/facebook/katana/FeedbackAdapter;->getItemByPosition(I)Lcom/facebook/katana/FeedbackAdapter$Item;
move-result-object v5
invoke-virtual {v5}, Lcom/facebook/katana/FeedbackAdapter$Item;->getType()I
move-result v9
sparse-switch v9, :sswitch_data_d2
:cond_14
:goto_14
const-string v1, " - Lcom/facebook/katana/FeedbackActivity; onCreateContextMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_15
move-exception v2
goto :goto_14
:sswitch_17
check-cast v5, Lcom/facebook/katana/FeedbackAdapter$PostItem;
invoke-virtual {v5}, Lcom/facebook/katana/FeedbackAdapter$PostItem;->getPost()Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v6
invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookPost;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v9
invoke-virtual {v9}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getDisplayName()Ljava/lang/String;
move-result-object v9
invoke-interface {p1, v9}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookPost;->getMessage()Ljava/lang/String;
move-result-object v9
const-string v10, "^(https?://)?([a-zA-Z0-9_-]+\\.[a-zA-Z0-9_-]+)+(/*[A-Za-z0-9/\\-_&:?\\+=//.%]*)*"
const/4 v11, 0x0
const/4 v12, 0x3
invoke-static {v9, v10, v11, v8, v12}, Lcom/facebook/katana/util/StringUtils;->parseExpression(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
const/4 v3, 0x0
invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v9
:goto_3d
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-eqz v10, :cond_14
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
packed-switch v3, :pswitch_data_e8
:goto_4c
add-int/lit8 v3, v3, 0x1
goto :goto_3d
:pswitch_4f
const/4 v10, 0x0
const/16 v11, 0xb
const/4 v12, 0x0
invoke-interface {p1, v10, v11, v12, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
goto :goto_4c
:pswitch_57
const/4 v10, 0x0
const/16 v11, 0xc
const/4 v12, 0x0
invoke-interface {p1, v10, v11, v12, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
goto :goto_4c
:pswitch_5f
const/4 v10, 0x0
const/16 v11, 0xd
const/4 v12, 0x0
invoke-interface {p1, v10, v11, v12, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
goto :goto_4c
:sswitch_67
const v9, 0x7f08012f
invoke-interface {p1, v9}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;
const/4 v9, 0x0
const/4 v10, 0x3
const/4 v11, 0x0
const v12, 0x7f080158
invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
iget-object v9, p0, Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v9}, Lcom/facebook/katana/service/api/FacebookPost;->getComments()Lcom/facebook/katana/service/api/FacebookPost$Comments;
move-result-object v9
invoke-virtual {v9}, Lcom/facebook/katana/service/api/FacebookPost$Comments;->canRemove()Z
move-result v9
if-eqz v9, :cond_8b
const/4 v9, 0x0
const/4 v10, 0x2
const/4 v11, 0x0
const v12, 0x7f080149
invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
:cond_8b
move-object v0, v5
check-cast v0, Lcom/facebook/katana/FeedbackAdapter$CommentItem;
move-object v1, v0
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v1}, Lcom/facebook/katana/FeedbackAdapter$CommentItem;->getComment()Lcom/facebook/katana/service/api/FacebookPost$Comment;
move-result-object v9
invoke-virtual {v9}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->getText()Ljava/lang/String;
move-result-object v9
const-string v10, "^(https?://)?([a-zA-Z0-9_-]+\\.[a-zA-Z0-9_-]+)+(/*[A-Za-z0-9/\\-_&:?\\+=//.%]*)*"
const/4 v11, 0x0
const/4 v12, 0x3
invoke-static {v9, v10, v11, v8, v12}, Lcom/facebook/katana/util/StringUtils;->parseExpression(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
const/4 v3, 0x0
invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v9
:goto_a8
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-eqz v10, :cond_14
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
packed-switch v3, :pswitch_data_f2
:goto_b7
add-int/lit8 v3, v3, 0x1
goto :goto_a8
:pswitch_ba
const/4 v10, 0x0
const/16 v11, 0xb
const/4 v12, 0x0
invoke-interface {p1, v10, v11, v12, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
goto :goto_b7
:pswitch_c2
const/4 v10, 0x0
const/16 v11, 0xc
const/4 v12, 0x0
invoke-interface {p1, v10, v11, v12, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
goto :goto_b7
:pswitch_ca
const/4 v10, 0x0
const/16 v11, 0xd
const/4 v12, 0x0
invoke-interface {p1, v10, v11, v12, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
goto :goto_b7
:pswitch_data_e8
.packed-switch 0x0
:pswitch_4f
:pswitch_57
:pswitch_5f
.end packed-switch
:pswitch_data_f2
.packed-switch 0x0
:pswitch_ba
:pswitch_c2
:pswitch_ca
.end packed-switch
:sswitch_data_d2
.sparse-switch
0x0 -> :sswitch_17
0x1 -> :sswitch_17
0x2 -> :sswitch_17
0x3 -> :sswitch_17
0x1f -> :sswitch_67
.end sparse-switch
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
packed-switch p1, :pswitch_data_3c
const/4 v1, 0x0
:goto_6
return-object v1
:pswitch_7
new-instance v0, Landroid/app/ProgressDialog;
invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
const v1, 0x7f08012d
invoke-virtual {p0, v1}, Lcom/facebook/katana/FeedbackActivity;->getText(I)Ljava/lang/CharSequence;
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
const v1, 0x7f08014e
invoke-virtual {p0, v1}, Lcom/facebook/katana/FeedbackActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V
move-object v1, v0
goto :goto_6
nop
:pswitch_data_3c
.packed-switch 0x1
:pswitch_7
:pswitch_21
.end packed-switch
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/FeedbackActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
const/4 v0, 0x4
const v1, 0x7f080135
invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f02007c
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/4 v0, 0x3
const v1, 0x7f080158
invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f020085
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/facebook/katana/FeedbackActivity; onCreateOptionsMenu"
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
const-string v1, " + Lcom/facebook/katana/FeedbackActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onDestroy()V
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackActivity;->getListView()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
invoke-virtual {v0}, Lcom/facebook/katana/FeedbackAdapter;->close()V
iput-object v1, p0, Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
:cond_16
const-string v1, " - Lcom/facebook/katana/FeedbackActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 17
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/FeedbackActivity; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v9, 0x3
iget-object v7, p0, Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
invoke-virtual {v7, p3}, Lcom/facebook/katana/FeedbackAdapter;->getItemByPosition(I)Lcom/facebook/katana/FeedbackAdapter$Item;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/katana/FeedbackAdapter$Item;->getType()I
move-result v7
sparse-switch v7, :sswitch_data_9e
:goto_e
:cond_e
const-string v1, " - Lcom/facebook/katana/FeedbackActivity; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_f
iget-object v7, p0, Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookPost;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v6
invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getUserId()J
move-result-wide v7
invoke-static {p0, v7, v8}, Lcom/facebook/katana/ProfileTabHostActivity;->intentForProfile(Landroid/content/Context;J)Landroid/content/Intent;
move-result-object v3
const-string v7, "extra_user_display_name"
invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getDisplayName()Ljava/lang/String;
move-result-object v8
invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v7, "extra_image_url"
invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getPic()Ljava/lang/String;
move-result-object v8
invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v7, "extra_user_type"
invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getType()I
move-result v8
invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-virtual {p0, v3, v9}, Lcom/facebook/katana/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_e
:sswitch_3c
iget-object v7, p0, Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
invoke-virtual {v7, p3}, Lcom/facebook/katana/FeedbackAdapter;->getItemByPosition(I)Lcom/facebook/katana/FeedbackAdapter$Item;
move-result-object v7
check-cast v7, Lcom/facebook/katana/FeedbackAdapter$PostItem;
invoke-virtual {v7}, Lcom/facebook/katana/FeedbackAdapter$PostItem;->getPost()Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v5
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookPost;->getAttachment()Lcom/facebook/katana/service/api/FacebookPost$Attachment;
move-result-object v1
if-eqz v1, :cond_e
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getHref()Ljava/lang/String;
move-result-object v7
if-eqz v7, :cond_e
iget-object v7, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getHref()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, p0, v8}, Lcom/facebook/katana/binding/AppSession;->openURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
goto :goto_e
:sswitch_5e
iget-object v7, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-wide v8, p0, Lcom/facebook/katana/FeedbackActivity;->mWallUserId:J
iget-object v10, p0, Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v10}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;
move-result-object v10
invoke-virtual {v7, v8, v9, v10}, Lcom/facebook/katana/binding/AppSession;->isStreamGetCommentsPending(JLjava/lang/String;)Z
move-result v7
if-nez v7, :cond_e
iget-object v7, p0, Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
invoke-virtual {v7}, Lcom/facebook/katana/FeedbackAdapter;->requestMoreComments()V
iget-object v7, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-wide v8, p0, Lcom/facebook/katana/FeedbackActivity;->mWallUserId:J
iget-object v10, p0, Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v10}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;
move-result-object v10
invoke-virtual {v7, p0, v8, v9, v10}, Lcom/facebook/katana/binding/AppSession;->streamGetComments(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
const v7, 0x7f0b00b2
invoke-virtual {p0, v7}, Lcom/facebook/katana/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v7
const/4 v8, 0x0
invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V
goto :goto_e
:sswitch_8c
move-object v0, v4
check-cast v0, Lcom/facebook/katana/FeedbackAdapter$CommentItem;
move-object v2, v0
invoke-virtual {v2}, Lcom/facebook/katana/FeedbackAdapter$CommentItem;->getComment()Lcom/facebook/katana/service/api/FacebookPost$Comment;
move-result-object v7
invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->getFromUserId()J
move-result-wide v7
invoke-static {p0, v7, v8, v9}, Lcom/facebook/katana/util/ApplicationUtils;->OpenUserProfileForResult(Landroid/app/Activity;JI)V
goto/16 :goto_e
nop
:sswitch_data_9e
.sparse-switch
0x0 -> :sswitch_f
0x1 -> :sswitch_f
0x2 -> :sswitch_3c
0x3 -> :sswitch_f
0x1e -> :sswitch_5e
0x1f -> :sswitch_8c
.end sparse-switch
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
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/FeedbackActivity; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v1
packed-switch v1, :pswitch_data_30
:goto_7
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v1
move v2, v1
const-string v1, " - Lcom/facebook/katana/FeedbackActivity; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
:pswitch_c
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "extra_ptf"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "extra_logout"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const/4 v1, -0x1
invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/FeedbackActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackActivity;->finish()V
goto :goto_7
:pswitch_25
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v1
const/4 v3, 0x3
invoke-static {p0, v1, v2, v3}, Lcom/facebook/katana/util/ApplicationUtils;->OpenUserProfileForResult(Landroid/app/Activity;JI)V
goto :goto_7
:pswitch_data_30
.packed-switch 0x3
:pswitch_25
:pswitch_c
.end packed-switch
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/facebook/katana/FeedbackActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onPause()V
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V
:cond_e
const-string v1, " - Lcom/facebook/katana/FeedbackActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 5
const-string v1, " + Lcom/facebook/katana/FeedbackActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onResume()V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v0, :cond_12
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:cond_11
:goto_11
const-string v1, " - Lcom/facebook/katana/FeedbackActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_12
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAddCommentReqId:Ljava/lang/String;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity;->mAddCommentReqId:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->isRequestPending(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_26
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/facebook/katana/FeedbackActivity;->removeDialog(I)V
iput-object v2, p0, Lcom/facebook/katana/FeedbackActivity;->mAddCommentReqId:Ljava/lang/String;
:cond_26
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mRemoveCommentReqId:Ljava/lang/String;
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity;->mRemoveCommentReqId:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->isRequestPending(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_3a
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lcom/facebook/katana/FeedbackActivity;->removeDialog(I)V
iput-object v2, p0, Lcom/facebook/katana/FeedbackActivity;->mRemoveCommentReqId:Ljava/lang/String;
:cond_3a
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-wide v1, p0, Lcom/facebook/katana/FeedbackActivity;->mWallUserId:J
iget-object v3, p0, Lcom/facebook/katana/FeedbackActivity;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->isStreamGetCommentsPending(JLjava/lang/String;)Z
move-result v0
if-eqz v0, :cond_5c
const v0, 0x7f0b00b2
invoke-virtual {p0, v0}, Lcom/facebook/katana/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_5c
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
invoke-virtual {v0}, Lcom/facebook/katana/FeedbackAdapter;->getLikeUserId()J
move-result-wide v0
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/FeedbackActivity;->mAdapter:Lcom/facebook/katana/FeedbackAdapter;
invoke-virtual {v1}, Lcom/facebook/katana/FeedbackAdapter;->getLikeUserId()J
move-result-wide v1
invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->usersGetBriefInfo(Landroid/content/Context;J)Ljava/lang/String;
goto :goto_11
.end method
.method public bridge synthetic onSearchRequested()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onSearchRequested()Z
move-result v0
return v0
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