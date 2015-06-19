.class final Lcom/spotify/mobile/android/spotlets/artist/model/e;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/model/a;

.field private b:Landroid/database/Cursor;

.field private c:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/model/a;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/e;->a:Lcom/spotify/mobile/android/spotlets/artist/model/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/e;->b:Landroid/database/Cursor;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/model/e;->c:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/e;->b:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/e;->d:Z

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onChange(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    monitor-enter p0

    :try_start_4
    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/e;->d:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/e;->b:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/e;->d:Z

    :cond_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_28

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/e;->a:Lcom/spotify/mobile/android/spotlets/artist/model/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/a;->d(Lcom/spotify/mobile/android/spotlets/artist/model/a;)Lcom/spotify/mobile/android/spotlets/artist/model/c;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/e;->b:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/model/c;->a(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/e;->a:Lcom/spotify/mobile/android/spotlets/artist/model/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/a;->d(Lcom/spotify/mobile/android/spotlets/artist/model/a;)Lcom/spotify/mobile/android/spotlets/artist/model/c;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/e;->c:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/model/c;->a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V

    return-void

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method
