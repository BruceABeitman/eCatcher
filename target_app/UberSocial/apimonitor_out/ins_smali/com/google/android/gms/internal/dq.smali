.class public abstract Lcom/google/android/gms/internal/dq;
.super Ljava/lang/Object;
.field private final a:Ljava/lang/Runnable;
.field private volatile b:Ljava/lang/Thread;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/dq$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dq$1;-><init>(Lcom/google/android/gms/internal/dq;)V
iput-object v0, p0, Lcom/google/android/gms/internal/dq;->a:Ljava/lang/Runnable;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/dq;Ljava/lang/Thread;)Ljava/lang/Thread;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/dq;->b:Ljava/lang/Thread;
return-object p1
.end method
.method public abstract a()V
.end method
.method public abstract b()V
.end method
.method public final e()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/dq;->a:Ljava/lang/Runnable;
invoke-static {v0}, Lcom/google/android/gms/internal/dr;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public final f()V
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->b()V
iget-object v0, p0, Lcom/google/android/gms/internal/dq;->b:Ljava/lang/Thread;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/internal/dq;->b:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
:cond_c
return-void
.end method