.class public abstract Lcom/google/android/gms/internal/ct;
.super Ljava/lang/Object;
.field private final kW:Ljava/lang/Runnable;
.field private volatile pI:Ljava/lang/Thread;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/ct$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ct$1;-><init>(Lcom/google/android/gms/internal/ct;)V
iput-object v0, p0, Lcom/google/android/gms/internal/ct;->kW:Ljava/lang/Runnable;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/ct;Ljava/lang/Thread;)Ljava/lang/Thread;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/ct;->pI:Ljava/lang/Thread;
return-object p1
.end method
.method public abstract aB()V
.end method
.method public final cancel()V
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/ct;->onStop()V
iget-object v0, p0, Lcom/google/android/gms/internal/ct;->pI:Ljava/lang/Thread;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/internal/ct;->pI:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
:cond_c
return-void
.end method
.method public abstract onStop()V
.end method
.method public final start()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ct;->kW:Ljava/lang/Runnable;
invoke-static {v0}, Lcom/google/android/gms/internal/cu;->execute(Ljava/lang/Runnable;)V
return-void
.end method