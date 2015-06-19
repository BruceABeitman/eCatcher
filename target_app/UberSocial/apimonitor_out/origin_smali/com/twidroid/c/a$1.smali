.class Lcom/twidroid/c/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/a;->onStart()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/a;


# direct methods
.method constructor <init>(Lcom/twidroid/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/a$1;->a:Lcom/twidroid/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/c/a$1;->a:Lcom/twidroid/c/a;

    iget-object v0, v0, Lcom/twidroid/c/a;->e:Lcom/twidroid/c/b;

    iget-object v1, p0, Lcom/twidroid/c/a$1;->a:Lcom/twidroid/c/a;

    iget-object v1, v1, Lcom/twidroid/c/a;->b:Lcom/twidroid/ui/widgets/AccountSpinner;

    invoke-virtual {v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccount()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/c/a$1;->a:Lcom/twidroid/c/a;

    iget-object v2, v2, Lcom/twidroid/c/a;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/c/b;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/c/a$1;->a:Lcom/twidroid/c/a;

    invoke-virtual {v0}, Lcom/twidroid/c/a;->dismiss()V

    return-void
.end method
