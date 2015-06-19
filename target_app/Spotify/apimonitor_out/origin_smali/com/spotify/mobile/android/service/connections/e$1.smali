.class final Lcom/spotify/mobile/android/service/connections/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/connections/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/connections/e;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/connections/e;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/connections/e$1;->a:Lcom/spotify/mobile/android/service/connections/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e$1;->a:Lcom/spotify/mobile/android/service/connections/e;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/e;->a(Lcom/spotify/mobile/android/service/connections/e;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e$1;->a:Lcom/spotify/mobile/android/service/connections/e;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/e;->b(Lcom/spotify/mobile/android/service/connections/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e$1;->a:Lcom/spotify/mobile/android/service/connections/e;

    check-cast p2, Landroid/os/Binder;

    invoke-static {v0, p2}, Lcom/spotify/mobile/android/service/connections/e;->a(Lcom/spotify/mobile/android/service/connections/e;Landroid/os/Binder;)Landroid/os/Binder;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e$1;->a:Lcom/spotify/mobile/android/service/connections/e;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/e;->c(Lcom/spotify/mobile/android/service/connections/e;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e$1;->a:Lcom/spotify/mobile/android/service/connections/e;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/e;->d(Lcom/spotify/mobile/android/service/connections/e;)V

    goto :goto_11
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e$1;->a:Lcom/spotify/mobile/android/service/connections/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/connections/e;->a(Lcom/spotify/mobile/android/service/connections/e;Landroid/os/Binder;)Landroid/os/Binder;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e$1;->a:Lcom/spotify/mobile/android/service/connections/e;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/e;->a(Lcom/spotify/mobile/android/service/connections/e;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e$1;->a:Lcom/spotify/mobile/android/service/connections/e;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/e;->c(Lcom/spotify/mobile/android/service/connections/e;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e$1;->a:Lcom/spotify/mobile/android/service/connections/e;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/e;->e(Lcom/spotify/mobile/android/service/connections/e;)V

    :cond_18
    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/e$1;->a:Lcom/spotify/mobile/android/service/connections/e;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/e;->f(Lcom/spotify/mobile/android/service/connections/e;)V

    return-void
.end method
