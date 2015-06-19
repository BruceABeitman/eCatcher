.class final Lcom/spotify/mobile/android/service/connections/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/connections/g;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/connections/g;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/connections/g;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/connections/g$1;->a:Lcom/spotify/mobile/android/service/connections/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/g$1;->a:Lcom/spotify/mobile/android/service/connections/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/g;->a(Lcom/spotify/mobile/android/service/connections/g;)Lcom/spotify/mobile/android/service/j;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/g$1;->a:Lcom/spotify/mobile/android/service/connections/g;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/connections/g;->b(Lcom/spotify/mobile/android/service/connections/g;)Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/j;->a(Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    const-string v0, "Error registering for shutdown callbacks."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11
.end method
