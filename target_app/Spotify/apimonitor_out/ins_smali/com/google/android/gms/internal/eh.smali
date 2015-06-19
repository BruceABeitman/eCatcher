.class public abstract Lcom/google/android/gms/internal/eh;
.super Ljava/lang/Object;
.field private final a:Ljava/lang/Runnable;
.field private volatile b:Ljava/lang/Thread;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/eh$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/eh$1;-><init>(Lcom/google/android/gms/internal/eh;)V
iput-object v0, p0, Lcom/google/android/gms/internal/eh;->a:Ljava/lang/Runnable;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/eh;Ljava/lang/Thread;)Ljava/lang/Thread;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/eh;->b:Ljava/lang/Thread;
return-object p1
.end method
.method public abstract a()V
.end method
.method public abstract c_()V
.end method
.method public final e()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/eh;->a:Ljava/lang/Runnable;
invoke-static {v0}, Lcom/google/android/gms/internal/ei;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public final f()V
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/eh;->c_()V
iget-object v0, p0, Lcom/google/android/gms/internal/eh;->b:Ljava/lang/Thread;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/internal/eh;->b:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
:cond_c
return-void
.end method