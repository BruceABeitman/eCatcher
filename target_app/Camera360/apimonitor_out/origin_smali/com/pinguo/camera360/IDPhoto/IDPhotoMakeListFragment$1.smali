.class Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$1;
.super Ljava/lang/Object;
.source "IDPhotoMakeListFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$OnExportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->doExporterListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExportFinish(Z)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_68

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #setter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mHasExported:Z
    invoke-static {v2, v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;Z)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "has_exported_bundle_key"

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mHasExported:Z
    invoke-static {v3}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$1(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    invoke-virtual {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    invoke-virtual {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pinguo/camera360/order/model/OrderAddress;->create(Landroid/content/Context;)Lcom/pinguo/camera360/order/model/OrderAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/OrderAddress;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_58

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mHasLogin:Z
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$2(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-static {v5}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportCatLoginedNextLay(I)V

    :goto_3f
    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    invoke-virtual {v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/pinguo/camera360/order/OrderAddressActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x3e9

    invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_53
    return-void

    :cond_54
    invoke-static {v5}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportCatLoginSuccessToNextLay(I)V

    goto :goto_3f

    :cond_58
    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->mHasLogin:Z
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$2(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportCatLoginedNextLay(I)V

    :goto_63
    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;

    #calls: Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->gotoOrderActivity()V
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;->access$3(Lcom/pinguo/camera360/IDPhoto/IDPhotoMakeListFragment;)V

    :cond_68
    const-string/jumbo v2, "IDPhotoMakeListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onExportFinish:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    :cond_7f
    invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportCatLoginSuccessToNextLay(I)V

    goto :goto_63
.end method

.method public onExportProgress(II)V
    .registers 6

    const-string/jumbo v0, "IDPhotoMakeListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onExportProgress, all:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", exported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public preStartExport(I)V
    .registers 2

    return-void
.end method
