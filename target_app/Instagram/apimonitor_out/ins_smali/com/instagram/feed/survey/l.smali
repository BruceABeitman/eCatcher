.class final Lcom/instagram/feed/survey/l;
.super Ljava/lang/Object;
.source "SurveyToolHelper.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Landroid/widget/ViewSwitcher;
.field final synthetic b:Lcom/instagram/feed/survey/b;
.field final synthetic c:Lcom/instagram/feed/survey/h;
.method constructor <init>(Lcom/instagram/feed/survey/h;Landroid/widget/ViewSwitcher;Lcom/instagram/feed/survey/b;)V
.registers 4
iput-object p1, p0, Lcom/instagram/feed/survey/l;->c:Lcom/instagram/feed/survey/h;
iput-object p2, p0, Lcom/instagram/feed/survey/l;->a:Landroid/widget/ViewSwitcher;
iput-object p3, p0, Lcom/instagram/feed/survey/l;->b:Lcom/instagram/feed/survey/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/feed/survey/l; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/feed/survey/l;->c:Lcom/instagram/feed/survey/h;
invoke-static {v0}, Lcom/instagram/feed/survey/h;->d(Lcom/instagram/feed/survey/h;)Z
move-result v0
if-eqz v0, :cond_2a
invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/survey/c;
iget-object v1, p0, Lcom/instagram/feed/survey/l;->a:Landroid/widget/ViewSwitcher;
invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V
iget-object v1, p0, Lcom/instagram/feed/survey/l;->b:Lcom/instagram/feed/survey/b;
iget-object v2, p0, Lcom/instagram/feed/survey/l;->c:Lcom/instagram/feed/survey/h;
invoke-static {v2}, Lcom/instagram/feed/survey/h;->b(Lcom/instagram/feed/survey/h;)Lcom/instagram/feed/g/a;
move-result-object v2
invoke-static {v1, v0, v2}, Lcom/instagram/feed/survey/o;->a(Lcom/instagram/feed/survey/b;Lcom/instagram/feed/survey/c;Lcom/instagram/common/analytics/e;)V
iget-object v0, p0, Lcom/instagram/feed/survey/l;->c:Lcom/instagram/feed/survey/h;
invoke-static {v0}, Lcom/instagram/feed/survey/h;->e(Lcom/instagram/feed/survey/h;)Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x0
const-wide/16 v2, 0x7d0
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
:cond_2a
const-string v1, " - Lcom/instagram/feed/survey/l; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method