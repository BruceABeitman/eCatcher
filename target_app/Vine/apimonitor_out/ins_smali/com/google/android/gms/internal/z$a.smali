.class public Lcom/google/android/gms/internal/z$a;
.super Ljava/lang/Object;
.field private final mHandler:Landroid/os/Handler;
.method public constructor <init>(Landroid/os/Handler;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/z$a;->mHandler:Landroid/os/Handler;
return-void
.end method
.method public postDelayed(Ljava/lang/Runnable;J)Z
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/z$a;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
move-result v0
return v0
.end method
.method public removeCallbacks(Ljava/lang/Runnable;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/z$a;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method