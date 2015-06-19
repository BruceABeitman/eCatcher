.class public Lcom/facebook/katana/UploadPhotoActivity;
.super Lcom/facebook/katana/FacebookActivity;
.source "UploadPhotoActivity.java"
.implements Landroid/view/View$OnClickListener;
.field private static final ALBUM_PICK_RESULT_CODE:I = 0x1
.field private static DEBUG:Z = false
.field private static final ERROR_LOAD_PHOTO_DIALOG_ID:I = 0x1
.field private static final ERROR_SAVE_PHOTO_DIALOG_ID:I = 0x2
.field public static final EXTRA_ALBUM_ID:Ljava/lang/String; = "extra_album_id"
.field public static final EXTRA_PHOTO_DATA:Ljava/lang/String; = "extra_photo_data"
.field public static final EXTRA_PHOTO_ID:Ljava/lang/String; = "extra_photo_id"
.field public static final EXTRA_PHOTO_IS_SCALED:Ljava/lang/String; = "extra_photo_is_scaled"
.field private static final MAX_IMAGE_DIMENSION:I = 0x25c
.field private static final SAVE_STATE_FILENAME:Ljava/lang/String; = "save_state_filename"
.field private mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
.field private mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private mDeleteFileOnDestroy:Z
.field private mFilename:Ljava/lang/String;
.field private mStarted:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/facebook/katana/UploadPhotoActivity;->DEBUG:Z
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/facebook/katana/FacebookActivity;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/katana/UploadPhotoActivity;->mDeleteFileOnDestroy:Z
return-void
.end method
.method private static D(Ljava/lang/String;)V
.registers 2
sget-boolean v0, Lcom/facebook/katana/UploadPhotoActivity;->DEBUG:Z
if-eqz v0, :cond_9
const-string v0, "UploadPhotoActivity"
invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_9
return-void
.end method
.method static synthetic access$10(Lcom/facebook/katana/UploadPhotoActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/UploadPhotoActivity;->mStarted:Z
return v0
.end method
.method static synthetic access$11(Lcom/facebook/katana/UploadPhotoActivity;Landroid/graphics/Bitmap;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/facebook/katana/UploadPhotoActivity;->onBitmapReady(Landroid/graphics/Bitmap;Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$12(Ljava/lang/String;)V
.registers 1
invoke-static {p0}, Lcom/facebook/katana/UploadPhotoActivity;->D(Ljava/lang/String;)V
return-void
.end method
.method private onBitmapReady(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.registers 6
const v1, 0x7f0b0086
const/16 v2, 0x8
iput-object p2, p0, Lcom/facebook/katana/UploadPhotoActivity;->mFilename:Ljava/lang/String;
invoke-virtual {p0, v1}, Lcom/facebook/katana/UploadPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
invoke-virtual {p0, v1}, Lcom/facebook/katana/UploadPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f0b00b6
invoke-virtual {p0, v0}, Lcom/facebook/katana/UploadPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f0b00b2
invoke-virtual {p0, v0}, Lcom/facebook/katana/UploadPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f0b00b8
invoke-virtual {p0, v0}, Lcom/facebook/katana/UploadPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
return-void
.end method
.method private setupFatTitleBar()V
.registers 3
const v1, 0x7f0b0027
invoke-virtual {p0, v1}, Lcom/facebook/katana/UploadPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
const v1, 0x7f020093
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method private updateFatTitleBar()V
.registers 7
const v5, 0x7f08018a
const/4 v3, 0x1
const/4 v4, 0x0
const v2, 0x7f0b0025
invoke-virtual {p0, v2}, Lcom/facebook/katana/UploadPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v2, 0x7f080188
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V
iget-object v2, p0, Lcom/facebook/katana/UploadPhotoActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
if-nez v2, :cond_34
new-array v2, v3, [Ljava/lang/Object;
const v3, 0x7f08017b
invoke-virtual {p0, v3}, Lcom/facebook/katana/UploadPhotoActivity;->getString(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v4
invoke-virtual {p0, v5, v2}, Lcom/facebook/katana/UploadPhotoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
:goto_27
const v2, 0x7f0b0026
invoke-virtual {p0, v2}, Lcom/facebook/katana/UploadPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object p0
check-cast p0, Landroid/widget/TextView;
invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
:cond_34
new-array v2, v3, [Ljava/lang/Object;
iget-object v3, p0, Lcom/facebook/katana/UploadPhotoActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookAlbum;->getName()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v4
invoke-virtual {p0, v5, v2}, Lcom/facebook/katana/UploadPhotoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_27
.end method
.method private upload()V
.registers 5
const v2, 0x7f0b00b7
invoke-virtual {p0, v2}, Lcom/facebook/katana/UploadPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_1c
const/4 v1, 0x0
:cond_1c
const/4 v0, 0x0
iget-object v2, p0, Lcom/facebook/katana/UploadPhotoActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
if-eqz v2, :cond_27
iget-object v2, p0, Lcom/facebook/katana/UploadPhotoActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookAlbum;->getAlbumId()Ljava/lang/String;
move-result-object v0
:cond_27
iget-object v2, p0, Lcom/facebook/katana/UploadPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v3, p0, Lcom/facebook/katana/UploadPhotoActivity;->mFilename:Ljava/lang/String;
invoke-virtual {v2, p0, v0, v1, v3}, Lcom/facebook/katana/binding/AppSession;->photoUpload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/facebook/katana/UploadPhotoActivity;->mDeleteFileOnDestroy:Z
const v2, 0x7f08018c
invoke-virtual {p0, v2}, Lcom/facebook/katana/UploadPhotoActivity;->getString(I)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/Toast;->show()V
invoke-virtual {p0}, Lcom/facebook/katana/UploadPhotoActivity;->finish()V
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
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 5
invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/FacebookActivity;->onActivityResult(IILandroid/content/Intent;)V
if-nez p2, :cond_6
:goto_5
return-void
:cond_6
packed-switch p1, :pswitch_data_18
goto :goto_5
:pswitch_a
invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v0
invoke-static {p0, v0}, Lcom/facebook/katana/service/api/FacebookAlbum;->readFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/katana/service/api/FacebookAlbum;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-direct {p0}, Lcom/facebook/katana/UploadPhotoActivity;->updateFatTitleBar()V
goto :goto_5
:pswitch_data_18
.packed-switch 0x1
:pswitch_a
.end packed-switch
.end method
.method public onClick(Landroid/view/View;)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/UploadPhotoActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x1
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v3
sparse-switch v3, :sswitch_data_52
:goto_8
const-string v1, " - Lcom/facebook/katana/UploadPhotoActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_9
const v3, 0x7f0b00b7
invoke-virtual {p0, v3}, Lcom/facebook/katana/UploadPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const-string v3, "input_method"
invoke-virtual {p0, v3}, Lcom/facebook/katana/UploadPhotoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/view/inputmethod/InputMethodManager;
invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;
move-result-object v4
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
invoke-direct {p0}, Lcom/facebook/katana/UploadPhotoActivity;->upload()V
goto :goto_8
:sswitch_26
invoke-virtual {p0}, Lcom/facebook/katana/UploadPhotoActivity;->finish()V
goto :goto_8
:sswitch_2a
new-instance v1, Landroid/content/Intent;
const-class v3, Lcom/facebook/katana/AlbumsActivity;
invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
sget-object v3, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_OWNER_CONTENT_URI:Landroid/net/Uri;
iget-object v4, p0, Lcom/facebook/katana/UploadPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v4}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v4
invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
const-string v3, "extra_exclude_read_only"
invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v3, "android.intent.action.PICK"
invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v1, v6}, Lcom/facebook/katana/UploadPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_8
:sswitch_data_52
.sparse-switch
0x7f0b0027 -> :sswitch_2a
0x7f0b00a2 -> :sswitch_26
0x7f0b00b8 -> :sswitch_9
.end sparse-switch
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 15
const-string v1, " + Lcom/facebook/katana/UploadPhotoActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onCreate(Landroid/os/Bundle;)V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v9
iput-object v9, p0, Lcom/facebook/katana/UploadPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v9, p0, Lcom/facebook/katana/UploadPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v9, :cond_11
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:cond_10
:goto_10
const-string v1, " - Lcom/facebook/katana/UploadPhotoActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_11
invoke-virtual {p0}, Lcom/facebook/katana/UploadPhotoActivity;->getIntent()Landroid/content/Intent;
move-result-object v9
invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v9, "com.facebook.katana.upload.notification.error"
invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v9
if-eqz v9, :cond_61
iget-object v9, p0, Lcom/facebook/katana/UploadPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/facebook/katana/UploadPhotoActivity;->getIntent()Landroid/content/Intent;
move-result-object v11
invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v11
const-string v12, "android.intent.extra.SUBJECT"
invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, p0, v10}, Lcom/facebook/katana/binding/AppSession;->cancelUploadNotification(Landroid/content/Context;Ljava/lang/String;)V
:cond_41
const v9, 0x7f03004a
invoke-virtual {p0, v9}, Lcom/facebook/katana/UploadPhotoActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/facebook/katana/UploadPhotoActivity;->getIntent()Landroid/content/Intent;
move-result-object v9
const-string v10, "extra_album_id"
invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_d8
invoke-static {p0, v1}, Lcom/facebook/katana/service/api/FacebookAlbum;->readFromContentProvider(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookAlbum;
move-result-object v9
iput-object v9, p0, Lcom/facebook/katana/UploadPhotoActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
iget-object v9, p0, Lcom/facebook/katana/UploadPhotoActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
if-nez v9, :cond_d8
invoke-virtual {p0}, Lcom/facebook/katana/UploadPhotoActivity;->finish()V
goto :goto_10
:cond_61
const-string v9, "com.facebook.katana.upload.notification.ok"
invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v9
if-eqz v9, :cond_cb
iget-object v9, p0, Lcom/facebook/katana/UploadPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/facebook/katana/UploadPhotoActivity;->getIntent()Landroid/content/Intent;
move-result-object v11
invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v11
const-string v12, "android.intent.extra.SUBJECT"
invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, p0, v10}, Lcom/facebook/katana/binding/AppSession;->cancelUploadNotification(Landroid/content/Context;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/facebook/katana/UploadPhotoActivity;->getIntent()Landroid/content/Intent;
move-result-object v9
const-string v10, "android.intent.extra.STREAM"
invoke-virtual {v9, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v8
check-cast v8, Landroid/net/Uri;
new-instance v9, Ljava/io/File;
invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v9}, Ljava/io/File;->delete()Z
invoke-virtual {p0}, Lcom/facebook/katana/UploadPhotoActivity;->getIntent()Landroid/content/Intent;
move-result-object v9
const-string v10, "extra_photo_id"
invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {p0}, Lcom/facebook/katana/UploadPhotoActivity;->getIntent()Landroid/content/Intent;
move-result-object v9
const-string v10, "extra_album_id"
invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v9, p0, Lcom/facebook/katana/UploadPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v9}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v9
invoke-virtual {v9}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v9
invoke-static {p0, v9, v10, v1, v6}, Lcom/facebook/katana/ViewPhotoActivity;->viewPhotoIntent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v5
invoke-virtual {p0, v5}, Lcom/facebook/katana/UploadPhotoActivity;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p0}, Lcom/facebook/katana/UploadPhotoActivity;->finish()V
goto/16 :goto_10
:cond_cb
const-string v9, "com.facebook.katana.upload.notification.pending"
invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v9
if-eqz v9, :cond_41
invoke-virtual {p0}, Lcom/facebook/katana/UploadPhotoActivity;->finish()V
goto/16 :goto_10
:cond_d8
if-eqz p1, :cond_e2
const-string v9, "save_state_filename"
invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
iput-object v9, p0, Lcom/facebook/katana/UploadPhotoActivity;->mFilename:Ljava/lang/String;
:cond_e2
const v9, 0x7f0b00b8
invoke-virtual {p0, v9}, Lcom/facebook/katana/UploadPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/Button;
const/4 v9, 0x0
invoke-virtual {v7, v9}, Landroid/widget/Button;->setEnabled(Z)V
invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v9, 0x7f0b00a2
invoke-virtual {p0, v9}, Lcom/facebook/katana/UploadPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Button;
invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-direct {p0}, Lcom/facebook/katana/UploadPhotoActivity;->setupFatTitleBar()V
invoke-virtual {p0}, Lcom/facebook/katana/UploadPhotoActivity;->getIntent()Landroid/content/Intent;
move-result-object v9
const-string v10, "android.intent.extra.TITLE"
invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_10
const v9, 0x7f0b00b7
invoke-virtual {p0, v9}, Lcom/facebook/katana/UploadPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_10
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 12
const v0, 0x7f08018b
const v4, 0x7f0800bf
const v2, 0x1080027
const/4 v9, 0x1
const/4 v6, 0x0
packed-switch p1, :pswitch_data_50
move-object v0, v6
:goto_f
return-object v0
:pswitch_10
invoke-virtual {p0, v0}, Lcom/facebook/katana/UploadPhotoActivity;->getString(I)Ljava/lang/String;
move-result-object v1
const v0, 0x7f08017c
invoke-virtual {p0, v0}, Lcom/facebook/katana/UploadPhotoActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v4}, Lcom/facebook/katana/UploadPhotoActivity;->getString(I)Ljava/lang/String;
move-result-object v4
new-instance v5, Lcom/facebook/katana/UploadPhotoActivity$1;
invoke-direct {v5, p0}, Lcom/facebook/katana/UploadPhotoActivity$1;-><init>(Lcom/facebook/katana/UploadPhotoActivity;)V
new-instance v8, Lcom/facebook/katana/UploadPhotoActivity$2;
invoke-direct {v8, p0}, Lcom/facebook/katana/UploadPhotoActivity$2;-><init>(Lcom/facebook/katana/UploadPhotoActivity;)V
move-object v0, p0
move-object v7, v6
invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;
move-result-object v0
goto :goto_f
:pswitch_30
invoke-virtual {p0, v0}, Lcom/facebook/katana/UploadPhotoActivity;->getString(I)Ljava/lang/String;
move-result-object v1
const v0, 0x7f080189
invoke-virtual {p0, v0}, Lcom/facebook/katana/UploadPhotoActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v4}, Lcom/facebook/katana/UploadPhotoActivity;->getString(I)Ljava/lang/String;
move-result-object v4
new-instance v5, Lcom/facebook/katana/UploadPhotoActivity$3;
invoke-direct {v5, p0}, Lcom/facebook/katana/UploadPhotoActivity$3;-><init>(Lcom/facebook/katana/UploadPhotoActivity;)V
new-instance v8, Lcom/facebook/katana/UploadPhotoActivity$4;
invoke-direct {v8, p0}, Lcom/facebook/katana/UploadPhotoActivity$4;-><init>(Lcom/facebook/katana/UploadPhotoActivity;)V
move-object v0, p0
move-object v7, v6
invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;
move-result-object v0
goto :goto_f
:pswitch_data_50
.packed-switch 0x1
:pswitch_10
:pswitch_30
.end packed-switch
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/facebook/katana/UploadPhotoActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onDestroy()V
iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity;->mFilename:Ljava/lang/String;
if-eqz v0, :cond_29
iget-boolean v0, p0, Lcom/facebook/katana/UploadPhotoActivity;->mDeleteFileOnDestroy:Z
if-eqz v0, :cond_29
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Deleting "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity;->mFilename:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity;->D(Ljava/lang/String;)V
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity;->mFilename:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:cond_29
const-string v1, " - Lcom/facebook/katana/UploadPhotoActivity; onDestroy"
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
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/facebook/katana/UploadPhotoActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onPause()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/katana/UploadPhotoActivity;->mStarted:Z
const-string v1, " - Lcom/facebook/katana/UploadPhotoActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 14
const-string v1, " + Lcom/facebook/katana/UploadPhotoActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x1
const v2, 0x7f0b00b2
const/4 v5, 0x0
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onResume()V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v0, :cond_16
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_15
const-string v1, " - Lcom/facebook/katana/UploadPhotoActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_16
invoke-direct {p0}, Lcom/facebook/katana/UploadPhotoActivity;->updateFatTitleBar()V
iput-boolean v6, p0, Lcom/facebook/katana/UploadPhotoActivity;->mStarted:Z
iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity;->mFilename:Ljava/lang/String;
if-eqz v0, :cond_36
invoke-virtual {p0, v2}, Lcom/facebook/katana/UploadPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
new-instance v0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;
new-instance v1, Landroid/os/Handler;
invoke-direct {v1}, Landroid/os/Handler;-><init>()V
iget-object v2, p0, Lcom/facebook/katana/UploadPhotoActivity;->mFilename:Ljava/lang/String;
invoke-direct {v0, p0, v1, v2}, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;-><init>(Lcom/facebook/katana/UploadPhotoActivity;Landroid/os/Handler;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->start()V
goto :goto_15
:cond_36
invoke-virtual {p0}, Lcom/facebook/katana/UploadPhotoActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "android.intent.extra.STREAM"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v4
check-cast v4, Landroid/net/Uri;
if-eqz v4, :cond_b4
invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v12
if-eqz v12, :cond_72
const-string v0, "content"
invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_72
const-string v0, "Got a content URI"
invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity;->D(Ljava/lang/String;)V
invoke-virtual {p0, v2}, Lcom/facebook/katana/UploadPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
new-instance v0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;
new-instance v3, Landroid/os/Handler;
invoke-direct {v3}, Landroid/os/Handler;-><init>()V
move-object v1, p0
move-object v2, p0
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;-><init>(Lcom/facebook/katana/UploadPhotoActivity;Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Z)V
invoke-virtual {v0}, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->start()V
goto :goto_15
:cond_72
invoke-virtual {p0}, Lcom/facebook/katana/UploadPhotoActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "extra_photo_is_scaled"
invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_9d
const-string v0, "Got a scaled file URI"
invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity;->D(Ljava/lang/String;)V
invoke-virtual {p0, v2}, Lcom/facebook/katana/UploadPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
new-instance v0, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;
new-instance v1, Landroid/os/Handler;
invoke-direct {v1}, Landroid/os/Handler;-><init>()V
invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, p0, v1, v2}, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;-><init>(Lcom/facebook/katana/UploadPhotoActivity;Landroid/os/Handler;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/facebook/katana/UploadPhotoActivity$LoadImageTask;->start()V
goto/16 :goto_15
:cond_9d
const-string v0, "Got an unscaled file URI"
invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity;->D(Ljava/lang/String;)V
new-instance v0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;
new-instance v3, Landroid/os/Handler;
invoke-direct {v3}, Landroid/os/Handler;-><init>()V
move-object v1, p0
move-object v2, p0
move v5, v6
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;-><init>(Lcom/facebook/katana/UploadPhotoActivity;Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Z)V
invoke-virtual {v0}, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->start()V
goto/16 :goto_15
:cond_b4
invoke-virtual {p0}, Lcom/facebook/katana/UploadPhotoActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "extra_photo_data"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v9
check-cast v9, Landroid/graphics/Bitmap;
if-eqz v9, :cond_e0
const-string v0, "Got a bitmap"
invoke-static {v0}, Lcom/facebook/katana/UploadPhotoActivity;->D(Ljava/lang/String;)V
invoke-virtual {p0, v2}, Lcom/facebook/katana/UploadPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
new-instance v6, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;
new-instance v8, Landroid/os/Handler;
invoke-direct {v8}, Landroid/os/Handler;-><init>()V
const/4 v11, 0x0
move-object v7, p0
move v10, v5
invoke-direct/range {v6 .. v11}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;-><init>(Lcom/facebook/katana/UploadPhotoActivity;Landroid/os/Handler;Landroid/graphics/Bitmap;ZLandroid/net/Uri;)V
invoke-virtual {v6}, Lcom/facebook/katana/UploadPhotoActivity$SaveImageTask;->start()V
goto/16 :goto_15
:cond_e0
invoke-virtual {p0}, Lcom/facebook/katana/UploadPhotoActivity;->finish()V
goto/16 :goto_15
.end method
.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/katana/UploadPhotoActivity;->mDeleteFileOnDestroy:Z
const/4 v0, 0x0
return-object v0
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/facebook/katana/UploadPhotoActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity;->mFilename:Ljava/lang/String;
if-eqz v0, :cond_e
const-string v0, "save_state_filename"
iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity;->mFilename:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_e
const-string v1, " - Lcom/facebook/katana/UploadPhotoActivity; onSaveInstanceState"
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
.method public bridge synthetic titleBarPrimaryActionClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->titleBarPrimaryActionClickHandler(Landroid/view/View;)V
return-void
.end method
.method public bridge synthetic titleBarSearchClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->titleBarSearchClickHandler(Landroid/view/View;)V
return-void
.end method