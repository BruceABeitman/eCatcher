.class  Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;
.super Ljava/lang/Object;
.source "PGEditActivity.java"
.implements Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditActivity;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;)Lus/pinguo/androidsdk/pgedit/PGEditActivity;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;
return-object v0
.end method
.method public activityFinish()V
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->finish()V
return-void
.end method
.method public showQuitDialog()V
.registers 6
new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;
invoke-direct {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v3
const-string/jumbo v4, "pg_sdk_edit_quit_edit"
invoke-static {v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getString(Landroid/content/Context;Ljava/lang/String;)I
move-result v3
invoke-virtual {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v2
const-string/jumbo v3, "pg_sdk_edit_quit"
invoke-static {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getString(Landroid/content/Context;Ljava/lang/String;)I
move-result v2
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v2
const-string/jumbo v3, "pg_sdk_edit_ok"
invoke-static {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getString(Landroid/content/Context;Ljava/lang/String;)I
move-result v2
new-instance v3, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2$1;
invoke-direct {v3, p0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;)V
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V
return-void
.end method