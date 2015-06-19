.class final Lcom/google/android/gms/internal/lw$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/google/android/gms/internal/ls;
.field final synthetic b:Lcom/google/android/gms/internal/lw;
.field private final c:Ljava/lang/ref/WeakReference;
.method constructor <init>(Lcom/google/android/gms/internal/lw;Lcom/google/android/gms/internal/ls;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/lw$1;->b:Lcom/google/android/gms/internal/lw;
iput-object p2, p0, Lcom/google/android/gms/internal/lw$1;->a:Lcom/google/android/gms/internal/ls;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
iget-object v1, p0, Lcom/google/android/gms/internal/lw$1;->a:Lcom/google/android/gms/internal/ls;
invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/google/android/gms/internal/lw$1;->c:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/lw$1;->b:Lcom/google/android/gms/internal/lw;
invoke-static {v0}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/internal/lw;)Z
iget-object v0, p0, Lcom/google/android/gms/internal/lw$1;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/ls;
if-eqz v0, :cond_18
iget-object v1, p0, Lcom/google/android/gms/internal/lw$1;->b:Lcom/google/android/gms/internal/lw;
invoke-static {v1}, Lcom/google/android/gms/internal/lw;->b(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/ah;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ls;->b(Lcom/google/android/gms/internal/ah;)V
:cond_18
return-void
.end method