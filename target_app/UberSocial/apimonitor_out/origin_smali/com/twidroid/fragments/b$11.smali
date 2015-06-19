.class Lcom/twidroid/fragments/b$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/b;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/b;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/b$11;->a:Lcom/twidroid/fragments/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7

    const-string v0, "SingleDirectMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "textMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x42

    if-ne p2, v0, :cond_37

    iget-object v0, p0, Lcom/twidroid/fragments/b$11;->a:Lcom/twidroid/fragments/b;

    invoke-static {v0}, Lcom/twidroid/fragments/b;->c(Lcom/twidroid/fragments/b;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->H()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/twidroid/fragments/b$11;->a:Lcom/twidroid/fragments/b;

    iget-object v1, p0, Lcom/twidroid/fragments/b$11;->a:Lcom/twidroid/fragments/b;

    iget-object v1, v1, Lcom/twidroid/fragments/b;->j:Lcom/twidroid/ui/widgets/AccountSpinner;

    invoke-virtual {v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccount()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/b;->a(Lcom/twidroid/model/twitter/c;)V

    :cond_35
    const/4 v0, 0x1

    :goto_36
    return v0

    :cond_37
    const/4 v0, 0x0

    goto :goto_36
.end method
