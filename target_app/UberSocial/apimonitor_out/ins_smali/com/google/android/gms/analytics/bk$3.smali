.class  Lcom/google/android/gms/analytics/bk$3;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/google/android/gms/analytics/bk;
.method constructor <init>(Lcom/google/android/gms/analytics/bk;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/analytics/bk$3;->a:Lcom/google/android/gms/analytics/bk;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/bk$3;->a:Lcom/google/android/gms/analytics/bk;
invoke-static {v0}, Lcom/google/android/gms/analytics/bk;->e(Lcom/google/android/gms/analytics/bk;)Lcom/google/android/gms/analytics/ad;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/analytics/ad;->a()V
return-void
.end method