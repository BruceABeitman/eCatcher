.class final Lcom/bbm/ui/activities/qp;
.super Ljava/lang/Object;
.source "GroupLobbyActivity.java"
.implements Landroid/content/DialogInterface$OnDismissListener;
.field final synthetic a:Lcom/bbm/ui/activities/qn;
.method constructor <init>(Lcom/bbm/ui/activities/qn;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/qp;->a:Lcom/bbm/ui/activities/qn;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onDismiss(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/qp;->a:Lcom/bbm/ui/activities/qn;
invoke-static {v0}, Lcom/bbm/ui/activities/qn;->c(Lcom/bbm/ui/activities/qn;)Lcom/bbm/j/k;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
return-void
.end method