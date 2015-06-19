.class Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;
.super Ljava/lang/Object;
.source "PGEditActivity.java"

# interfaces
.implements Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$PGEditCamera360ControllerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/pinguo/androidsdk/pgedit/PGEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditActivity;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;)Lus/pinguo/androidsdk/pgedit/PGEditActivity;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    return-object v0
.end method


# virtual methods
.method public activityFinish()V
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->finish()V

    return-void
.end method

.method public savePhotoFinishForCamera360()V
    .registers 3

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditActivity;->mPGEditController:Lus/pinguo/androidsdk/pgedit/PGEditController;
    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditActivity;)Lus/pinguo/androidsdk/pgedit/PGEditController;

    move-result-object v0

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->savePhotoFinishForCamera360(Landroid/app/Activity;)V

    return-void
.end method

.method public savePhotoFinishForOther()V
    .registers 3

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditActivity;->mPGEditController:Lus/pinguo/androidsdk/pgedit/PGEditController;
    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditActivity;)Lus/pinguo/androidsdk/pgedit/PGEditController;

    move-result-object v0

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->savePhotoFinishForOther(Landroid/app/Activity;)V

    return-void
.end method

.method public showQuitDialog()V
    .registers 6

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    invoke-direct {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "pg_sdk_edit_quit_edit"

    invoke-static {v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "pg_sdk_edit_quit"

    invoke-static {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "pg_sdk_edit_ok"

    invoke-static {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1$1;

    invoke-direct {v3, p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity$1$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditActivity$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    return-void
.end method
