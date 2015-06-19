.class final Lcom/google/b/b/av;
.super Lcom/google/b/b/aw;
.source "LocalCache.java"

# interfaces
.implements Lcom/google/b/b/am;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/b/b/aw",
        "<TK;TV;>;",
        "Lcom/google/b/b/am",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile a:J

.field b:Lcom/google/b/b/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/b/b/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile d:J

.field e:Lcom/google/b/b/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/b/b/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/b/b/am;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/b/b/am",
            "<TK;TV;>;)V"
        }
    .end annotation

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {p0, p1, p2, p3}, Lcom/google/b/b/aw;-><init>(Ljava/lang/Object;ILcom/google/b/b/am;)V

    iput-wide v1, p0, Lcom/google/b/b/av;->a:J

    invoke-static {}, Lcom/google/b/b/n;->k()Lcom/google/b/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/b/av;->b:Lcom/google/b/b/am;

    invoke-static {}, Lcom/google/b/b/n;->k()Lcom/google/b/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/b/av;->c:Lcom/google/b/b/am;

    iput-wide v1, p0, Lcom/google/b/b/av;->d:J

    invoke-static {}, Lcom/google/b/b/n;->k()Lcom/google/b/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/b/av;->e:Lcom/google/b/b/am;

    invoke-static {}, Lcom/google/b/b/n;->k()Lcom/google/b/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/b/av;->f:Lcom/google/b/b/am;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/b/b/av;->a:J

    return-void
.end method

.method public final a(Lcom/google/b/b/am;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/b/am",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/b/b/av;->b:Lcom/google/b/b/am;

    return-void
.end method

.method public final b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/b/b/av;->d:J

    return-void
.end method

.method public final b(Lcom/google/b/b/am;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/b/am",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/b/b/av;->c:Lcom/google/b/b/am;

    return-void
.end method

.method public final c(Lcom/google/b/b/am;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/b/am",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/b/b/av;->e:Lcom/google/b/b/am;

    return-void
.end method

.method public final d(Lcom/google/b/b/am;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/b/am",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/b/b/av;->f:Lcom/google/b/b/am;

    return-void
.end method

.method public final e()J
    .registers 3

    iget-wide v0, p0, Lcom/google/b/b/av;->a:J

    return-wide v0
.end method

.method public final f()Lcom/google/b/b/am;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/b/av;->b:Lcom/google/b/b/am;

    return-object v0
.end method

.method public final g()Lcom/google/b/b/am;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/b/av;->c:Lcom/google/b/b/am;

    return-object v0
.end method

.method public final h()J
    .registers 3

    iget-wide v0, p0, Lcom/google/b/b/av;->d:J

    return-wide v0
.end method

.method public final i()Lcom/google/b/b/am;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/b/av;->e:Lcom/google/b/b/am;

    return-object v0
.end method

.method public final j()Lcom/google/b/b/am;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/b/av;->f:Lcom/google/b/b/am;

    return-object v0
.end method
