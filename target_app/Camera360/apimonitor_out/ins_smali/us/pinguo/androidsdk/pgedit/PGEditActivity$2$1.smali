.class  Lus/pinguo/androidsdk/pgedit/PGEditActivity$2$1;
.super Ljava/lang/Object;
.source "PGEditActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$1:Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2$1;->this$1:Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lus/pinguo/androidsdk/pgedit/PGEditActivity$2$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2$1;->this$1:Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;)Lus/pinguo/androidsdk/pgedit/PGEditActivity;
move-result-object v0
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditActivity;->mPGEditController:Lus/pinguo/androidsdk/pgedit/PGEditController;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditActivity;)Lus/pinguo/androidsdk/pgedit/PGEditController;
move-result-object v0
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->sendBroadCastForCancel()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2$1;->this$1:Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditActivity;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditActivity$2;)Lus/pinguo/androidsdk/pgedit/PGEditActivity;
move-result-object v0
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditActivity;->finish()V
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditActivity$2$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method