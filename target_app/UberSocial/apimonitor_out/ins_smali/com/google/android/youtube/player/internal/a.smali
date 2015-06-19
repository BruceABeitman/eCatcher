.class public abstract Lcom/google/android/youtube/player/internal/a;
.super Ljava/lang/Object;
.implements Lcom/google/android/youtube/player/YouTubeThumbnailLoader;
.field private final a:Lcom/google/android/youtube/player/YouTubeThumbnailView;
.field private b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;
.field private c:Z
.field private d:Z
.method public constructor <init>(Lcom/google/android/youtube/player/YouTubeThumbnailView;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "thumbnailView cannot be null"
invoke-static {p1, v0}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/youtube/player/YouTubeThumbnailView;
iput-object v0, p0, Lcom/google/android/youtube/player/internal/a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;
return-void
.end method
.method private h()V
.registers 3
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->a()Z
move-result v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "This YouTubeThumbnailLoader has been released"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
return-void
.end method
.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.registers 5
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->a()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/google/android/youtube/player/internal/a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;
invoke-virtual {v0, p1}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/google/android/youtube/player/internal/a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/google/android/youtube/player/internal/a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;
iget-object v1, p0, Lcom/google/android/youtube/player/internal/a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;
invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;->onThumbnailLoaded(Lcom/google/android/youtube/player/YouTubeThumbnailView;Ljava/lang/String;)V
:cond_16
return-void
.end method
.method public abstract a(Ljava/lang/String;)V
.end method
.method public abstract a(Ljava/lang/String;I)V
.end method
.method protected a()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->d:Z
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public abstract b()V
.end method
.method public final b(Ljava/lang/String;)V
.registers 5
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->a()Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/google/android/youtube/player/internal/a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;
if-eqz v0, :cond_15
:try_start_a
invoke-static {p1}, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
:try_end_d
.catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_d} :catch_16
.catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_d} :catch_1a
move-result-object v0
:goto_e
iget-object v1, p0, Lcom/google/android/youtube/player/internal/a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;
iget-object v2, p0, Lcom/google/android/youtube/player/internal/a;->a:Lcom/google/android/youtube/player/YouTubeThumbnailView;
invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;->onThumbnailError(Lcom/google/android/youtube/player/YouTubeThumbnailView;Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;)V
:cond_15
return-void
:catch_16
move-exception v0
sget-object v0, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;->UNKNOWN:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
goto :goto_e
:catch_1a
move-exception v0
sget-object v0, Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;->UNKNOWN:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$ErrorReason;
goto :goto_e
.end method
.method public abstract c()V
.end method
.method public abstract d()V
.end method
.method public abstract e()Z
.end method
.method public abstract f()Z
.end method
.method public final first()V
.registers 3
invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->h()V
iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->c:Z
if-nez v0, :cond_f
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Must call setPlaylist first"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->d()V
return-void
.end method
.method public abstract g()V
.end method
.method public final hasNext()Z
.registers 2
invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->h()V
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->e()Z
move-result v0
return v0
.end method
.method public final hasPrevious()Z
.registers 2
invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->h()V
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->f()Z
move-result v0
return v0
.end method
.method public final next()V
.registers 3
invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->h()V
iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->c:Z
if-nez v0, :cond_f
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Must call setPlaylist first"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->e()Z
move-result v0
if-nez v0, :cond_1d
new-instance v0, Ljava/util/NoSuchElementException;
const-string v1, "Called next at end of playlist"
invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1d
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->b()V
return-void
.end method
.method public final previous()V
.registers 3
invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->h()V
iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->c:Z
if-nez v0, :cond_f
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Must call setPlaylist first"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->f()Z
move-result v0
if-nez v0, :cond_1d
new-instance v0, Ljava/util/NoSuchElementException;
const-string v1, "Called previous at start of playlist"
invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1d
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->c()V
return-void
.end method
.method public final release()V
.registers 2
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->a()Z
move-result v0
if-eqz v0, :cond_f
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->d:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/youtube/player/internal/a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/a;->g()V
:cond_f
return-void
.end method
.method public final setOnThumbnailLoadedListener(Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->h()V
iput-object p1, p0, Lcom/google/android/youtube/player/internal/a;->b:Lcom/google/android/youtube/player/YouTubeThumbnailLoader$OnThumbnailLoadedListener;
return-void
.end method
.method public final setPlaylist(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/player/internal/a;->setPlaylist(Ljava/lang/String;I)V
return-void
.end method
.method public final setPlaylist(Ljava/lang/String;I)V
.registers 4
invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->h()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->c:Z
invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/player/internal/a;->a(Ljava/lang/String;I)V
return-void
.end method
.method public final setVideo(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lcom/google/android/youtube/player/internal/a;->h()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/youtube/player/internal/a;->c:Z
invoke-virtual {p0, p1}, Lcom/google/android/youtube/player/internal/a;->a(Ljava/lang/String;)V
return-void
.end method