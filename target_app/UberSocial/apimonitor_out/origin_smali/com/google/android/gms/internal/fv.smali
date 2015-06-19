.class public Lcom/google/android/gms/internal/fv;
.super Lcom/google/android/gms/internal/fl;


# static fields
.field private static final a:J

.field private static final c:J

.field private static final d:J

.field private static final e:J


# instance fields
.field private f:J

.field private g:Lcom/google/android/gms/cast/r;

.field private final h:Landroid/os/Handler;

.field private final i:Lcom/google/android/gms/internal/ga;

.field private final j:Lcom/google/android/gms/internal/ga;

.field private final k:Lcom/google/android/gms/internal/ga;

.field private final l:Lcom/google/android/gms/internal/ga;

.field private final m:Lcom/google/android/gms/internal/ga;

.field private final n:Lcom/google/android/gms/internal/ga;

.field private final o:Lcom/google/android/gms/internal/ga;

.field private final p:Lcom/google/android/gms/internal/ga;

.field private final q:Ljava/lang/Runnable;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/16 v2, 0x18

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/fv;->a:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/fv;->c:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/fv;->d:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/fv;->e:J

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const-string v0, "urn:x-cast:com.google.cast.media"

    const-string v1, "MediaControlChannel"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/fl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->h:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/fw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/fw;-><init>(Lcom/google/android/gms/internal/fv;Lcom/google/android/gms/internal/fv$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->q:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/gms/internal/ga;

    sget-wide v1, Lcom/google/android/gms/internal/fv;->c:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ga;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->i:Lcom/google/android/gms/internal/ga;

    new-instance v0, Lcom/google/android/gms/internal/ga;

    sget-wide v1, Lcom/google/android/gms/internal/fv;->a:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ga;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->j:Lcom/google/android/gms/internal/ga;

    new-instance v0, Lcom/google/android/gms/internal/ga;

    sget-wide v1, Lcom/google/android/gms/internal/fv;->a:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ga;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->k:Lcom/google/android/gms/internal/ga;

    new-instance v0, Lcom/google/android/gms/internal/ga;

    sget-wide v1, Lcom/google/android/gms/internal/fv;->a:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ga;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->l:Lcom/google/android/gms/internal/ga;

    new-instance v0, Lcom/google/android/gms/internal/ga;

    sget-wide v1, Lcom/google/android/gms/internal/fv;->d:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ga;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->m:Lcom/google/android/gms/internal/ga;

    new-instance v0, Lcom/google/android/gms/internal/ga;

    sget-wide v1, Lcom/google/android/gms/internal/fv;->a:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ga;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->n:Lcom/google/android/gms/internal/ga;

    new-instance v0, Lcom/google/android/gms/internal/ga;

    sget-wide v1, Lcom/google/android/gms/internal/fv;->a:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ga;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->o:Lcom/google/android/gms/internal/ga;

    new-instance v0, Lcom/google/android/gms/internal/ga;

    sget-wide v1, Lcom/google/android/gms/internal/fv;->a:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ga;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->p:Lcom/google/android/gms/internal/ga;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fv;->k()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->i:Lcom/google/android/gms/internal/ga;

    return-object v0
.end method

.method private a(JLorg/json/JSONObject;)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->i:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ga;->a(J)Z

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->m:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ga;->b()Z

    move-result v0

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->m:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ga;->a(J)Z

    move-result v0

    if-nez v0, :cond_9e

    move v0, v1

    :goto_19
    iget-object v4, p0, Lcom/google/android/gms/internal/fv;->n:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ga;->b()Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, p0, Lcom/google/android/gms/internal/fv;->n:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/ga;->a(J)Z

    move-result v4

    if-eqz v4, :cond_39

    :cond_29
    iget-object v4, p0, Lcom/google/android/gms/internal/fv;->o:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ga;->b()Z

    move-result v4

    if-eqz v4, :cond_a1

    iget-object v4, p0, Lcom/google/android/gms/internal/fv;->o:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/ga;->a(J)Z

    move-result v4

    if-nez v4, :cond_a1

    :cond_39
    :goto_39
    if-eqz v0, :cond_aa

    const/4 v0, 0x2

    :goto_3c
    if-eqz v1, :cond_40

    or-int/lit8 v0, v0, 0x1

    :cond_40
    if-nez v3, :cond_46

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->g:Lcom/google/android/gms/cast/r;

    if-nez v1, :cond_a3

    :cond_46
    new-instance v0, Lcom/google/android/gms/cast/r;

    invoke-direct {v0, p3}, Lcom/google/android/gms/cast/r;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->g:Lcom/google/android/gms/cast/r;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/fv;->f:J

    const/4 v0, 0x7

    :goto_54
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_61

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/fv;->f:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->a()V

    :cond_61
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_6e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/fv;->f:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->a()V

    :cond_6e
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_75

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->b()V

    :cond_75
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->i:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/internal/ga;->a(JI)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->j:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/internal/ga;->a(JI)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->k:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/internal/ga;->a(JI)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->l:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/internal/ga;->a(JI)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->m:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/internal/ga;->a(JI)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->n:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/internal/ga;->a(JI)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->o:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/internal/ga;->a(JI)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->p:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/internal/ga;->a(JI)Z

    return-void

    :cond_9e
    move v0, v2

    goto/16 :goto_19

    :cond_a1
    move v1, v2

    goto :goto_39

    :cond_a3
    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->g:Lcom/google/android/gms/cast/r;

    invoke-virtual {v1, p3, v0}, Lcom/google/android/gms/cast/r;->a(Lorg/json/JSONObject;I)I

    move-result v0

    goto :goto_54

    :cond_aa
    move v0, v2

    goto :goto_3c
.end method

.method private a(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fv;->r:Z

    if-eq v0, p1, :cond_11

    iput-boolean p1, p0, Lcom/google/android/gms/internal/fv;->r:Z

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->q:Ljava/lang/Runnable;

    sget-wide v2, Lcom/google/android/gms/internal/fv;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fv;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/fv;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->j:Lcom/google/android/gms/internal/ga;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/fv;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fv;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->k:Lcom/google/android/gms/internal/ga;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->l:Lcom/google/android/gms/internal/ga;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->m:Lcom/google/android/gms/internal/ga;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->n:Lcom/google/android/gms/internal/ga;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->o:Lcom/google/android/gms/internal/ga;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/fv;)Lcom/google/android/gms/internal/ga;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->p:Lcom/google/android/gms/internal/ga;

    return-object v0
.end method

.method private k()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fv;->a(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/fv;->f:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->g:Lcom/google/android/gms/cast/r;

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->i:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ga;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->m:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ga;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->n:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ga;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/fz;)J
    .registers 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->d()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/fv;->p:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/ga;->a(JLcom/google/android/gms/internal/fz;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/fv;->a(Z)V

    :try_start_12
    const-string v3, "requestId"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "GET_STATUS"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/google/android/gms/internal/fv;->g:Lcom/google/android/gms/cast/r;

    if-eqz v3, :cond_2d

    const-string v3, "mediaSessionId"

    iget-object v4, p0, Lcom/google/android/gms/internal/fv;->g:Lcom/google/android/gms/cast/r;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/r;->a()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2d} :catch_36

    :cond_2d
    :goto_2d
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/fv;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    :catch_36
    move-exception v3

    goto :goto_2d
.end method

.method public a(Lcom/google/android/gms/internal/fz;DLorg/json/JSONObject;)J
    .registers 11

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume cannot be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->d()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/fv;->n:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/ga;->a(JLcom/google/android/gms/internal/fz;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/fv;->a(Z)V

    :try_start_37
    const-string v3, "requestId"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "SET_VOLUME"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->j()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "level"

    invoke-virtual {v3, v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "volume"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_62

    const-string v3, "customData"

    invoke-virtual {v0, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_62} :catch_6b

    :cond_62
    :goto_62
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/fv;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    :catch_6b
    move-exception v3

    goto :goto_62
.end method

.method public a(Lcom/google/android/gms/internal/fz;JILorg/json/JSONObject;)J
    .registers 13

    const/4 v6, 0x1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->d()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/fv;->m:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/ga;->a(JLcom/google/android/gms/internal/fz;)V

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/fv;->a(Z)V

    :try_start_12
    const-string v3, "requestId"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "SEEK"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->j()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "currentTime"

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/fo;->a(J)D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-ne p4, v6, :cond_49

    const-string v3, "resumeState"

    const-string v4, "PLAYBACK_START"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_39
    :goto_39
    if-eqz p5, :cond_40

    const-string v3, "customData"

    invoke-virtual {v0, v3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_40} :catch_54

    :cond_40
    :goto_40
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/fv;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    :cond_49
    const/4 v3, 0x2

    if-ne p4, v3, :cond_39

    :try_start_4c
    const-string v3, "resumeState"

    const-string v4, "PLAYBACK_PAUSE"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_53} :catch_54

    goto :goto_39

    :catch_54
    move-exception v3

    goto :goto_40
.end method

.method public a(Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/cast/n;ZJLorg/json/JSONObject;)J
    .registers 13

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->d()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/fv;->i:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/ga;->a(JLcom/google/android/gms/internal/fz;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/fv;->a(Z)V

    :try_start_12
    const-string v3, "requestId"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "LOAD"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "media"

    invoke-virtual {p2}, Lcom/google/android/gms/cast/n;->h()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "autoplay"

    invoke-virtual {v0, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "currentTime"

    invoke-static {p4, p5}, Lcom/google/android/gms/internal/fo;->a(J)D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-eqz p6, :cond_3c

    const-string v3, "customData"

    invoke-virtual {v0, v3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_3c} :catch_45

    :cond_3c
    :goto_3c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/fv;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    :catch_45
    move-exception v3

    goto :goto_3c
.end method

.method public a(Lcom/google/android/gms/internal/fz;Lorg/json/JSONObject;)J
    .registers 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->d()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/fv;->j:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/ga;->a(JLcom/google/android/gms/internal/fz;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/fv;->a(Z)V

    :try_start_12
    const-string v3, "requestId"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "PAUSE"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->j()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_2e

    const-string v3, "customData"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2e} :catch_37

    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/fv;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    :catch_37
    move-exception v3

    goto :goto_2e
.end method

.method public a(Lcom/google/android/gms/internal/fz;ZLorg/json/JSONObject;)J
    .registers 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->d()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/fv;->o:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/ga;->a(JLcom/google/android/gms/internal/fz;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/fv;->a(Z)V

    :try_start_12
    const-string v3, "requestId"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "SET_VOLUME"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->j()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "muted"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "volume"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_3d

    const-string v3, "customData"

    invoke-virtual {v0, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_3d} :catch_46

    :cond_3d
    :goto_3d
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/fv;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    :catch_46
    move-exception v3

    goto :goto_3d
.end method

.method protected a()V
    .registers 1

    return-void
.end method

.method public a(JI)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->i:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ga;->a(JI)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->j:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ga;->a(JI)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->k:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ga;->a(JI)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->l:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ga;->a(JI)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->m:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ga;->a(JI)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->n:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ga;->a(JI)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->o:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ga;->a(JI)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->p:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ga;->a(JI)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 11

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->b:Lcom/google/android/gms/internal/fu;

    const-string v1, "message received: %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestId"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "MEDIA_STATUS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gms/internal/fv;->a(JLorg/json/JSONObject;)V

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->g:Lcom/google/android/gms/cast/r;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->p:Lcom/google/android/gms/internal/ga;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ga;->a(JI)Z
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_4d} :catch_4e

    goto :goto_3d

    :catch_4e
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->b:Lcom/google/android/gms/internal/fu;

    const-string v2, "Message is malformed (%s); ignoring: %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    aput-object p1, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/fu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3d

    :cond_61
    :try_start_61
    const-string v4, "INVALID_PLAYER_STATE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->b:Lcom/google/android/gms/internal/fu;

    const-string v4, "received unexpected error: Invalid Player State."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/fu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->i:Lcom/google/android/gms/internal/ga;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ga;->a(JILorg/json/JSONObject;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->j:Lcom/google/android/gms/internal/ga;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ga;->a(JILorg/json/JSONObject;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->k:Lcom/google/android/gms/internal/ga;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ga;->a(JILorg/json/JSONObject;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->l:Lcom/google/android/gms/internal/ga;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ga;->a(JILorg/json/JSONObject;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->m:Lcom/google/android/gms/internal/ga;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ga;->a(JILorg/json/JSONObject;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->n:Lcom/google/android/gms/internal/ga;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ga;->a(JILorg/json/JSONObject;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->o:Lcom/google/android/gms/internal/ga;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ga;->a(JILorg/json/JSONObject;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->p:Lcom/google/android/gms/internal/ga;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ga;->a(JILorg/json/JSONObject;)Z

    goto :goto_3d

    :cond_aa
    const-string v4, "LOAD_FAILED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    const-string v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->i:Lcom/google/android/gms/internal/ga;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ga;->a(JILorg/json/JSONObject;)Z

    goto/16 :goto_3d

    :cond_c0
    const-string v4, "LOAD_CANCELLED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d6

    const-string v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->i:Lcom/google/android/gms/internal/ga;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ga;->a(JILorg/json/JSONObject;)Z

    goto/16 :goto_3d

    :cond_d6
    const-string v4, "INVALID_REQUEST"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->b:Lcom/google/android/gms/internal/fu;

    const-string v4, "received unexpected error: Invalid Request."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/fu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->i:Lcom/google/android/gms/internal/ga;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ga;->a(JILorg/json/JSONObject;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->j:Lcom/google/android/gms/internal/ga;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ga;->a(JILorg/json/JSONObject;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->k:Lcom/google/android/gms/internal/ga;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ga;->a(JILorg/json/JSONObject;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->l:Lcom/google/android/gms/internal/ga;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ga;->a(JILorg/json/JSONObject;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->m:Lcom/google/android/gms/internal/ga;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ga;->a(JILorg/json/JSONObject;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->n:Lcom/google/android/gms/internal/ga;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ga;->a(JILorg/json/JSONObject;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->o:Lcom/google/android/gms/internal/ga;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ga;->a(JILorg/json/JSONObject;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->p:Lcom/google/android/gms/internal/ga;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ga;->a(JILorg/json/JSONObject;)Z
    :try_end_11e
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_11e} :catch_4e

    goto/16 :goto_3d
.end method

.method public b(Lcom/google/android/gms/internal/fz;Lorg/json/JSONObject;)J
    .registers 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->d()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/fv;->l:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/ga;->a(JLcom/google/android/gms/internal/fz;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/fv;->a(Z)V

    :try_start_12
    const-string v3, "requestId"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "STOP"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->j()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_2e

    const-string v3, "customData"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2e} :catch_37

    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/fv;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    :catch_37
    move-exception v3

    goto :goto_2e
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method public c(Lcom/google/android/gms/internal/fz;Lorg/json/JSONObject;)J
    .registers 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->d()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/fv;->k:Lcom/google/android/gms/internal/ga;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/ga;->a(JLcom/google/android/gms/internal/fz;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/fv;->a(Z)V

    :try_start_12
    const-string v3, "requestId"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "PLAY"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->j()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_2e

    const-string v3, "customData"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2e} :catch_37

    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/fv;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    :catch_37
    move-exception v3

    goto :goto_2e
.end method

.method public e()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/fv;->k()V

    return-void
.end method

.method public f()J
    .registers 12

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->i()Lcom/google/android/gms/cast/n;

    move-result-object v8

    if-nez v8, :cond_9

    :cond_8
    :goto_8
    return-wide v2

    :cond_9
    iget-wide v0, p0, Lcom/google/android/gms/internal/fv;->f:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->g:Lcom/google/android/gms/cast/r;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/r;->d()D

    move-result-wide v9

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->g:Lcom/google/android/gms/cast/r;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/r;->f()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->g:Lcom/google/android/gms/cast/r;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/r;->b()I

    move-result v0

    const-wide/16 v6, 0x0

    cmpl-double v1, v9, v6

    if-eqz v1, :cond_2a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    :cond_2a
    move-wide v2, v4

    goto :goto_8

    :cond_2c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/google/android/gms/internal/fv;->f:J

    sub-long/2addr v0, v6

    cmp-long v6, v0, v2

    if-gez v6, :cond_54

    move-wide v6, v2

    :goto_38
    cmp-long v0, v6, v2

    if-nez v0, :cond_3e

    move-wide v2, v4

    goto :goto_8

    :cond_3e
    invoke-virtual {v8}, Lcom/google/android/gms/cast/n;->e()J

    move-result-wide v0

    long-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v6, v4, v0

    if-lez v6, :cond_4c

    :goto_4a
    move-wide v2, v0

    goto :goto_8

    :cond_4c
    cmp-long v0, v4, v2

    if-gez v0, :cond_52

    move-wide v0, v2

    goto :goto_4a

    :cond_52
    move-wide v0, v4

    goto :goto_4a

    :cond_54
    move-wide v6, v0

    goto :goto_38
.end method

.method public g()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->i()Lcom/google/android/gms/cast/n;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/cast/n;->e()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public h()Lcom/google/android/gms/cast/r;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->g:Lcom/google/android/gms/cast/r;

    return-object v0
.end method

.method public i()Lcom/google/android/gms/cast/n;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->g:Lcom/google/android/gms/cast/r;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->g:Lcom/google/android/gms/cast/r;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/r;->e()Lcom/google/android/gms/cast/n;

    move-result-object v0

    goto :goto_5
.end method

.method public j()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->g:Lcom/google/android/gms/cast/r;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current media session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/fv;->g:Lcom/google/android/gms/cast/r;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/r;->a()J

    move-result-wide v0

    return-wide v0
.end method
