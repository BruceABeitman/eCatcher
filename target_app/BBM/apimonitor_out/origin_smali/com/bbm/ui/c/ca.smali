.class final Lcom/bbm/ui/c/ca;
.super Lcom/bbm/ui/gk;
.source "ContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/gk",
        "<",
        "Lcom/bbm/d/gp;",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/bbm/ui/c/bm;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/bm;Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-direct {p0, p2, p3, p4}, Lcom/bbm/ui/gk;-><init>(Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V

    return-void
.end method


# virtual methods
.method protected final a()Landroid/view/View;
    .registers 3

    new-instance v0, Lcom/bbm/ui/ListHeaderView;

    iget-object v1, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v1}, Lcom/bbm/ui/c/bm;->b(Lcom/bbm/ui/c/bm;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/ui/ListHeaderView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected final a(Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bb

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a044d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V

    return-object v1
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/bbm/d/gp;

    iget-object v0, p1, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    return-object v0
.end method

.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 8

    check-cast p2, Ljava/lang/Long;

    check-cast p1, Lcom/bbm/ui/ListHeaderView;

    iget-object v0, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v0}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->W(Ljava/lang/String;)Lcom/bbm/d/ea;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v1}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;

    move-result-object v1

    const-string v2, "defaultCategory"

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;

    const-string v2, "value"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/bbm/d/ea;->b:J

    cmp-long v1, v3, v1

    if-nez v1, :cond_58

    iget-object v1, v0, Lcom/bbm/d/ea;->c:Ljava/lang/String;

    const-string v2, "Contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    iget-object v0, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v0}, Lcom/bbm/ui/c/bm;->b(Lcom/bbm/ui/c/bm;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e026c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_49
    invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/bbm/ui/c/ca;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setRightLabel(Ljava/lang/String;)V

    return-void

    :cond_58
    iget-object v0, v0, Lcom/bbm/d/ea;->c:Ljava/lang/String;

    goto :goto_49
.end method

.method protected final synthetic b(Landroid/view/View;Ljava/lang/Object;)V
    .registers 15

    const v6, 0x7f0a044d

    const/4 v7, 0x0

    const/4 v3, 0x0

    check-cast p2, Lcom/bbm/d/gp;

    const v0, 0x7f0a044f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p2, Lcom/bbm/d/gp;->w:Z

    if-eqz v1, :cond_f5

    iget-object v1, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v1}, Lcom/bbm/ui/c/bm;->g(Lcom/bbm/ui/c/bm;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_21
    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bbm/ui/ObservingImageView;

    iget-object v2, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v2}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;

    move-result-object v2

    iget-object v4, p2, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    iget-object v5, p2, Lcom/bbm/d/gp;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1, v7}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V

    iget-object v1, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v1}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/d/a;->u()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p2, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v2

    const v1, 0x7f0a0452

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/bbm/ui/InlineImageTextView;

    iget-object v1, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v1}, Lcom/bbm/ui/c/bm;->h(Lcom/bbm/ui/c/bm;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v8, ""

    invoke-virtual {v2}, Lcom/google/b/a/l;->a()Z

    move-result v1

    if-eqz v1, :cond_13f

    iget-object v1, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v1}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/bbm/d/a;->K(Ljava/lang/String;)Lcom/bbm/d/es;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v2}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;

    move-result-object v2

    iget-object v4, v1, Lcom/bbm/d/es;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/bbm/d/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-wide v10, v1, Lcom/bbm/d/es;->n:J

    invoke-virtual {v2, v4, v10, v11}, Lcom/bbm/d/a;->a(Ljava/lang/String;J)Lcom/bbm/d/fg;

    move-result-object v2

    iget-boolean v1, v2, Lcom/bbm/d/fg;->j:Z

    if-eqz v1, :cond_fd

    iget-object v1, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v4, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;

    if-eq v1, v4, :cond_fd

    const/4 v1, 0x1

    :goto_a0
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-boolean v0, v2, Lcom/bbm/d/fg;->j:Z

    if-eqz v0, :cond_ff

    iget-object v0, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v1, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;

    if-eq v0, v1, :cond_ff

    iget-object v0, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v0}, Lcom/bbm/ui/c/bm;->b(Lcom/bbm/ui/c/bm;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v1}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;Lcom/bbm/d/es;Lcom/bbm/d/gp;Lcom/bbm/d/gp;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_164

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c9
    :goto_c9
    iget-boolean v1, v2, Lcom/bbm/d/fg;->j:Z

    if-eqz v1, :cond_161

    iget-object v1, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v4, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;

    if-eq v1, v4, :cond_161

    iget-object v1, v2, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;

    sget-object v4, Lcom/bbm/d/fk;->b:Lcom/bbm/d/fk;

    if-ne v1, v4, :cond_118

    iget-object v1, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v1}, Lcom/bbm/ui/c/bm;->i(Lcom/bbm/ui/c/bm;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_df
    if-eqz v6, :cond_f4

    invoke-virtual {v6, v1, v3, v3, v3}, Lcom/bbm/ui/InlineImageTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15a

    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V

    const-string v0, ""

    invoke-virtual {v6, v0}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f4
    :goto_f4
    return-void

    :cond_f5
    iget-object v1, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v1}, Lcom/bbm/ui/c/bm;->h(Lcom/bbm/ui/c/bm;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_21

    :cond_fd
    move v1, v7

    goto :goto_a0

    :cond_ff
    iget-object v0, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-virtual {v0}, Lcom/bbm/ui/c/bm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    iget-object v4, p2, Lcom/bbm/d/gp;->b:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/bbm/d/gp;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c9

    iget-object v0, p2, Lcom/bbm/d/gp;->o:Ljava/lang/String;

    goto :goto_c9

    :cond_118
    iget-object v1, v2, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;

    sget-object v4, Lcom/bbm/d/fk;->f:Lcom/bbm/d/fk;

    if-eq v1, v4, :cond_124

    iget-object v1, v2, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;

    sget-object v4, Lcom/bbm/d/fk;->e:Lcom/bbm/d/fk;

    if-ne v1, v4, :cond_12b

    :cond_124
    iget-object v1, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v1}, Lcom/bbm/ui/c/bm;->j(Lcom/bbm/ui/c/bm;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_df

    :cond_12b
    iget-object v1, v2, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;

    sget-object v2, Lcom/bbm/d/fk;->c:Lcom/bbm/d/fk;

    if-ne v1, v2, :cond_138

    iget-object v1, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v1}, Lcom/bbm/ui/c/bm;->k(Lcom/bbm/ui/c/bm;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_df

    :cond_138
    iget-object v1, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-static {v1}, Lcom/bbm/ui/c/bm;->l(Lcom/bbm/ui/c/bm;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_df

    :cond_13f
    iget-object v0, p0, Lcom/bbm/ui/c/ca;->f:Lcom/bbm/ui/c/bm;

    invoke-virtual {v0}, Lcom/bbm/ui/c/bm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p2, Lcom/bbm/d/gp;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/bbm/d/gp;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_157

    :goto_155
    move-object v1, v9

    goto :goto_df

    :cond_157
    iget-object v0, p2, Lcom/bbm/d/gp;->o:Ljava/lang/String;

    goto :goto_155

    :cond_15a
    invoke-virtual {v6, v7}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V

    invoke-virtual {v6, v0}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f4

    :cond_161
    move-object v1, v9

    goto/16 :goto_df

    :cond_164
    move-object v0, v8

    goto/16 :goto_c9
.end method
