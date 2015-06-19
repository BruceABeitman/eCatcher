.class Lcom/twidroid/fragments/e/ab$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/ab;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/ab;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/ab$8;->a:Lcom/twidroid/fragments/e/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/twidroid/fragments/e/ab$8;->a:Lcom/twidroid/fragments/e/ab;

    invoke-static {v1}, Lcom/twidroid/fragments/e/ab;->a(Lcom/twidroid/fragments/e/ab;)V

    iget-object v1, p0, Lcom/twidroid/fragments/e/ab$8;->a:Lcom/twidroid/fragments/e/ab;

    invoke-static {v1}, Lcom/twidroid/fragments/e/ab;->b(Lcom/twidroid/fragments/e/ab;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_2b

    iget-object v1, p0, Lcom/twidroid/fragments/e/ab$8;->a:Lcom/twidroid/fragments/e/ab;

    iget-object v2, p0, Lcom/twidroid/fragments/e/ab$8;->a:Lcom/twidroid/fragments/e/ab;

    iget-object v2, v2, Lcom/twidroid/fragments/e/ab;->n:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v2}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twidroid/fragments/e/ab;->a(Lcom/twidroid/fragments/e/ab;Ljava/lang/String;)V

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method
