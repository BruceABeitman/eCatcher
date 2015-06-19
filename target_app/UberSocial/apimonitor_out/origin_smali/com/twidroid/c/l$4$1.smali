.class Lcom/twidroid/c/l$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/l$4;->onShow(Landroid/content/DialogInterface;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/twidroid/c/l$4;


# direct methods
.method constructor <init>(Lcom/twidroid/c/l$4;Landroid/widget/Button;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/c/l$4$1;->b:Lcom/twidroid/c/l$4;

    iput-object p2, p0, Lcom/twidroid/c/l$4$1;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/c/l$4$1;->a:Landroid/widget/Button;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/twidroid/c/l$4$1;->a:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    :cond_1a
    iget-object v0, p0, Lcom/twidroid/c/l$4$1;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
