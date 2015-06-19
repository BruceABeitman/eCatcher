.class final Lcom/google/common/collect/s;
.super Lcom/google/common/collect/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/MapMakerInternalMap",
        "<TK;TV;>.com/google/common/collect/r<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/s;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/r;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/s;->a()Lcom/google/common/collect/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/aj;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
