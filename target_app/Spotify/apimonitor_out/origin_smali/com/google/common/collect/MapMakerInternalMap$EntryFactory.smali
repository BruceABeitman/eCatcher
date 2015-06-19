.class abstract enum Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum b:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum c:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum d:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum e:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum f:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum g:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum h:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field static final i:[[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field private static final synthetic j:[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$1;

    const-string v1, "STRONG"

    invoke-direct {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->a:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$2;

    const-string v1, "STRONG_EXPIRABLE"

    invoke-direct {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->b:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$3;

    const-string v1, "STRONG_EVICTABLE"

    invoke-direct {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->c:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$4;

    const-string v1, "STRONG_EXPIRABLE_EVICTABLE"

    invoke-direct {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->d:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$5;

    const-string v1, "WEAK"

    invoke-direct {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->e:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$6;

    const-string v1, "WEAK_EXPIRABLE"

    invoke-direct {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->f:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$7;

    const-string v1, "WEAK_EVICTABLE"

    invoke-direct {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->g:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$8;

    const-string v1, "WEAK_EXPIRABLE_EVICTABLE"

    invoke-direct {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->h:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->a:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->b:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->c:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->d:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->e:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->f:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->g:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->h:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->j:[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    new-array v0, v6, [[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    new-array v1, v7, [Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->a:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->b:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->c:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->d:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    new-array v1, v3, [Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v4

    new-array v1, v7, [Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->e:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->f:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->g:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->h:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->i:[[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Lcom/google/common/collect/MapMakerInternalMap$Strength;ZZ)Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    const/4 v1, 0x1

    :goto_4
    if-eqz p2, :cond_7

    const/4 v0, 0x2

    :cond_7
    or-int/2addr v0, v1

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->i:[[Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    return-object v0

    :cond_13
    move v1, v0

    goto :goto_4
.end method

.method static a(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)V
    .registers 4
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

    invoke-interface {p0}, Lcom/google/common/collect/u;->e()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/google/common/collect/u;->a(J)V

    invoke-interface {p0}, Lcom/google/common/collect/u;->g()Lcom/google/common/collect/u;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)V

    invoke-interface {p0}, Lcom/google/common/collect/u;->f()Lcom/google/common/collect/u;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)V

    invoke-static {p0}, Lcom/google/common/collect/MapMakerInternalMap;->b(Lcom/google/common/collect/u;)V

    return-void
.end method

.method static b(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)V
    .registers 3
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

    invoke-interface {p0}, Lcom/google/common/collect/u;->i()Lcom/google/common/collect/u;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->b(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)V

    invoke-interface {p0}, Lcom/google/common/collect/u;->h()Lcom/google/common/collect/u;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/MapMakerInternalMap;->b(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)V

    invoke-static {p0}, Lcom/google/common/collect/MapMakerInternalMap;->c(Lcom/google/common/collect/u;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/u;Lcom/google/common/collect/u;)Lcom/google/common/collect/u;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/common/collect/u;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/common/collect/u;->c()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/u;)Lcom/google/common/collect/u;

    move-result-object v0

    return-object v0
.end method

.method abstract a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/u;)Lcom/google/common/collect/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation
.end method
