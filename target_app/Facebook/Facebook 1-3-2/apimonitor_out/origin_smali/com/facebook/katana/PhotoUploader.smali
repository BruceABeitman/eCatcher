.class public Lcom/facebook/katana/PhotoUploader;
.super Ljava/lang/Object;
.source "PhotoUploader.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAlbumId:Ljava/lang/String;

.field private final mPickExistingPhotoRequestCode:I

.field private final mTakeCameraPhotoRequestCode:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/katana/PhotoUploader;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/facebook/katana/PhotoUploader;->mAlbumId:Ljava/lang/String;

    iput p3, p0, Lcom/facebook/katana/PhotoUploader;->mTakeCameraPhotoRequestCode:I

    iput p4, p0, Lcom/facebook/katana/PhotoUploader;->mPickExistingPhotoRequestCode:I

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/katana/PhotoUploader;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/PhotoUploader;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/katana/PhotoUploader;)I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/PhotoUploader;->mPickExistingPhotoRequestCode:I

    return v0
.end method

.method static synthetic access$2(Lcom/facebook/katana/PhotoUploader;)I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/PhotoUploader;->mTakeCameraPhotoRequestCode:I

    return v0
.end method


# virtual methods
.method public createDialog()Landroid/app/Dialog;
    .registers 6

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/katana/PhotoUploader;->mActivity:Landroid/app/Activity;

    const v4, 0x7f080186

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/katana/PhotoUploader;->mActivity:Landroid/app/Activity;

    const v4, 0x7f080185

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/facebook/katana/PhotoUploader;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080188

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/facebook/katana/PhotoUploader$1;

    invoke-direct {v2, p0}, Lcom/facebook/katana/PhotoUploader$1;-><init>(Lcom/facebook/katana/PhotoUploader;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    iget v1, p0, Lcom/facebook/katana/PhotoUploader;->mTakeCameraPhotoRequestCode:I

    if-ne p1, v1, :cond_c

    iget-object v1, p0, Lcom/facebook/katana/PhotoUploader;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/katana/PhotoUploader;->mAlbumId:Ljava/lang/String;

    invoke-static {v1, p3, v2}, Lcom/facebook/katana/util/ApplicationUtils;->uploadCameraResult(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget v1, p0, Lcom/facebook/katana/PhotoUploader;->mPickExistingPhotoRequestCode:I

    if-ne p1, v1, :cond_b

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/katana/PhotoUploader;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/facebook/katana/UploadPhotoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.facebook.katana.upload.uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "extra_album_id"

    iget-object v2, p0, Lcom/facebook/katana/PhotoUploader;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/katana/PhotoUploader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_b
.end method
