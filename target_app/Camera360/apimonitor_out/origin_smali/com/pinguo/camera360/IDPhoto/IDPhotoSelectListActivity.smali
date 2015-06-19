.class public Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "IDPhotoSelectListActivity.java"


# static fields
.field public static final BUNDLE_KEY_PHOTO_PATH:Ljava/lang/String; = "bundle_key_photo_path"


# instance fields
.field private mFragment:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/order/model/Transaction;->clear()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "bundle_key_photo_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/16 v0, 0x64

    if-ne p2, v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListActivity;->mFragment:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;

    const-string/jumbo v1, "deleted_bundle_key"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->synchronousSelectedData(Ljava/util/List;)V

    :cond_10
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListActivity;->mFragment:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;

    if-eqz v0, :cond_23

    if-eqz p3, :cond_23

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListActivity;->mFragment:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;

    const-string/jumbo v1, "has_exported_bundle_key"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->setHasExported(Z)V

    :cond_23
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f030054

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListActivity;->setContentView(I)V

    new-instance v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;

    invoke-direct {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;-><init>()V

    iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListActivity;->mFragment:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a01af

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListActivity;->mFragment:Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
