.class final Lcom/google/b/b/u;
.super Lcom/google/b/c/b;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/b/c/b",
        "<",
        "Lcom/google/b/b/am",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/b/b/s;


# direct methods
.method constructor <init>(Lcom/google/b/b/s;Lcom/google/b/b/am;)V
    .registers 3

    iput-object p1, p0, Lcom/google/b/b/u;->a:Lcom/google/b/b/s;

    invoke-direct {p0, p2}, Lcom/google/b/c/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lcom/google/b/b/am;

    invoke-interface {p1}, Lcom/google/b/b/am;->f()Lcom/google/b/b/am;

    move-result-object v0

    iget-object v1, p0, Lcom/google/b/b/u;->a:Lcom/google/b/b/s;

    iget-object v1, v1, Lcom/google/b/b/s;->a:Lcom/google/b/b/am;

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return-object v0
.end method
