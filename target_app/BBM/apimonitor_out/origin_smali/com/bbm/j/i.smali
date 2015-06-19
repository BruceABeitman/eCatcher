.class public final Lcom/bbm/j/i;
.super Ljava/lang/Object;
.source "ObservableHelper.java"


# instance fields
.field protected final a:Lcom/bbm/util/fj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/fj",
            "<",
            "Lcom/bbm/j/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbm/util/fj;

    invoke-direct {v0}, Lcom/bbm/util/fj;-><init>()V

    iput-object v0, p0, Lcom/bbm/j/i;->a:Lcom/bbm/util/fj;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/bbm/j/i;->a:Lcom/bbm/util/fj;

    invoke-virtual {v0}, Lcom/bbm/util/fj;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/j/h;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/j/h;

    invoke-interface {v0}, Lcom/bbm/j/h;->a()V

    goto :goto_1f

    :cond_2f
    return-void
.end method

.method public final a(Lcom/bbm/j/h;)V
    .registers 3

    invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/j/i;->a:Lcom/bbm/util/fj;

    invoke-virtual {v0, p1}, Lcom/bbm/util/fj;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/bbm/j/h;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/j/i;->a:Lcom/bbm/util/fj;

    invoke-virtual {v0, p1}, Lcom/bbm/util/fj;->b(Ljava/lang/Object;)V

    return-void
.end method
