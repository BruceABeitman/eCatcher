.class public Lcom/pinguo/album/activities/PGFullImageActivity;
.super Lcom/pinguo/album/activities/BaseActivity;
.source "PGFullImageActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/album/activities/PGFullImageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/album/activities/PGFullImageActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/album/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/pinguo/album/activities/PGFullImageActivity;->requestWindowFeature(I)Z

    const v2, 0x7f03000b

    invoke-virtual {p0, v2}, Lcom/pinguo/album/activities/PGFullImageActivity;->setContentView(I)V

    invoke-super {p0, p1}, Lcom/pinguo/album/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/pinguo/album/activities/PGFullImageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/album/activities/PGFullImageActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    new-instance v1, Lcom/pinguo/album/fragment/PGFullImageFragment;

    invoke-direct {v1}, Lcom/pinguo/album/fragment/PGFullImageFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "album_id"

    sget v3, Lcom/pinguo/album/data/MediaSetUtils;->CLOUD_BUCKET_ID:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v2, "media-path"

    invoke-virtual {p0}, Lcom/pinguo/album/activities/PGFullImageActivity;->getDataManager()Lcom/pinguo/album/data/AlbumDataManager;

    move-result-object v3

    const/16 v4, 0x90

    invoke-virtual {v3, v4}, Lcom/pinguo/album/data/AlbumDataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "album_title"

    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/pinguo/album/activities/PGFullImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "index-hint"

    invoke-virtual {p0}, Lcom/pinguo/album/activities/PGFullImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "index-hint"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/pinguo/album/activities/PGFullImageActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0a0051

    const-string/jumbo v4, "PhotoFragment"

    invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/album/activities/BaseActivity;->onDestroy()V

    return-void
.end method
