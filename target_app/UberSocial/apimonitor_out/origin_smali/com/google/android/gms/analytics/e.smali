.class Lcom/google/android/gms/analytics/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/c;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/e;->a:Lcom/google/android/gms/analytics/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/google/android/gms/analytics/e;->a:Lcom/google/android/gms/analytics/c;

    invoke-static {v0, p1}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/c;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/e;->a:Lcom/google/android/gms/analytics/c;

    invoke-static {v0, p1}, Lcom/google/android/gms/analytics/c;->b(Lcom/google/android/gms/analytics/c;Landroid/app/Activity;)V

    return-void
.end method
