.class Lcom/twidroid/widget/f;
.super Lcom/twidroid/widget/a;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/twidroid/widget/BaseWidget;


# direct methods
.method constructor <init>(Lcom/twidroid/widget/BaseWidget;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/widget/f;->c:Lcom/twidroid/widget/BaseWidget;

    invoke-direct {p0, p1}, Lcom/twidroid/widget/a;-><init>(Lcom/twidroid/widget/BaseWidget;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;)V
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_28

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twidroid/widget/o;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/twidroid/widget/f;->c:Lcom/twidroid/widget/BaseWidget;

    sget-object v1, Lcom/twidroid/widget/BaseWidget;->u:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/twidroid/widget/BaseWidget;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/widget/o;->b(ZI)V

    :goto_27
    return-void

    :cond_28
    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/twidroid/widget/o;->b(ZI)V

    goto :goto_27
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/twidroid/widget/f;->a(Ljava/util/List;)V

    return-void
.end method
