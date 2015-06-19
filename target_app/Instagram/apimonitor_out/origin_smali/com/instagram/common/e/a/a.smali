.class public final Lcom/instagram/common/e/a/a;
.super Ljava/lang/Object;
.source "CacheAnalytics.java"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;

.field private final d:Ljava/util/concurrent/atomic/AtomicLong;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/instagram/common/l/b/a;

.field private g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/e/a/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/e/a/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/e/a/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/e/a/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/instagram/common/e/a/b;

    invoke-direct {v0, p0}, Lcom/instagram/common/e/a/b;-><init>(Lcom/instagram/common/e/a/a;)V

    iput-object v0, p0, Lcom/instagram/common/e/a/a;->f:Lcom/instagram/common/l/b/a;

    const-wide/32 v0, -0x927c0

    iput-wide v0, p0, Lcom/instagram/common/e/a/a;->g:J

    iput-object p1, p0, Lcom/instagram/common/e/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/instagram/common/e/a/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/instagram/common/e/a/a;->g:J

    return-wide v0
.end method

.method static synthetic b(Lcom/instagram/common/e/a/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/common/e/a/a;->d()V

    return-void
.end method

.method private d()V
    .registers 12

    const-wide/32 v9, 0x100000

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/common/e/a/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    iget-object v1, p0, Lcom/instagram/common/e/a/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/instagram/common/e/a/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/instagram/common/e/a/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v4

    invoke-static {}, Lcom/instagram/common/u/b/a;->a()Lcom/instagram/common/u/b/a;

    invoke-static {}, Lcom/instagram/common/u/b/a;->c()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/instagram/common/e/a/a;->g:J

    if-lez v1, :cond_58

    new-instance v6, Lcom/instagram/common/analytics/b;

    const-string v7, "cache_analytics"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v7, "name"

    iget-object v8, p0, Lcom/instagram/common/e/a/a;->e:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v6

    const-string v7, "hits"

    invoke-virtual {v6, v7, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v6, "total"

    invoke-virtual {v0, v6, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "rInMB"

    div-long/2addr v2, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "wInMB"

    div-long v2, v4, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    :cond_58
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    invoke-static {}, Lcom/instagram/common/l/b/b;->a()Lcom/instagram/common/l/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/e/a/a;->f:Lcom/instagram/common/l/b/a;

    invoke-virtual {v0, v1}, Lcom/instagram/common/l/b/b;->a(Lcom/instagram/common/l/b/a;)V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/e/a/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/e/a/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
