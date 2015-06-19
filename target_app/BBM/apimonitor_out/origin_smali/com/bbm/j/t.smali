.class public final Lcom/bbm/j/t;
.super Ljava/lang/Object;
.source "SimpleObservableValue.java"

# interfaces
.implements Lcom/bbm/j/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bbm/j/r",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bbm/j/i;

.field private b:Lcom/google/b/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/a/l",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbm/j/i;

    invoke-direct {v0}, Lcom/bbm/j/i;-><init>()V

    iput-object v0, p0, Lcom/bbm/j/t;->a:Lcom/bbm/j/i;

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/j/t;->b:Lcom/google/b/a/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bbm/j/t;-><init>()V

    invoke-virtual {p0, p1}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/j/t;->b:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bbm/j/t;->b:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final a(Lcom/bbm/j/h;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/j/t;->a:Lcom/bbm/j/i;

    invoke-virtual {v0, p1}, Lcom/bbm/j/i;->a(Lcom/bbm/j/h;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/j/t;->b:Lcom/google/b/a/l;

    invoke-virtual {v0, v1}, Lcom/google/b/a/l;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iput-object v0, p0, Lcom/bbm/j/t;->b:Lcom/google/b/a/l;

    iget-object v0, p0, Lcom/bbm/j/t;->a:Lcom/bbm/j/i;

    invoke-virtual {v0}, Lcom/bbm/j/i;->a()V

    :cond_13
    return-void
.end method

.method public final b(Lcom/bbm/j/h;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/j/t;->a:Lcom/bbm/j/i;

    invoke-virtual {v0, p1}, Lcom/bbm/j/i;->b(Lcom/bbm/j/h;)V

    return-void
.end method

.method public final b()Z
    .registers 2

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-object v0, p0, Lcom/bbm/j/t;->b:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    invoke-virtual {p0}, Lcom/bbm/j/t;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
