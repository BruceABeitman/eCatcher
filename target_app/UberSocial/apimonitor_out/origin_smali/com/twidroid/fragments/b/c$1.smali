.class Lcom/twidroid/fragments/b/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/b/c;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twidroid/fragments/b/c;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/b/c;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/b/c$1;->b:Lcom/twidroid/fragments/b/c;

    iput-object p2, p0, Lcom/twidroid/fragments/b/c$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/fragments/b/c$1;->a:Landroid/view/View;

    const v1, 0x7f0901d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twidroid/fragments/b/c$1;->b:Lcom/twidroid/fragments/b/c;

    invoke-static {v1}, Lcom/twidroid/fragments/b/c;->a(Lcom/twidroid/fragments/b/c;)Lcom/twidroid/fragments/b/d;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/twidroid/fragments/b/c$1;->b:Lcom/twidroid/fragments/b/c;

    invoke-static {v1}, Lcom/twidroid/fragments/b/c;->a(Lcom/twidroid/fragments/b/c;)Lcom/twidroid/fragments/b/d;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/twidroid/fragments/b/d;->c(Ljava/lang/String;)V

    :cond_24
    return-void
.end method
