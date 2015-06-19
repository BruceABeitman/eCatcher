.class public Lcom/facebook/katana/AlbumsActivity;
.super Lcom/facebook/katana/FacebookListActivity;
.source "AlbumsActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/facebook/katana/TabProgressSource;
.field private static final ALBUM_DELETE_MENU_ID:I = 0x6
.field private static final ALBUM_EDIT_MENU_ID:I = 0x5
.field private static final ALBUM_INFO_DIALOG_ID:I = 0x1
.field private static final ALBUM_INFO_MENU_ID:I = 0x4
.field private static final CREATE_ALBUM_ID:I = 0x3
.field private static final DELETE_ALBUM_QUESTION_DIALOG_ID:I = 0x2
.field public static final EXTRA_EXCLUDE_READ_ONLY_ALBUMS:Ljava/lang/String; = "extra_exclude_read_only"
.field private static final PHOTO_SOURCE_CHOOSER_DIALOG_ID:I = 0x4
.field private static final PICK_EXISTING_PHOTO_REQUEST_CODE:I = 0x2
.field private static final PROGRESS_DELETE_ALBUM_DIALOG_ID:I = 0x3
.field private static final REFRESH_ID:I = 0x2
.field private static final SAVE_STATE_ALBUM_ID:Ljava/lang/String; = "state_album_id"
.field private static final TAKE_CAMERA_PHOTO_REQUEST_CODE:I = 0x1
.field private mAdapter:Lcom/facebook/katana/AlbumsAdapter;
.field private mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
.field private mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
.field private mDeleteAlbumReqId:Ljava/lang/String;
.field private mPhotoUploader:Lcom/facebook/katana/PhotoUploader;
.field private mProgressListener:Lcom/facebook/katana/TabProgressListener;
.field private mShowingProgress:Z
.field private mUserId:J
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/FacebookListActivity;-><init>()V
return-void
.end method
.method static synthetic access$10(Lcom/facebook/katana/AlbumsActivity;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/AlbumsActivity;->showProgress(Z)V
return-void
.end method
.method static synthetic access$11(Lcom/facebook/katana/AlbumsActivity;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/AlbumsActivity;->updateFatTitleBar()V
return-void
.end method
.method static synthetic access$12(Lcom/facebook/katana/AlbumsActivity;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/AlbumsActivity;->updateEmptyView()V
return-void
.end method
.method static synthetic access$13(Lcom/facebook/katana/AlbumsActivity;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/AlbumsActivity;->mDeleteAlbumReqId:Ljava/lang/String;
return-void
.end method
.method static synthetic access$14(Lcom/facebook/katana/AlbumsActivity;)Lcom/facebook/katana/service/api/FacebookAlbum;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
return-object v0
.end method
.method static synthetic access$15(Lcom/facebook/katana/AlbumsActivity;Lcom/facebook/katana/service/api/FacebookAlbum;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/AlbumsActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
return-void
.end method
.method static synthetic access$16(Lcom/facebook/katana/AlbumsActivity;)Lcom/facebook/katana/binding/AppSession;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
return-object v0
.end method
.method static synthetic access$9(Lcom/facebook/katana/AlbumsActivity;)J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/AlbumsActivity;->mUserId:J
return-wide v0
.end method
.method private refresh()V
.registers 5
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-wide v1, p0, Lcom/facebook/katana/AlbumsActivity;->mUserId:J
const/4 v3, 0x0
invoke-virtual {v0, p0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->photoGetAlbums(Landroid/content/Context;JLjava/util/List;)Ljava/lang/String;
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/facebook/katana/AlbumsActivity;->showProgress(Z)V
return-void
.end method
.method private setupEmptyView()V
.registers 3
const v0, 0x7f0b0013
invoke-virtual {p0, v0}, Lcom/facebook/katana/AlbumsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f080010
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
const v0, 0x7f0b0015
invoke-virtual {p0, v0}, Lcom/facebook/katana/AlbumsActivity;->findViewById(I)Landroid/view/View;
move-result-object p0
check-cast p0, Landroid/widget/TextView;
const v0, 0x7f080012
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V
return-void
.end method
.method private setupFatTitleBar()V
.registers 3
invoke-virtual {p0}, Lcom/facebook/katana/AlbumsActivity;->getParent()Landroid/app/Activity;
move-result-object v0
if-eqz v0, :cond_12
const v0, 0x7f0b000b
invoke-virtual {p0, v0}, Lcom/facebook/katana/AlbumsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_12
return-void
.end method
.method private showPhotos(Ljava/lang/String;J)V
.registers 7
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/facebook/katana/PhotosActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "facebook:/photos?album="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "&"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "user"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/facebook/katana/AlbumsActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method private showProgress(Z)V
.registers 8
const v5, 0x7f0b0014
const v4, 0x7f0b0013
const/16 v3, 0x8
const/4 v2, 0x0
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
if-eqz v1, :cond_12
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
invoke-interface {v1, p1}, Lcom/facebook/katana/TabProgressListener;->onShowProgress(Z)V
:cond_12
iput-boolean p1, p0, Lcom/facebook/katana/AlbumsActivity;->mShowingProgress:Z
const v1, 0x7f0b00b2
invoke-virtual {p0, v1}, Lcom/facebook/katana/AlbumsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
if-eqz p1, :cond_31
if-eqz v0, :cond_22
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
:cond_22
invoke-virtual {p0, v4}, Lcom/facebook/katana/AlbumsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v5}, Lcom/facebook/katana/AlbumsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
:goto_30
return-void
:cond_31
if-eqz v0, :cond_36
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
:cond_36
invoke-virtual {p0, v4}, Lcom/facebook/katana/AlbumsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v5}, Lcom/facebook/katana/AlbumsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
goto :goto_30
.end method
.method private updateEmptyView()V
.registers 6
const/16 v4, 0x8
const/4 v3, 0x0
const v2, 0x102000a
invoke-virtual {p0, v2}, Lcom/facebook/katana/AlbumsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
const v2, 0x1020004
invoke-virtual {p0, v2}, Lcom/facebook/katana/AlbumsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v2, p0, Lcom/facebook/katana/AlbumsActivity;->mAdapter:Lcom/facebook/katana/AlbumsAdapter;
invoke-virtual {v2}, Lcom/facebook/katana/AlbumsAdapter;->isEmpty()Z
move-result v2
if-eqz v2, :cond_26
invoke-virtual {v1}, Landroid/view/View;->getVisibility()I
move-result v2
if-nez v2, :cond_25
invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
:goto_25
:cond_25
return-void
:cond_26
invoke-virtual {v1}, Landroid/view/View;->getVisibility()I
move-result v2
if-eqz v2, :cond_25
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
goto :goto_25
.end method
.method private updateFatTitleBar()V
.registers 8
const/4 v5, 0x1
invoke-virtual {p0}, Lcom/facebook/katana/AlbumsActivity;->getParent()Landroid/app/Activity;
move-result-object v3
if-eqz v3, :cond_8
:goto_7
return-void
:cond_8
const v3, 0x7f0b0025
invoke-virtual {p0, v3}, Lcom/facebook/katana/AlbumsActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/facebook/katana/AlbumsActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v3
const-string v4, "android.intent.action.PICK"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_41
const v3, 0x7f080017
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
:goto_27
iget-object v3, p0, Lcom/facebook/katana/AlbumsActivity;->mAdapter:Lcom/facebook/katana/AlbumsAdapter;
invoke-virtual {v3}, Lcom/facebook/katana/AlbumsAdapter;->getCount()I
move-result v0
if-nez v0, :cond_50
iget-boolean v3, p0, Lcom/facebook/katana/AlbumsActivity;->mShowingProgress:Z
if-eqz v3, :cond_48
const/4 v1, 0x0
:goto_34
const v3, 0x7f0b0026
invoke-virtual {p0, v3}, Lcom/facebook/katana/AlbumsActivity;->findViewById(I)Landroid/view/View;
move-result-object p0
check-cast p0, Landroid/widget/TextView;
invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_7
:cond_41
const v3, 0x7f080013
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
goto :goto_27
:cond_48
const v3, 0x7f08001a
invoke-virtual {p0, v3}, Lcom/facebook/katana/AlbumsActivity;->getString(I)Ljava/lang/String;
move-result-object v1
goto :goto_34
:cond_50
if-ne v0, v5, :cond_5a
const v3, 0x7f08001b
invoke-virtual {p0, v3}, Lcom/facebook/katana/AlbumsActivity;->getString(I)Ljava/lang/String;
move-result-object v1
goto :goto_34
:cond_5a
const v3, 0x7f080019
new-array v4, v5, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-virtual {p0, v3, v4}, Lcom/facebook/katana/AlbumsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_34
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
.registers 5
invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/FacebookListActivity;->onActivityResult(IILandroid/content/Intent;)V
if-nez p2, :cond_6
:goto_5
return-void
:cond_6
packed-switch p1, :pswitch_data_10
goto :goto_5
:pswitch_a
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mPhotoUploader:Lcom/facebook/katana/PhotoUploader;
invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/katana/PhotoUploader;->onActivityResult(IILandroid/content/Intent;)V
goto :goto_5
:pswitch_data_10
.packed-switch 0x1
:pswitch_a
:pswitch_a
.end packed-switch
.end method
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/AlbumsActivity; onContextItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v7, 0x1
:try_start_1
invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
move-result-object v3
check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
:try_end_7
.catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_7} :catch_20
iget-object v5, p0, Lcom/facebook/katana/AlbumsActivity;->mAdapter:Lcom/facebook/katana/AlbumsAdapter;
iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
invoke-virtual {v5, v6}, Lcom/facebook/katana/AlbumsAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/database/Cursor;
iget-object v5, p0, Lcom/facebook/katana/AlbumsActivity;->mAdapter:Lcom/facebook/katana/AlbumsAdapter;
invoke-virtual {v5, v1}, Lcom/facebook/katana/AlbumsAdapter;->getAlbumId(Landroid/database/Cursor;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v5
packed-switch v5, :pswitch_data_52
:goto_1e
move v5, v7
:goto_1f
const-string v1, " - Lcom/facebook/katana/AlbumsActivity; onContextItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v5
:catch_20
move-exception v5
move-object v2, v5
const/4 v5, 0x0
goto :goto_1f
:pswitch_24
new-instance v4, Landroid/content/Intent;
const-class v5, Lcom/facebook/katana/CreateEditAlbumActivity;
invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v5, "android.intent.action.EDIT"
invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
sget-object v5, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_AID_CONTENT_URI:Landroid/net/Uri;
invoke-static {v5, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
invoke-virtual {p0, v4}, Lcom/facebook/katana/AlbumsActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_1e
:pswitch_3d
invoke-static {p0, v0}, Lcom/facebook/katana/service/api/FacebookAlbum;->readFromContentProvider(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookAlbum;
move-result-object v5
iput-object v5, p0, Lcom/facebook/katana/AlbumsActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
const/4 v5, 0x2
invoke-virtual {p0, v5}, Lcom/facebook/katana/AlbumsActivity;->showDialog(I)V
goto :goto_1e
:pswitch_48
invoke-static {p0, v0}, Lcom/facebook/katana/service/api/FacebookAlbum;->readFromContentProvider(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookAlbum;
move-result-object v5
iput-object v5, p0, Lcom/facebook/katana/AlbumsActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {p0, v7}, Lcom/facebook/katana/AlbumsActivity;->showDialog(I)V
goto :goto_1e
:pswitch_data_52
.packed-switch 0x4
:pswitch_48
:pswitch_24
:pswitch_3d
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 14
const-string v1, " + Lcom/facebook/katana/AlbumsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v11, 0x0
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreate(Landroid/os/Bundle;)V
const v7, 0x7f030002
invoke-virtual {p0, v7}, Lcom/facebook/katana/AlbumsActivity;->setContentView(I)V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v7
iput-object v7, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v7, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v7, :cond_18
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_17
const-string v1, " - Lcom/facebook/katana/AlbumsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_18
invoke-virtual {p0}, Lcom/facebook/katana/AlbumsActivity;->getIntent()Landroid/content/Intent;
move-result-object v7
invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v2
move-object v1, v2
if-eqz v2, :cond_de
invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v4
const-string v7, "content"
invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_b1
invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v7
iput-wide v7, p0, Lcom/facebook/katana/AlbumsActivity;->mUserId:J
if-eqz p1, :cond_49
const-string v7, "state_album_id"
invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_49
invoke-static {p0, v0}, Lcom/facebook/katana/service/api/FacebookAlbum;->readFromContentProvider(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookAlbum;
move-result-object v7
iput-object v7, p0, Lcom/facebook/katana/AlbumsActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
:cond_49
:goto_49
iget-wide v7, p0, Lcom/facebook/katana/AlbumsActivity;->mUserId:J
iget-object v9, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v9}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v9
invoke-virtual {v9}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v9
cmp-long v7, v7, v9
if-nez v7, :cond_5f
const v7, 0x7f0200bb
invoke-virtual {p0, v7}, Lcom/facebook/katana/AlbumsActivity;->setPrimaryActionIcon(I)V
:cond_5f
invoke-virtual {p0}, Lcom/facebook/katana/AlbumsActivity;->getListView()Landroid/widget/ListView;
move-result-object v3
const/4 v6, 0x0
invoke-virtual {p0}, Lcom/facebook/katana/AlbumsActivity;->getIntent()Landroid/content/Intent;
move-result-object v7
const-string v8, "extra_exclude_read_only"
const/4 v9, 0x0
invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v7
if-eqz v7, :cond_73
const-string v6, "type<>\'profile\'"
:cond_73
new-instance v7, Lcom/facebook/katana/AlbumsAdapter;
iget-object v8, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-direct {v7, p0, v1, v6, v8}, Lcom/facebook/katana/AlbumsAdapter;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/katana/binding/AppSession;)V
iput-object v7, p0, Lcom/facebook/katana/AlbumsActivity;->mAdapter:Lcom/facebook/katana/AlbumsAdapter;
iget-object v7, p0, Lcom/facebook/katana/AlbumsActivity;->mAdapter:Lcom/facebook/katana/AlbumsAdapter;
invoke-virtual {v3, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {p0}, Lcom/facebook/katana/AlbumsActivity;->getParent()Landroid/app/Activity;
move-result-object v7
if-eqz v7, :cond_93
const v7, 0x7f0b0034
invoke-virtual {p0, v7}, Lcom/facebook/katana/AlbumsActivity;->findViewById(I)Landroid/view/View;
move-result-object v7
const/16 v8, 0x8
invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V
:cond_93
invoke-direct {p0}, Lcom/facebook/katana/AlbumsActivity;->setupFatTitleBar()V
invoke-direct {p0}, Lcom/facebook/katana/AlbumsActivity;->setupEmptyView()V
new-instance v7, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;
invoke-direct {v7, p0, v11}, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;-><init>(Lcom/facebook/katana/AlbumsActivity;Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;)V
iput-object v7, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
new-instance v7, Lcom/facebook/katana/PhotoUploader;
const/4 v8, 0x1
const/4 v9, 0x2
invoke-direct {v7, p0, v11, v8, v9}, Lcom/facebook/katana/PhotoUploader;-><init>(Landroid/app/Activity;Ljava/lang/String;II)V
iput-object v7, p0, Lcom/facebook/katana/AlbumsActivity;->mPhotoUploader:Lcom/facebook/katana/PhotoUploader;
goto/16 :goto_17
:cond_b1
const-string v7, "user"
invoke-virtual {v2, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_d1
invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
move-result-wide v7
iput-wide v7, p0, Lcom/facebook/katana/AlbumsActivity;->mUserId:J
:goto_c3
sget-object v7, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_OWNER_CONTENT_URI:Landroid/net/Uri;
iget-wide v8, p0, Lcom/facebook/katana/AlbumsActivity;->mUserId:J
invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
goto/16 :goto_49
:cond_d1
iget-object v7, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v7}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v7
invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v7
iput-wide v7, p0, Lcom/facebook/katana/AlbumsActivity;->mUserId:J
goto :goto_c3
:cond_de
iget-object v7, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v7}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v7
invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v7
iput-wide v7, p0, Lcom/facebook/katana/AlbumsActivity;->mUserId:J
goto/16 :goto_49
.end method
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.registers 16
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/AlbumsActivity; onCreateContextMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v11, 0x7f08000e
const/4 v10, 0x4
const/4 v9, 0x0
:try_start_5
move-object v0, p3
check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
move-object v3, v0
:try_end_9
.catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_9} :catch_30
iget-object v5, p0, Lcom/facebook/katana/AlbumsActivity;->mAdapter:Lcom/facebook/katana/AlbumsAdapter;
iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
invoke-virtual {v5, v6}, Lcom/facebook/katana/AlbumsAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/database/Cursor;
iget-object v5, p0, Lcom/facebook/katana/AlbumsActivity;->mAdapter:Lcom/facebook/katana/AlbumsAdapter;
invoke-virtual {v5, v1}, Lcom/facebook/katana/AlbumsAdapter;->getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;
move-result-object v5
invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
invoke-virtual {p0}, Lcom/facebook/katana/AlbumsActivity;->getIntent()Landroid/content/Intent;
move-result-object v5
invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v5
const-string v6, "android.intent.action.PICK"
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_32
invoke-interface {p1, v9, v10, v9, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
:goto_2f
const-string v1, " - Lcom/facebook/katana/AlbumsActivity; onCreateContextMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_30
move-exception v2
goto :goto_2f
:cond_32
iget-wide v5, p0, Lcom/facebook/katana/AlbumsActivity;->mUserId:J
iget-object v7, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v7}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v7
invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v7
cmp-long v5, v5, v7
if-nez v5, :cond_58
const/4 v5, 0x5
const v6, 0x7f08000f
invoke-interface {p1, v9, v5, v9, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
iget-object v5, p0, Lcom/facebook/katana/AlbumsActivity;->mAdapter:Lcom/facebook/katana/AlbumsAdapter;
invoke-virtual {v5, v1}, Lcom/facebook/katana/AlbumsAdapter;->getAlbumSize(Landroid/database/Cursor;)I
move-result v4
if-nez v4, :cond_58
const/4 v5, 0x6
const v6, 0x7f08000a
invoke-interface {p1, v9, v5, v9, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
:cond_58
invoke-interface {p1, v9, v10, v9, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
goto :goto_2f
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 13
const/4 v9, 0x1
const/4 v1, 0x0
const/4 v7, 0x0
packed-switch p1, :pswitch_data_5a
move-object v0, v7
:goto_7
return-object v0
:pswitch_8
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-static {p0, v0}, Lcom/facebook/katana/AlbumInfoDialog;->create(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookAlbum;)Landroid/app/Dialog;
move-result-object v0
goto :goto_7
:pswitch_f
new-instance v5, Lcom/facebook/katana/AlbumsActivity$1;
invoke-direct {v5, p0}, Lcom/facebook/katana/AlbumsActivity$1;-><init>(Lcom/facebook/katana/AlbumsActivity;)V
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookAlbum;->getName()Ljava/lang/String;
move-result-object v1
const v2, 0x1080027
const v0, 0x7f08000b
invoke-virtual {p0, v0}, Lcom/facebook/katana/AlbumsActivity;->getString(I)Ljava/lang/String;
move-result-object v3
const v0, 0x7f08019c
invoke-virtual {p0, v0}, Lcom/facebook/katana/AlbumsActivity;->getString(I)Ljava/lang/String;
move-result-object v4
const v0, 0x7f0800b1
invoke-virtual {p0, v0}, Lcom/facebook/katana/AlbumsActivity;->getString(I)Ljava/lang/String;
move-result-object v6
move-object v0, p0
move-object v8, v7
invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;
move-result-object v0
goto :goto_7
:pswitch_39
new-instance v10, Landroid/app/ProgressDialog;
invoke-direct {v10, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
const v0, 0x7f08000d
invoke-virtual {p0, v0}, Lcom/facebook/katana/AlbumsActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
invoke-virtual {v10, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
move-object v0, v10
goto :goto_7
:pswitch_53
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mPhotoUploader:Lcom/facebook/katana/PhotoUploader;
invoke-virtual {v0}, Lcom/facebook/katana/PhotoUploader;->createDialog()Landroid/app/Dialog;
move-result-object v0
goto :goto_7
:pswitch_data_5a
.packed-switch 0x1
:pswitch_8
:pswitch_f
:pswitch_39
:pswitch_53
.end packed-switch
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/AlbumsActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v5, 0x7f080141
const v3, 0x7f020081
const/4 v2, 0x2
const/4 v4, 0x0
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
invoke-virtual {p0}, Lcom/facebook/katana/AlbumsActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "android.intent.action.PICK"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_24
invoke-interface {p1, v4, v2, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
:cond_22
:goto_22
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/facebook/katana/AlbumsActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_24
invoke-interface {p1, v4, v2, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
iget-wide v0, p0, Lcom/facebook/katana/AlbumsActivity;->mUserId:J
iget-object v2, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v2
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v2
cmp-long v0, v0, v2
if-nez v0, :cond_22
const/4 v0, 0x3
const v1, 0x7f080009
invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f020055
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
goto :goto_22
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/AlbumsActivity; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v3, p0, Lcom/facebook/katana/AlbumsActivity;->mAdapter:Lcom/facebook/katana/AlbumsAdapter;
invoke-virtual {v3, p3}, Lcom/facebook/katana/AlbumsAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/database/Cursor;
invoke-virtual {p0}, Lcom/facebook/katana/AlbumsActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v3
const-string v4, "android.intent.action.PICK"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_34
new-instance v2, Landroid/content/Intent;
invoke-direct {v2}, Landroid/content/Intent;-><init>()V
sget-object v3, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_AID_CONTENT_URI:Landroid/net/Uri;
iget-object v4, p0, Lcom/facebook/katana/AlbumsActivity;->mAdapter:Lcom/facebook/katana/AlbumsAdapter;
invoke-virtual {v4, v1}, Lcom/facebook/katana/AlbumsAdapter;->getAlbumId(Landroid/database/Cursor;)Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
const/4 v3, -0x1
invoke-virtual {p0, v3, v2}, Lcom/facebook/katana/AlbumsActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lcom/facebook/katana/AlbumsActivity;->finish()V
:goto_33
const-string v1, " - Lcom/facebook/katana/AlbumsActivity; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_34
iget-object v3, p0, Lcom/facebook/katana/AlbumsActivity;->mAdapter:Lcom/facebook/katana/AlbumsAdapter;
invoke-virtual {v3, v1}, Lcom/facebook/katana/AlbumsAdapter;->getAlbumId(Landroid/database/Cursor;)Ljava/lang/String;
move-result-object v3
iget-wide v4, p0, Lcom/facebook/katana/AlbumsActivity;->mUserId:J
invoke-direct {p0, v3, v4, v5}, Lcom/facebook/katana/AlbumsActivity;->showPhotos(Ljava/lang/String;J)V
goto :goto_33
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
const-string v0, " + Lcom/facebook/katana/AlbumsActivity; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v1
packed-switch v1, :pswitch_data_20
:goto_7
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v1
move v2, v1
const-string v1, " - Lcom/facebook/katana/AlbumsActivity; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
:pswitch_c
invoke-direct {p0}, Lcom/facebook/katana/AlbumsActivity;->refresh()V
goto :goto_7
:pswitch_10
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/facebook/katana/CreateEditAlbumActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "android.intent.action.INSERT"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/facebook/katana/AlbumsActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_7
:pswitch_data_20
.packed-switch 0x2
:pswitch_c
:pswitch_10
.end packed-switch
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/facebook/katana/AlbumsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onPause()V
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V
:cond_e
const-string v1, " - Lcom/facebook/katana/AlbumsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPrepareDialog(ILandroid/app/Dialog;)V
.registers 4
packed-switch p1, :pswitch_data_14
:goto_3
return-void
:pswitch_4
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-static {p2, v0}, Lcom/facebook/katana/AlbumInfoDialog;->update(Landroid/app/Dialog;Lcom/facebook/katana/service/api/FacebookAlbum;)V
goto :goto_3
:pswitch_a
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookAlbum;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V
goto :goto_3
:pswitch_data_14
.packed-switch 0x1
:pswitch_4
:pswitch_a
.end packed-switch
.end method
.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
.registers 9
const/4 v6, 0x2
const/4 v5, 0x1
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
iget-object v2, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-wide v3, p0, Lcom/facebook/katana/AlbumsActivity;->mUserId:J
invoke-virtual {v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->isAlbumsGetPending(J)Z
move-result v2
if-eqz v2, :cond_29
const/4 v2, 0x0
move v1, v2
:goto_11
invoke-virtual {p0}, Lcom/facebook/katana/AlbumsActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
const-string v3, "android.intent.action.PICK"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2b
invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v2
invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
:cond_28
:goto_28
return v5
:cond_29
move v1, v5
goto :goto_11
:cond_2b
invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v2
invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
const/4 v2, 0x3
invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
if-eqz v0, :cond_28
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
goto :goto_28
.end method
.method protected onResume()V
.registers 4
const-string v1, " + Lcom/facebook/katana/AlbumsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onResume()V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v0, :cond_11
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_10
const-string v1, " - Lcom/facebook/katana/AlbumsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_11
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mDeleteAlbumReqId:Ljava/lang/String;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity;->mDeleteAlbumReqId:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->isRequestPending(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_26
const/4 v0, 0x3
invoke-virtual {p0, v0}, Lcom/facebook/katana/AlbumsActivity;->removeDialog(I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mDeleteAlbumReqId:Ljava/lang/String;
:cond_26
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V
invoke-direct {p0}, Lcom/facebook/katana/AlbumsActivity;->updateEmptyView()V
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-wide v1, p0, Lcom/facebook/katana/AlbumsActivity;->mUserId:J
invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->isAlbumsGetPending(J)Z
move-result v0
if-nez v0, :cond_41
invoke-direct {p0}, Lcom/facebook/katana/AlbumsActivity;->refresh()V
:goto_3d
invoke-direct {p0}, Lcom/facebook/katana/AlbumsActivity;->updateFatTitleBar()V
goto :goto_10
:cond_41
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/facebook/katana/AlbumsActivity;->showProgress(Z)V
goto :goto_3d
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/facebook/katana/AlbumsActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
if-eqz v0, :cond_12
const-string v0, "state_album_id"
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookAlbum;->getAlbumId()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_12
const-string v1, " - Lcom/facebook/katana/AlbumsActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic onSearchRequested()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onSearchRequested()Z
move-result v0
return v0
.end method
.method public setProgressListener(Lcom/facebook/katana/TabProgressListener;)V
.registers 4
iput-object p1, p0, Lcom/facebook/katana/AlbumsActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;
iget-boolean v1, p0, Lcom/facebook/katana/AlbumsActivity;->mShowingProgress:Z
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
.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
.registers 3
const/4 v0, 0x4
invoke-virtual {p0, v0}, Lcom/facebook/katana/AlbumsActivity;->showDialog(I)V
return-void
.end method
.method public bridge synthetic titleBarSearchClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->titleBarSearchClickHandler(Landroid/view/View;)V
return-void
.end method