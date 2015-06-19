.class final Lcom/crashlytics/android/internal/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/internal/F;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/F;)V
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/internal/G;->a:Lcom/crashlytics/android/internal/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/crashlytics/android/internal/G;->a:Lcom/crashlytics/android/internal/F;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/F;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/internal/G;->a:Lcom/crashlytics/android/internal/F;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/F;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/internal/G;->a:Lcom/crashlytics/android/internal/F;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/F;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/internal/G;->a:Lcom/crashlytics/android/internal/F;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/F;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/crashlytics/android/internal/G;->a:Lcom/crashlytics/android/internal/F;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/F;->e(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/internal/G;->a:Lcom/crashlytics/android/internal/F;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/F;->f(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/internal/G;->a:Lcom/crashlytics/android/internal/F;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/internal/F;->g(Landroid/app/Activity;)V

    return-void
.end method
