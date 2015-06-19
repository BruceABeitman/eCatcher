.class final Lcom/bbm/j/f;
.super Lcom/bbm/j/a;
.source "DelegatingValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/j/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/j/e;


# direct methods
.method constructor <init>(Lcom/bbm/j/e;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/j/f;->a:Lcom/bbm/j/e;

    invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/j/f;->a:Lcom/bbm/j/e;

    iget-object v0, v0, Lcom/bbm/j/e;->a:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bbm/j/f;->a:Lcom/bbm/j/e;

    iget-object v0, v0, Lcom/bbm/j/e;->a:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/j/r;

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/bbm/j/f;->a:Lcom/bbm/j/e;

    iget-object v0, v0, Lcom/bbm/j/e;->b:Ljava/lang/Object;

    goto :goto_18
.end method
