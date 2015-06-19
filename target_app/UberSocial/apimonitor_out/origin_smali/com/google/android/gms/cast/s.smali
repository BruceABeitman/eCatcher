.class public Lcom/google/android/gms/cast/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/h;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4


# instance fields
.field private final i:Ljava/lang/Object;

.field private final j:Lcom/google/android/gms/internal/fv;

.field private final k:Lcom/google/android/gms/cast/w;

.field private l:Lcom/google/android/gms/cast/u;

.field private m:Lcom/google/android/gms/cast/v;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/s;->i:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/cast/w;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/w;-><init>(Lcom/google/android/gms/cast/s;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/s;->k:Lcom/google/android/gms/cast/w;

    new-instance v0, Lcom/google/android/gms/cast/s$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/s$1;-><init>(Lcom/google/android/gms/cast/s;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/s;->j:Lcom/google/android/gms/internal/fv;

    iget-object v0, p0, Lcom/google/android/gms/cast/s;->j:Lcom/google/android/gms/internal/fv;

    iget-object v1, p0, Lcom/google/android/gms/cast/s;->k:Lcom/google/android/gms/cast/w;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/internal/fx;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/s;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/cast/s;->f()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/cast/s;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/cast/s;->g()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/cast/s;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/s;->i:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/s;->k:Lcom/google/android/gms/cast/w;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/internal/fv;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/s;->j:Lcom/google/android/gms/internal/fv;

    return-object v0
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/s;->m:Lcom/google/android/gms/cast/v;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/cast/s;->m:Lcom/google/android/gms/cast/v;

    invoke-interface {v0}, Lcom/google/android/gms/cast/v;->a()V

    :cond_9
    return-void
.end method

.method private g()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/s;->l:Lcom/google/android/gms/cast/u;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/cast/s;->l:Lcom/google/android/gms/cast/u;

    invoke-interface {v0}, Lcom/google/android/gms/cast/u;->a()V

    :cond_9
    return-void
.end method


# virtual methods
.method public a()J
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/cast/s;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/cast/s;->j:Lcom/google/android/gms/internal/fv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fv;->f()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/s;->a(Lcom/google/android/gms/common/api/e;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;D)Lcom/google/android/gms/common/api/j;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/cast/s;->a(Lcom/google/android/gms/common/api/e;DLorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;DLorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;
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
    new-instance v0, Lcom/google/android/gms/cast/s$7;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/cast/s$7;-><init>(Lcom/google/android/gms/cast/s;Lcom/google/android/gms/common/api/e;DLorg/json/JSONObject;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;J)Lcom/google/android/gms/common/api/j;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/cast/s;->a(Lcom/google/android/gms/common/api/e;JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;JI)Lcom/google/android/gms/common/api/j;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/cast/s;->a(Lcom/google/android/gms/common/api/e;JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;
    .registers 13

    new-instance v0, Lcom/google/android/gms/cast/s$6;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/cast/s$6;-><init>(Lcom/google/android/gms/cast/s;Lcom/google/android/gms/common/api/e;JILorg/json/JSONObject;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/cast/n;)Lcom/google/android/gms/common/api/j;
    .registers 10

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/s;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/cast/n;ZJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/cast/n;Z)Lcom/google/android/gms/common/api/j;
    .registers 11

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/s;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/cast/n;ZJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/cast/n;ZJ)Lcom/google/android/gms/common/api/j;
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/s;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/cast/n;ZJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/cast/n;ZJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;
    .registers 15

    new-instance v0, Lcom/google/android/gms/cast/s$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/cast/s$2;-><init>(Lcom/google/android/gms/cast/s;Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/cast/n;ZJLorg/json/JSONObject;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;
    .registers 4

    new-instance v0, Lcom/google/android/gms/cast/s$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/cast/s$3;-><init>(Lcom/google/android/gms/cast/s;Lcom/google/android/gms/common/api/e;Lorg/json/JSONObject;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Z)Lcom/google/android/gms/common/api/j;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/cast/s;->a(Lcom/google/android/gms/common/api/e;ZLorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;ZLorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;
    .registers 5

    new-instance v0, Lcom/google/android/gms/cast/s$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/cast/s$8;-><init>(Lcom/google/android/gms/cast/s;Lcom/google/android/gms/common/api/e;ZLorg/json/JSONObject;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/cast/s;->j:Lcom/google/android/gms/internal/fv;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/fv;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/cast/u;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/cast/s;->l:Lcom/google/android/gms/cast/u;

    return-void
.end method

.method public a(Lcom/google/android/gms/cast/v;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/cast/s;->m:Lcom/google/android/gms/cast/v;

    return-void
.end method

.method public b()J
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/cast/s;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/cast/s;->j:Lcom/google/android/gms/internal/fv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fv;->g()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public b(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/s;->b(Lcom/google/android/gms/common/api/e;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/e;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;
    .registers 4

    new-instance v0, Lcom/google/android/gms/cast/s$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/cast/s$4;-><init>(Lcom/google/android/gms/cast/s;Lcom/google/android/gms/common/api/e;Lorg/json/JSONObject;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/android/gms/cast/r;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/cast/s;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/cast/s;->j:Lcom/google/android/gms/internal/fv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fv;->h()Lcom/google/android/gms/cast/r;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public c(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/s;->c(Lcom/google/android/gms/common/api/e;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/android/gms/common/api/e;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;
    .registers 4

    new-instance v0, Lcom/google/android/gms/cast/s$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/cast/s$5;-><init>(Lcom/google/android/gms/cast/s;Lcom/google/android/gms/common/api/e;Lorg/json/JSONObject;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/android/gms/cast/n;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/cast/s;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/cast/s;->j:Lcom/google/android/gms/internal/fv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fv;->i()Lcom/google/android/gms/cast/n;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public d(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
    .registers 3

    new-instance v0, Lcom/google/android/gms/cast/s$9;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/s$9;-><init>(Lcom/google/android/gms/cast/s;Lcom/google/android/gms/common/api/e;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/s;->j:Lcom/google/android/gms/internal/fv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fv;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
