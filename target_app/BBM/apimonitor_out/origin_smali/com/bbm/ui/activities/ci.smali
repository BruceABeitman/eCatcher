.class final Lcom/bbm/ui/activities/ci;
.super Lcom/bbm/ui/gk;
.source "ChannelChatListActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/gk",
        "<",
        "Lcom/bbm/ui/activities/eu;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/bbm/ui/activities/ChannelChatListActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChannelChatListActivity;Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/bbm/ui/gk;-><init>(Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V

    return-void
.end method


# virtual methods
.method protected final a()Landroid/view/View;
    .registers 3

    new-instance v0, Lcom/bbm/ui/ListHeaderView;

    iget-object v1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-direct {v0, v1}, Lcom/bbm/ui/ListHeaderView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected final a(Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 7

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/cj;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/cj;-><init>(Lcom/bbm/ui/activities/ci;)V

    const v0, 0x7f0a0442

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, v2, Lcom/bbm/ui/activities/cj;->a:Lcom/bbm/ui/ObservingImageView;

    const v0, 0x7f0a0443

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0445

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0446

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0444

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0448

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, v2, Lcom/bbm/ui/activities/cj;->b:Lcom/bbm/ui/InlineImageTextView;

    const v0, 0x7f0a044a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, v2, Lcom/bbm/ui/activities/cj;->c:Lcom/bbm/ui/InlineImageTextView;

    const v0, 0x7f0a0449

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/bbm/ui/activities/cj;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/bbm/ui/activities/eu;

    invoke-virtual {p1}, Lcom/bbm/ui/activities/eu;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Ljava/lang/Integer;

    check-cast p1, Lcom/bbm/ui/ListHeaderView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3d

    const v0, 0x7f0e0181

    :goto_d
    iget-object v1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/bbm/ui/activities/ci;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setRightLabel(Ljava/lang/String;)V

    const v0, 0x7f0a05c0

    invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_3d
    const v0, 0x7f0e0182

    goto :goto_d
.end method

.method protected final synthetic b(Landroid/view/View;Ljava/lang/Object;)V
    .registers 14

    const/4 v9, 0x0

    const/4 v8, 0x0

    check-cast p2, Lcom/bbm/ui/activities/eu;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bbm/ui/activities/cj;

    iget-object v3, p2, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;

    iget-object v0, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, v3, Lcom/bbm/d/es;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/d/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, v3, Lcom/bbm/d/es;->n:J

    invoke-virtual {v0, v1, v4, v5}, Lcom/bbm/d/a;->a(Ljava/lang/String;J)Lcom/bbm/d/fg;

    move-result-object v2

    iget-object v0, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, v2, Lcom/bbm/d/fg;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v4

    iget-object v0, v3, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f9

    iget-object v0, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;

    move-result-object v1

    iget-object v0, v3, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-object v1, v6, Lcom/bbm/ui/activities/cj;->a:Lcom/bbm/ui/ObservingImageView;

    iget-object v5, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v5}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    iget-object v1, v6, Lcom/bbm/ui/activities/cj;->b:Lcom/bbm/ui/InlineImageTextView;

    iget-object v0, v0, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5b
    iget-object v0, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, v3, Lcom/bbm/d/es;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v5

    iget-object v0, v3, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_113

    iget-object v0, v3, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    :goto_78
    iget-boolean v0, p2, Lcom/bbm/ui/activities/eu;->d:Z

    if-eqz v0, :cond_116

    iget-object v0, v6, Lcom/bbm/ui/activities/cj;->c:Lcom/bbm/ui/InlineImageTextView;

    iget-object v1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e02a5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8e
    if-eqz v7, :cond_1b7

    iget-object v0, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bbm/d/gp;->w:Z

    :goto_9c
    iget-object v1, v3, Lcom/bbm/d/es;->d:Lorg/json/JSONObject;

    const-string v3, "message"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_af

    iget-object v3, v6, Lcom/bbm/ui/activities/cj;->c:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v3, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_af
    iget-boolean v3, v2, Lcom/bbm/d/fg;->j:Z

    if-eqz v3, :cond_13d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_130

    iget-object v1, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v3, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;

    if-ne v1, v3, :cond_129

    iget-object v1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->d(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_c5
    iget-object v3, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v4, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;

    if-eq v3, v4, :cond_137

    iget-object v3, v6, Lcom/bbm/ui/activities/cj;->b:Lcom/bbm/ui/InlineImageTextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v8, v4}, Lcom/bbm/ui/InlineImageTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_d1
    iget-object v3, v6, Lcom/bbm/ui/activities/cj;->c:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v3, v1, v8, v8, v8}, Lcom/bbm/ui/InlineImageTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v6, Lcom/bbm/ui/activities/cj;->b:Lcom/bbm/ui/InlineImageTextView;

    if-eqz v0, :cond_1a6

    iget-object v0, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->n(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_e0
    invoke-virtual {v1, v0, v8, v8, v8}, Lcom/bbm/ui/InlineImageTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-wide v0, v2, Lcom/bbm/d/fg;->s:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_1ae

    iget-object v0, v6, Lcom/bbm/ui/activities/cj;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    iget-wide v2, v2, Lcom/bbm/d/fg;->s:J

    invoke-static {v1, v2, v3}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_f8
    return-void

    :cond_f9
    iget-object v0, v6, Lcom/bbm/ui/activities/cj;->a:Lcom/bbm/ui/ObservingImageView;

    iget-object v1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;

    invoke-virtual {v1}, Lcom/bbm/d/a/d/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lcom/bbm/ui/activities/cj;->b:Lcom/bbm/ui/InlineImageTextView;

    iget-object v1, v4, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5b

    :cond_113
    move-object v7, v8

    goto/16 :goto_78

    :cond_116
    iget-object v10, v6, Lcom/bbm/ui/activities/cj;->c:Lcom/bbm/ui/InlineImageTextView;

    iget-object v0, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;

    move-result-object v1

    invoke-static/range {v0 .. v5}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;Lcom/bbm/d/es;Lcom/bbm/d/gp;Lcom/bbm/d/gp;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8e

    :cond_129
    iget-object v1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->e(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_c5

    :cond_130
    iget-object v1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->f(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_c5

    :cond_137
    iget-object v3, v6, Lcom/bbm/ui/activities/cj;->b:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v3, v8, v9}, Lcom/bbm/ui/InlineImageTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_d1

    :cond_13d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14a

    iget-object v1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->f(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_d1

    :cond_14a
    iget-object v1, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v3, Lcom/bbm/d/fj;->c:Lcom/bbm/d/fj;

    if-ne v1, v3, :cond_158

    iget-object v1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->g(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_d1

    :cond_158
    iget-object v1, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v3, Lcom/bbm/d/fj;->d:Lcom/bbm/d/fj;

    if-ne v1, v3, :cond_166

    iget-object v1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->h(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_d1

    :cond_166
    iget-object v1, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v3, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;

    if-ne v1, v3, :cond_174

    iget-object v1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->i(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_d1

    :cond_174
    iget-object v1, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v3, Lcom/bbm/d/fj;->e:Lcom/bbm/d/fj;

    if-ne v1, v3, :cond_182

    iget-object v1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->j(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_d1

    :cond_182
    iget-object v1, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v3, Lcom/bbm/d/fj;->b:Lcom/bbm/d/fj;

    if-ne v1, v3, :cond_190

    iget-object v1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->k(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_d1

    :cond_190
    iget-object v1, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v3, Lcom/bbm/d/fj;->a:Lcom/bbm/d/fj;

    if-ne v1, v3, :cond_19e

    iget-object v1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->l(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_d1

    :cond_19e
    iget-object v1, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->m(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_d1

    :cond_1a6
    iget-object v0, p0, Lcom/bbm/ui/activities/ci;->f:Lcom/bbm/ui/activities/ChannelChatListActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->m(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_e0

    :cond_1ae
    iget-object v0, v6, Lcom/bbm/ui/activities/cj;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f8

    :cond_1b7
    move v0, v9

    goto/16 :goto_9c
.end method
