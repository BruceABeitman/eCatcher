.class public Lcom/bbm/ui/c/fh;
.super Landroid/app/Fragment;
.source "ProfileUpdatesFragment.java"


# instance fields
.field protected final a:Lcom/bbm/d/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/fh;->a:Lcom/bbm/d/a;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/bbm/ui/c/fk;
    .registers 5

    new-instance v0, Lcom/bbm/ui/c/fk;

    invoke-virtual {p0}, Lcom/bbm/ui/c/fh;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/bbm/ui/c/fh;->b(Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/bbm/ui/c/fk;-><init>(Lcom/bbm/ui/c/fh;Landroid/content/Context;Lcom/bbm/j/r;)V

    return-object v0
.end method

.method protected final b(Ljava/lang/String;)Lcom/bbm/j/r;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/d/fz;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/ui/c/fi;

    iget-object v1, p0, Lcom/bbm/ui/c/fh;->a:Lcom/bbm/d/a;

    invoke-virtual {v1}, Lcom/bbm/d/a;->F()Lcom/bbm/j/w;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/bbm/ui/c/fi;-><init>(Lcom/bbm/ui/c/fh;Lcom/bbm/j/r;Ljava/lang/String;)V

    new-instance v1, Lcom/bbm/ui/c/fj;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/c/fj;-><init>(Lcom/bbm/ui/c/fh;Lcom/bbm/j/r;)V

    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    const v0, 0x7f030094

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v0, "onCreateView"

    const-class v2, Lcom/bbm/ui/c/fh;

    invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/bbm/ui/c/fh;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/bbm/ui/c/fh;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "user_uri"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_21
    invoke-virtual {p0, v0}, Lcom/bbm/ui/c/fh;->a(Ljava/lang/String;)Lcom/bbm/ui/c/fk;

    move-result-object v2

    const v0, 0x7f0a03b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v2, 0x7f0a03b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-object v1

    :cond_3c
    const-string v0, ""

    goto :goto_21
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string v0, "onResume"

    const-class v1, Lcom/bbm/ui/c/fh;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/fh;->a:Lcom/bbm/d/a;

    const-string v1, "hasNewUpdate"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
