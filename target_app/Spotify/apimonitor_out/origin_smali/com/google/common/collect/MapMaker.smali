.class public final Lcom/google/common/collect/MapMaker;
.super Lcom/google/common/collect/GenericMapMaker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/GenericMapMaker",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field b:Z

.field c:I

.field d:I

.field e:I

.field f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field h:J

.field i:J

.field j:Lcom/google/common/collect/MapMaker$RemovalCause;

.field k:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/google/common/base/k;


# direct methods
.method public constructor <init>()V
    .registers 4

    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/common/collect/GenericMapMaker;-><init>()V

    iput v0, p0, Lcom/google/common/collect/MapMaker;->c:I

    iput v0, p0, Lcom/google/common/collect/MapMaker;->d:I

    iput v0, p0, Lcom/google/common/collect/MapMaker;->e:I

    iput-wide v1, p0, Lcom/google/common/collect/MapMaker;->h:J

    iput-wide v1, p0, Lcom/google/common/collect/MapMaker;->i:J

    return-void
.end method


# virtual methods
.method final b()I
    .registers 3

    iget v0, p0, Lcom/google/common/collect/MapMaker;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x10

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/google/common/collect/MapMaker;->c:I

    goto :goto_7
.end method

.method final c()I
    .registers 3

    iget v0, p0, Lcom/google/common/collect/MapMaker;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x4

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/google/common/collect/MapMaker;->d:I

    goto :goto_6
.end method

.method final d()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->a:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public final e()Lcom/google/common/collect/MapMaker;
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v3, Lcom/google/common/collect/MapMakerInternalMap$Strength;->c:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-nez v0, :cond_23

    move v0, v1

    :goto_9
    const-string v4, "Value strength was already set to %s"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    aput-object v6, v5, v2

    invoke-static {v0, v4, v5}, Lcom/google/common/base/i;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->a:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq v3, v0, :cond_22

    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->b:Z

    :cond_22
    return-object p0

    :cond_23
    move v0, v2

    goto :goto_9
.end method

.method public final f()Ljava/util/concurrent/ConcurrentMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->b:Z

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->b()I

    move-result v1

    const/high16 v2, 0x3f40

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->c()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->j:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_20

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    :goto_1d
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    goto :goto_13

    :cond_20
    new-instance v0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    goto :goto_1d
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    const-wide/16 v5, -0x1

    const/4 v3, -0x1

    invoke-static {p0}, Lcom/google/common/base/e;->a(Ljava/lang/Object;)Lcom/google/common/base/f;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/MapMaker;->c:I

    if-eq v1, v3, :cond_12

    const-string v1, "initialCapacity"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;I)Lcom/google/common/base/f;

    :cond_12
    iget v1, p0, Lcom/google/common/collect/MapMaker;->d:I

    if-eq v1, v3, :cond_1d

    const-string v1, "concurrencyLevel"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;I)Lcom/google/common/base/f;

    :cond_1d
    iget v1, p0, Lcom/google/common/collect/MapMaker;->e:I

    if-eq v1, v3, :cond_28

    const-string v1, "maximumSize"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;I)Lcom/google/common/base/f;

    :cond_28
    iget-wide v1, p0, Lcom/google/common/collect/MapMaker;->h:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_48

    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->h:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    :cond_48
    iget-wide v1, p0, Lcom/google/common/collect/MapMaker;->i:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_68

    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->i:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    :cond_68
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_7b

    const-string v1, "keyStrength"

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    :cond_7b
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_8e

    const-string v1, "valueStrength"

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;

    :cond_8e
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->k:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_97

    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/f;->a(Ljava/lang/Object;)Lcom/google/common/base/f;

    :cond_97
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->a:Lcom/google/common/collect/l;

    if-eqz v1, :cond_a0

    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lcom/google/common/base/f;->a(Ljava/lang/Object;)Lcom/google/common/base/f;

    :cond_a0
    invoke-virtual {v0}, Lcom/google/common/base/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
