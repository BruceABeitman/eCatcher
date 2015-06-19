.class final Lcom/google/android/gms/analytics/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic qQ:Lcom/google/android/gms/analytics/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/c;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/c$a;->qQ:Lcom/google/android/gms/analytics/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service connected, binder: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V

    :try_start_13
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "bound to service"

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->qQ:Lcom/google/android/gms/analytics/c;

    invoke-static {p2}, Lcom/google/android/gms/internal/dj$a;->r(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dj;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/c;Lcom/google/android/gms/internal/dj;)Lcom/google/android/gms/internal/dj;

    iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->qQ:Lcom/google/android/gms/analytics/c;

    invoke-static {v0}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/c;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_32} :catch_33

    :goto_32
    return-void

    :catch_33
    move-exception v0

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->qQ:Lcom/google/android/gms/analytics/c;

    invoke-static {v0}, Lcom/google/android/gms/analytics/c;->b(Lcom/google/android/gms/analytics/c;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->qQ:Lcom/google/android/gms/analytics/c;

    invoke-static {v0, v2}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/c;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->qQ:Lcom/google/android/gms/analytics/c;

    invoke-static {v0}, Lcom/google/android/gms/analytics/c;->c(Lcom/google/android/gms/analytics/c;)Lcom/google/android/gms/analytics/c$c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/analytics/c$c;->a(ILandroid/content/Intent;)V

    goto :goto_32
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service disconnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->qQ:Lcom/google/android/gms/analytics/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/c;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/gms/analytics/c$a;->qQ:Lcom/google/android/gms/analytics/c;

    invoke-static {v0}, Lcom/google/android/gms/analytics/c;->d(Lcom/google/android/gms/analytics/c;)Lcom/google/android/gms/analytics/c$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/analytics/c$b;->onDisconnected()V

    return-void
.end method
