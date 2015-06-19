.class final Landroid/support/v4/a/k;
.super Landroid/support/v4/a/q;
.source "ModernAsyncTask.java"
.field final synthetic a:Landroid/support/v4/a/i;
.method constructor <init>(Landroid/support/v4/a/i;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/a/k;->a:Landroid/support/v4/a/i;
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v4/a/q;-><init>(B)V
return-void
.end method
.method public final call()Ljava/lang/Object;
.registers 4
iget-object v0, p0, Landroid/support/v4/a/k;->a:Landroid/support/v4/a/i;
invoke-static {v0}, Landroid/support/v4/a/i;->a(Landroid/support/v4/a/i;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
const/16 v0, 0xa
invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
iget-object v0, p0, Landroid/support/v4/a/k;->a:Landroid/support/v4/a/i;
iget-object v1, p0, Landroid/support/v4/a/k;->a:Landroid/support/v4/a/i;
iget-object v2, p0, Landroid/support/v4/a/k;->b:[Ljava/lang/Object;
invoke-virtual {v1}, Landroid/support/v4/a/i;->b()Ljava/lang/Object;
move-result-object v1
invoke-static {v0, v1}, Landroid/support/v4/a/i;->a(Landroid/support/v4/a/i;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method