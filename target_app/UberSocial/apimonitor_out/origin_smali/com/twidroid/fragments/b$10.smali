.class Lcom/twidroid/fragments/b$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/b;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/b;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/b$10;->a:Lcom/twidroid/fragments/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    if-ne p2, v0, :cond_12

    iget-object v0, p0, Lcom/twidroid/fragments/b$10;->a:Lcom/twidroid/fragments/b;

    iget-object v1, p0, Lcom/twidroid/fragments/b$10;->a:Lcom/twidroid/fragments/b;

    iget-object v1, v1, Lcom/twidroid/fragments/b;->j:Lcom/twidroid/ui/widgets/AccountSpinner;

    invoke-virtual {v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccount()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/b;->a(Lcom/twidroid/model/twitter/c;)V

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
