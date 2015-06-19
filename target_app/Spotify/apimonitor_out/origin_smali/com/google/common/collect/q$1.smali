.class final Lcom/google/common/collect/q$1;
.super Lcom/google/common/collect/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/m",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/q;


# direct methods
.method constructor <init>(Lcom/google/common/collect/q;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/q$1;->c:Lcom/google/common/collect/q;

    invoke-direct {p0}, Lcom/google/common/collect/m;-><init>()V

    iput-object p0, p0, Lcom/google/common/collect/q$1;->a:Lcom/google/common/collect/u;

    iput-object p0, p0, Lcom/google/common/collect/q$1;->b:Lcom/google/common/collect/u;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 3

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

    iput-object p1, p0, Lcom/google/common/collect/q$1;->a:Lcom/google/common/collect/u;

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

    iput-object p1, p0, Lcom/google/common/collect/q$1;->b:Lcom/google/common/collect/u;

    return-void
.end method

.method public final e()J
    .registers 3

    const-wide v0, 0x7fffffffffffffffL

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

    iget-object v0, p0, Lcom/google/common/collect/q$1;->a:Lcom/google/common/collect/u;

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

    iget-object v0, p0, Lcom/google/common/collect/q$1;->b:Lcom/google/common/collect/u;

    return-object v0
.end method
