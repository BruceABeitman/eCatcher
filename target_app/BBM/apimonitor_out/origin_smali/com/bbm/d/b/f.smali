.class public abstract Lcom/bbm/d/b/f;
.super Lcom/bbm/d/a/a/a;
.source "ComputedList.java"

# interfaces
.implements Lcom/bbm/j/j;
.implements Lcom/bbm/j/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Output:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bbm/d/a/a/a;",
        "Lcom/bbm/j/j",
        "<TOutput;>;",
        "Lcom/bbm/j/r",
        "<",
        "Ljava/util/List",
        "<TOutput;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bbm/j/h;

.field public e:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Ljava/util/List",
            "<TOutput;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/bbm/d/a/a/a;-><init>()V

    new-instance v0, Lcom/bbm/d/b/g;

    invoke-direct {v0, p0}, Lcom/bbm/d/b/g;-><init>(Lcom/bbm/d/b/f;)V

    iput-object v0, p0, Lcom/bbm/d/b/f;->e:Lcom/bbm/j/a;

    new-instance v0, Lcom/bbm/d/b/h;

    invoke-direct {v0, p0}, Lcom/bbm/d/b/h;-><init>(Lcom/bbm/d/b/f;)V

    iput-object v0, p0, Lcom/bbm/d/b/f;->a:Lcom/bbm/j/h;

    iget-object v0, p0, Lcom/bbm/d/b/f;->e:Lcom/bbm/j/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bbm/j/a;->c:Z

    iget-object v0, p0, Lcom/bbm/d/b/f;->e:Lcom/bbm/j/a;

    iget-object v1, p0, Lcom/bbm/d/b/f;->a:Lcom/bbm/j/h;

    invoke-virtual {v0, v1}, Lcom/bbm/j/a;->a(Lcom/bbm/j/h;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TOutput;"
        }
    .end annotation

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-object v0, p0, Lcom/bbm/d/b/f;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TOutput;>;"
        }
    .end annotation
.end method

.method public final d()I
    .registers 2

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-object v0, p0, Lcom/bbm/d/b/f;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic e()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/bbm/d/b/f;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TOutput;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-object v0, p0, Lcom/bbm/d/b/f;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final g()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/b/f;->e:Lcom/bbm/j/a;

    iget-object v1, p0, Lcom/bbm/d/b/f;->a:Lcom/bbm/j/h;

    invoke-virtual {v0, v1}, Lcom/bbm/j/a;->b(Lcom/bbm/j/h;)V

    iget-object v0, p0, Lcom/bbm/d/b/f;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->d()V

    return-void
.end method
