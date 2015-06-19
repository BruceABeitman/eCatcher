.class final Lcom/google/android/gms/internal/eo$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic sg:Ljava/lang/Runnable;
.method constructor <init>(Ljava/lang/Runnable;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/eo$1;->sg:Ljava/lang/Runnable;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
const/16 v0, 0xa
invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
iget-object v0, p0, Lcom/google/android/gms/internal/eo$1;->sg:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
return-void
.end method