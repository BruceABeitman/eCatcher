.class Lcom/twidroid/fragments/b$4;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/b;->a(Lcom/twidroid/model/twitter/c;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/model/twitter/c;

.field final synthetic b:Lcom/twidroid/fragments/b;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/b;Lcom/twidroid/model/twitter/c;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    iput-object p2, p0, Lcom/twidroid/fragments/b$4;->a:Lcom/twidroid/model/twitter/c;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/twidroid/fragments/b$a;)Ljava/lang/Object;
    .registers 7

    const/4 v4, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    invoke-static {v0}, Lcom/twidroid/fragments/b;->n(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/b$4;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V

    iget-object v0, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    invoke-static {v0}, Lcom/twidroid/fragments/b;->o(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/b$4;->a:Lcom/twidroid/model/twitter/c;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/twidroid/fragments/b$a;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/twidroid/fragments/b$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/lang/String;)Lcom/twidroid/model/twitter/DirectMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    invoke-static {v1}, Lcom/twidroid/fragments/b;->p(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/twidroid/model/twitter/DirectMessage;->D:J

    iget-object v1, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    invoke-static {v1}, Lcom/twidroid/fragments/b;->q(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/DirectMessage;I)Z

    const-string v1, "directmessage"

    const-string v2, "send"

    invoke-static {v1, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    invoke-static {v1}, Lcom/twidroid/fragments/b;->r(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    iget-object v2, v2, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v2}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_60} :catch_61

    :goto_60
    return-object v0

    :catch_61
    move-exception v0

    const-string v1, "SingleDirectMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::sendTweet DM messag failed reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/twidroid/fragments/b$a;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/twidroid/fragments/b;->a(Lcom/twidroid/fragments/b;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_60
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/twidroid/fragments/b$a;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/b$4;->a([Lcom/twidroid/fragments/b$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/ubermedia/a/a;->a()V

    iget-object v0, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/b;->N()V

    iget-object v0, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twidroid/fragments/b;->e(Lcom/twidroid/fragments/b;Z)Z

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    invoke-static {v0, v2}, Lcom/twidroid/fragments/b;->f(Lcom/twidroid/fragments/b;Z)Z

    iget-object v0, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/b;->M()V

    if-eqz p1, :cond_4f

    instance-of v0, p1, Lcom/twidroid/model/twitter/DirectMessage;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    iget-object v0, v0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    const v1, 0x7f0c0157

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Lcom/twidroid/fragments/base/o;I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    invoke-virtual {v1}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    iget-object v0, v0, Lcom/twidroid/fragments/b;->a:Ljava/util/List;

    check-cast p1, Lcom/twidroid/model/twitter/DirectMessage;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    iget-object v0, v0, Lcom/twidroid/fragments/b;->f:Lcom/twidroid/ui/a/v;

    iget-object v1, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    iget-object v1, v1, Lcom/twidroid/fragments/b;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/v;->c(Ljava/util/List;)V

    iget-object v0, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    iget-object v0, v0, Lcom/twidroid/fragments/b;->f:Lcom/twidroid/ui/a/v;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/v;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/twidroid/fragments/b$4;->b:Lcom/twidroid/fragments/b;

    invoke-static {v0}, Lcom/twidroid/fragments/b;->s(Lcom/twidroid/fragments/b;)V

    :cond_4f
    return-void
.end method
