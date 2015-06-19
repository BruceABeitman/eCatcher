.class Lcom/twidroid/fragments/b$5;
.super Lcom/twidroid/net/a/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/b;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/b;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/b;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/b$5;->a:Lcom/twidroid/fragments/b;

    invoke-direct {p0, p2}, Lcom/twidroid/net/a/b/c;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    const-string v0, "SingleDirectMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upload progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/b$5;->a:Lcom/twidroid/fragments/b;

    invoke-static {v0}, Lcom/twidroid/fragments/b;->v(Lcom/twidroid/fragments/b;)Lcom/twidroid/net/c/a/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/twidroid/net/c/a/f;->d(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/fragments/b$5;->a:Lcom/twidroid/fragments/b;

    iget-object v0, v0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twidroid/fragments/b$5;->a:Lcom/twidroid/fragments/b;

    iget-object v2, v2, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v2}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/fragments/b$5;->a:Lcom/twidroid/fragments/b;

    invoke-static {v0}, Lcom/twidroid/fragments/b;->u(Lcom/twidroid/fragments/b;)Lcom/twidroid/net/c/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/twidroid/net/c/a/f;->r()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/fragments/b$5;->a:Lcom/twidroid/fragments/b;

    iget-object v1, p0, Lcom/twidroid/fragments/b$5;->a:Lcom/twidroid/fragments/b;

    invoke-virtual {v1}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/twidroid/fragments/b$5;->a:Lcom/twidroid/fragments/b;

    invoke-static {v0}, Lcom/twidroid/fragments/b;->t(Lcom/twidroid/fragments/b;)Lcom/twidroid/net/c/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/twidroid/net/c/a/f;->o()V

    return-void
.end method
