.class public Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "IDPhotoMakeListActivity.java"
.field public static final DELETED_LIST_BUNDLE_KEY:Ljava/lang/String; = "deleted_bundle_key"
.field public static final HAS_EXPORTED_BUNDLE_KEY:Ljava/lang/String; = "has_exported_bundle_key"
.field public static final ORG_PICTURE_BUNDLE_KEY:Ljava/lang/String; = "org_picture_bundle_key"
.field public static final RESELECTED_LIST_BUNDLE_KEY:Ljava/lang/String; = "reselected_bundle_key"
.field public static final SELECTED_LIST_BUNDLE_KEY:Ljava/lang/String; = "selected_bundle_key"
.field private mFragment:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V
return-void
.end method
.method public static startActivity(Landroid/app/Activity;Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/io/Serializable;)V
.registers 9
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v1, "selected_bundle_key"
check-cast p1, Ljava/io/Serializable;
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
const-string/jumbo v1, "reselected_bundle_key"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
const-string/jumbo v1, "org_picture_bundle_key"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "has_exported_bundle_key"
invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 4
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
const v1, 0x7f030054
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListActivity;->setContentView(I)V
new-instance v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
invoke-direct {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListActivity;->mFragment:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
const v1, 0x7f0a01af
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListActivity;->mFragment:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 6
const/4 v1, 0x4
if-ne p1, v1, :cond_1c
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string/jumbo v1, "deleted_bundle_key"
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListActivity;->mFragment:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;
invoke-virtual {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getDeletedList()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
const/16 v1, 0x64
invoke-virtual {p0, v1, v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListActivity;->finish()V
:cond_1c
invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v1
return v1
.end method