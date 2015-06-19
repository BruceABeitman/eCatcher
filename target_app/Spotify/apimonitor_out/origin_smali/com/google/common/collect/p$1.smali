.class final Lcom/google/common/collect/p$1;
.super Lcom/google/common/collect/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/p;
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

.field final synthetic c:Lcom/google/common/collect/p;


# direct methods
.method constructor <init>(Lcom/google/common/collect/p;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/p$1;->c:Lcom/google/common/collect/p;

    invoke-direct {p0}, Lcom/google/common/collect/m;-><init>()V

    iput-object p0, p0, Lcom/google/common/collect/p$1;->a:Lcom/google/common/collect/u;

    iput-object p0, p0, Lcom/google/common/collect/p$1;->b:Lcom/google/common/collect/u;

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

    iput-object p1, p0, Lcom/google/common/collect/p$1;->a:Lcom/google/common/collect/u;

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

    iput-object p1, p0, Lcom/google/common/collect/p$1;->b:Lcom/google/common/collect/u;

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

    iget-object v0, p0, Lcom/google/common/collect/p$1;->a:Lcom/google/common/collect/u;

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

    iget-object v0, p0, Lcom/google/common/collect/p$1;->b:Lcom/google/common/collect/u;

    return-object v0
.end method
