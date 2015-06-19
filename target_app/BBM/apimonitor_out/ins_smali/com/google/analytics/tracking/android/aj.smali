.class final Lcom/google/analytics/tracking/android/aj;
.super Ljava/lang/Object;
.source "GAThread.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/google/analytics/tracking/android/ah;
.method constructor <init>(Lcom/google/analytics/tracking/android/ah;)V
.registers 2
iput-object p1, p0, Lcom/google/analytics/tracking/android/aj;->a:Lcom/google/analytics/tracking/android/ah;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/google/analytics/tracking/android/aj;->a:Lcom/google/analytics/tracking/android/ah;
invoke-static {v0}, Lcom/google/analytics/tracking/android/ah;->f(Lcom/google/analytics/tracking/android/ah;)Lcom/google/analytics/tracking/android/bb;
move-result-object v0
invoke-interface {v0}, Lcom/google/analytics/tracking/android/bb;->c()V
return-void
.end method