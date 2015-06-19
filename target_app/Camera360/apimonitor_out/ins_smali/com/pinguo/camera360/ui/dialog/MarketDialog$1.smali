.class  Lcom/pinguo/camera360/ui/dialog/MarketDialog$1;
.super Ljava/lang/Object;
.source "MarketDialog.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/ui/dialog/MarketDialog;
.method constructor <init>(Lcom/pinguo/camera360/ui/dialog/MarketDialog;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog$1;->this$0:Lcom/pinguo/camera360/ui/dialog/MarketDialog;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/ui/dialog/MarketDialog$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog$1;->this$0:Lcom/pinguo/camera360/ui/dialog/MarketDialog;
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog$1;->this$0:Lcom/pinguo/camera360/ui/dialog/MarketDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mAppsList:Ljava/util/List;
invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->access$0(Lcom/pinguo/camera360/ui/dialog/MarketDialog;)Ljava/util/List;
move-result-object v0
invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/pm/ResolveInfo;
#calls: Lcom/pinguo/camera360/ui/dialog/MarketDialog;->startActivityFromResolveInfo(Landroid/content/pm/ResolveInfo;)V
invoke-static {v1, v0}, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->access$1(Lcom/pinguo/camera360/ui/dialog/MarketDialog;Landroid/content/pm/ResolveInfo;)V
const-string v1, " - Lcom/pinguo/camera360/ui/dialog/MarketDialog$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method