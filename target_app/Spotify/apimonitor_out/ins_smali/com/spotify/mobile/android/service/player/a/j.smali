.class final Lcom/spotify/mobile/android/service/player/a/j;
.super Lcom/spotify/mobile/android/service/b/d;
.source "SourceFile"
.field private final g:Landroid/support/v4/content/l;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/b/d;-><init>(Landroid/content/Context;)V
new-instance v0, Landroid/support/v4/content/l;
invoke-direct {v0, p0}, Landroid/support/v4/content/l;-><init>(Landroid/support/v4/content/k;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/player/a/j;->g:Landroid/support/v4/content/l;
return-void
.end method
.method private a(Landroid/database/Cursor;I)Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
.registers 5
const/4 v0, 0x0
invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z
invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z
move-result v1
if-nez v1, :cond_18
invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z
move-result v1
if-nez v1, :cond_18
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/player/a/j;->h()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p1}, Lcom/spotify/mobile/android/service/player/model/a/b;->a(Landroid/content/Context;Landroid/database/Cursor;)Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
move-result-object v0
:cond_18
return-object v0
.end method
.method private t()Lcom/google/common/base/Optional;
.registers 7
const/4 v4, 0x0
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/player/a/j;->h()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/provider/u;->a:Landroid/net/Uri;
sget-object v2, Lcom/spotify/mobile/android/service/player/model/a/b;->a:[Ljava/lang/String;
const-string v3, "limit=101"
move-object v5, v4
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
:try_start_14
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-nez v0, :cond_22
invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;
:try_end_1d
.catchall {:try_start_14 .. :try_end_1d} :catchall_4f
move-result-object v0
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:goto_21
return-object v0
:cond_22
const/16 v0, 0xe
:try_start_24
invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
add-int/lit8 v2, v0, -0x1
invoke-direct {p0, v1, v2}, Lcom/spotify/mobile/android/service/player/a/j;->a(Landroid/database/Cursor;I)Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
move-result-object v2
invoke-direct {p0, v1, v0}, Lcom/spotify/mobile/android/service/player/a/j;->a(Landroid/database/Cursor;I)Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
move-result-object v3
add-int/lit8 v0, v0, 0x1
invoke-direct {p0, v1, v0}, Lcom/spotify/mobile/android/service/player/a/j;->a(Landroid/database/Cursor;I)Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
move-result-object v0
if-nez v3, :cond_42
invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;
:try_end_3d
.catchall {:try_start_24 .. :try_end_3d} :catchall_4f
move-result-object v0
invoke-interface {v1}, Landroid/database/Cursor;->close()V
goto :goto_21
:cond_42
:try_start_42
new-instance v4, Lcom/spotify/mobile/android/service/player/model/c;
invoke-direct {v4, v2, v3, v0}, Lcom/spotify/mobile/android/service/player/model/c;-><init>(Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;)V
invoke-static {v4}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;
:try_end_4a
.catchall {:try_start_42 .. :try_end_4a} :catchall_4f
move-result-object v0
invoke-interface {v1}, Landroid/database/Cursor;->close()V
goto :goto_21
:catchall_4f
move-exception v0
invoke-interface {v1}, Landroid/database/Cursor;->close()V
throw v0
.end method
.method public final synthetic d()Ljava/lang/Object;
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/service/player/a/j;->t()Lcom/google/common/base/Optional;
move-result-object v0
return-object v0
.end method
.method protected final e()V
.registers 5
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/player/a/j;->h()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;
const/4 v2, 0x1
iget-object v3, p0, Lcom/spotify/mobile/android/service/player/a/j;->g:Landroid/support/v4/content/l;
invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
invoke-super {p0}, Lcom/spotify/mobile/android/service/b/d;->e()V
return-void
.end method
.method protected final f()V
.registers 3
invoke-super {p0}, Lcom/spotify/mobile/android/service/b/d;->f()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/player/a/j;->h()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/j;->g:Landroid/support/v4/content/l;
invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
return-void
.end method
.method protected final s()Landroid/net/Uri;
.registers 2
sget-object v0, Lcom/spotify/mobile/android/provider/u;->a:Landroid/net/Uri;
return-object v0
.end method