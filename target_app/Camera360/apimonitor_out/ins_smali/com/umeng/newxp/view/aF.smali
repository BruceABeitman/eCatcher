.class  Lcom/umeng/newxp/view/aF;
.super Ljava/lang/Object;
.source "PartnersBanner.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/umeng/newxp/view/aD;
.method constructor <init>(Lcom/umeng/newxp/view/aD;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/aF;->a:Lcom/umeng/newxp/view/aD;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/newxp/view/aF; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
check-cast p1, Landroid/widget/GridView;
invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/newxp/controller/a$a;
iget-object v1, p0, Lcom/umeng/newxp/view/aF;->a:Lcom/umeng/newxp/view/aD;
invoke-static {v1, v0, p2}, Lcom/umeng/newxp/view/aD;->a(Lcom/umeng/newxp/view/aD;Lcom/umeng/newxp/controller/a$a;Landroid/view/View;)V
:try_end_11
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12
:goto_11
const-string v1, " - Lcom/umeng/newxp/view/aF; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_12
move-exception v0
goto :goto_11
.end method