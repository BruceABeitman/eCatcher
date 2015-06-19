.class final Lcom/google/common/collect/i$8;
.super Lcom/google/common/collect/ao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i;->a(Ljava/util/Iterator;Lcom/google/common/base/b;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ao",
        "<TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/b;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/b;)V
    .registers 3

    iput-object p2, p0, Lcom/google/common/collect/i$8;->a:Lcom/google/common/base/b;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ao;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i$8;->a:Lcom/google/common/base/b;

    invoke-interface {v0, p1}, Lcom/google/common/base/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
