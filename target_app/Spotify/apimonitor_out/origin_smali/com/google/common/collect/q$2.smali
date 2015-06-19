.class final Lcom/google/common/collect/q$2;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/q;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c",
        "<",
        "Lcom/google/common/collect/u",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/q;


# direct methods
.method constructor <init>(Lcom/google/common/collect/q;Lcom/google/common/collect/u;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/q$2;->a:Lcom/google/common/collect/q;

    invoke-direct {p0, p2}, Lcom/google/common/collect/c;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lcom/google/common/collect/u;

    invoke-interface {p1}, Lcom/google/common/collect/u;->f()Lcom/google/common/collect/u;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/q$2;->a:Lcom/google/common/collect/q;

    iget-object v1, v1, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/u;

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return-object v0
.end method
