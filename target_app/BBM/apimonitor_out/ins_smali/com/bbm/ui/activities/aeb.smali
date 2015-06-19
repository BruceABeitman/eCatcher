.class final Lcom/bbm/ui/activities/aeb;
.super Ljava/lang/Object;
.source "SelectCategoryActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/SelectCategoryActivity;
.method constructor <init>(Lcom/bbm/ui/activities/SelectCategoryActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/aeb;->a:Lcom/bbm/ui/activities/SelectCategoryActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/aeb; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/aeb;->a:Lcom/bbm/ui/activities/SelectCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SelectCategoryActivity;->a(Lcom/bbm/ui/activities/SelectCategoryActivity;)Lcom/bbm/ui/activities/aei;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/bbm/ui/activities/aei;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ea;
invoke-static {}, Lcom/bbm/ui/activities/SelectCategoryActivity;->a()Lcom/bbm/d/a;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/aeb;->a:Lcom/bbm/ui/activities/SelectCategoryActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/SelectCategoryActivity;->b(Lcom/bbm/ui/activities/SelectCategoryActivity;)Ljava/util/ArrayList;
move-result-object v2
iget-wide v3, v0, Lcom/bbm/d/ea;->b:J
invoke-static {v2, v3, v4}, Lcom/bbm/d/z;->a(Ljava/util/List;J)Lcom/bbm/d/cv;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
iget-object v0, p0, Lcom/bbm/ui/activities/aeb;->a:Lcom/bbm/ui/activities/SelectCategoryActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/SelectCategoryActivity;->finish()V
const-string v1, " - Lcom/bbm/ui/activities/aeb; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method