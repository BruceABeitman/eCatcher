.class final Lcom/bbm/ui/activities/adg;
.super Ljava/lang/Object;
.source "ReportProblemActivity.java"
.implements Landroid/text/TextWatcher;
.field final synthetic a:Lcom/bbm/ui/activities/ReportProblemActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ReportProblemActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/adg;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final afterTextChanged(Landroid/text/Editable;)V
.registers 4
const-string v0, "afterTextChanged"
const-class v1, Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/adg;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->e(Lcom/bbm/ui/activities/ReportProblemActivity;)V
return-void
.end method
.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public final onTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method