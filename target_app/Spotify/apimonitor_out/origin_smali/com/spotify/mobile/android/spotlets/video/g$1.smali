.class final Lcom/spotify/mobile/android/spotlets/video/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/video/g;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/video/g;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/video/g;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/g$1;->a:Lcom/spotify/mobile/android/spotlets/video/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/g$1;->a:Lcom/spotify/mobile/android/spotlets/video/g;

    invoke-static {p2}, Lcom/spotify/mobile/android/service/t;->a(Landroid/os/IBinder;)Lcom/spotify/mobile/android/service/s;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/g;->a(Lcom/spotify/mobile/android/spotlets/video/g;Lcom/spotify/mobile/android/service/s;)Lcom/spotify/mobile/android/service/s;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/g$1;->a:Lcom/spotify/mobile/android/spotlets/video/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/g;->a(Lcom/spotify/mobile/android/spotlets/video/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/g$1;->a:Lcom/spotify/mobile/android/spotlets/video/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/g;->b(Lcom/spotify/mobile/android/spotlets/video/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/video/h;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/video/g$1;->a:Lcom/spotify/mobile/android/spotlets/video/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/h;->a(Lcom/spotify/mobile/android/spotlets/video/h;)Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

    move-result-object v4

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/h;->b(Lcom/spotify/mobile/android/spotlets/video/h;)Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/spotify/mobile/android/spotlets/video/g;->a(Lcom/spotify/mobile/android/spotlets/video/g;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_34

    goto :goto_1a

    :catchall_34
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/g$1;->a:Lcom/spotify/mobile/android/spotlets/video/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/g;->b(Lcom/spotify/mobile/android/spotlets/video/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_34

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/g$1;->a:Lcom/spotify/mobile/android/spotlets/video/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/g;->a(Lcom/spotify/mobile/android/spotlets/video/g;Lcom/spotify/mobile/android/service/s;)Lcom/spotify/mobile/android/service/s;

    return-void
.end method
