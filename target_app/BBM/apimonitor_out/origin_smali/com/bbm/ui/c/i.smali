.class public Lcom/bbm/ui/c/i;
.super Lcom/bbm/ui/c/a;
.source "BlockedInvitesFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/c/a",
        "<",
        "Lcom/bbm/d/gs;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/bbm/j/r;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/d/gs;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/c/i;->a:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->w()Lcom/bbm/j/w;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/d/gs;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Delete Blocked invites"

    const-class v1, Lcom/bbm/ui/c/i;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gs;

    iget-object v0, v0, Lcom/bbm/d/gs;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-static {v1}, Lcom/bbm/h/aq;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/bbm/ui/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0762

    invoke-virtual {p0, v1}, Lcom/bbm/ui/c/i;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3a
    return-void
.end method

.method final bridge synthetic c(Ljava/lang/Object;)Lcom/bbm/d/a/a;
    .registers 2

    check-cast p1, Lcom/bbm/d/gs;

    return-object p1
.end method

.method final synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lcom/bbm/d/gs;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/bbm/d/gs;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/bbm/d/gs;->a:Lcom/bbm/d/gt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/c/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    const-string v0, "onCreateView"

    const-class v2, Lcom/bbm/ui/c/i;

    invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const v0, 0x7f0a0372

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0e0526

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    return-object v1
.end method
