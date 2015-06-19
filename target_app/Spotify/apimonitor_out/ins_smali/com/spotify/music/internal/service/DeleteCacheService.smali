.class public Lcom/spotify/music/internal/service/DeleteCacheService;
.super Landroid/app/IntentService;
.source "SourceFile"
.field private a:Lcom/spotify/mobile/android/ui/actions/a;
.method public constructor <init>()V
.registers 2
const-class v0, Lcom/spotify/music/internal/service/DeleteCacheService;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/music/internal/service/DeleteCacheService;->a:Lcom/spotify/mobile/android/ui/actions/a;
return-void
.end method
.method private a(Ljava/io/File;Lcom/spotify/music/internal/service/a;)V
.registers 13
const/4 v9, 0x1
const/4 v1, 0x0
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_42
invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v2
array-length v3, v2
move v0, v1
:goto_e
if-ge v0, v3, :cond_42
aget-object v4, v2, v0
invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z
move-result v5
if-eqz v5, :cond_1e
invoke-direct {p0, v4, p2}, Lcom/spotify/music/internal/service/DeleteCacheService;->a(Ljava/io/File;Lcom/spotify/music/internal/service/a;)V
:goto_1b
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_1e
invoke-virtual {v4}, Ljava/io/File;->length()J
move-result-wide v5
invoke-virtual {v4}, Ljava/io/File;->delete()Z
move-result v7
if-eqz v7, :cond_2f
iget-wide v7, p2, Lcom/spotify/music/internal/service/a;->d:J
add-long v4, v7, v5
iput-wide v4, p2, Lcom/spotify/music/internal/service/a;->d:J
goto :goto_1b
:cond_2f
iget-wide v7, p2, Lcom/spotify/music/internal/service/a;->e:J
add-long/2addr v5, v7
iput-wide v5, p2, Lcom/spotify/music/internal/service/a;->e:J
const-string v5, "Failed deleting file: %s"
new-array v6, v9, [Ljava/lang/Object;
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
aput-object v4, v6, v1
invoke-static {v5, v6}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_1b
:cond_42
invoke-virtual {p1}, Ljava/io/File;->delete()Z
move-result v0
if-nez v0, :cond_55
const-string v0, "Failed deleting directory: %s"
new-array v2, v9, [Ljava/lang/Object;
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v1
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_55
return-void
.end method
.method private a(Ljava/lang/String;Lcom/spotify/music/internal/service/a;)V
.registers 10
const/4 v6, 0x1
const/4 v5, 0x0
const-string v0, "Deleting directory at %s"
new-array v1, v6, [Ljava/lang/Object;
aput-object p1, v1, v5
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v0, Ljava/io/File;
invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ".tmp"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
move-result v0
if-nez v0, :cond_4e
const-string v0, "Failed renaming to: %s"
new-array v2, v6, [Ljava/lang/Object;
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
aput-object v1, v2, v5
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:goto_4d
return-void
:cond_4e
const-string v0, "Renamed to: %s"
new-array v2, v6, [Ljava/lang/Object;
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v5
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, v1, p2}, Lcom/spotify/music/internal/service/DeleteCacheService;->a(Ljava/io/File;Lcom/spotify/music/internal/service/a;)V
goto :goto_4d
.end method
.method protected onHandleIntent(Landroid/content/Intent;)V
.registers 10
const-wide/16 v6, 0x1388
new-instance v0, Lcom/spotify/mobile/android/service/ao;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/ao;-><init>(Landroid/content/Context;)V
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v1
new-instance v3, Lcom/spotify/music/internal/service/a;
const/4 v4, 0x0
invoke-direct {v3, v4}, Lcom/spotify/music/internal/service/a;-><init>(B)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ao;->c()Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Lcom/spotify/music/internal/service/a;->a:Ljava/lang/String;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ao;->d()Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Lcom/spotify/music/internal/service/a;->b:Ljava/lang/String;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ao;->e()V
iget-object v0, v3, Lcom/spotify/music/internal/service/a;->a:Ljava/lang/String;
if-eqz v0, :cond_29
iget-object v0, v3, Lcom/spotify/music/internal/service/a;->a:Ljava/lang/String;
invoke-direct {p0, v0, v3}, Lcom/spotify/music/internal/service/DeleteCacheService;->a(Ljava/lang/String;Lcom/spotify/music/internal/service/a;)V
:cond_29
iget-object v0, v3, Lcom/spotify/music/internal/service/a;->b:Ljava/lang/String;
if-eqz v0, :cond_32
iget-object v0, v3, Lcom/spotify/music/internal/service/a;->b:Ljava/lang/String;
invoke-direct {p0, v0, v3}, Lcom/spotify/music/internal/service/DeleteCacheService;->a(Ljava/lang/String;Lcom/spotify/music/internal/service/a;)V
:cond_32
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v4
sub-long v0, v4, v1
iput-wide v0, v3, Lcom/spotify/music/internal/service/a;->c:J
iget-wide v0, v3, Lcom/spotify/music/internal/service/a;->c:J
cmp-long v0, v0, v6
if-gez v0, :cond_47
:try_start_40
iget-wide v0, v3, Lcom/spotify/music/internal/service/a;->c:J
sub-long v0, v6, v0
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
:goto_47
:try_end_47
.catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_47} :catch_b4
:cond_47
new-instance v0, Landroid/content/Intent;
const-string v1, "com.spotify.mobile.android.service.BROADCAST_DELETE_CACHE_FINISHED"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/spotify/music/internal/service/DeleteCacheService;->sendBroadcast(Landroid/content/Intent;)V
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->K:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
const-string v1, "cache-path"
iget-object v2, v3, Lcom/spotify/music/internal/service/a;->a:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v1, "settings-path"
iget-object v2, v3, Lcom/spotify/music/internal/service/a;->b:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v1, "time-taken"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-wide v4, v3, Lcom/spotify/music/internal/service/a;->c:J
invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v1, "deleted-bytes"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-wide v4, v3, Lcom/spotify/music/internal/service/a;->d:J
invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v1, "failed-bytes"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-wide v3, v3, Lcom/spotify/music/internal/service/a;->e:J
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
iget-object v1, p0, Lcom/spotify/music/internal/service/DeleteCacheService;->a:Lcom/spotify/mobile/android/ui/actions/a;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aE:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
:catch_b4
move-exception v0
goto :goto_47
.end method