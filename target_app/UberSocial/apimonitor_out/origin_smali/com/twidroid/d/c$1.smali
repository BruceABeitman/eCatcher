.class final Lcom/twidroid/d/c$1;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/d/c;->a(Landroid/view/View;Lcom/twidroid/d/d;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twidroid/d/d;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/twidroid/d/d;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/d/c$1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/twidroid/d/c$1;->b:Lcom/twidroid/d/d;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/view/View;)Landroid/view/View;
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_10

    array-length v0, p1

    if-lez v0, :cond_10

    aget-object v0, p1, v3

    move-object v1, v0

    :goto_9
    invoke-static {}, Lcom/twidroid/d/c;->a()Lcom/twidroid/b/a/b;

    move-result-object v2

    if-nez v2, :cond_13

    :cond_f
    return-object v1

    :cond_10
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_9

    :cond_13
    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->c()V

    const/4 v0, -0x1

    invoke-virtual {v2, v0, v3}, Lcom/twidroid/b/a/b;->a(II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/d/k;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/twidroid/b/a/b;->b(Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/twidroid/d/c$1;->a([Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .registers 2

    invoke-super {p0}, Lcom/ubermedia/a/a;->a()V

    iget-object v0, p0, Lcom/twidroid/d/c$1;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/twidroid/d/c;->a(Landroid/view/View;)V

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/twidroid/d/c;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/twidroid/d/c$1;->b:Lcom/twidroid/d/d;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/twidroid/d/c$1;->b:Lcom/twidroid/d/d;

    invoke-interface {v0}, Lcom/twidroid/d/d;->a()V

    :cond_f
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/twidroid/d/c$1;->a(Landroid/view/View;)V

    return-void
.end method
