.class public final Lcom/spotify/mobile/android/provider/ac;
.super Landroid/database/AbstractCursor;
.source "SourceFile"
.field private a:Landroid/os/Bundle;
.field private b:Z
.field private c:Ljava/lang/String;
.field private d:Landroid/content/Context;
.field private e:Lcom/spotify/mobile/android/service/connections/g;
.field private f:I
.field private g:Ljava/util/ArrayList;
.field private h:Ljava/util/ArrayList;
.field private i:Ljava/lang/String;
.field private j:[Ljava/lang/String;
.field private k:Ljava/util/Map;
.field private l:I
.field private m:Z
.field private final n:Ljava/lang/Object;
.field private o:Landroid/database/ContentObserver;
.field private final p:Ljava/lang/Object;
.field private q:Landroid/os/HandlerThread;
.field private r:Landroid/os/Handler;
.field private s:Landroid/support/v4/c/f;
.field private t:Z
.field private u:Lcom/spotify/mobile/android/service/connections/h;
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/connections/g;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)V
.registers 12
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->a:Landroid/os/Bundle;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->g:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->h:Ljava/util/ArrayList;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->n:Ljava/lang/Object;
new-instance v0, Lcom/spotify/mobile/android/provider/af;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/provider/af;-><init>(Lcom/spotify/mobile/android/provider/ac;)V
iput-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->o:Landroid/database/ContentObserver;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->p:Ljava/lang/Object;
new-instance v0, Lcom/spotify/mobile/android/provider/ac$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/provider/ac$1;-><init>(Lcom/spotify/mobile/android/provider/ac;)V
iput-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->s:Landroid/support/v4/c/f;
new-instance v0, Lcom/spotify/mobile/android/provider/ac$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/provider/ac$2;-><init>(Lcom/spotify/mobile/android/provider/ac;)V
iput-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->u:Lcom/spotify/mobile/android/service/connections/h;
iput-object p1, p0, Lcom/spotify/mobile/android/provider/ac;->d:Landroid/content/Context;
const-string v0, "limit"
invoke-virtual {p5, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/provider/ac;->f:I
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->h:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->g:Ljava/util/ArrayList;
const-string v3, "order"
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->h:Ljava/util/ArrayList;
const-string v3, "order"
invoke-virtual {p5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->g:Ljava/util/ArrayList;
const-string v3, "reverse"
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->h:Ljava/util/ArrayList;
const-string v3, "reverse"
invoke-virtual {p5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {p3}, Landroid/net/Uri;->getQuery()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_8a
invoke-virtual {p3}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;
move-result-object v0
iget-object v3, p0, Lcom/spotify/mobile/android/provider/ac;->g:Ljava/util/ArrayList;
iget-object v4, p0, Lcom/spotify/mobile/android/provider/ac;->h:Ljava/util/ArrayList;
invoke-static {v0, v3, v4}, Lcom/spotify/mobile/android/util/bu;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
:cond_8a
new-instance v0, Landroid/os/HandlerThread;
const-string v3, "MetadataCursorDataFetcher"
invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->q:Landroid/os/HandlerThread;
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->q:Landroid/os/HandlerThread;
invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
new-instance v0, Lcom/spotify/mobile/android/provider/ae;
iget-object v3, p0, Lcom/spotify/mobile/android/provider/ac;->q:Landroid/os/HandlerThread;
invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v3
invoke-direct {v0, v3, p0}, Lcom/spotify/mobile/android/provider/ae;-><init>(Landroid/os/Looper;Lcom/spotify/mobile/android/provider/ac;)V
iput-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->r:Landroid/os/Handler;
iput-object p2, p0, Lcom/spotify/mobile/android/provider/ac;->e:Lcom/spotify/mobile/android/service/connections/g;
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->e:Lcom/spotify/mobile/android/service/connections/g;
iget-object v3, p0, Lcom/spotify/mobile/android/provider/ac;->u:Lcom/spotify/mobile/android/service/connections/h;
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/service/connections/g;->a(Lcom/spotify/mobile/android/service/connections/h;)V
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->a:Landroid/os/Bundle;
const-string v3, "data_loaded"
invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-virtual {p3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->i:Ljava/lang/String;
invoke-virtual {p4}, [Ljava/lang/String;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->j:[Ljava/lang/String;
invoke-direct {p0}, Lcom/spotify/mobile/android/provider/ac;->b()Lcom/spotify/mobile/android/service/j;
move-result-object v4
const-string v0, "Notification uri: %s"
new-array v3, v1, [Ljava/lang/Object;
invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v2
invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
const-string v0, "mPath: %s"
new-array v3, v1, [Ljava/lang/Object;
iget-object v5, p0, Lcom/spotify/mobile/android/provider/ac;->i:Ljava/lang/String;
aput-object v5, v3, v2
invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-virtual {p0, v0, p3}, Lcom/spotify/mobile/android/provider/ac;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->i:Ljava/lang/String;
invoke-direct {p0, v4, v0}, Lcom/spotify/mobile/android/provider/ac;->a(Lcom/spotify/mobile/android/service/j;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->c:Ljava/lang/String;
iput-boolean v2, p0, Lcom/spotify/mobile/android/provider/ac;->m:Z
invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iget-object v3, p0, Lcom/spotify/mobile/android/provider/ac;->o:Landroid/database/ContentObserver;
invoke-virtual {v0, p3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->c:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_129
move v0, v1
:goto_106
iput-boolean v0, p0, Lcom/spotify/mobile/android/provider/ac;->b:Z
move v3, v1
:goto_109
:cond_109
if-eqz v3, :cond_13b
invoke-direct {p0}, Lcom/spotify/mobile/android/provider/ac;->a()Z
move-result v0
if-nez v0, :cond_109
const/4 v0, -0x1
iput v0, p0, Lcom/spotify/mobile/android/provider/ac;->l:I
:try_start_114
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->i:Ljava/lang/String;
invoke-interface {v4, v0}, Lcom/spotify/mobile/android/service/j;->a(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/provider/ac;->l:I
:goto_11c
:try_end_11c
.catch Ljava/lang/Exception; {:try_start_114 .. :try_end_11c} :catch_12b
invoke-direct {p0}, Lcom/spotify/mobile/android/provider/ac;->a()Z
move-result v0
if-nez v0, :cond_109
iget v0, p0, Lcom/spotify/mobile/android/provider/ac;->l:I
if-gez v0, :cond_130
iput v2, p0, Lcom/spotify/mobile/android/provider/ac;->l:I
:goto_128
return-void
:cond_129
move v0, v2
goto :goto_106
:catch_12b
move-exception v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/ac;->a(Ljava/lang/Exception;)V
goto :goto_11c
:cond_130
invoke-direct {p0, v2}, Lcom/spotify/mobile/android/provider/ac;->a(I)V
invoke-direct {p0}, Lcom/spotify/mobile/android/provider/ac;->a()Z
move-result v0
if-nez v0, :cond_109
move v3, v2
goto :goto_109
:cond_13b
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->a:Landroid/os/Bundle;
const-string v2, "data_loaded"
invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
goto :goto_128
.end method
.method private a(Lcom/spotify/mobile/android/service/j;Ljava/lang/String;)Ljava/lang/String;
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
iget-object v1, p0, Lcom/spotify/mobile/android/provider/ac;->h:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
new-array v1, v1, [Ljava/lang/String;
:try_start_10
iget-object v2, p0, Lcom/spotify/mobile/android/provider/ac;->g:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/provider/ac;->h:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
check-cast v1, [Ljava/lang/String;
invoke-interface {p1, p2, v0, v1}, Lcom/spotify/mobile/android/service/j;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_23} :catch_25
move-result-object v0
:goto_24
return-object v0
:catch_25
move-exception v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/ac;->a(Ljava/lang/Exception;)V
const/4 v0, 0x0
goto :goto_24
.end method
.method private a(I)V
.registers 7
:try_start_0
invoke-direct {p0}, Lcom/spotify/mobile/android/provider/ac;->b()Lcom/spotify/mobile/android/service/j;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/j;
iget-object v2, p0, Lcom/spotify/mobile/android/provider/ac;->i:Ljava/lang/String;
iget-object v3, p0, Lcom/spotify/mobile/android/provider/ac;->j:[Ljava/lang/String;
mul-int/lit8 v4, p1, 0x1e
iget v1, p0, Lcom/spotify/mobile/android/provider/ac;->f:I
if-eqz v1, :cond_32
iget v1, p0, Lcom/spotify/mobile/android/provider/ac;->f:I
:goto_16
invoke-interface {v0, v2, v3, v4, v1}, Lcom/spotify/mobile/android/service/j;->a(Ljava/lang/String;[Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/provider/ad;
invoke-direct {v1, p1, v0}, Lcom/spotify/mobile/android/provider/ad;-><init>(ILjava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->s:Landroid/support/v4/c/f;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v2, v1}, Landroid/support/v4/c/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_28
.catchall {:try_start_0 .. :try_end_28} :catchall_49
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_38
iget-object v1, p0, Lcom/spotify/mobile/android/provider/ac;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_2b
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->p:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
:goto_31
:try_end_31
.catchall {:try_start_2b .. :try_end_31} :catchall_35
return-void
:cond_32
const/16 v1, 0x1e
goto :goto_16
:catchall_35
move-exception v0
monitor-exit v1
throw v0
:catch_38
move-exception v0
:try_start_39
invoke-static {v0}, Lcom/spotify/mobile/android/provider/ac;->a(Ljava/lang/Exception;)V
:try_end_3c
.catchall {:try_start_39 .. :try_end_3c} :catchall_49
iget-object v1, p0, Lcom/spotify/mobile/android/provider/ac;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_3f
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->p:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
:try_end_45
.catchall {:try_start_3f .. :try_end_45} :catchall_46
goto :goto_31
:catchall_46
move-exception v0
monitor-exit v1
throw v0
:catchall_49
move-exception v0
iget-object v1, p0, Lcom/spotify/mobile/android/provider/ac;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_4d
iget-object v2, p0, Lcom/spotify/mobile/android/provider/ac;->p:Ljava/lang/Object;
invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
:try_end_53
.catchall {:try_start_4d .. :try_end_53} :catchall_54
throw v0
:catchall_54
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/provider/ac;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/provider/ac;->a(I)V
return-void
.end method
.method private static a(Ljava/lang/Exception;)V
.registers 3
const-string v0, ""
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method private a()Z
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/spotify/mobile/android/provider/ac;->n:Ljava/lang/Object;
monitor-enter v1
:try_start_4
iget-boolean v2, p0, Lcom/spotify/mobile/android/provider/ac;->m:Z
if-eqz v2, :cond_e
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/provider/ac;->m:Z
const/4 v0, 0x1
monitor-exit v1
:goto_d
:try_end_d
.catchall {:try_start_4 .. :try_end_d} :catchall_10
return v0
:cond_e
monitor-exit v1
goto :goto_d
:catchall_10
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static a(Landroid/database/Cursor;)Z
.registers 4
invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "data_loaded"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
const-string v2, "Cursor doesn\'t contain load state. Is it a MetadataCursor?"
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
const-string v1, "data_loaded"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/provider/ac;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/provider/ac;->t:Z
return v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/provider/ac;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/provider/ac;->t:Z
return p1
.end method
.method private b()Lcom/spotify/mobile/android/service/j;
.registers 6
const/4 v2, 0x0
const-string v0, "Not allowed to call getMetadata() from main loop!"
invoke-static {v0}, Lcom/spotify/mobile/android/util/bt;->a(Ljava/lang/String;)V
const/4 v0, 0x0
move v1, v2
:goto_8
if-nez v0, :cond_2d
const/4 v3, 0x3
if-ge v1, v3, :cond_2d
:try_start_d
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->e:Lcom/spotify/mobile/android/service/connections/g;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/g;->c()Z
move-result v0
if-nez v0, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->e:Lcom/spotify/mobile/android/service/connections/g;
const/4 v3, 0x1
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/service/connections/g;->a(Z)V
:goto_1b
:try_end_1b
.catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_1b} :catch_24
:cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->e:Lcom/spotify/mobile/android/service/connections/g;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/g;->h()Lcom/spotify/mobile/android/service/j;
move-result-object v0
add-int/lit8 v1, v1, 0x1
goto :goto_8
:catch_24
move-exception v0
const-string v3, "Interrupted while trying to connect to SpotifyService"
new-array v4, v2, [Ljava/lang/Object;
invoke-static {v0, v3, v4}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_1b
:cond_2d
if-nez v0, :cond_37
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Failed to connect to SpotifyService"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_37
return-object v0
.end method
.method private b(I)V
.registers 7
if-ltz p1, :cond_7
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->j:[Ljava/lang/String;
array-length v0, v0
if-lt p1, v0, :cond_27
:cond_7
new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;
const-string v1, "Requested column: %d, # of columns: %d"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
iget-object v4, p0, Lcom/spotify/mobile/android/provider/ac;->j:[Ljava/lang/String;
array-length v4, v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_27
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/provider/ac;)V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/provider/ac;->onChange(Z)V
return-void
.end method
.method private c()Lcom/spotify/mobile/android/util/soft/SoftObject;
.registers 4
const/4 v1, 0x0
iget v0, p0, Lcom/spotify/mobile/android/provider/ac;->mPos:I
if-gez v0, :cond_d
new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;
const-string v1, "Before first row."
invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iget v0, p0, Lcom/spotify/mobile/android/provider/ac;->mPos:I
invoke-virtual {p0}, Lcom/spotify/mobile/android/provider/ac;->getCount()I
move-result v2
if-lt v0, v2, :cond_1d
new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;
const-string v1, "After last row."
invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->s:Landroid/support/v4/c/f;
iget v2, p0, Lcom/spotify/mobile/android/provider/ac;->mPos:I
div-int/lit8 v2, v2, 0x1e
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/support/v4/c/f;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/provider/ad;
if-nez v0, :cond_31
move-object v0, v1
:goto_30
:cond_30
return-object v0
:cond_31
iget v2, p0, Lcom/spotify/mobile/android/provider/ac;->mPos:I
rem-int/lit8 v2, v2, 0x1e
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/provider/ad;->a(I)Lcom/spotify/mobile/android/util/soft/SoftObject;
move-result-object v0
if-nez v0, :cond_30
move-object v0, v1
goto :goto_30
.end method
.method static synthetic c(Lcom/spotify/mobile/android/provider/ac;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->n:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/provider/ac;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/provider/ac;->m:Z
return v0
.end method
.method public final close()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->e:Lcom/spotify/mobile/android/service/connections/g;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/g;->h()Lcom/spotify/mobile/android/service/j;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/provider/ac;->e:Lcom/spotify/mobile/android/service/connections/g;
iget-object v2, p0, Lcom/spotify/mobile/android/provider/ac;->u:Lcom/spotify/mobile/android/service/connections/h;
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/service/connections/g;->b(Lcom/spotify/mobile/android/service/connections/h;)V
iget-boolean v1, p0, Lcom/spotify/mobile/android/provider/ac;->b:Z
if-eqz v1, :cond_1a
if-eqz v0, :cond_44
:try_start_13
iget-object v1, p0, Lcom/spotify/mobile/android/provider/ac;->i:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/provider/ac;->c:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/service/j;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_1a
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_3f
:goto_1a
:cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->q:Landroid/os/HandlerThread;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->q:Landroid/os/HandlerThread;
invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
:try_start_23
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->q:Landroid/os/HandlerThread;
invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->q:Landroid/os/HandlerThread;
:try_end_2b
.catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_2b} :catch_50
:goto_2b
:cond_2b
invoke-super {p0}, Landroid/database/AbstractCursor;->close()V
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->d:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/provider/ac;->o:Landroid/database/ContentObserver;
invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->s:Landroid/support/v4/c/f;
invoke-virtual {v0}, Landroid/support/v4/c/f;->a()V
return-void
:catch_3f
move-exception v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/ac;->a(Ljava/lang/Exception;)V
goto :goto_1a
:cond_44
const-string v0, "Leaked metadata: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p0, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_1a
:catch_50
move-exception v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/ac;->a(Ljava/lang/Exception;)V
goto :goto_2b
.end method
.method public final getColumnIndex(Ljava/lang/String;)I
.registers 7
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->k:Ljava/util/Map;
if-nez v0, :cond_24
new-instance v0, Ljava/util/HashMap;
iget-object v1, p0, Lcom/spotify/mobile/android/provider/ac;->j:[Ljava/lang/String;
array-length v1, v1
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
iput-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->k:Ljava/util/Map;
const/4 v0, 0x0
iget-object v1, p0, Lcom/spotify/mobile/android/provider/ac;->j:[Ljava/lang/String;
array-length v1, v1
:goto_12
if-ge v0, v1, :cond_24
iget-object v2, p0, Lcom/spotify/mobile/android/provider/ac;->k:Ljava/util/Map;
iget-object v3, p0, Lcom/spotify/mobile/android/provider/ac;->j:[Ljava/lang/String;
aget-object v3, v3, v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_12
:cond_24
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->k:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-eqz v0, :cond_33
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
:goto_32
return v0
:cond_33
const/4 v0, -0x1
goto :goto_32
.end method
.method public final getColumnNames()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->j:[Ljava/lang/String;
return-object v0
.end method
.method public final getCount()I
.registers 3
iget v0, p0, Lcom/spotify/mobile/android/provider/ac;->f:I
if-eqz v0, :cond_d
iget v0, p0, Lcom/spotify/mobile/android/provider/ac;->l:I
iget v1, p0, Lcom/spotify/mobile/android/provider/ac;->f:I
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
:goto_c
return v0
:cond_d
iget v0, p0, Lcom/spotify/mobile/android/provider/ac;->l:I
goto :goto_c
.end method
.method public final getDouble(I)D
.registers 4
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/provider/ac;->b(I)V
invoke-direct {p0}, Lcom/spotify/mobile/android/provider/ac;->c()Lcom/spotify/mobile/android/util/soft/SoftObject;
move-result-object v0
if-nez v0, :cond_c
const-wide/16 v0, 0x0
:goto_b
return-wide v0
:cond_c
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->c(I)D
move-result-wide v0
goto :goto_b
.end method
.method public final getExtras()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->a:Landroid/os/Bundle;
return-object v0
.end method
.method public final getFloat(I)F
.registers 4
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/provider/ac;->b(I)V
invoke-direct {p0}, Lcom/spotify/mobile/android/provider/ac;->c()Lcom/spotify/mobile/android/util/soft/SoftObject;
move-result-object v0
if-nez v0, :cond_b
const/4 v0, 0x0
:goto_a
return v0
:cond_b
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->c(I)D
move-result-wide v0
double-to-float v0, v0
goto :goto_a
.end method
.method public final getInt(I)I
.registers 4
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/provider/ac;->b(I)V
invoke-direct {p0}, Lcom/spotify/mobile/android/provider/ac;->c()Lcom/spotify/mobile/android/util/soft/SoftObject;
move-result-object v0
if-nez v0, :cond_b
const/4 v0, 0x0
:goto_a
return v0
:cond_b
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->b(I)J
move-result-wide v0
long-to-int v0, v0
goto :goto_a
.end method
.method public final getLong(I)J
.registers 4
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/provider/ac;->b(I)V
invoke-direct {p0}, Lcom/spotify/mobile/android/provider/ac;->c()Lcom/spotify/mobile/android/util/soft/SoftObject;
move-result-object v0
if-nez v0, :cond_c
const-wide/16 v0, 0x0
:goto_b
return-wide v0
:cond_c
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->b(I)J
move-result-wide v0
goto :goto_b
.end method
.method public final getShort(I)S
.registers 4
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/provider/ac;->b(I)V
invoke-direct {p0}, Lcom/spotify/mobile/android/provider/ac;->c()Lcom/spotify/mobile/android/util/soft/SoftObject;
move-result-object v0
if-nez v0, :cond_b
const/4 v0, 0x0
:goto_a
return v0
:cond_b
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->b(I)J
move-result-wide v0
long-to-int v0, v0
int-to-short v0, v0
goto :goto_a
.end method
.method public final getString(I)Ljava/lang/String;
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/provider/ac;->b(I)V
invoke-direct {p0}, Lcom/spotify/mobile/android/provider/ac;->c()Lcom/spotify/mobile/android/util/soft/SoftObject;
move-result-object v0
if-nez v0, :cond_b
const/4 v0, 0x0
:goto_a
return-object v0
:cond_b
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->d(I)Ljava/lang/String;
move-result-object v0
goto :goto_a
.end method
.method public final isNull(I)Z
.registers 4
invoke-direct {p0}, Lcom/spotify/mobile/android/provider/ac;->c()Lcom/spotify/mobile/android/util/soft/SoftObject;
move-result-object v0
if-eqz v0, :cond_12
invoke-direct {p0}, Lcom/spotify/mobile/android/provider/ac;->c()Lcom/spotify/mobile/android/util/soft/SoftObject;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->a(I)I
move-result v0
const/16 v1, 0x40
if-ne v0, v1, :cond_14
:cond_12
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public final onMove(II)Z
.registers 9
const/4 v0, 0x0
iget-object v2, p0, Lcom/spotify/mobile/android/provider/ac;->p:Ljava/lang/Object;
monitor-enter v2
:try_start_4
div-int/lit8 v1, p2, 0x1e
iget-object v3, p0, Lcom/spotify/mobile/android/provider/ac;->s:Landroid/support/v4/c/f;
const-string v4, "mRangeCache in MetadataCursor is suddenly null, how?"
invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
iget-object v3, p0, Lcom/spotify/mobile/android/provider/ac;->s:Landroid/support/v4/c/f;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/support/v4/c/f;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
if-nez v3, :cond_38
iget-object v3, p0, Lcom/spotify/mobile/android/provider/ac;->r:Landroid/os/Handler;
invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
:try_start_1e
:try_end_1e
.catchall {:try_start_4 .. :try_end_1e} :catchall_44
iget-boolean v3, p0, Lcom/spotify/mobile/android/provider/ac;->t:Z
if-nez v3, :cond_29
iget-object v3, p0, Lcom/spotify/mobile/android/provider/ac;->p:Ljava/lang/Object;
const-wide/16 v4, 0x539
invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
:try_start_29
:cond_29
:try_end_29
.catchall {:try_start_1e .. :try_end_29} :catchall_44
.catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_29} :catch_3e
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac;->s:Landroid/support/v4/c/f;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v4/c/f;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_47
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/provider/ac;->t:Z
:cond_38
:goto_38
monitor-exit v2
:try_end_39
.catchall {:try_start_29 .. :try_end_39} :catchall_44
invoke-super {p0, p1, p2}, Landroid/database/AbstractCursor;->onMove(II)Z
move-result v0
:goto_3d
return v0
:catch_3e
move-exception v1
:try_start_3f
invoke-static {v1}, Lcom/spotify/mobile/android/provider/ac;->a(Ljava/lang/Exception;)V
monitor-exit v2
:try_end_43
.catchall {:try_start_3f .. :try_end_43} :catchall_44
goto :goto_3d
:catchall_44
move-exception v0
monitor-exit v2
throw v0
:cond_47
const/4 v0, 0x0
:try_start_48
iput-boolean v0, p0, Lcom/spotify/mobile/android/provider/ac;->t:Z
:try_end_4a
.catchall {:try_start_48 .. :try_end_4a} :catchall_44
goto :goto_38
.end method
.method public final registerContentObserver(Landroid/database/ContentObserver;)V
.registers 5
iget-object v1, p0, Lcom/spotify/mobile/android/provider/ac;->n:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-super {p0, p1}, Landroid/database/AbstractCursor;->registerContentObserver(Landroid/database/ContentObserver;)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/provider/ac;->m:Z
if-eqz v0, :cond_12
sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->a:Z
if-eqz v0, :cond_14
const/4 v0, 0x0
invoke-virtual {p1, v0}, Landroid/database/ContentObserver;->dispatchChange(Z)V
:cond_12
:goto_12
monitor-exit v1
return-void
:cond_14
const/4 v0, 0x0
const/4 v2, 0x0
invoke-virtual {p1, v0, v2}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;)V
:try_end_19
.catchall {:try_start_3 .. :try_end_19} :catchall_1a
goto :goto_12
:catchall_1a
move-exception v0
monitor-exit v1
throw v0
.end method