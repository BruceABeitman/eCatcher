.class Lcom/twidroid/fragments/e/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/a$1;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/DirectMessage;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/model/twitter/DirectMessage;

.field final synthetic b:Lcom/twidroid/fragments/e/a$1;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/a$1;Lcom/twidroid/model/twitter/DirectMessage;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/e/a$1$1;->b:Lcom/twidroid/fragments/e/a$1;

    iput-object p2, p0, Lcom/twidroid/fragments/e/a$1$1;->a:Lcom/twidroid/model/twitter/DirectMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/e/a$1$1;->b:Lcom/twidroid/fragments/e/a$1;

    iget-object v0, v0, Lcom/twidroid/fragments/e/a$1;->a:Lcom/twidroid/fragments/e/a;

    invoke-static {v0}, Lcom/twidroid/fragments/e/a;->g(Lcom/twidroid/fragments/e/a;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twidroid/fragments/e/a$1$1;->a:Lcom/twidroid/model/twitter/DirectMessage;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/a$1$1;->b:Lcom/twidroid/fragments/e/a$1;

    iget-object v0, v0, Lcom/twidroid/fragments/e/a$1;->a:Lcom/twidroid/fragments/e/a;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/a;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/w;

    iget-object v1, p0, Lcom/twidroid/fragments/e/a$1$1;->b:Lcom/twidroid/fragments/e/a$1;

    iget-object v1, v1, Lcom/twidroid/fragments/e/a$1;->a:Lcom/twidroid/fragments/e/a;

    invoke-static {v1}, Lcom/twidroid/fragments/e/a;->h(Lcom/twidroid/fragments/e/a;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/ui/a/w;->a(Ljava/util/List;Lcom/twidroid/ui/a/y;)V

    return-void
.end method
