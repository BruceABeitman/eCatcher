.class Lcom/facebook/widget/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/facebook/b/m;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Lcom/facebook/bj;ILcom/facebook/b/l;)V
    .registers 9

    iget-object v0, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    invoke-virtual {v0}, Lcom/facebook/b/m;->a()Lcom/facebook/aw;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/facebook/aw;->d()Lcom/facebook/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/bk;->b()Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_16
    new-instance v0, Lcom/facebook/ba;

    invoke-virtual {p0}, Lcom/facebook/widget/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ba;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/facebook/ba;->a(Ljava/lang/String;)Lcom/facebook/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ba;->a()Lcom/facebook/aw;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/aw;->a(Lcom/facebook/aw;)V

    :cond_2a
    invoke-virtual {v0}, Lcom/facebook/aw;->b()Z

    move-result v1

    if-nez v1, :cond_4c

    new-instance v1, Lcom/facebook/bc;

    invoke-direct {v1, p0}, Lcom/facebook/bc;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v1, p2}, Lcom/facebook/bc;->b(Ljava/util/List;)Lcom/facebook/bc;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/facebook/bc;->b(Lcom/facebook/bj;)Lcom/facebook/bc;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/facebook/bc;->b(I)Lcom/facebook/bc;

    move-result-object v1

    sget-object v2, Lcom/facebook/b/l;->b:Lcom/facebook/b/l;

    invoke-virtual {v2, p5}, Lcom/facebook/b/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v0, v1}, Lcom/facebook/aw;->b(Lcom/facebook/bc;)V

    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    invoke-virtual {v0, v1}, Lcom/facebook/aw;->a(Lcom/facebook/bc;)V

    goto :goto_4c
.end method


# virtual methods
.method protected final a()Lcom/facebook/aw;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    invoke-virtual {v0}, Lcom/facebook/b/m;->a()Lcom/facebook/aw;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Lcom/facebook/aw;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    invoke-virtual {v0, p1}, Lcom/facebook/b/m;->a(Lcom/facebook/aw;)V

    :cond_9
    return-void
.end method

.method protected a(Lcom/facebook/bk;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/util/List;)V
    .registers 5

    sget-object v0, Lcom/facebook/bj;->a:Lcom/facebook/bj;

    const v1, 0xface

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/widget/a;->a(Ljava/lang/String;Ljava/util/List;Lcom/facebook/bj;I)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/util/List;Lcom/facebook/bj;I)V
    .registers 11

    sget-object v5, Lcom/facebook/b/l;->a:Lcom/facebook/b/l;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/a;->a(Ljava/lang/String;Ljava/util/List;Lcom/facebook/bj;ILcom/facebook/b/l;)V

    return-void
.end method

.method protected final b(Ljava/lang/String;Ljava/util/List;)V
    .registers 5

    sget-object v0, Lcom/facebook/bj;->a:Lcom/facebook/bj;

    const v1, 0xface

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/widget/a;->b(Ljava/lang/String;Ljava/util/List;Lcom/facebook/bj;I)V

    return-void
.end method

.method protected final b(Ljava/lang/String;Ljava/util/List;Lcom/facebook/bj;I)V
    .registers 11

    sget-object v5, Lcom/facebook/b/l;->b:Lcom/facebook/b/l;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/a;->a(Ljava/lang/String;Ljava/util/List;Lcom/facebook/bj;ILcom/facebook/b/l;)V

    return-void
.end method

.method protected final b()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    invoke-virtual {v1}, Lcom/facebook/b/m;->b()Lcom/facebook/aw;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method protected final c()Lcom/facebook/bk;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    invoke-virtual {v1}, Lcom/facebook/b/m;->a()Lcom/facebook/aw;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/facebook/aw;->d()Lcom/facebook/bk;

    move-result-object v0

    :cond_11
    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    invoke-virtual {v1}, Lcom/facebook/b/m;->b()Lcom/facebook/aw;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/facebook/aw;->f()Ljava/lang/String;

    move-result-object v0

    :cond_11
    return-object v0
.end method

.method protected final e()Ljava/util/Date;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    invoke-virtual {v1}, Lcom/facebook/b/m;->b()Lcom/facebook/aw;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/facebook/aw;->g()Ljava/util/Date;

    move-result-object v0

    :cond_11
    return-object v0
.end method

.method protected final f()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    invoke-virtual {v0}, Lcom/facebook/b/m;->b()Lcom/facebook/aw;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/facebook/aw;->i()V

    :cond_f
    return-void
.end method

.method protected final g()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    invoke-virtual {v0}, Lcom/facebook/b/m;->b()Lcom/facebook/aw;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/facebook/aw;->j()V

    :cond_f
    return-void
.end method

.method protected final h()Ljava/util/List;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    invoke-virtual {v1}, Lcom/facebook/b/m;->a()Lcom/facebook/aw;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/facebook/aw;->h()Ljava/util/List;

    move-result-object v0

    :cond_11
    return-object v0
.end method

.method protected final i()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/facebook/widget/a;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Lcom/facebook/b/m;

    invoke-virtual {p0}, Lcom/facebook/widget/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/facebook/widget/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/widget/b;-><init>(Lcom/facebook/widget/a;Lcom/facebook/widget/a$1;)V

    invoke-direct {v0, v1, v2}, Lcom/facebook/b/m;-><init>(Landroid/content/Context;Lcom/facebook/bf;)V

    iput-object v0, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    invoke-virtual {v0}, Lcom/facebook/b/m;->a()Lcom/facebook/aw;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/widget/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/aw;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/b/m;

    invoke-virtual {v0}, Lcom/facebook/b/m;->d()V

    return-void
.end method
