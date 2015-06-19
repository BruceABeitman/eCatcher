.class public final Lcom/bbm/ui/e/bd;
.super Ljava/lang/Object;
.source "MessagesDelegateAdapter.java"
.field  a:J
.field  b:J
.field  c:Landroid/widget/ProgressBar;
.field final synthetic d:Lcom/bbm/ui/e/au;
.method public constructor <init>(Lcom/bbm/ui/e/au;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/e/bd;->d:Lcom/bbm/ui/e/au;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/widget/ProgressBar;)V
.registers 5
iput-object p1, p0, Lcom/bbm/ui/e/bd;->c:Landroid/widget/ProgressBar;
iget-object v0, p0, Lcom/bbm/ui/e/bd;->c:Landroid/widget/ProgressBar;
iget-wide v1, p0, Lcom/bbm/ui/e/bd;->b:J
long-to-int v1, v1
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V
return-void
.end method