.class final Lcom/google/common/collect/ah;
.super Lcom/google/common/collect/ae;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ae",
        "<TK;TV;>;",
        "Lcom/google/common/collect/u",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile d:J

.field e:Lcom/google/common/collect/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/common/collect/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lcom/google/common/collect/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field h:Lcom/google/common/collect/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/u;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ae;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/u;)V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/ah;->d:J

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->g()Lcom/google/common/collect/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ah;->e:Lcom/google/common/collect/u;

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->g()Lcom/google/common/collect/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ah;->f:Lcom/google/common/collect/u;

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->g()Lcom/google/common/collect/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ah;->g:Lcom/google/common/collect/u;

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->g()Lcom/google/common/collect/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ah;->h:Lcom/google/common/collect/u;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/common/collect/ah;->d:J

    return-void
.end method

.method public final a(Lcom/google/common/collect/u;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/ah;->e:Lcom/google/common/collect/u;

    return-void
.end method

.method public final b(Lcom/google/common/collect/u;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/ah;->f:Lcom/google/common/collect/u;

    return-void
.end method

.method public final c(Lcom/google/common/collect/u;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/ah;->g:Lcom/google/common/collect/u;

    return-void
.end method

.method public final d(Lcom/google/common/collect/u;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/ah;->h:Lcom/google/common/collect/u;

    return-void
.end method

.method public final e()J
    .registers 3

    iget-wide v0, p0, Lcom/google/common/collect/ah;->d:J

    return-wide v0
.end method

.method public final f()Lcom/google/common/collect/u;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ah;->e:Lcom/google/common/collect/u;

    return-object v0
.end method

.method public final g()Lcom/google/common/collect/u;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ah;->f:Lcom/google/common/collect/u;

    return-object v0
.end method

.method public final h()Lcom/google/common/collect/u;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ah;->g:Lcom/google/common/collect/u;

    return-object v0
.end method

.method public final i()Lcom/google/common/collect/u;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ah;->h:Lcom/google/common/collect/u;

    return-object v0
.end method
