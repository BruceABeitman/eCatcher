.class  Lcom/google/android/gms/internal/bm$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/google/android/gms/internal/bl;
.field final synthetic b:Lcom/google/android/gms/internal/bm;
.field private final c:Ljava/lang/ref/WeakReference;
.method constructor <init>(Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/bl;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/bm$1;->b:Lcom/google/android/gms/internal/bm;
iput-object p2, p0, Lcom/google/android/gms/internal/bm$1;->a:Lcom/google/android/gms/internal/bl;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
iget-object v1, p0, Lcom/google/android/gms/internal/bm$1;->a:Lcom/google/android/gms/internal/bl;
invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/google/android/gms/internal/bm$1;->c:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/bm$1;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/bl;
iget-object v1, p0, Lcom/google/android/gms/internal/bm$1;->b:Lcom/google/android/gms/internal/bm;
invoke-static {v1}, Lcom/google/android/gms/internal/bm;->a(Lcom/google/android/gms/internal/bm;)Z
move-result v1
if-nez v1, :cond_1a
if-eqz v0, :cond_1a
invoke-virtual {v0}, Lcom/google/android/gms/internal/bl;->e()V
iget-object v0, p0, Lcom/google/android/gms/internal/bm$1;->b:Lcom/google/android/gms/internal/bm;
invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->b()V
:cond_1a
return-void
.end method