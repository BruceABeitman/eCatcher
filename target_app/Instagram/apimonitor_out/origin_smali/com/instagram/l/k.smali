.class public Lcom/instagram/l/k;
.super Ljava/lang/Object;
.source "QuickExperimentManagerImpl.java"

# interfaces
.implements Lcom/instagram/l/i;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/l/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/instagram/l/e;

.field private final d:Lcom/instagram/l/e;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/instagram/common/u/b/a;

.field private final h:Lcom/instagram/common/a/a/m;

.field private final i:Lcom/instagram/l/l;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/l/k;

    sput-object v0, Lcom/instagram/l/k;->a:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/instagram/l/k;->e:Ljava/util/Set;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/instagram/l/k;->f:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/instagram/l/k;->j:Z

    iput-object p1, p0, Lcom/instagram/l/k;->b:Ljava/lang/String;

    sget-object v1, Lcom/instagram/l/c;->j:[Lcom/instagram/l/b;

    array-length v2, v1

    :goto_19
    if-ge v0, v2, :cond_29

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/instagram/l/k;->e:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/instagram/l/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_29
    if-nez p1, :cond_54

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/l/k;->c:Lcom/instagram/l/e;

    :goto_2e
    invoke-static {}, Lcom/instagram/l/p;->a()Lcom/instagram/l/f;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/l/k;->d:Lcom/instagram/l/e;

    invoke-static {}, Lcom/instagram/common/o/a;->d()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/instagram/l/k;->d:Lcom/instagram/l/e;

    invoke-interface {v0}, Lcom/instagram/l/e;->a()V

    :cond_3f
    invoke-static {}, Lcom/instagram/common/u/b/a;->a()Lcom/instagram/common/u/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/l/k;->g:Lcom/instagram/common/u/b/a;

    new-instance v0, Lcom/instagram/common/a/a/q;

    invoke-direct {v0}, Lcom/instagram/common/a/a/q;-><init>()V

    iput-object v0, p0, Lcom/instagram/l/k;->h:Lcom/instagram/common/a/a/m;

    new-instance v0, Lcom/instagram/l/l;

    invoke-direct {v0, p0}, Lcom/instagram/l/l;-><init>(Lcom/instagram/l/k;)V

    iput-object v0, p0, Lcom/instagram/l/k;->i:Lcom/instagram/l/l;

    return-void

    :cond_54
    new-instance v0, Lcom/instagram/l/f;

    invoke-direct {p0}, Lcom/instagram/l/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/l/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/l/k;->c:Lcom/instagram/l/e;

    iget-object v0, p0, Lcom/instagram/l/k;->c:Lcom/instagram/l/e;

    invoke-interface {v0}, Lcom/instagram/l/e;->a()V

    goto :goto_2e
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/l/k;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/l/k;)Lcom/instagram/l/e;
    .registers 2

    iget-object v0, p0, Lcom/instagram/l/k;->c:Lcom/instagram/l/e;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/l/k;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/l/k;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/l/k;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/instagram/l/k;->e:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/l/k;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/l/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static c()V
    .registers 2

    new-instance v0, Lcom/instagram/l/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/l/n;-><init>(B)V

    invoke-static {v0}, Lcom/instagram/l/j;->a(Lcom/instagram/common/i/a/h;)V

    return-void
.end method

.method static synthetic d(Lcom/instagram/l/k;)Lcom/instagram/common/a/a/m;
    .registers 2

    iget-object v0, p0, Lcom/instagram/l/k;->h:Lcom/instagram/common/a/a/m;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/Class;
    .registers 1

    sget-object v0, Lcom/instagram/l/k;->a:Ljava/lang/Class;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "quick_experiment_cache_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/l/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/l/b;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/instagram/l/k;->b:Ljava/lang/String;

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/instagram/l/b;->e()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/instagram/l/k;->d:Lcom/instagram/l/e;

    invoke-virtual {p1}, Lcom/instagram/l/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/l/e;->a(Ljava/lang/String;)Lcom/instagram/l/d;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lcom/instagram/l/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/l/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {p1}, Lcom/instagram/l/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/l/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_2c
    iget-object v0, p0, Lcom/instagram/l/k;->c:Lcom/instagram/l/e;

    invoke-virtual {p1}, Lcom/instagram/l/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/l/e;->a(Ljava/lang/String;)Lcom/instagram/l/d;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Lcom/instagram/l/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/l/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_41
    invoke-virtual {p1}, Lcom/instagram/l/b;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public final a()V
    .registers 7

    iget-object v0, p0, Lcom/instagram/l/k;->b:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/instagram/l/k;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/instagram/l/k;->g:Lcom/instagram/common/u/b/a;

    invoke-static {}, Lcom/instagram/common/u/b/a;->d()J

    move-result-wide v0

    iget-object v2, p0, Lcom/instagram/l/k;->c:Lcom/instagram/l/e;

    invoke-interface {v2}, Lcom/instagram/l/e;->b()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x6ddd00

    cmp-long v2, v2, v4

    if-ltz v2, :cond_c

    iget-object v2, p0, Lcom/instagram/l/k;->c:Lcom/instagram/l/e;

    invoke-interface {v2, v0, v1}, Lcom/instagram/l/e;->a(J)V

    iget-object v0, p0, Lcom/instagram/l/k;->c:Lcom/instagram/l/e;

    invoke-interface {v0}, Lcom/instagram/l/e;->c()V

    new-instance v0, Lcom/instagram/l/a/d;

    iget-object v1, p0, Lcom/instagram/l/k;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/l/k;->e:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lcom/instagram/l/a/d;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    new-instance v1, Lcom/instagram/l/o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/instagram/l/o;-><init>(Lcom/instagram/l/k;B)V

    invoke-virtual {v0, v1}, Lcom/instagram/l/a/d;->a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;

    iget-object v1, p0, Lcom/instagram/l/k;->h:Lcom/instagram/common/a/a/m;

    invoke-interface {v1, v0}, Lcom/instagram/common/a/a/m;->a(Lcom/instagram/common/a/a/a;)V

    goto :goto_c
.end method

.method public final b(Lcom/instagram/l/b;)V
    .registers 9

    iget-object v0, p0, Lcom/instagram/l/k;->b:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/instagram/l/k;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/l/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/instagram/l/k;->g:Lcom/instagram/common/u/b/a;

    invoke-static {}, Lcom/instagram/common/u/b/a;->c()J

    move-result-wide v1

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/32 v5, 0x6ddd00

    cmp-long v0, v3, v5

    if-ltz v0, :cond_4

    :cond_26
    iget-object v0, p0, Lcom/instagram/l/k;->c:Lcom/instagram/l/e;

    invoke-virtual {p1}, Lcom/instagram/l/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/instagram/l/e;->a(Ljava/lang/String;)Lcom/instagram/l/d;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/instagram/l/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/instagram/l/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/instagram/l/k;->i:Lcom/instagram/l/l;

    invoke-virtual {p1}, Lcom/instagram/l/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/instagram/l/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/l/k;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/l/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/l/k;->j:Z

    return v0
.end method
