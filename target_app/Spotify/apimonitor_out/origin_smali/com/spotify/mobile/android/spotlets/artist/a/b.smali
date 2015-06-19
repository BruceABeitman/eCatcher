.class public final Lcom/spotify/mobile/android/spotlets/artist/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final b:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;


# instance fields
.field a:Landroid/database/ContentObserver;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Lcom/spotify/mobile/android/spotlets/artist/a/c;

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "paused"

    aput-object v1, v0, v3

    const-string v1, "is_prev_enabled"

    aput-object v1, v0, v4

    const-string v1, "is_next_enabled"

    aput-object v1, v0, v5

    const-string v1, "is_radio"

    aput-object v1, v0, v6

    const-string v1, "radio_thumb_state"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "is_ad_playing"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "context_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->b:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "uri"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "album_name"

    aput-object v1, v0, v5

    const-string v1, "artist_name"

    aput-object v1, v0, v6

    const-string v1, "album_image_uri"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "focused_row"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/a/c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->f:Landroid/os/Handler;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/a/b$1;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->f:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/a/b$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/a/b;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->a:Landroid/database/ContentObserver;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/a/b$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/a/b$2;-><init>(Lcom/spotify/mobile/android/spotlets/artist/a/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->g:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->e:Lcom/spotify/mobile/android/spotlets/artist/a/c;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/a/b;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/artist/a/b;)Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/artist/a/b;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/artist/a/b;)Lcom/spotify/mobile/android/spotlets/artist/a/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->e:Lcom/spotify/mobile/android/spotlets/artist/a/c;

    return-object v0
.end method

.method static synthetic d()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->h:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/spotlets/artist/a/b;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 5

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/a/b;->c()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/provider/n;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->d:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/a/b;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
