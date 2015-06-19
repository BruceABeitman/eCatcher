.class public Lcom/facebook/katana/PhotosActivity;
.super Lcom/facebook/katana/FacebookActivity;
.source "PhotosActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field private static final ALBUM_INFO_DIALOG_ID:I = 0x1
.field private static final ALBUM_INFO_MENU_ID:I = 0x7
.field private static final DEBUG:Z = false
.field private static final DELETE_ALBUM_MENU_ID:I = 0x6
.field private static final DELETE_ALBUM_QUESTION_DIALOG_ID:I = 0x3
.field private static final DELETE_PHOTO_QUESTION_DIALOG_ID:I = 0x4
.field private static final EDIT_ALBUM_MENU_ID:I = 0x5
.field private static final PHOTO_DELETE_MENU_ID:I = 0xd
.field private static final PHOTO_EDIT_MENU_ID:I = 0xc
.field private static final PHOTO_INFO_DIALOG_ID:I = 0x2
.field private static final PHOTO_INFO_MENU_ID:I = 0xe
.field private static final PHOTO_SOURCE_CHOOSER_DIALOG_ID:I = 0x7
.field private static final PHOTO_VIEW_MENU_ID:I = 0xb
.field private static final PICK_EXISTING_PHOTO_REQUEST_CODE:I = 0x2
.field private static final PROGRESS_DELETE_ALBUM_DIALOG_ID:I = 0x5
.field private static final PROGRESS_DELETE_PHOTO_DIALOG_ID:I = 0x6
.field private static final REFRESH_MENU_ID:I = 0x2
.field private static final STATE_ALBUM_TASK:Ljava/lang/String; = "state_album_task"
.field private static final STATE_PHOTOS_TASK:Ljava/lang/String; = "state_photos_task"
.field private static final STATE_PHOTO_ID:Ljava/lang/String; = "state_photo_id"
.field private static final TAKE_CAMERA_PHOTO_REQUEST_CODE:I = 0x1
.field private mAdapter:Lcom/facebook/katana/PhotosAdapter;
.field private mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
.field private mAlbumContentObserver:Landroid/database/ContentObserver;
.field private mAlbumId:Ljava/lang/String;
.field private mAlbumTask:Lcom/facebook/katana/util/TaskContext;
.field private mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
.field private mDeleteAlbumReqId:Ljava/lang/String;
.field private mDeletePhotoReqId:Ljava/lang/String;
.field private mOwnerId:J
.field private mPhotoId:Ljava/lang/String;
.field private mPhotoUploader:Lcom/facebook/katana/PhotoUploader;
.field private mPhotosContentObserver:Landroid/database/DataSetObserver;
.field private mPhotosTask:Lcom/facebook/katana/util/TaskContext;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/FacebookActivity;-><init>()V
return-void
.end method
.method private static D(Ljava/lang/String;)V
.registers 1
return-void
.end method
.method static synthetic access$10(Lcom/facebook/katana/PhotosActivity;Lcom/facebook/katana/service/api/FacebookAlbum;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/PhotosActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
return-void
.end method
.method static synthetic access$11(Lcom/facebook/katana/PhotosActivity;)Lcom/facebook/katana/service/api/FacebookAlbum;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
return-object v0
.end method
.method static synthetic access$12(Lcom/facebook/katana/PhotosActivity;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/PhotosActivity;->updateFatTitleBar()V
return-void
.end method
.method static synthetic access$13(Lcom/facebook/katana/PhotosActivity;)Lcom/facebook/katana/util/TaskContext;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumTask:Lcom/facebook/katana/util/TaskContext;
return-object v0
.end method
.method static synthetic access$14(Lcom/facebook/katana/PhotosActivity;)Lcom/facebook/katana/util/TaskContext;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mPhotosTask:Lcom/facebook/katana/util/TaskContext;
return-object v0
.end method
.method static synthetic access$15(Lcom/facebook/katana/PhotosActivity;)Landroid/widget/GridView;
.registers 2
invoke-direct {p0}, Lcom/facebook/katana/PhotosActivity;->gridView()Landroid/widget/GridView;
move-result-object v0
return-object v0
.end method
.method static synthetic access$16(Lcom/facebook/katana/PhotosActivity;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/PhotosActivity;->updateContentViews()V
return-void
.end method
.method static synthetic access$17(Lcom/facebook/katana/PhotosActivity;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/PhotosActivity;->mDeleteAlbumReqId:Ljava/lang/String;
return-void
.end method
.method static synthetic access$18(Lcom/facebook/katana/PhotosActivity;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/PhotosActivity;->mDeletePhotoReqId:Ljava/lang/String;
return-void
.end method
.method static synthetic access$19(Lcom/facebook/katana/PhotosActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mPhotoId:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$20(Lcom/facebook/katana/PhotosActivity;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/PhotosActivity;->mPhotoId:Ljava/lang/String;
return-void
.end method
.method static synthetic access$21(Lcom/facebook/katana/PhotosActivity;)Lcom/facebook/katana/PhotosAdapter;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAdapter:Lcom/facebook/katana/PhotosAdapter;
return-object v0
.end method
.method static synthetic access$22(Lcom/facebook/katana/PhotosActivity;)Lcom/facebook/katana/binding/AppSession;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
return-object v0
.end method
.method static synthetic access$9(Lcom/facebook/katana/PhotosActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
return-object v0
.end method
.method private gridView()Landroid/widget/GridView;
.registers 2
const v0, 0x102000a
invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotosActivity;->findViewById(I)Landroid/view/View;
move-result-object p0
check-cast p0, Landroid/widget/GridView;
return-object p0
.end method
.method private loadAlbum()V
.registers 7
const/4 v4, 0x1
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
if-nez v0, :cond_11
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/facebook/katana/service/api/FacebookAlbum;->readFromContentProvider(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookAlbum;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
:cond_11
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
if-nez v0, :cond_46
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumTask:Lcom/facebook/katana/util/TaskContext;
iget-boolean v0, v0, Lcom/facebook/katana/util/TaskContext;->sentRequest:Z
if-nez v0, :cond_46
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-eqz v0, :cond_46
const-string v0, "sending request for album"
invoke-static {v0}, Lcom/facebook/katana/PhotosActivity;->D(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumTask:Lcom/facebook/katana/util/TaskContext;
iput-boolean v4, v0, Lcom/facebook/katana/util/TaskContext;->sentRequest:Z
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-wide v1, p0, Lcom/facebook/katana/PhotosActivity;->mOwnerId:J
iget-object v3, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->isAlbumsGetPending(JLjava/lang/String;)Z
move-result v0
if-nez v0, :cond_46
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-wide v1, p0, Lcom/facebook/katana/PhotosActivity;->mOwnerId:J
new-array v3, v4, [Ljava/lang/String;
const/4 v4, 0x0
iget-object v5, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
aput-object v5, v3, v4
invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v3
invoke-virtual {v0, p0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->photoGetAlbums(Landroid/content/Context;JLjava/util/List;)Ljava/lang/String;
:cond_46
return-void
.end method
.method private refresh()V
.registers 5
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
iget-wide v2, p0, Lcom/facebook/katana/PhotosActivity;->mOwnerId:J
invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->isPhotosGetPending(Ljava/lang/String;J)Z
move-result v0
if-nez v0, :cond_17
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mPhotosTask:Lcom/facebook/katana/util/TaskContext;
invoke-virtual {v0}, Lcom/facebook/katana/util/TaskContext;->clear()V
invoke-virtual {p0}, Lcom/facebook/katana/PhotosActivity;->loadPhotos()V
invoke-direct {p0}, Lcom/facebook/katana/PhotosActivity;->updateContentViews()V
:cond_17
return-void
.end method
.method private setupEmptyView()V
.registers 3
const v0, 0x7f0b0013
invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotosActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f0800d6
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
const v0, 0x7f0b0015
invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotosActivity;->findViewById(I)Landroid/view/View;
move-result-object p0
check-cast p0, Landroid/widget/TextView;
const v0, 0x7f0800d4
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V
return-void
.end method
.method private updateContentViews()V
.registers 9
const v7, 0x7f0b0014
const v6, 0x7f0b0013
const/16 v5, 0x8
const/4 v4, 0x0
invoke-direct {p0}, Lcom/facebook/katana/PhotosActivity;->gridView()Landroid/widget/GridView;
move-result-object v1
const v3, 0x1020004
invoke-virtual {p0, v3}, Lcom/facebook/katana/PhotosActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
const v3, 0x7f0b00b2
invoke-virtual {p0, v3}, Lcom/facebook/katana/PhotosActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v1}, Landroid/widget/GridView;->getCount()I
move-result v3
if-lez v3, :cond_31
invoke-virtual {v1, v4}, Landroid/widget/GridView;->setVisibility(I)V
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
:goto_27
iget-object v3, p0, Lcom/facebook/katana/PhotosActivity;->mPhotosTask:Lcom/facebook/katana/util/TaskContext;
iget-boolean v3, v3, Lcom/facebook/katana/util/TaskContext;->receivedResponse:Z
if-nez v3, :cond_5b
invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V
:goto_30
return-void
:cond_31
invoke-virtual {v1, v5}, Landroid/widget/GridView;->setVisibility(I)V
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
iget-object v3, p0, Lcom/facebook/katana/PhotosActivity;->mPhotosTask:Lcom/facebook/katana/util/TaskContext;
iget-boolean v3, v3, Lcom/facebook/katana/util/TaskContext;->receivedResponse:Z
if-nez v3, :cond_4c
invoke-virtual {p0, v6}, Lcom/facebook/katana/PhotosActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v7}, Lcom/facebook/katana/PhotosActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
goto :goto_27
:cond_4c
invoke-virtual {p0, v6}, Lcom/facebook/katana/PhotosActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v7}, Lcom/facebook/katana/PhotosActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V
goto :goto_27
:cond_5b
invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V
goto :goto_30
.end method
.method private updateFatTitleBar()V
.registers 9
const/4 v4, 0x1
const/4 v7, -0x1
iget-object v3, p0, Lcom/facebook/katana/PhotosActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
if-eqz v3, :cond_79
iget-object v3, p0, Lcom/facebook/katana/PhotosActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookAlbum;->getName()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_1a
const v3, 0x7f0b0025
invoke-virtual {p0, v3}, Lcom/facebook/katana/PhotosActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_1a
iget-object v3, p0, Lcom/facebook/katana/PhotosActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookAlbum;->getSize()I
move-result v0
if-nez v0, :cond_5a
const v3, 0x7f080014
invoke-virtual {p0, v3}, Lcom/facebook/katana/PhotosActivity;->getString(I)Ljava/lang/String;
move-result-object v2
:goto_29
const v3, 0x7f0b0026
invoke-virtual {p0, v3}, Lcom/facebook/katana/PhotosActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/facebook/katana/PhotosActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookAlbum;->getOwner()J
move-result-wide v3
iget-object v5, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v5}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v5
invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v5
cmp-long v3, v3, v5
if-nez v3, :cond_75
iget-object v3, p0, Lcom/facebook/katana/PhotosActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookAlbum;->getType()Ljava/lang/String;
move-result-object v3
const-string v4, "profile"
if-eq v3, v4, :cond_75
const v3, 0x7f0200bb
invoke-virtual {p0, v3}, Lcom/facebook/katana/PhotosActivity;->setPrimaryActionIcon(I)V
:goto_59
return-void
:cond_5a
if-ne v0, v4, :cond_64
const v3, 0x7f080015
invoke-virtual {p0, v3}, Lcom/facebook/katana/PhotosActivity;->getString(I)Ljava/lang/String;
move-result-object v2
goto :goto_29
:cond_64
const v3, 0x7f080016
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-virtual {p0, v3, v4}, Lcom/facebook/katana/PhotosActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
goto :goto_29
:cond_75
invoke-virtual {p0, v7}, Lcom/facebook/katana/PhotosActivity;->setPrimaryActionIcon(I)V
goto :goto_59
:cond_79
invoke-virtual {p0, v7}, Lcom/facebook/katana/PhotosActivity;->setPrimaryActionIcon(I)V
goto :goto_59
.end method
.method public static uriForAlbum(Ljava/lang/String;J)Landroid/net/Uri;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "facebook:/photos?album="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "&"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "user"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method private viewPhoto(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
iget-wide v1, p0, Lcom/facebook/katana/PhotosActivity;->mOwnerId:J
iget-object v3, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
invoke-static {p0, v1, v2, v3, p1}, Lcom/facebook/katana/ViewPhotoActivity;->viewPhotoIntent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "extra_from_album"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotosActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public bridge synthetic facebookOnBackPressed()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->facebookOnBackPressed()Z
move-result v0
return v0
.end method
.method public bridge synthetic finish()V
.registers 1
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->finish()V
return-void
.end method
.method  loadPhotos()V
.registers 7
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mPhotosTask:Lcom/facebook/katana/util/TaskContext;
iget-boolean v0, v0, Lcom/facebook/katana/util/TaskContext;->sentRequest:Z
if-nez v0, :cond_2e
const-string v0, "sending request for photos"
invoke-static {v0}, Lcom/facebook/katana/PhotosActivity;->D(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mPhotosTask:Lcom/facebook/katana/util/TaskContext;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/facebook/katana/util/TaskContext;->sentRequest:Z
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
iget-wide v2, p0, Lcom/facebook/katana/PhotosActivity;->mOwnerId:J
invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->isPhotosGetPending(Ljava/lang/String;J)Z
move-result v0
if-nez v0, :cond_2e
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v2, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
const/4 v3, 0x0
iget-wide v4, p0, Lcom/facebook/katana/PhotosActivity;->mOwnerId:J
move-object v1, p0
invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->photoGetPhotos(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;J)Ljava/lang/String;
invoke-direct {p0}, Lcom/facebook/katana/PhotosActivity;->updateContentViews()V
:goto_2e
:cond_2e
return-void
:cond_2f
invoke-direct {p0}, Lcom/facebook/katana/PhotosActivity;->updateContentViews()V
goto :goto_2e
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 5
invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/FacebookActivity;->onActivityResult(IILandroid/content/Intent;)V
if-nez p2, :cond_6
:goto_5
return-void
:cond_6
packed-switch p1, :pswitch_data_10
goto :goto_5
:pswitch_a
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mPhotoUploader:Lcom/facebook/katana/PhotoUploader;
invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/katana/PhotoUploader;->onActivityResult(IILandroid/content/Intent;)V
goto :goto_5
:pswitch_data_10
.packed-switch 0x1
:pswitch_a
:pswitch_a
.end packed-switch
.end method
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/PhotosActivity; onContextItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x1
:try_start_1
invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
move-result-object v2
check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
:try_end_7
.catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_7} :catch_1e
iget-object v4, p0, Lcom/facebook/katana/PhotosActivity;->mAdapter:Lcom/facebook/katana/PhotosAdapter;
iget v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I
invoke-virtual {v4, v5}, Lcom/facebook/katana/PhotosAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/database/Cursor;
invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v4
packed-switch v4, :pswitch_data_3c
:goto_1c
move v4, v6
:goto_1d
const-string v1, " - Lcom/facebook/katana/PhotosActivity; onContextItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v4
:catch_1e
move-exception v4
move-object v1, v4
const/4 v4, 0x0
goto :goto_1d
:pswitch_22
const-string v4, "android.intent.action.VIEW"
invoke-direct {p0, v3, v4}, Lcom/facebook/katana/PhotosActivity;->viewPhoto(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1c
:pswitch_28
const-string v4, "android.intent.action.EDIT"
invoke-direct {p0, v3, v4}, Lcom/facebook/katana/PhotosActivity;->viewPhoto(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1c
:pswitch_2e
iput-object v3, p0, Lcom/facebook/katana/PhotosActivity;->mPhotoId:Ljava/lang/String;
const/4 v4, 0x4
invoke-virtual {p0, v4}, Lcom/facebook/katana/PhotosActivity;->showDialog(I)V
goto :goto_1c
:pswitch_35
iput-object v3, p0, Lcom/facebook/katana/PhotosActivity;->mPhotoId:Ljava/lang/String;
const/4 v4, 0x2
invoke-virtual {p0, v4}, Lcom/facebook/katana/PhotosActivity;->showDialog(I)V
goto :goto_1c
:pswitch_data_3c
.packed-switch 0xb
:pswitch_22
:pswitch_28
:pswitch_2e
:pswitch_35
.end packed-switch
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 11
const-string v1, " + Lcom/facebook/katana/PhotosActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030032
invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotosActivity;->setContentView(I)V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v0, :cond_17
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_16
const-string v1, " - Lcom/facebook/katana/PhotosActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_17
invoke-virtual {p0}, Lcom/facebook/katana/PhotosActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v7
const-string v0, "user"
invoke-virtual {v7, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
if-nez v8, :cond_b7
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v0
iput-wide v0, p0, Lcom/facebook/katana/PhotosActivity;->mOwnerId:J
:goto_33
const-string v0, "album"
invoke-virtual {v7, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
if-eqz p1, :cond_51
const-string v0, "state_album_task"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/facebook/katana/util/TaskContext;
iput-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumTask:Lcom/facebook/katana/util/TaskContext;
const-string v0, "state_photos_task"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/facebook/katana/util/TaskContext;
iput-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mPhotosTask:Lcom/facebook/katana/util/TaskContext;
:cond_51
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumTask:Lcom/facebook/katana/util/TaskContext;
if-nez v0, :cond_5c
new-instance v0, Lcom/facebook/katana/util/TaskContext;
invoke-direct {v0}, Lcom/facebook/katana/util/TaskContext;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumTask:Lcom/facebook/katana/util/TaskContext;
:cond_5c
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mPhotosTask:Lcom/facebook/katana/util/TaskContext;
if-nez v0, :cond_67
new-instance v0, Lcom/facebook/katana/util/TaskContext;
invoke-direct {v0}, Lcom/facebook/katana/util/TaskContext;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mPhotosTask:Lcom/facebook/katana/util/TaskContext;
:cond_67
invoke-direct {p0}, Lcom/facebook/katana/PhotosActivity;->loadAlbum()V
if-eqz p1, :cond_74
const-string v0, "state_photo_id"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mPhotoId:Ljava/lang/String;
:cond_74
invoke-direct {p0}, Lcom/facebook/katana/PhotosActivity;->gridView()Landroid/widget/GridView;
move-result-object v6
new-instance v0, Lcom/facebook/katana/PhotosAdapter;
iget-object v2, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
iget-wide v3, p0, Lcom/facebook/katana/PhotosActivity;->mOwnerId:J
iget-object v5, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
move-object v1, p0
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/PhotosAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;JLcom/facebook/katana/binding/AppSession;)V
iput-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAdapter:Lcom/facebook/katana/PhotosAdapter;
new-instance v0, Lcom/facebook/katana/PhotosActivity$1;
invoke-direct {v0, p0}, Lcom/facebook/katana/PhotosActivity$1;-><init>(Lcom/facebook/katana/PhotosActivity;)V
iput-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mPhotosContentObserver:Landroid/database/DataSetObserver;
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAdapter:Lcom/facebook/katana/PhotosAdapter;
invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V
invoke-direct {p0}, Lcom/facebook/katana/PhotosActivity;->setupEmptyView()V
new-instance v0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;-><init>(Lcom/facebook/katana/PhotosActivity;Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;)V
iput-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
new-instance v0, Lcom/facebook/katana/PhotosActivity$AlbumsContentObserver;
invoke-direct {v0, p0}, Lcom/facebook/katana/PhotosActivity$AlbumsContentObserver;-><init>(Lcom/facebook/katana/PhotosActivity;)V
iput-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumContentObserver:Landroid/database/ContentObserver;
invoke-virtual {v6, p0}, Landroid/widget/GridView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
invoke-virtual {v6, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
new-instance v0, Lcom/facebook/katana/PhotoUploader;
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
const/4 v2, 0x1
const/4 v3, 0x2
invoke-direct {v0, p0, v1, v2, v3}, Lcom/facebook/katana/PhotoUploader;-><init>(Landroid/app/Activity;Ljava/lang/String;II)V
iput-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mPhotoUploader:Lcom/facebook/katana/PhotoUploader;
goto/16 :goto_16
:cond_b7
invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
iput-wide v0, p0, Lcom/facebook/katana/PhotosActivity;->mOwnerId:J
goto/16 :goto_33
.end method
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/PhotosActivity; onCreateContextMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
const v0, 0x7f0800d5
invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotosActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
const/16 v0, 0xb
const v1, 0x7f0800d8
invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
iget-wide v0, p0, Lcom/facebook/katana/PhotosActivity;->mOwnerId:J
iget-object v2, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v2
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v2
cmp-long v0, v0, v2
if-nez v0, :cond_33
const/16 v0, 0xc
const v1, 0x7f0800d1
invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
const/16 v0, 0xd
const v1, 0x7f0800cc
invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
:cond_33
const/16 v0, 0xe
const v1, 0x7f0800d0
invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
const-string v1, " - Lcom/facebook/katana/PhotosActivity; onCreateContextMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 14
const v6, 0x7f0800b6
const v2, 0x1080027
const/4 v9, 0x1
const/4 v1, 0x0
const/4 v7, 0x0
packed-switch p1, :pswitch_data_a8
move-object v0, v7
:goto_d
return-object v0
:pswitch_e
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-static {p0, v0}, Lcom/facebook/katana/AlbumInfoDialog;->create(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookAlbum;)Landroid/app/Dialog;
move-result-object v0
goto :goto_d
:pswitch_15
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mPhotoId:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/facebook/katana/service/api/FacebookPhoto;->readFromContentProvider(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookPhoto;
move-result-object v11
invoke-static {p0, v11}, Lcom/facebook/katana/PhotoInfoDialog;->create(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookPhoto;)Landroid/app/Dialog;
move-result-object v0
goto :goto_d
:pswitch_20
new-instance v5, Lcom/facebook/katana/PhotosActivity$2;
invoke-direct {v5, p0}, Lcom/facebook/katana/PhotosActivity$2;-><init>(Lcom/facebook/katana/PhotosActivity;)V
const v0, 0x7f08000a
invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotosActivity;->getString(I)Ljava/lang/String;
move-result-object v1
const v0, 0x7f08000b
invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotosActivity;->getString(I)Ljava/lang/String;
move-result-object v3
const v0, 0x7f0801a2
invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotosActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {p0, v6}, Lcom/facebook/katana/PhotosActivity;->getString(I)Ljava/lang/String;
move-result-object v6
move-object v0, p0
move-object v8, v7
invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;
move-result-object v0
goto :goto_d
:pswitch_45
new-instance v5, Lcom/facebook/katana/PhotosActivity$3;
invoke-direct {v5, p0}, Lcom/facebook/katana/PhotosActivity$3;-><init>(Lcom/facebook/katana/PhotosActivity;)V
const v0, 0x7f0800cc
invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotosActivity;->getString(I)Ljava/lang/String;
move-result-object v1
const v0, 0x7f0800ce
invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotosActivity;->getString(I)Ljava/lang/String;
move-result-object v3
const v0, 0x7f0801a2
invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotosActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {p0, v6}, Lcom/facebook/katana/PhotosActivity;->getString(I)Ljava/lang/String;
move-result-object v6
move-object v0, p0
move-object v8, v7
invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;
move-result-object v0
goto :goto_d
:pswitch_6a
new-instance v10, Landroid/app/ProgressDialog;
invoke-direct {v10, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
const v0, 0x7f08000d
invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotosActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
invoke-virtual {v10, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
move-object v0, v10
goto :goto_d
:pswitch_84
new-instance v10, Landroid/app/ProgressDialog;
invoke-direct {v10, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
const v0, 0x7f0800cf
invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotosActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
invoke-virtual {v10, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
move-object v0, v10
goto/16 :goto_d
:pswitch_9f
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mPhotoUploader:Lcom/facebook/katana/PhotoUploader;
invoke-virtual {v0}, Lcom/facebook/katana/PhotoUploader;->createDialog()Landroid/app/Dialog;
move-result-object v0
goto/16 :goto_d
nop
:pswitch_data_a8
.packed-switch 0x1
:pswitch_e
:pswitch_15
:pswitch_20
:pswitch_45
:pswitch_6a
:pswitch_84
:pswitch_9f
.end packed-switch
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/PhotosActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
const/4 v0, 0x2
const v1, 0x7f080147
invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f020081
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
iget-wide v0, p0, Lcom/facebook/katana/PhotosActivity;->mOwnerId:J
iget-object v2, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v2
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v2
cmp-long v0, v0, v2
if-nez v0, :cond_3e
const/4 v0, 0x5
const v1, 0x7f08000f
invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f020069
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/4 v0, 0x6
const v1, 0x7f08000a
invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f020064
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
:cond_3e
const/4 v0, 0x7
const v1, 0x7f08000e
invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f020056
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/facebook/katana/PhotosActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/PhotosActivity; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mAdapter:Lcom/facebook/katana/PhotosAdapter;
invoke-virtual {v1, p3}, Lcom/facebook/katana/PhotosAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/database/Cursor;
const/4 v1, 0x1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
const-string v2, "android.intent.action.VIEW"
invoke-direct {p0, v1, v2}, Lcom/facebook/katana/PhotosActivity;->viewPhoto(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/facebook/katana/PhotosActivity; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/PhotosActivity; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v1
packed-switch v1, :pswitch_data_36
:goto_7
:pswitch_7
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v1
move v2, v1
const-string v1, " - Lcom/facebook/katana/PhotosActivity; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
:pswitch_c
invoke-direct {p0}, Lcom/facebook/katana/PhotosActivity;->refresh()V
goto :goto_7
:pswitch_10
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/facebook/katana/CreateEditAlbumActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "android.intent.action.EDIT"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_AID_CONTENT_URI:Landroid/net/Uri;
iget-object v2, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotosActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_7
:pswitch_2b
const/4 v1, 0x3
invoke-virtual {p0, v1}, Lcom/facebook/katana/PhotosActivity;->showDialog(I)V
goto :goto_7
:pswitch_30
const/4 v1, 0x1
invoke-virtual {p0, v1}, Lcom/facebook/katana/PhotosActivity;->showDialog(I)V
goto :goto_7
nop
:pswitch_data_36
.packed-switch 0x2
:pswitch_c
:pswitch_7
:pswitch_7
:pswitch_10
:pswitch_2b
:pswitch_30
.end packed-switch
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/facebook/katana/PhotosActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onPause()V
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumTask:Lcom/facebook/katana/util/TaskContext;
invoke-virtual {v0}, Lcom/facebook/katana/util/TaskContext;->reset()V
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mPhotosTask:Lcom/facebook/katana/util/TaskContext;
invoke-virtual {v0}, Lcom/facebook/katana/util/TaskContext;->reset()V
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V
:cond_18
invoke-virtual {p0}, Lcom/facebook/katana/PhotosActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumContentObserver:Landroid/database/ContentObserver;
invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mAdapter:Lcom/facebook/katana/PhotosAdapter;
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mPhotosContentObserver:Landroid/database/DataSetObserver;
invoke-virtual {v0, v1}, Lcom/facebook/katana/PhotosAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
const-string v1, " - Lcom/facebook/katana/PhotosActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPrepareDialog(ILandroid/app/Dialog;)V
.registers 5
packed-switch p1, :pswitch_data_14
:goto_3
return-void
:pswitch_4
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-static {p2, v1}, Lcom/facebook/katana/AlbumInfoDialog;->update(Landroid/app/Dialog;Lcom/facebook/katana/service/api/FacebookAlbum;)V
goto :goto_3
:pswitch_a
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mPhotoId:Ljava/lang/String;
invoke-static {p0, v1}, Lcom/facebook/katana/service/api/FacebookPhoto;->readFromContentProvider(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookPhoto;
move-result-object v0
invoke-static {p2, v0}, Lcom/facebook/katana/PhotoInfoDialog;->update(Landroid/app/Dialog;Lcom/facebook/katana/service/api/FacebookPhoto;)V
goto :goto_3
:pswitch_data_14
.packed-switch 0x1
:pswitch_4
:pswitch_a
.end packed-switch
.end method
.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
.registers 9
const/4 v6, 0x0
const/4 v5, 0x1
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v2, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
iget-wide v3, p0, Lcom/facebook/katana/PhotosActivity;->mOwnerId:J
invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->isPhotosGetPending(Ljava/lang/String;J)Z
move-result v0
const/4 v1, 0x2
invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v1
if-eqz v0, :cond_4d
move v2, v6
:goto_17
invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
iget-wide v1, p0, Lcom/facebook/katana/PhotosActivity;->mOwnerId:J
iget-object v3, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v3
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v3
cmp-long v1, v1, v3
if-nez v1, :cond_4c
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
if-eqz v1, :cond_4c
const/4 v1, 0x5
invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v1
if-eqz v0, :cond_4f
move v2, v6
:goto_36
invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
const/4 v1, 0x6
invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v1
if-nez v0, :cond_51
iget-object v2, p0, Lcom/facebook/katana/PhotosActivity;->mAdapter:Lcom/facebook/katana/PhotosAdapter;
invoke-virtual {v2}, Lcom/facebook/katana/PhotosAdapter;->getCount()I
move-result v2
if-nez v2, :cond_51
move v2, v5
:goto_49
invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
:cond_4c
return v5
:cond_4d
move v2, v5
goto :goto_17
:cond_4f
move v2, v5
goto :goto_36
:cond_51
move v2, v6
goto :goto_49
.end method
.method protected onResume()V
.registers 5
const-string v1, " + Lcom/facebook/katana/PhotosActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onResume()V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v1
iput-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v1, :cond_12
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_11
const-string v1, " - Lcom/facebook/katana/PhotosActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_12
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mDeleteAlbumReqId:Ljava/lang/String;
if-eqz v1, :cond_26
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v2, p0, Lcom/facebook/katana/PhotosActivity;->mDeleteAlbumReqId:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/facebook/katana/binding/AppSession;->isRequestPending(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_26
const/4 v1, 0x5
invoke-virtual {p0, v1}, Lcom/facebook/katana/PhotosActivity;->removeDialog(I)V
iput-object v3, p0, Lcom/facebook/katana/PhotosActivity;->mDeleteAlbumReqId:Ljava/lang/String;
:cond_26
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mDeletePhotoReqId:Ljava/lang/String;
if-eqz v1, :cond_3a
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v2, p0, Lcom/facebook/katana/PhotosActivity;->mDeletePhotoReqId:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/facebook/katana/binding/AppSession;->isRequestPending(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_3a
const/4 v1, 0x6
invoke-virtual {p0, v1}, Lcom/facebook/katana/PhotosActivity;->removeDialog(I)V
iput-object v3, p0, Lcom/facebook/katana/PhotosActivity;->mDeletePhotoReqId:Ljava/lang/String;
:cond_3a
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v2, p0, Lcom/facebook/katana/PhotosActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v1, v2}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V
invoke-direct {p0}, Lcom/facebook/katana/PhotosActivity;->loadAlbum()V
sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_AID_CONTENT_URI:Landroid/net/Uri;
iget-object v2, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {p0}, Lcom/facebook/katana/PhotosActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
const/4 v2, 0x0
iget-object v3, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumContentObserver:Landroid/database/ContentObserver;
invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mAdapter:Lcom/facebook/katana/PhotosAdapter;
iget-object v2, p0, Lcom/facebook/katana/PhotosActivity;->mPhotosContentObserver:Landroid/database/DataSetObserver;
invoke-virtual {v1, v2}, Lcom/facebook/katana/PhotosAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
invoke-direct {p0}, Lcom/facebook/katana/PhotosActivity;->updateFatTitleBar()V
invoke-direct {p0}, Lcom/facebook/katana/PhotosActivity;->updateContentViews()V
invoke-virtual {p0}, Lcom/facebook/katana/PhotosActivity;->loadPhotos()V
goto :goto_11
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/facebook/katana/PhotosActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/facebook/katana/PhotosActivity;->mPhotoId:Ljava/lang/String;
if-eqz v0, :cond_e
const-string v0, "state_photo_id"
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mPhotoId:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_e
const-string v0, "state_album_task"
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mAlbumTask:Lcom/facebook/katana/util/TaskContext;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v0, "state_photos_task"
iget-object v1, p0, Lcom/facebook/katana/PhotosActivity;->mPhotosTask:Lcom/facebook/katana/util/TaskContext;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v1, " - Lcom/facebook/katana/PhotosActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic onSearchRequested()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onSearchRequested()Z
move-result v0
return v0
.end method
.method public bridge synthetic startActivity(Landroid/content/Intent;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
.registers 3
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method public bridge synthetic titleBarClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->titleBarClickHandler(Landroid/view/View;)V
return-void
.end method
.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
.registers 3
const/4 v0, 0x7
invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotosActivity;->showDialog(I)V
return-void
.end method
.method public bridge synthetic titleBarSearchClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->titleBarSearchClickHandler(Landroid/view/View;)V
return-void
.end method