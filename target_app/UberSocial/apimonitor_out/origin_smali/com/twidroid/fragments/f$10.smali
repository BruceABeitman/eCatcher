.class Lcom/twidroid/fragments/f$10;
.super Lcom/twidroid/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/f;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/twidroid/fragments/f;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/f;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 4

    iput-object p1, p0, Lcom/twidroid/fragments/f$10;->b:Lcom/twidroid/fragments/f;

    iput-object p3, p0, Lcom/twidroid/fragments/f$10;->a:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/twidroid/c/c;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(I)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/fragments/f$10;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/twidroid/fragments/f$10;->b:Lcom/twidroid/fragments/f;

    invoke-static {v1}, Lcom/twidroid/fragments/f;->e(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/twidroid/b/a/b;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    iget-object v1, p0, Lcom/twidroid/fragments/f$10;->b:Lcom/twidroid/fragments/f;

    invoke-static {v1}, Lcom/twidroid/fragments/f;->f(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    iget-object v0, p0, Lcom/twidroid/fragments/f$10;->b:Lcom/twidroid/fragments/f;

    iget-object v1, p0, Lcom/twidroid/fragments/f$10;->b:Lcom/twidroid/fragments/f;

    invoke-static {v1}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;)Lcom/twidroid/model/twitter/Tweet;

    move-result-object v1

    iget-object v1, v1, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/twidroid/fragments/f$10;->b:Lcom/twidroid/fragments/f;

    invoke-static {v2}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;)Lcom/twidroid/model/twitter/Tweet;

    move-result-object v2

    iget-object v2, v2, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;

    iget-wide v2, v2, Lcom/twidroid/model/twitter/User;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/fragments/f;->c(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/f$10;->dismiss()V

    return-void
.end method
