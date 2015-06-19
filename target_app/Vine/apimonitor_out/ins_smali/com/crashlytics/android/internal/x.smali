.class final Lcom/crashlytics/android/internal/x;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.field private synthetic a:Lcom/crashlytics/android/internal/w;
.method constructor <init>(Lcom/crashlytics/android/internal/w;)V
.registers 2
iput-object p1, p0, Lcom/crashlytics/android/internal/x;->a:Lcom/crashlytics/android/internal/w;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Lcom/crashlytics/android/internal/x;->a:Lcom/crashlytics/android/internal/w;
iget-object v0, v0, Lcom/crashlytics/android/internal/w;->a:Lcom/crashlytics/android/internal/v;
invoke-static {v0, p1}, Lcom/crashlytics/android/internal/v;->a(Lcom/crashlytics/android/internal/v;Landroid/app/Activity;)Lcom/crashlytics/android/internal/v;
return-void
.end method
.method public final onActivityDestroyed(Landroid/app/Activity;)V
.registers 2
return-void
.end method
.method public final onActivityPaused(Landroid/app/Activity;)V
.registers 2
return-void
.end method
.method public final onActivityResumed(Landroid/app/Activity;)V
.registers 3
iget-object v0, p0, Lcom/crashlytics/android/internal/x;->a:Lcom/crashlytics/android/internal/w;
iget-object v0, v0, Lcom/crashlytics/android/internal/w;->a:Lcom/crashlytics/android/internal/v;
invoke-static {v0, p1}, Lcom/crashlytics/android/internal/v;->a(Lcom/crashlytics/android/internal/v;Landroid/app/Activity;)Lcom/crashlytics/android/internal/v;
return-void
.end method
.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.registers 3
return-void
.end method
.method public final onActivityStarted(Landroid/app/Activity;)V
.registers 3
iget-object v0, p0, Lcom/crashlytics/android/internal/x;->a:Lcom/crashlytics/android/internal/w;
iget-object v0, v0, Lcom/crashlytics/android/internal/w;->a:Lcom/crashlytics/android/internal/v;
invoke-static {v0, p1}, Lcom/crashlytics/android/internal/v;->a(Lcom/crashlytics/android/internal/v;Landroid/app/Activity;)Lcom/crashlytics/android/internal/v;
return-void
.end method
.method public final onActivityStopped(Landroid/app/Activity;)V
.registers 2
return-void
.end method