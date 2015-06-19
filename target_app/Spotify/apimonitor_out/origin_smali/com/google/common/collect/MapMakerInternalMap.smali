.class Lcom/google/common/collect/MapMakerInternalMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final e:Lcom/google/common/collect/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ac",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/logging/Logger;


# instance fields
.field final transient a:I

.field final transient b:I

.field final transient c:[Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final concurrencyLevel:I

.field final transient d:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field transient g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field transient i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field final maximumSize:I

.field final removalListener:Lcom/google/common/collect/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/l",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final removalNotificationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/MapMaker$RemovalNotification",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final ticker:Lcom/google/common/base/k;

.field final valueEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap;->j:Ljava/util/logging/Logger;

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$1;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap;->e:Lcom/google/common/collect/ac;

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$2;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$2;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap;->f:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/MapMaker;)V
    .registers 10

    const-wide/16 v2, 0x0

    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->c()I

    move-result v0

    const/high16 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->d()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v0, p1, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->a:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v0, p1, Lcom/google/common/collect/MapMaker;->k:Lcom/google/common/base/Equivalence;

    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->d()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->a()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->a()Lcom/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    iget v0, p1, Lcom/google/common/collect/MapMaker;->e:I

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    iget-wide v0, p1, Lcom/google/common/collect/MapMaker;->i:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_b1

    move-wide v0, v2

    :goto_4c
    iput-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    iget-wide v0, p1, Lcom/google/common/collect/MapMaker;->h:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_b4

    :goto_54
    iput-wide v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->b()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->a()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->a(Lcom/google/common/collect/MapMakerInternalMap$Strength;ZZ)Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->d:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    iget-object v0, p1, Lcom/google/common/collect/MapMaker;->l:Lcom/google/common/base/k;

    invoke-static {}, Lcom/google/common/base/k;->b()Lcom/google/common/base/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/k;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->ticker:Lcom/google/common/base/k;

    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->a()Lcom/google/common/collect/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalListener:Lcom/google/common/collect/l;

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalListener:Lcom/google/common/collect/l;

    sget-object v1, Lcom/google/common/collect/GenericMapMaker$NullListener;->a:Lcom/google/common/collect/GenericMapMaker$NullListener;

    if-ne v0, v1, :cond_b7

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap;->f:Ljava/util/Queue;

    :goto_82
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->b()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->a()Z

    move-result v1

    if-eqz v1, :cond_9a

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_9a
    move v1, v4

    move v2, v5

    :goto_9c
    iget v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    if-ge v1, v3, :cond_bd

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->a()Z

    move-result v3

    if-eqz v3, :cond_ac

    mul-int/lit8 v3, v1, 0x2

    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    if-gt v3, v6, :cond_bd

    :cond_ac
    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_9c

    :cond_b1
    iget-wide v0, p1, Lcom/google/common/collect/MapMaker;->i:J

    goto :goto_4c

    :cond_b4
    iget-wide v2, p1, Lcom/google/common/collect/MapMaker;->h:J

    goto :goto_54

    :cond_b7
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_82

    :cond_bd
    rsub-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->a:I

    new-array v2, v1, [Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iput-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    div-int v2, v0, v1

    mul-int v3, v2, v1

    if-ge v3, v0, :cond_10b

    add-int/lit8 v0, v2, 0x1

    :goto_d1
    if-ge v4, v0, :cond_d6

    shl-int/lit8 v4, v4, 0x1

    goto :goto_d1

    :cond_d6
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->a()Z

    move-result v0

    if-eqz v0, :cond_f9

    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    rem-int v1, v2, v1

    :goto_e5
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v2, v2

    if-ge v5, v2, :cond_10a

    if-ne v5, v1, :cond_ee

    add-int/lit8 v0, v0, -0x1

    :cond_ee
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-direct {p0, v4, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v3

    aput-object v3, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e5

    :cond_f9
    :goto_f9
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v0, v0

    if-ge v5, v0, :cond_10a

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    const/4 v1, -0x1

    invoke-direct {p0, v4, v1}, Lcom/google/common/collect/MapMakerInternalMap;->a(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    aput-object v1, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_f9

    :cond_10a
    return-void

    :cond_10b
    move v0, v2

    goto :goto_d1
.end method

.method private a(Ljava/lang/Object;)I
    .registers 5

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Equivalence;->a(Ljava/lang/Object;)I

    move-result v0

    shl-int/lit8 v1, v0, 0xf

    xor-int/lit16 v1, v1, -0x3283

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method private a(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method static a(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/common/collect/u;->a(Lcom/google/common/collect/u;)V

    invoke-interface {p1, p0}, Lcom/google/common/collect/u;->b(Lcom/google/common/collect/u;)V

    return-void
.end method

.method static a(Lcom/google/common/collect/u;J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/u;->e()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static b(Lcom/google/common/collect/u;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->a:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    invoke-interface {p0, v0}, Lcom/google/common/collect/u;->a(Lcom/google/common/collect/u;)V

    invoke-interface {p0, v0}, Lcom/google/common/collect/u;->b(Lcom/google/common/collect/u;)V

    return-void
.end method

.method static b(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/common/collect/u;->c(Lcom/google/common/collect/u;)V

    invoke-interface {p1, p0}, Lcom/google/common/collect/u;->d(Lcom/google/common/collect/u;)V

    return-void
.end method

.method static c(Lcom/google/common/collect/u;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->a:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    invoke-interface {p0, v0}, Lcom/google/common/collect/u;->c(Lcom/google/common/collect/u;)V

    invoke-interface {p0, v0}, Lcom/google/common/collect/u;->d(Lcom/google/common/collect/u;)V

    return-void
.end method

.method static f()Lcom/google/common/collect/ac;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ac",
            "<TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap;->e:Lcom/google/common/collect/ac;

    return-object v0
.end method

.method static g()Lcom/google/common/collect/u;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->a:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    return-object v0
.end method

.method static h()Ljava/util/Queue;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap;->f:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method final a(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->b:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->a:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method final a()Z
    .registers 3

    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method final a(Lcom/google/common/collect/u;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->ticker:Lcom/google/common/base/k;

    invoke-virtual {v0}, Lcom/google/common/base/k;->a()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/u;J)Z

    move-result v0

    return v0
.end method

.method final b()Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_15

    move v2, v1

    :goto_b
    if-nez v2, :cond_13

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->c()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    move v0, v1

    :cond_14
    return v0

    :cond_15
    move v2, v0

    goto :goto_b
.end method

.method final c()Z
    .registers 5

    iget-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public clear()V
    .registers 10

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v5, v4

    move v3, v1

    :goto_5
    if-ge v3, v5, :cond_94

    aget-object v6, v4, v3

    iget v0, v6, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_87

    invoke-virtual {v6}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    :try_start_10
    iget-object v7, v6, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object v0, v6, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap;->f:Ljava/util/Queue;

    if-eq v0, v2, :cond_3a

    move v2, v1

    :goto_1b
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_3a

    invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/u;

    :goto_27
    if-eqz v0, :cond_36

    invoke-interface {v0}, Lcom/google/common/collect/u;->a()Lcom/google/common/collect/ac;

    sget-object v8, Lcom/google/common/collect/MapMaker$RemovalCause;->a:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {v6, v0, v8}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/u;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    invoke-interface {v0}, Lcom/google/common/collect/u;->b()Lcom/google/common/collect/u;

    move-result-object v0

    goto :goto_27

    :cond_36
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    :cond_3a
    move v0, v1

    :goto_3b
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_48

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_48
    iget-object v0, v6, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->d()Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_50
    iget-object v0, v6, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_50

    :cond_58
    iget-object v0, v6, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->e()Z

    move-result v0

    if-eqz v0, :cond_68

    :cond_60
    iget-object v0, v6, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_60

    :cond_68
    iget-object v0, v6, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, v6, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, v6, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget v0, v6, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    const/4 v0, 0x0

    iput v0, v6, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_81
    .catchall {:try_start_10 .. :try_end_81} :catchall_8c

    invoke-virtual {v6}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {v6}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    :cond_87
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_5

    :catchall_8c
    move-exception v0

    invoke-virtual {v6}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {v6}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    throw v0

    :cond_94
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_3
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 16

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget-object v9, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    move v6, v0

    move-wide v7, v4

    :goto_b
    const/4 v0, 0x3

    if-ge v6, v0, :cond_84

    const-wide/16 v1, 0x0

    array-length v10, v9

    const/4 v0, 0x0

    move v3, v0

    move-wide v4, v1

    :goto_14
    if-ge v3, v10, :cond_7b

    aget-object v11, v9, v3

    iget v0, v11, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    iget-object v12, v11, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    move v1, v0

    :goto_1e
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_71

    invoke-virtual {v12, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/u;

    move-object v2, v0

    :goto_2b
    if-eqz v2, :cond_6d

    invoke-interface {v2}, Lcom/google/common/collect/u;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_43

    invoke-virtual {v11}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a()V

    const/4 v0, 0x0

    :cond_37
    :goto_37
    if-eqz v0, :cond_67

    iget-object v13, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v13, p1, v0}, Lcom/google/common/base/Equivalence;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    const/4 v0, 0x1

    goto :goto_3

    :cond_43
    invoke-interface {v2}, Lcom/google/common/collect/u;->a()Lcom/google/common/collect/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ac;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_52

    invoke-virtual {v11}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a()V

    const/4 v0, 0x0

    goto :goto_37

    :cond_52
    iget-object v13, v11, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v13}, Lcom/google/common/collect/MapMakerInternalMap;->b()Z

    move-result v13

    if-eqz v13, :cond_37

    iget-object v13, v11, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v13, v2}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/u;)Z

    move-result v13

    if-eqz v13, :cond_37

    invoke-virtual {v11}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b()V

    const/4 v0, 0x0

    goto :goto_37

    :cond_67
    invoke-interface {v2}, Lcom/google/common/collect/u;->b()Lcom/google/common/collect/u;

    move-result-object v0

    move-object v2, v0

    goto :goto_2b

    :cond_6d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    :cond_71
    iget v0, v11, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v0, v0

    add-long v1, v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-wide v4, v1

    goto :goto_14

    :cond_7b
    cmp-long v0, v4, v7

    if-eqz v0, :cond_84

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-wide v7, v4

    goto :goto_b

    :cond_84
    const/4 v0, 0x0

    goto/16 :goto_3
.end method

.method final d()Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->a:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final e()Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->a:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->i:Ljava/util/Set;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/common/collect/o;

    invoke-direct {v0, p0}, Lcom/google/common/collect/o;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->i:Ljava/util/Set;

    goto :goto_4
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method final i()V
    .registers 5

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMaker$RemovalNotification;

    if-eqz v0, :cond_18

    :try_start_a
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalListener:Lcom/google/common/collect/l;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_c} :catch_d

    goto :goto_0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap;->j:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_18
    return-void
.end method

.method public isEmpty()Z
    .registers 10

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move v0, v1

    move-wide v2, v4

    :goto_7
    array-length v7, v6

    if-ge v0, v7, :cond_1a

    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v7, :cond_11

    :cond_10
    :goto_10
    return v1

    :cond_11
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v7, v7

    add-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1a
    cmp-long v0, v2, v4

    if-eqz v0, :cond_35

    move v0, v1

    :goto_1f
    array-length v7, v6

    if-ge v0, v7, :cond_31

    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-nez v7, :cond_10

    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v7, v7

    sub-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_31
    cmp-long v0, v2, v4

    if-nez v0, :cond_10

    :cond_35
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->g:Ljava/util/Set;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/common/collect/t;

    invoke-direct {v0, p0}, Lcom/google/common/collect/t;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->g:Ljava/util/Set;

    goto :goto_4
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_20
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method public size()I
    .registers 7

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_5
    array-length v4, v3

    if-ge v0, v4, :cond_11

    aget-object v4, v3, v0

    iget v4, v4, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    invoke-static {v1, v2}, Lcom/google/common/a/a;->a(J)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->h:Ljava/util/Collection;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/common/collect/ad;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ad;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->h:Ljava/util/Collection;

    goto :goto_4
.end method
