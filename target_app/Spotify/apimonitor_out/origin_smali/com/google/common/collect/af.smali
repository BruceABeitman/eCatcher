.class final Lcom/google/common/collect/af;
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
.field d:Lcom/google/common/collect/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Lcom/google/common/collect/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/u;)V
    .registers 6
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

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->g()Lcom/google/common/collect/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/af;->d:Lcom/google/common/collect/u;

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->g()Lcom/google/common/collect/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/af;->e:Lcom/google/common/collect/u;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/common/collect/u;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/af;->d:Lcom/google/common/collect/u;

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

    iput-object p1, p0, Lcom/google/common/collect/af;->e:Lcom/google/common/collect/u;

    return-void
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

    iget-object v0, p0, Lcom/google/common/collect/af;->d:Lcom/google/common/collect/u;

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

    iget-object v0, p0, Lcom/google/common/collect/af;->e:Lcom/google/common/collect/u;

    return-object v0
.end method
