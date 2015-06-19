.class final Lcom/bbm/ui/activities/adn;
.super Ljava/lang/Object;
.source "ReportProblemActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/b/o;
.field final synthetic b:Lcom/bbm/ui/activities/adl;
.method constructor <init>(Lcom/bbm/ui/activities/adl;Lcom/bbm/ui/b/o;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/adn;->b:Lcom/bbm/ui/activities/adl;
iput-object p2, p0, Lcom/bbm/ui/activities/adn;->a:Lcom/bbm/ui/b/o;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/adn; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
const-string v0, "errorDialog RightButton Clicked"
const-class v1, Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/adn;->b:Lcom/bbm/ui/activities/adl;
iget-object v0, v0, Lcom/bbm/ui/activities/adl;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->o(Lcom/bbm/ui/activities/ReportProblemActivity;)Landroid/widget/ProgressBar;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/adn;->b:Lcom/bbm/ui/activities/adl;
iget-object v0, v0, Lcom/bbm/ui/activities/adl;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
new-instance v1, Lcom/bbm/ui/activities/adl;
iget-object v2, p0, Lcom/bbm/ui/activities/adn;->b:Lcom/bbm/ui/activities/adl;
iget-object v2, v2, Lcom/bbm/ui/activities/adl;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-direct {v1, v2, v3}, Lcom/bbm/ui/activities/adl;-><init>(Lcom/bbm/ui/activities/ReportProblemActivity;B)V
invoke-static {v1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/ui/activities/ReportProblemActivity;->b(Lcom/bbm/ui/activities/ReportProblemActivity;Lcom/google/b/a/l;)Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/ui/activities/adn;->b:Lcom/bbm/ui/activities/adl;
iget-object v0, v0, Lcom/bbm/ui/activities/adl;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->b(Lcom/bbm/ui/activities/ReportProblemActivity;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/adl;
const/4 v1, 0x1
new-array v1, v1, [Lcom/bbm/ui/activities/adk;
iget-object v2, p0, Lcom/bbm/ui/activities/adn;->b:Lcom/bbm/ui/activities/adl;
invoke-static {v2}, Lcom/bbm/ui/activities/adl;->a(Lcom/bbm/ui/activities/adl;)Lcom/bbm/ui/activities/adk;
move-result-object v2
aput-object v2, v1, v3
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/adl;->c([Ljava/lang/Object;)Lcom/bbm/util/b;
iget-object v0, p0, Lcom/bbm/ui/activities/adn;->a:Lcom/bbm/ui/b/o;
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->dismiss()V
const-string v1, " - Lcom/bbm/ui/activities/adn; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method