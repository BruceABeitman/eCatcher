.class final Lcom/bbm/ui/a/w;
.super Lcom/bbm/j/k;
.source "GroupMessageListAdapter.java"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/bbm/ui/a/s;


# direct methods
.method constructor <init>(Lcom/bbm/ui/a/s;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/a/w;->b:Lcom/bbm/ui/a/s;

    iput-object p2, p0, Lcom/bbm/ui/a/w;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 13

    const/16 v11, 0x8

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/bbm/ui/a/w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/a/y;

    iget-object v1, v0, Lcom/bbm/ui/a/y;->i:Lcom/bbm/j/a;

    invoke-virtual {v1}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/ui/a/x;

    iget-object v2, v1, Lcom/bbm/ui/a/x;->a:Lcom/bbm/g/ad;

    iget-boolean v2, v2, Lcom/bbm/g/ad;->a:Z

    iget-boolean v3, v0, Lcom/bbm/ui/a/y;->g:Z

    if-eq v3, v2, :cond_35

    iget-object v0, p0, Lcom/bbm/ui/a/w;->b:Lcom/bbm/ui/a/s;

    invoke-static {v0}, Lcom/bbm/ui/a/s;->g(Lcom/bbm/ui/a/s;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/bbm/ui/a/w;->b:Lcom/bbm/ui/a/s;

    iget-boolean v1, v0, Lcom/bbm/ui/a/s;->j:Z

    if-nez v1, :cond_23

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bbm/ui/a/s;->j:Z

    iget-object v1, v0, Lcom/bbm/ui/a/s;->k:Landroid/os/Handler;

    iget-object v0, v0, Lcom/bbm/ui/a/s;->l:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_23

    :cond_35
    iget-object v2, p0, Lcom/bbm/ui/a/w;->b:Lcom/bbm/ui/a/s;

    iget-object v3, p0, Lcom/bbm/ui/a/w;->a:Landroid/view/View;

    iget-object v4, v1, Lcom/bbm/ui/a/x;->a:Lcom/bbm/g/ad;

    iget-boolean v5, v1, Lcom/bbm/ui/a/x;->d:Z

    iget-boolean v6, v1, Lcom/bbm/ui/a/x;->e:Z

    iget-boolean v7, v4, Lcom/bbm/g/ad;->a:Z

    if-nez v7, :cond_b5

    iget-object v2, v2, Lcom/bbm/ui/a/s;->d:Lcom/bbm/ui/activities/xo;

    invoke-static {}, Lcom/bbm/ui/activities/xo;->a()Lcom/bbm/ui/activities/xp;

    move-result-object v2

    :goto_49
    if-eqz v5, :cond_be

    if-eqz v6, :cond_be

    iget v2, v2, Lcom/bbm/ui/activities/xp;->c:I

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_52
    :goto_52
    iget-object v2, p0, Lcom/bbm/ui/a/w;->b:Lcom/bbm/ui/a/s;

    iget-object v3, p0, Lcom/bbm/ui/a/w;->a:Landroid/view/View;

    iget-object v4, v1, Lcom/bbm/ui/a/x;->a:Lcom/bbm/g/ad;

    iget-object v5, v1, Lcom/bbm/ui/a/x;->b:Lcom/bbm/g/o;

    iget-object v6, v1, Lcom/bbm/ui/a/x;->c:Lcom/google/b/a/l;

    iget-boolean v1, v1, Lcom/bbm/ui/a/x;->d:Z

    iget-boolean v7, v2, Lcom/bbm/ui/a/s;->f:Z

    if-eqz v7, :cond_e5

    iget-object v7, v0, Lcom/bbm/ui/a/y;->a:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v7, v10}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    iget-object v7, v5, Lcom/bbm/g/o;->a:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d9

    iget-object v7, v0, Lcom/bbm/ui/a/y;->a:Lcom/bbm/ui/ObservingImageView;

    const v8, 0x7f0200d6

    invoke-virtual {v7, v8}, Lcom/bbm/ui/ObservingImageView;->setImageResource(I)V

    :cond_77
    :goto_77
    iget-object v7, v0, Lcom/bbm/ui/a/y;->e:Landroid/widget/TextView;

    iget v8, v2, Lcom/bbm/ui/a/s;->g:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, v0, Lcom/bbm/ui/a/y;->e:Landroid/widget/TextView;

    iget-object v8, v4, Lcom/bbm/g/ad;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/bbm/ui/a/y;->b:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/bbm/ui/a/s;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_eb

    iget-boolean v1, v2, Lcom/bbm/ui/a/s;->f:Z

    if-eqz v1, :cond_a9

    iget-object v1, v0, Lcom/bbm/ui/a/y;->a:Lcom/bbm/ui/ObservingImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbm/ui/a/y;->a:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_a9

    iput v10, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, v0, Lcom/bbm/ui/a/y;->a:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v2, v1}, Lcom/bbm/ui/ObservingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a9
    iget-object v1, v0, Lcom/bbm/ui/a/y;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v0, Lcom/bbm/ui/a/y;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_23

    :cond_b5
    iget-object v2, v2, Lcom/bbm/ui/a/s;->d:Lcom/bbm/ui/activities/xo;

    iget-object v4, v4, Lcom/bbm/g/ad;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/bbm/ui/activities/xo;->a(Ljava/lang/String;)Lcom/bbm/ui/activities/xp;

    move-result-object v2

    goto :goto_49

    :cond_be
    if-nez v5, :cond_c8

    if-nez v6, :cond_c8

    iget v2, v2, Lcom/bbm/ui/activities/xp;->a:I

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_52

    :cond_c8
    if-nez v5, :cond_d0

    iget v2, v2, Lcom/bbm/ui/activities/xp;->b:I

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_52

    :cond_d0
    if-nez v6, :cond_52

    iget v2, v2, Lcom/bbm/ui/activities/xp;->d:I

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_52

    :cond_d9
    iget-object v8, v2, Lcom/bbm/ui/a/s;->h:Lcom/bbm/util/b/g;

    if-eqz v8, :cond_77

    iget-object v8, v2, Lcom/bbm/ui/a/s;->h:Lcom/bbm/util/b/g;

    iget-object v9, v0, Lcom/bbm/ui/a/y;->a:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v8, v7, v9}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    goto :goto_77

    :cond_e5
    iget-object v7, v0, Lcom/bbm/ui/a/y;->a:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v7, v11}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    goto :goto_77

    :cond_eb
    iget-boolean v1, v2, Lcom/bbm/ui/a/s;->f:Z

    if-eqz v1, :cond_113

    iget-object v1, v0, Lcom/bbm/ui/a/y;->a:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1, v10}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/bbm/ui/a/y;->a:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_113

    iget-object v2, v2, Lcom/bbm/ui/a/s;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0b00ee

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, v0, Lcom/bbm/ui/a/y;->a:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v2, v1}, Lcom/bbm/ui/ObservingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_113
    iget-object v1, v0, Lcom/bbm/ui/a/y;->c:Landroid/widget/TextView;

    invoke-static {v6, v5}, Lcom/bbm/d/b/a;->a(Lcom/google/b/a/l;Lcom/bbm/g/o;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v1, v4, Lcom/bbm/g/ad;->f:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_133

    iget-object v1, v0, Lcom/bbm/ui/a/y;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v4, Lcom/bbm/g/ad;->f:J

    invoke-static {v2, v3, v4}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_133
    iget-object v1, v0, Lcom/bbm/ui/a/y;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v0, Lcom/bbm/ui/a/y;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_23
.end method
