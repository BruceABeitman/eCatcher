.class final Lcom/bbm/ui/c/cv;
.super Lcom/bbm/ui/cq;
.source "GroupMembersFragment.java"
.field  b:Lcom/bbm/j/w;
.field final synthetic c:Lcom/bbm/ui/c/ck;
.method public constructor <init>(Lcom/bbm/ui/c/ck;Lcom/bbm/j/j;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/c/cv;->c:Lcom/bbm/ui/c/ck;
invoke-direct {p0, p2}, Lcom/bbm/ui/cq;-><init>(Lcom/bbm/j/r;)V
iget-object v0, p0, Lcom/bbm/ui/c/cv;->c:Lcom/bbm/ui/c/ck;
iget-object v0, v0, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->I()Lcom/bbm/j/w;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/cv;->b:Lcom/bbm/j/w;
return-void
.end method
.method protected final synthetic a(Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/bbm/ui/c/cx;
sget-object v0, Lcom/bbm/ui/c/cu;->b:[I
iget-object v1, p1, Lcom/bbm/ui/c/cx;->a:Lcom/bbm/ui/c/cy;
invoke-virtual {v1}, Lcom/bbm/ui/c/cy;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_16
const/4 v0, 0x0
:goto_10
return v0
:pswitch_11
const/4 v0, 0x1
goto :goto_10
:pswitch_13
const/4 v0, 0x2
goto :goto_10
nop
:pswitch_data_16
.packed-switch 0x1
:pswitch_11
:pswitch_13
.end packed-switch
.end method
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
const/4 v3, 0x0
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300cd
invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/bbm/ui/c/cw;
invoke-direct {v2, p0, v3}, Lcom/bbm/ui/c/cw;-><init>(Lcom/bbm/ui/c/cv;B)V
const v0, 0x7f0a047c
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, v2, Lcom/bbm/ui/c/cw;->a:Lcom/bbm/ui/ObservingImageView;
const v0, 0x7f0a047d
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, v2, Lcom/bbm/ui/c/cw;->b:Landroid/widget/RelativeLayout;
const v0, 0x7f0a0480
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, v2, Lcom/bbm/ui/c/cw;->c:Lcom/bbm/ui/InlineImageTextView;
const v0, 0x7f0a0481
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/c/cw;->d:Landroid/widget/TextView;
const v0, 0x7f0a047f
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v2, Lcom/bbm/ui/c/cw;->e:Landroid/widget/ImageView;
const v0, 0x7f0a047e
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v2, Lcom/bbm/ui/c/cw;->f:Landroid/widget/ImageView;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method protected final a(Lcom/bbm/ui/ListHeaderView;)Lcom/bbm/ui/ListHeaderView;
.registers 3
if-nez p1, :cond_d
new-instance p1, Lcom/bbm/ui/ListHeaderView;
iget-object v0, p0, Lcom/bbm/ui/c/cv;->c:Lcom/bbm/ui/c/ck;
invoke-static {v0}, Lcom/bbm/ui/c/ck;->f(Lcom/bbm/ui/c/ck;)Landroid/content/Context;
move-result-object v0
invoke-direct {p1, v0}, Lcom/bbm/ui/ListHeaderView;-><init>(Landroid/content/Context;)V
:cond_d
return-object p1
.end method
.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
.registers 12
const/4 v3, 0x0
const/4 v2, 0x0
const/16 v4, 0x8
check-cast p2, Lcom/bbm/ui/c/cx;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/cw;
iget-object v1, p0, Lcom/bbm/ui/c/cv;->c:Lcom/bbm/ui/c/ck;
iget-object v1, v1, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
iget-object v1, v1, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v5, p2, Lcom/bbm/ui/c/cx;->d:Ljava/lang/String;
invoke-virtual {v1, v5}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v5
invoke-static {v5}, Lcom/bbm/d/b/a;->a(Lcom/bbm/g/o;)Lcom/google/b/a/l;
move-result-object v6
iget-object v1, v0, Lcom/bbm/ui/c/cw;->c:Lcom/bbm/ui/InlineImageTextView;
invoke-static {v6, v5}, Lcom/bbm/d/b/a;->a(Lcom/google/b/a/l;Lcom/bbm/g/o;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v1, v7}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
iget-object v7, v0, Lcom/bbm/ui/c/cw;->c:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v6}, Lcom/google/b/a/l;->a()Z
move-result v1
if-eqz v1, :cond_b6
invoke-virtual {v6}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/gp;
iget-boolean v1, v1, Lcom/bbm/d/gp;->w:Z
if-eqz v1, :cond_b6
iget-object v1, p0, Lcom/bbm/ui/c/cv;->c:Lcom/bbm/ui/c/ck;
invoke-static {v1}, Lcom/bbm/ui/c/ck;->e(Lcom/bbm/ui/c/ck;)Landroid/graphics/drawable/Drawable;
move-result-object v1
:goto_3d
invoke-virtual {v7, v1, v2, v2, v2}, Lcom/bbm/ui/InlineImageTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v6}, Lcom/google/b/a/l;->a()Z
move-result v1
if-eqz v1, :cond_5e
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v2
invoke-virtual {v6}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/gp;
iget-object v7, v1, Lcom/bbm/d/gp;->A:Ljava/lang/String;
invoke-virtual {v6}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/gp;
iget-object v1, v1, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {v2, v7, v1}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v2
:cond_5e
if-eqz v2, :cond_b8
iget-object v1, v0, Lcom/bbm/ui/c/cw;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v1, v2}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
:goto_65
iget-object v2, v0, Lcom/bbm/ui/c/cw;->b:Landroid/widget/RelativeLayout;
iget-object v1, p2, Lcom/bbm/ui/c/cx;->a:Lcom/bbm/ui/c/cy;
sget-object v6, Lcom/bbm/ui/c/cy;->a:Lcom/bbm/ui/c/cy;
if-ne v1, v6, :cond_df
iget-object v1, p2, Lcom/bbm/ui/c/cx;->c:Lcom/bbm/d/a/a;
check-cast v1, Lcom/bbm/g/ac;
iget-boolean v1, v1, Lcom/bbm/g/ac;->a:Z
if-eqz v1, :cond_dd
move v1, v3
:goto_76
invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v1, v0, Lcom/bbm/ui/c/cw;->e:Landroid/widget/ImageView;
invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iget-object v6, v5, Lcom/bbm/g/o;->e:Ljava/lang/String;
invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
move-result v6
if-nez v6, :cond_9e
iget-object v6, p0, Lcom/bbm/ui/c/cv;->c:Lcom/bbm/ui/c/ck;
iget-object v6, v6, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
iget-object v6, v6, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v7, v5, Lcom/bbm/g/o;->e:Ljava/lang/String;
invoke-virtual {v6, v7}, Lcom/bbm/d/a;->i(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v6
sget-object v7, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
if-ne v6, v7, :cond_e1
sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
:goto_9e
:cond_9e
iget-object v6, v0, Lcom/bbm/ui/c/cw;->d:Landroid/widget/TextView;
sget-object v5, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v1, v5, :cond_153
move v5, v3
:goto_a5
invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, v0, Lcom/bbm/ui/c/cw;->f:Landroid/widget/ImageView;
sget-object v5, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
if-ne v2, v5, :cond_156
sget-object v2, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_156
:goto_b2
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
:cond_b6
move-object v1, v2
goto :goto_3d
:cond_b8
iget-object v1, p0, Lcom/bbm/ui/c/cv;->c:Lcom/bbm/ui/c/ck;
invoke-virtual {v1}, Lcom/bbm/ui/c/ck;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-static {v1, v5}, Lcom/bbm/d/fc;->a(Landroid/content/res/Resources;Lcom/bbm/g/o;)Lcom/google/b/a/l;
move-result-object v1
invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z
move-result v2
if-eqz v2, :cond_d4
iget-object v2, v0, Lcom/bbm/ui/c/cw;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v1}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/j/r;
invoke-virtual {v2, v1}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
goto :goto_65
:cond_d4
iget-object v1, v0, Lcom/bbm/ui/c/cw;->a:Lcom/bbm/ui/ObservingImageView;
const v2, 0x7f0200d6
invoke-virtual {v1, v2}, Lcom/bbm/ui/ObservingImageView;->setImageResource(I)V
goto :goto_65
:cond_dd
move v1, v4
goto :goto_76
:cond_df
move v1, v4
goto :goto_76
:cond_e1
sget-object v7, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v6, v7, :cond_9e
iget-object v6, p0, Lcom/bbm/ui/c/cv;->c:Lcom/bbm/ui/c/ck;
iget-object v6, v6, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
iget-object v6, v6, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v5, v5, Lcom/bbm/g/o;->e:Ljava/lang/String;
invoke-virtual {v6, v5}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;
move-result-object v6
iget-object v5, p0, Lcom/bbm/ui/c/cv;->c:Lcom/bbm/ui/c/ck;
iget-object v5, v5, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
iget-object v5, v5, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v5}, Lcom/bbm/d/a;->h()Ljava/lang/String;
move-result-object v5
iget-object v7, v6, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z
move-result v7
if-nez v7, :cond_9e
invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
move-result v7
if-nez v7, :cond_9e
iget-object v2, v6, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_116
sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
goto :goto_9e
:cond_116
iget-object v2, p0, Lcom/bbm/ui/c/cv;->b:Lcom/bbm/j/w;
invoke-interface {v2}, Lcom/bbm/j/w;->b()Z
move-result v2
if-nez v2, :cond_141
sget-object v5, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
move v2, v3
:goto_121
iget-object v1, p0, Lcom/bbm/ui/c/cv;->b:Lcom/bbm/j/w;
invoke-interface {v1}, Lcom/bbm/j/w;->d()I
move-result v1
if-ge v2, v1, :cond_159
iget-object v1, p0, Lcom/bbm/ui/c/cv;->b:Lcom/bbm/j/w;
invoke-interface {v1, v2}, Lcom/bbm/j/w;->a(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/fn;
iget-object v7, v1, Lcom/bbm/d/fn;->j:Ljava/lang/String;
iget-object v8, v6, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_14f
iget-boolean v1, v1, Lcom/bbm/d/fn;->d:Z
if-nez v1, :cond_14f
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
:goto_141
:cond_141
iget-object v2, p0, Lcom/bbm/ui/c/cv;->c:Lcom/bbm/ui/c/ck;
iget-object v2, v2, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v5, v6, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v2, v5}, Lcom/bbm/d/a;->L(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v2
goto/16 :goto_9e
:cond_14f
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_121
:cond_153
move v5, v4
goto/16 :goto_a5
:cond_156
move v3, v4
goto/16 :goto_b2
:cond_159
move-object v1, v5
goto :goto_141
.end method
.method protected final a(Lcom/bbm/ui/ListHeaderView;ILjava/util/List;)V
.registers 6
sget-object v1, Lcom/bbm/ui/c/cu;->b:[I
const/4 v0, 0x0
invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/cx;
iget-object v0, v0, Lcom/bbm/ui/c/cx;->a:Lcom/bbm/ui/c/cy;
invoke-virtual {v0}, Lcom/bbm/ui/c/cy;->ordinal()I
move-result v0
aget v0, v1, v0
packed-switch v0, :pswitch_data_42
:goto_14
invoke-interface {p3}, Ljava/util/List;->size()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setRightLabel(Ljava/lang/String;)V
return-void
:pswitch_20
iget-object v0, p0, Lcom/bbm/ui/c/cv;->c:Lcom/bbm/ui/c/ck;
invoke-virtual {v0}, Lcom/bbm/ui/c/ck;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0459
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
goto :goto_14
:pswitch_31
iget-object v0, p0, Lcom/bbm/ui/c/cv;->c:Lcom/bbm/ui/c/ck;
invoke-virtual {v0}, Lcom/bbm/ui/c/ck;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0458
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
goto :goto_14
:pswitch_data_42
.packed-switch 0x1
:pswitch_20
:pswitch_31
.end packed-switch
.end method