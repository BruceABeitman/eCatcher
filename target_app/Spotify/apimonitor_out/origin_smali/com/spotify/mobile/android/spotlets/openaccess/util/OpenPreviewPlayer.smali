.class public Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;
.implements Lcom/spotify/mobile/android/service/x;


# instance fields
.field private final a:Lcom/spotify/mobile/android/service/w;

.field private b:Landroid/media/MediaPlayer;

.field private c:Landroid/media/MediaPlayer;

.field private d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/spotify/mobile/android/spotlets/openaccess/util/f;

.field private f:Lcom/spotify/mobile/android/spotlets/openaccess/util/e;

.field private g:Z

.field private h:Z

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/media/MediaPlayer;",
            "Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;",
            ">;"
        }
    .end annotation
.end field

.field private j:F

.field private k:Z

.field private l:Z

.field private m:Z

.field private final n:Lcom/spotify/mobile/android/util/by;

.field private final o:Ljava/lang/Runnable;

.field private p:Landroid/media/MediaPlayer$OnErrorListener;

.field private q:Landroid/media/MediaPlayer$OnCompletionListener;

.field private r:Landroid/media/MediaPlayer$OnPreparedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;-><init>(Landroid/content/Context;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->d:Ljava/util/LinkedList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->g:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->i:Ljava/util/Map;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->j:F

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->k:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->l:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->m:Z

    new-instance v0, Lcom/spotify/mobile/android/util/by;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/by;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->n:Lcom/spotify/mobile/android/util/by;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$1;-><init>(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->o:Ljava/lang/Runnable;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$2;-><init>(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->p:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$3;-><init>(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->q:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$4;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$4;-><init>(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->r:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/spotify/mobile/android/service/w;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/service/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a:Lcom/spotify/mobile/android/service/w;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a:Lcom/spotify/mobile/android/service/w;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/w;->a(Lcom/spotify/mobile/android/service/x;)V

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->c:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Landroid/media/MediaPlayer;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->c:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private a(Landroid/media/MediaPlayer;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->p:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->q:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->r:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method private a(Landroid/media/MediaPlayer;Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->e:Lcom/spotify/mobile/android/spotlets/openaccess/util/f;

    invoke-interface {v1, v0, p2}, Lcom/spotify/mobile/android/spotlets/openaccess/util/f;->a(Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;)V

    :cond_f
    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;Landroid/media/MediaPlayer;Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Landroid/media/MediaPlayer;Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Lcom/spotify/mobile/android/spotlets/openaccess/util/e;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->f:Lcom/spotify/mobile/android/spotlets/openaccess/util/e;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->i()V

    return-void
.end method

.method static synthetic e(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->g:Z

    return v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method private f()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->m:Z

    return-void
.end method

.method static synthetic g(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Lcom/spotify/mobile/android/util/by;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->n:Lcom/spotify/mobile/android/util/by;

    return-object v0
.end method

.method private g()V
    .registers 6

    const/16 v4, 0xc8

    const v0, 0x3e99999a

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->j:F

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->j:F

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->j:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/openaccess/util/d;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->j:F

    invoke-direct {v1, v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/openaccess/util/d;-><init>(Landroid/os/Handler;Landroid/media/MediaPlayer;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->j:F

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->n:Lcom/spotify/mobile/android/util/by;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v4}, Lcom/spotify/mobile/android/util/by;->a(Ljava/lang/Runnable;II)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;->b:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Landroid/media/MediaPlayer;Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;)V

    return-void
.end method

.method private h()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->d:Ljava/util/LinkedList;

    const-string v1, "The preview queue must be set before calling prepareNextTrack"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;

    if-nez v0, :cond_12

    :goto_11
    return-void

    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->getPreviewUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->i:Ljava/util/Map;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->c:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_22} :catch_28

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    goto :goto_11

    :catch_28
    move-exception v0

    const-string v1, "cannot prepare track %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11
.end method

.method static synthetic h(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->h:Z

    return v0
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Landroid/media/MediaPlayer;Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->c:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;->a:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Landroid/media/MediaPlayer;Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->n:Lcom/spotify/mobile/android/util/by;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/by;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->h:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->d:Ljava/util/LinkedList;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_2e
    return-void
.end method

.method static synthetic i(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)V
    .registers 6

    const/16 v4, 0xc8

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->h:Z

    const-string v1, "Can not start next player. Not ready"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->c:Landroid/media/MediaPlayer;

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->c:Landroid/media/MediaPlayer;

    iput-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->h:Z

    iput-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->g:Z

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->m:Z

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->j:F

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->j:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->n:Lcom/spotify/mobile/android/util/by;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v4}, Lcom/spotify/mobile/android/util/by;->a(Ljava/lang/Runnable;II)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;->b:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Landroid/media/MediaPlayer;Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;)V

    :cond_36
    iput-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->m:Z

    return-void
.end method

.method private j()V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->m:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->m:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->c:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;->d:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Landroid/media/MediaPlayer;Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;)V

    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->m:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->c:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;->c:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Landroid/media/MediaPlayer;Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;)V

    goto :goto_e
.end method

.method static synthetic j(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->h()V

    return-void
.end method

.method static synthetic k(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->c:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private k()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->n:Lcom/spotify/mobile/android/util/by;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/by;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;->c:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Landroid/media/MediaPlayer;Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;)V

    :cond_1b
    return-void
.end method

.method static synthetic l(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->h:Z

    return v0
.end method

.method static synthetic m(Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->g:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/spotify/mobile/android/spotlets/openaccess/util/f;Lcom/spotify/mobile/android/spotlets/openaccess/util/e;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/openaccess/util/f;",
            "Lcom/spotify/mobile/android/spotlets/openaccess/util/e;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "The list of preview URLs must not be empty"

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/bt;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/Iterable;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->i()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->d:Ljava/util/LinkedList;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->e:Lcom/spotify/mobile/android/spotlets/openaccess/util/f;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->f:Lcom/spotify/mobile/android/spotlets/openaccess/util/e;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->e:Lcom/spotify/mobile/android/spotlets/openaccess/util/f;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;

    sget-object v2, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;->d:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;

    invoke-interface {v1, v0, v2}, Lcom/spotify/mobile/android/spotlets/openaccess/util/f;->a(Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer$TrackState;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a:Lcom/spotify/mobile/android/service/w;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/w;->a()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->f()V

    :goto_33
    return-void

    :cond_34
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a:Lcom/spotify/mobile/android/service/w;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/w;->b()Z

    goto :goto_33
.end method

.method public final a(ZZ)V
    .registers 6

    if-eqz p2, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->k:Z

    const v0, 0x3e99999a

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->j:F

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->j:F

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->j:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :goto_13
    return-void

    :cond_14
    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->k()V

    goto :goto_13
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method public final c()V
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->k:Z

    if-eqz v1, :cond_1d

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->k:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/openaccess/util/d;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->j:F

    invoke-direct {v1, v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/openaccess/util/d;-><init>(Landroid/os/Handler;Landroid/media/MediaPlayer;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->j:F

    :goto_1c
    return-void

    :cond_1d
    iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->g:Z

    if-nez v1, :cond_22

    const/4 v0, 0x1

    :cond_22
    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->g()V

    goto :goto_1c

    :cond_28
    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->f()V

    goto :goto_1c
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->k()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->l:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->j()V

    goto :goto_f

    :cond_18
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a:Lcom/spotify/mobile/android/service/w;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/w;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->g()V

    goto :goto_f

    :cond_24
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a:Lcom/spotify/mobile/android/service/w;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/w;->b()Z

    goto :goto_f

    :cond_2a
    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->l:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->j()V

    goto :goto_f
.end method

.method public final e()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->i()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a:Lcom/spotify/mobile/android/service/w;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/w;->c()V

    return-void
.end method
