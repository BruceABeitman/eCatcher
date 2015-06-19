.class final Lcom/google/b/b/t;
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

.field final synthetic c:Lcom/google/b/b/s;


# direct methods
.method constructor <init>(Lcom/google/b/b/s;)V
    .registers 2

    iput-object p1, p0, Lcom/google/b/b/t;->c:Lcom/google/b/b/s;

    invoke-direct {p0}, Lcom/google/b/b/r;-><init>()V

    iput-object p0, p0, Lcom/google/b/b/t;->a:Lcom/google/b/b/am;

    iput-object p0, p0, Lcom/google/b/b/t;->b:Lcom/google/b/b/am;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 3

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

    iput-object p1, p0, Lcom/google/b/b/t;->a:Lcom/google/b/b/am;

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

    iput-object p1, p0, Lcom/google/b/b/t;->b:Lcom/google/b/b/am;

    return-void
.end method

.method public final e()J
    .registers 3

    const-wide v0, 0x7fffffffffffffffL

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

    iget-object v0, p0, Lcom/google/b/b/t;->a:Lcom/google/b/b/am;

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

    iget-object v0, p0, Lcom/google/b/b/t;->b:Lcom/google/b/b/am;

    return-object v0
.end method
