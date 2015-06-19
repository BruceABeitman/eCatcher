.class final Lcom/squareup/okhttp/internal/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/squareup/okhttp/internal/a/n;


# instance fields
.field b:J

.field private c:Lcom/squareup/okhttp/internal/a/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/squareup/okhttp/internal/a/n;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/a/n;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/internal/a/n;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/squareup/okhttp/internal/a/m;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/n;->c:Lcom/squareup/okhttp/internal/a/m;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/n;->c:Lcom/squareup/okhttp/internal/a/m;

    iget-object v1, v0, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;

    iput-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->c:Lcom/squareup/okhttp/internal/a/m;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;

    iget-wide v1, p0, Lcom/squareup/okhttp/internal/a/n;->b:J

    const-wide/16 v3, 0x800

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/squareup/okhttp/internal/a/n;->b:J

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1e

    :goto_16
    return-object v0

    :cond_17
    monitor-exit p0

    new-instance v0, Lcom/squareup/okhttp/internal/a/m;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/a/m;-><init>()V

    goto :goto_16

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/squareup/okhttp/internal/a/m;)V
    .registers 8

    const-wide/16 v4, 0x800

    iget-object v0, p1, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;

    if-nez v0, :cond_a

    iget-object v0, p1, Lcom/squareup/okhttp/internal/a/m;->e:Lcom/squareup/okhttp/internal/a/m;

    if-eqz v0, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_10
    monitor-enter p0

    :try_start_11
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/n;->b:J

    add-long/2addr v0, v4

    const-wide/32 v2, 0x10000

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    monitor-exit p0

    :goto_1c
    return-void

    :cond_1d
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/n;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/a/n;->b:J

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/n;->c:Lcom/squareup/okhttp/internal/a/m;

    iput-object v0, p1, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;

    const/4 v0, 0x0

    iput v0, p1, Lcom/squareup/okhttp/internal/a/m;->c:I

    iput v0, p1, Lcom/squareup/okhttp/internal/a/m;->b:I

    iput-object p1, p0, Lcom/squareup/okhttp/internal/a/n;->c:Lcom/squareup/okhttp/internal/a/m;

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2f

    goto :goto_1c

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
