.class public final Lcom/instagram/b/d/c;
.super Ljava/lang/Object;
.source "PerfLogger.java"


# static fields
.field private static a:Lcom/instagram/b/d/c;


# instance fields
.field private final b:Lcom/facebook/d/f/a;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/b/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/instagram/common/analytics/d;


# direct methods
.method private constructor <init>(Lcom/instagram/common/analytics/d;Lcom/facebook/d/f/a;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    const/high16 v2, 0x3f40

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/instagram/b/d/c;->c:Ljava/util/Map;

    iput-object p2, p0, Lcom/instagram/b/d/c;->b:Lcom/facebook/d/f/a;

    iput-object p1, p0, Lcom/instagram/b/d/c;->d:Lcom/instagram/common/analytics/d;

    return-void
.end method

.method public static a()Lcom/instagram/b/d/c;
    .registers 1

    sget-object v0, Lcom/instagram/b/d/c;->a:Lcom/instagram/b/d/c;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/instagram/common/analytics/e;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/instagram/common/analytics/e;->i_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method public static a(Lcom/instagram/common/analytics/d;Lcom/facebook/d/f/a;)V
    .registers 3

    new-instance v0, Lcom/instagram/b/d/c;

    invoke-direct {v0, p0, p1}, Lcom/instagram/b/d/c;-><init>(Lcom/instagram/common/analytics/d;Lcom/facebook/d/f/a;)V

    sput-object v0, Lcom/instagram/b/d/c;->a:Lcom/instagram/b/d/c;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/instagram/common/analytics/e;J)V
    .registers 8

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;Lcom/instagram/common/analytics/e;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/instagram/b/d/d;

    invoke-direct {v1, p1, v2, p3, p4}, Lcom/instagram/b/d/d;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;J)V

    iget-object v2, p0, Lcom/instagram/b/d/c;->c:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/instagram/common/analytics/e;J)V
    .registers 9

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;Lcom/instagram/common/analytics/e;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/b/d/c;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/b/d/d;

    if-nez v0, :cond_10

    :goto_f
    return-void

    :cond_10
    invoke-virtual {v0}, Lcom/instagram/b/d/d;->a()J

    move-result-wide v1

    sub-long v1, p3, v1

    invoke-virtual {v0}, Lcom/instagram/b/d/d;->b()Lcom/instagram/b/d/b;

    move-result-object v0

    const-string v3, "elapsed_time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/instagram/b/d/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    iget-object v1, p0, Lcom/instagram/b/d/c;->d:Lcom/instagram/common/analytics/d;

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    goto :goto_f
.end method

.method private d(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/b/d/c;->b:Lcom/facebook/d/f/a;

    invoke-interface {v1}, Lcom/facebook/d/f/a;->now()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;Lcom/instagram/common/analytics/e;J)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/b/d/c;->b:Lcom/facebook/d/f/a;

    invoke-interface {v1}, Lcom/facebook/d/f/a;->now()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;Lcom/instagram/common/analytics/e;J)V

    return-void
.end method

.method private f(Ljava/lang/String;)Lcom/instagram/b/d/a;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;Lcom/instagram/common/analytics/e;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/instagram/b/d/c;->c:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_d
    return-object v0

    :cond_e
    new-instance v1, Lcom/instagram/b/d/e;

    iget-object v0, p0, Lcom/instagram/b/d/c;->c:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/b/d/d;

    invoke-direct {v1, v0}, Lcom/instagram/b/d/e;-><init>(Lcom/instagram/b/d/d;)V

    move-object v0, v1

    goto :goto_d
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/b/d/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/b/d/c;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/instagram/b/d/a;
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/b/d/c;->f(Ljava/lang/String;)Lcom/instagram/b/d/a;

    move-result-object v0

    return-object v0
.end method
