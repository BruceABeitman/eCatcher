.class final Lcom/google/b/b/bj;
.super Lcom/google/b/b/r;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/b/b/r",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/b/b/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/b/b/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/b/b/bi;


# direct methods
.method constructor <init>(Lcom/google/b/b/bi;)V
    .registers 2

    iput-object p1, p0, Lcom/google/b/b/bj;->c:Lcom/google/b/b/bi;

    invoke-direct {p0}, Lcom/google/b/b/r;-><init>()V

    iput-object p0, p0, Lcom/google/b/b/bj;->a:Lcom/google/b/b/am;

    iput-object p0, p0, Lcom/google/b/b/bj;->b:Lcom/google/b/b/am;

    return-void
.end method


# virtual methods
.method public final b(J)V
    .registers 3

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

    iput-object p1, p0, Lcom/google/b/b/bj;->a:Lcom/google/b/b/am;

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

    iput-object p1, p0, Lcom/google/b/b/bj;->b:Lcom/google/b/b/am;

    return-void
.end method

.method public final h()J
    .registers 3

    const-wide v0, 0x7fffffffffffffffL

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

    iget-object v0, p0, Lcom/google/b/b/bj;->a:Lcom/google/b/b/am;

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

    iget-object v0, p0, Lcom/google/b/b/bj;->b:Lcom/google/b/b/am;

    return-object v0
.end method
