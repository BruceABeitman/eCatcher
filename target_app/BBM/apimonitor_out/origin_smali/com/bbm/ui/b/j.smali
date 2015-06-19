.class public final Lcom/bbm/ui/b/j;
.super Lcom/bbm/ui/b/o;
.source "BBInfoAndIgnoreCheckboxDialog.java"


# instance fields
.field public d:Landroid/widget/CheckBox;

.field public e:Z

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a_(Ljava/lang/String;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bbm/ui/b/o;->a_(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/b/j;->f:Landroid/view/View;

    if-eqz v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/bbm/ui/b/j;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/bbm/ui/b/j;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13
.end method

.method protected final b()I
    .registers 2

    const v0, 0x7f030075

    return v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bbm/ui/b/o;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0355

    invoke-virtual {p0, v0}, Lcom/bbm/ui/b/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/b/j;->f:Landroid/view/View;

    const v0, 0x7f0a0356

    invoke-virtual {p0, v0}, Lcom/bbm/ui/b/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/bbm/ui/b/j;->d:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/bbm/ui/b/j;->d:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/bbm/ui/b/j;->e:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v0, 0x7f0a034f

    invoke-virtual {p0, v0}, Lcom/bbm/ui/b/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/bbm/ui/b/j;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_37
    return-void

    :cond_38
    iget-object v0, p0, Lcom/bbm/ui/b/j;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_37
.end method
