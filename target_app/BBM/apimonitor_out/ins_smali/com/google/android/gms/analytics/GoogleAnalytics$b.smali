.class  Lcom/google/android/gms/analytics/GoogleAnalytics$b;
.super Ljava/lang/Object;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.field final synthetic tJ:Lcom/google/android/gms/analytics/GoogleAnalytics;
.method constructor <init>(Lcom/google/android/gms/analytics/GoogleAnalytics;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics$b;->tJ:Lcom/google/android/gms/analytics/GoogleAnalytics;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.registers 3
return-void
.end method
.method public onActivityDestroyed(Landroid/app/Activity;)V
.registers 2
return-void
.end method
.method public onActivityPaused(Landroid/app/Activity;)V
.registers 2
return-void
.end method
.method public onActivityResumed(Landroid/app/Activity;)V
.registers 2
return-void
.end method
.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.registers 3
return-void
.end method
.method public onActivityStarted(Landroid/app/Activity;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics$b;->tJ:Lcom/google/android/gms/analytics/GoogleAnalytics;
invoke-static {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(Lcom/google/android/gms/analytics/GoogleAnalytics;Landroid/app/Activity;)V
return-void
.end method
.method public onActivityStopped(Landroid/app/Activity;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics$b;->tJ:Lcom/google/android/gms/analytics/GoogleAnalytics;
invoke-static {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->b(Lcom/google/android/gms/analytics/GoogleAnalytics;Landroid/app/Activity;)V
return-void
.end method