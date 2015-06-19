.class Lcom/twidroid/fragments/b$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/a/c;

.field final synthetic b:Lcom/twidroid/fragments/b;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/b;Lcom/twidroid/ui/a/c;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/b$13;->b:Lcom/twidroid/fragments/b;

    iput-object p2, p0, Lcom/twidroid/fragments/b$13;->a:Lcom/twidroid/ui/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    iget-object v1, p0, Lcom/twidroid/fragments/b$13;->b:Lcom/twidroid/fragments/b;

    iget-object v0, p0, Lcom/twidroid/fragments/b$13;->a:Lcom/twidroid/ui/a/c;

    invoke-virtual {v0, p3}, Lcom/twidroid/ui/a/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    iput-object v0, v1, Lcom/twidroid/fragments/b;->d:Lcom/twidroid/model/twitter/User;

    return-void
.end method
