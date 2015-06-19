.class final Lcom/google/b/c/aw;
.super Lcom/google/b/c/av;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/b/c/aa",
        "<TK;TV;>.com/google/b/c/av<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/b/c/aa;


# direct methods
.method constructor <init>(Lcom/google/b/c/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/google/b/c/aw;->a:Lcom/google/b/c/aa;

    invoke-direct {p0, p1}, Lcom/google/b/c/av;-><init>(Lcom/google/b/c/aa;)V

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

    invoke-virtual {p0}, Lcom/google/b/c/aw;->a()Lcom/google/b/c/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/c/bt;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
