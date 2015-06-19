.class  Lcom/google/android/gms/analytics/t$4;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic sg:Lcom/google/android/gms/analytics/t;
.method constructor <init>(Lcom/google/android/gms/analytics/t;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/analytics/t$4;->sg:Lcom/google/android/gms/analytics/t;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/t$4;->sg:Lcom/google/android/gms/analytics/t;
invoke-static {v0}, Lcom/google/android/gms/analytics/t;->e(Lcom/google/android/gms/analytics/t;)Lcom/google/android/gms/analytics/ag;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/analytics/ag;->br()V
return-void
.end method