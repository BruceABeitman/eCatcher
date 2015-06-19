.class final Lcom/bbm/ui/ag;
.super Lcom/bbm/j/k;
.source "ChatHeaderView.java"
.field final synthetic a:Lcom/bbm/ui/ae;
.method constructor <init>(Lcom/bbm/ui/ae;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method public final a()V
.registers 15
const/4 v5, 0x1
const/16 v4, 0x8
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->b(Lcom/bbm/ui/ae;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_1ce
iget-object v1, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v1}, Lcom/bbm/ui/ae;->c(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v1
invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z
move-result v1
if-eqz v1, :cond_1ce
iget-object v1, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v1}, Lcom/bbm/ui/ae;->d(Lcom/bbm/ui/ae;)Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;
move-result-object v1
invoke-virtual {v2, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v6
invoke-static {v6}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v1, v6}, Lcom/bbm/n/b;->a(Lcom/bbm/d/gp;)Z
move-result v8
invoke-virtual {v1, v6}, Lcom/bbm/n/b;->b(Lcom/bbm/d/gp;)Z
move-result v9
invoke-virtual {v1}, Lcom/bbm/n/b;->f()Z
move-result v10
invoke-virtual {v1}, Lcom/bbm/n/b;->c()J
move-result-wide v11
iget-object v13, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-virtual {v13}, Lcom/bbm/ui/ae;->d()Landroid/view/View;
move-result-object v13
if-eqz v8, :cond_1de
if-eqz v13, :cond_55
invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V
:cond_55
invoke-virtual {v1}, Lcom/bbm/n/b;->h()I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_1cf
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->d(Lcom/bbm/ui/ae;)Landroid/content/Context;
move-result-object v0
const v1, 0x7f0e0774
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_69
move-object v1, v0
:goto_6a
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->c(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iget-object v8, v6, Lcom/bbm/d/gp;->A:Ljava/lang/String;
iget-object v9, v6, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {v2, v8, v9}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->c(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->e(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_b0
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->e(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iget-boolean v2, v6, Lcom/bbm/d/gp;->w:Z
if-eqz v2, :cond_26a
move v2, v3
:goto_ad
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_b0
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->f(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_e1
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->e()Z
move-result v0
if-eqz v0, :cond_26d
iget-object v0, v6, Lcom/bbm/d/gp;->n:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_26d
move v2, v5
:goto_cf
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->f(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
if-eqz v2, :cond_270
move v2, v3
:goto_de
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_e1
iget-boolean v0, v6, Lcom/bbm/d/gp;->w:Z
if-nez v0, :cond_ed
iget-object v0, v6, Lcom/bbm/d/gp;->n:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_273
:cond_ed
:goto_ed
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->d(Lcom/bbm/ui/ae;)Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f0b035f
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v6
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->d(Lcom/bbm/ui/ae;)Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f0b035d
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v8
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-virtual {v0, v7}, Lcom/bbm/ui/ae;->b(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->g(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_164
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->g(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->e(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_276
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->e(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I
move-result v0
if-nez v0, :cond_276
move v2, v6
:goto_14e
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->g(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
if-eqz v5, :cond_299
:goto_162
iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
:cond_164
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->h(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_1bc
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->h(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->h(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_29c
:goto_191
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->f(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I
move-result v0
if-nez v0, :cond_29f
:goto_1a6
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->h(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
if-eqz v5, :cond_2b4
:goto_1ba
iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
:cond_1bc
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
iget-object v0, v0, Lcom/bbm/ui/ae;->c:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
new-instance v1, Lcom/bbm/ui/ah;
invoke-direct {v1, p0}, Lcom/bbm/ui/ah;-><init>(Lcom/bbm/ui/ag;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_1ce
return-void
:cond_1cf
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->d(Lcom/bbm/ui/ae;)Landroid/content/Context;
move-result-object v0
const v1, 0x7f0e0775
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_69
:cond_1de
if-eqz v9, :cond_203
if-eqz v13, :cond_1e5
invoke-virtual {v13, v4}, Landroid/view/View;->setVisibility(I)V
:cond_1e5
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->d(Lcom/bbm/ui/ae;)Landroid/content/Context;
move-result-object v1
if-eqz v10, :cond_1ff
const v0, 0x7f0e0777
:goto_1f0
new-array v8, v5, [Ljava/lang/Object;
invoke-static {v11, v12}, Lcom/bbm/util/fb;->c(J)Ljava/lang/String;
move-result-object v9
aput-object v9, v8, v3
invoke-virtual {v1, v0, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
move-object v1, v0
goto/16 :goto_6a
:cond_1ff
const v0, 0x7f0e0776
goto :goto_1f0
:cond_203
if-eqz v13, :cond_208
invoke-virtual {v13, v4}, Landroid/view/View;->setVisibility(I)V
:cond_208
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "|"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v1}, Lcom/bbm/ui/ae;->a(Lcom/bbm/ui/ae;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/bbm/d/a;->n(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v0
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_241
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->d(Lcom/bbm/ui/ae;)Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e02a5
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
move-object v1, v0
goto/16 :goto_6a
:cond_241
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->d(Lcom/bbm/ui/ae;)Landroid/content/Context;
move-result-object v1
iget-object v0, v6, Lcom/bbm/d/gp;->o:Ljava/lang/String;
invoke-virtual {v2}, Lcom/bbm/d/a;->e()Z
move-result v8
if-eqz v8, :cond_259
iget-object v8, v6, Lcom/bbm/d/gp;->n:Ljava/lang/String;
invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z
move-result v8
if-nez v8, :cond_259
iget-object v0, v6, Lcom/bbm/d/gp;->n:Ljava/lang/String;
:cond_259
iget-object v8, v6, Lcom/bbm/d/gp;->b:Ljava/lang/String;
invoke-static {v1, v0, v8}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_2bd
iget-object v0, v6, Lcom/bbm/d/gp;->b:Ljava/lang/String;
move-object v1, v0
goto/16 :goto_6a
:cond_26a
move v2, v4
goto/16 :goto_ad
:cond_26d
move v2, v3
goto/16 :goto_cf
:cond_270
move v2, v4
goto/16 :goto_de
:cond_273
move v5, v3
goto/16 :goto_ed
:cond_276
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->f(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_2ba
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->f(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I
move-result v0
if-nez v0, :cond_2ba
add-int v0, v8, v6
move v2, v0
goto/16 :goto_14e
:cond_299
move v2, v3
goto/16 :goto_162
:cond_29c
move v4, v3
goto/16 :goto_191
:cond_29f
iget-object v0, p0, Lcom/bbm/ui/ag;->a:Lcom/bbm/ui/ae;
invoke-static {v0}, Lcom/bbm/ui/ae;->e(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I
move-result v0
if-nez v0, :cond_2b7
add-int/2addr v6, v8
goto/16 :goto_1a6
:cond_2b4
move v6, v3
goto/16 :goto_1ba
:cond_2b7
move v6, v3
goto/16 :goto_1a6
:cond_2ba
move v2, v3
goto/16 :goto_14e
:cond_2bd
move-object v1, v0
goto/16 :goto_6a
.end method