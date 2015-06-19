.class final Lcom/bbm/ui/activities/ajq;
.super Lcom/bbm/j/k;
.source "ViewOwnedChannelActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/ajq;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 8

    const/4 v1, 0x0

    const/4 v6, 0x1

    :try_start_2
    iget-object v0, p0, Lcom/bbm/ui/activities/ajq;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->d(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fq;

    iget-object v4, v0, Lcom/bbm/d/fq;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/bbm/ui/activities/ajq;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-virtual {v5}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, v0, Lcom/bbm/d/fq;->e:Lcom/bbm/d/fr;

    sget-object v5, Lcom/bbm/d/fr;->h:Lcom/bbm/d/fr;

    if-eq v4, v5, :cond_37

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    :cond_37
    iget-object v4, v0, Lcom/bbm/d/fq;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/bbm/ui/activities/ajq;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-virtual {v5}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f5

    iget-object v0, v0, Lcom/bbm/d/fq;->e:Lcom/bbm/d/fr;

    sget-object v4, Lcom/bbm/d/fr;->h:Lcom/bbm/d/fr;

    if-eq v0, v4, :cond_f5

    add-int/lit8 v0, v1, 0x1

    :goto_4d
    move v1, v0

    goto :goto_13

    :cond_4f
    if-lez v2, :cond_a0

    iget-object v0, p0, Lcom/bbm/ui/activities/ajq;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->e(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ajq;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->f(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)V

    if-ne v2, v6, :cond_74

    iget-object v0, p0, Lcom/bbm/ui/activities/ajq;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->g(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ajq;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_73
    :goto_73
    return-void

    :cond_74
    if-le v2, v6, :cond_73

    iget-object v0, p0, Lcom/bbm/ui/activities/ajq;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->g(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ajq;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e01d5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9a} :catch_9b

    goto :goto_73

    :catch_9b
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_73

    :cond_a0
    if-nez v2, :cond_73

    :try_start_a2
    iget-object v0, p0, Lcom/bbm/ui/activities/ajq;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->b(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)V

    if-lez v1, :cond_c6

    iget-object v0, p0, Lcom/bbm/ui/activities/ajq;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->c(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)V

    if-ne v1, v6, :cond_ce

    iget-object v0, p0, Lcom/bbm/ui/activities/ajq;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->h(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/ui/activities/ajq;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c6
    :goto_c6
    if-nez v1, :cond_73

    iget-object v0, p0, Lcom/bbm/ui/activities/ajq;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->e(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)V

    goto :goto_73

    :cond_ce
    if-le v1, v6, :cond_c6

    iget-object v0, p0, Lcom/bbm/ui/activities/ajq;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->h(Lcom/bbm/ui/activities/ViewOwnedChannelActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/ui/activities/ajq;->a:Lcom/bbm/ui/activities/ViewOwnedChannelActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_f4} :catch_9b

    goto :goto_c6

    :cond_f5
    move v0, v1

    goto/16 :goto_4d
.end method
