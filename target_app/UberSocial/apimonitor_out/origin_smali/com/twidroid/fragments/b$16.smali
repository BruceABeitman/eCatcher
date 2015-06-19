.class Lcom/twidroid/fragments/b$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/b;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/b;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/b$16;->a:Lcom/twidroid/fragments/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/twidroid/fragments/b$16;->a:Lcom/twidroid/fragments/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/b$16;->a:Lcom/twidroid/fragments/b;

    const v2, 0x7f0c0173

    invoke-virtual {v1, v2}, Lcom/twidroid/fragments/b;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twidroid/fragments/b$16;->a:Lcom/twidroid/fragments/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/b$16;->a:Lcom/twidroid/fragments/b;

    invoke-static {v1}, Lcom/twidroid/fragments/b;->e(Lcom/twidroid/fragments/b;)Lcom/twidroid/d/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/d/v;->aD()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/fragments/b$16;->a:Lcom/twidroid/fragments/b;

    iget-object v2, v2, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/twidroid/net/c/g;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/EditText;Lcom/twidroid/net/c/h;)Lcom/twidroid/net/c/j;

    move-result-object v0

    new-instance v1, Lcom/twidroid/net/c/i;

    invoke-direct {v1}, Lcom/twidroid/net/c/i;-><init>()V

    new-array v2, v4, [Lcom/twidroid/net/c/j;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twidroid/net/c/i;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method
