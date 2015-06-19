.class public Lcom/bbm/ui/b/o;
.super Lcom/bbm/ui/b/g;
.source "BBInfoDialog.java"


# instance fields
.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbm/ui/b/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a_(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/b/o;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/b/o;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bbm/ui/b/o;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/bbm/ui/b/o;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/b/o;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbm/ui/b/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/bbm/ui/b/o;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1b
.end method

.method protected b()I
    .registers 2

    const v0, 0x7f030076

    return v0
.end method

.method public final e(I)V
    .registers 3

    if-lez p1, :cond_d

    invoke-virtual {p0}, Lcom/bbm/ui/b/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/b/o;->a_(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final f(I)V
    .registers 3

    if-lez p1, :cond_d

    invoke-virtual {p0}, Lcom/bbm/ui/b/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/b/o;->f(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/b/o;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/b/o;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bbm/ui/b/o;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/bbm/ui/b/o;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/b/o;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbm/ui/b/o;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/bbm/ui/b/o;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/b/g;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a034f

    invoke-virtual {p0, v0}, Lcom/bbm/ui/b/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/b/o;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/b/o;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/bbm/ui/b/o;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/b/o;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbm/ui/b/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_23
    const v0, 0x7f0a0352

    invoke-virtual {p0, v0}, Lcom/bbm/ui/b/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/b/o;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/b/o;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/bbm/ui/b/o;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/b/o;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbm/ui/b/o;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_42
    return-void
.end method
