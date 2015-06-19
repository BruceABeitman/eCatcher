.class final Lcom/bbm/ui/activities/adh;
.super Lcom/bbm/j/k;
.source "ReportProblemActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ReportProblemActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ReportProblemActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/adh;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 7
iget-object v0, p0, Lcom/bbm/ui/activities/adh;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->g(Lcom/bbm/ui/activities/ReportProblemActivity;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/adh;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
const v2, 0x7f0e061d
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
iget-object v5, p0, Lcom/bbm/ui/activities/adh;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v5}, Lcom/bbm/ui/activities/ReportProblemActivity;->f(Lcom/bbm/ui/activities/ReportProblemActivity;)Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v1, v2, v3}, Lcom/bbm/ui/activities/ReportProblemActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/activities/adh;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->h(Lcom/bbm/ui/activities/ReportProblemActivity;)Z
move-result v0
if-nez v0, :cond_49
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
invoke-static {}, Lcom/bbm/Alaska;->j()Lcom/bbm/f/ae;
move-result-object v0
iget-boolean v1, v0, Lcom/bbm/f/ae;->i:Z
if-eqz v1, :cond_49
iget-object v1, v0, Lcom/bbm/f/ae;->b:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_49
iget-object v1, p0, Lcom/bbm/ui/activities/adh;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReportProblemActivity;->i(Lcom/bbm/ui/activities/ReportProblemActivity;)Z
iget-object v1, p0, Lcom/bbm/ui/activities/adh;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReportProblemActivity;->j(Lcom/bbm/ui/activities/ReportProblemActivity;)Landroid/widget/EditText;
move-result-object v1
iget-object v0, v0, Lcom/bbm/f/ae;->b:Ljava/lang/String;
invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:cond_49
return-void
.end method