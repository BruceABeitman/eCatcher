.class Lcom/twidroid/fragments/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/b/a;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twidroid/fragments/b/a;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/b/a;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/b/a$1;->b:Lcom/twidroid/fragments/b/a;

    iput-object p2, p0, Lcom/twidroid/fragments/b/a$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/fragments/b/a$1;->a:Landroid/view/View;

    const v1, 0x7f0901d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twidroid/fragments/b/a$1;->b:Lcom/twidroid/fragments/b/a;

    invoke-static {v1}, Lcom/twidroid/fragments/b/a;->a(Lcom/twidroid/fragments/b/a;)Lcom/twidroid/model/twitter/User;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twidroid/model/twitter/User;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/twidroid/fragments/b/a$1;->b:Lcom/twidroid/fragments/b/a;

    invoke-static {v1}, Lcom/twidroid/fragments/b/a;->b(Lcom/twidroid/fragments/b/a;)Lcom/twidroid/fragments/b/b;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/twidroid/fragments/b/a$1;->b:Lcom/twidroid/fragments/b/a;

    invoke-static {v1}, Lcom/twidroid/fragments/b/a;->b(Lcom/twidroid/fragments/b/a;)Lcom/twidroid/fragments/b/b;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/twidroid/fragments/b/b;->h(Ljava/lang/String;)V

    :cond_34
    return-void
.end method
