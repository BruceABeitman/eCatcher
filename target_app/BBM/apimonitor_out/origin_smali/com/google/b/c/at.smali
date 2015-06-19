.class final Lcom/google/b/c/at;
.super Lcom/google/b/c/ad;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/b/c/ad",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/b/c/az;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/c/az",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/b/c/az;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/c/az",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/b/c/as;


# direct methods
.method constructor <init>(Lcom/google/b/c/as;)V
    .registers 2

    iput-object p1, p0, Lcom/google/b/c/at;->c:Lcom/google/b/c/as;

    invoke-direct {p0}, Lcom/google/b/c/ad;-><init>()V

    iput-object p0, p0, Lcom/google/b/c/at;->a:Lcom/google/b/c/az;

    iput-object p0, p0, Lcom/google/b/c/at;->b:Lcom/google/b/c/az;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 3

    return-void
.end method

.method public final a(Lcom/google/b/c/az;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/c/az",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/b/c/at;->a:Lcom/google/b/c/az;

    return-void
.end method

.method public final b(Lcom/google/b/c/az;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/c/az",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/b/c/at;->b:Lcom/google/b/c/az;

    return-void
.end method

.method public final e()J
    .registers 3

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final f()Lcom/google/b/c/az;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/c/az",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/c/at;->a:Lcom/google/b/c/az;

    return-object v0
.end method

.method public final g()Lcom/google/b/c/az;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/c/az",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/c/at;->b:Lcom/google/b/c/az;

    return-object v0
.end method
