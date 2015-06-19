.class final Lcom/bbm/ui/c/bk;
.super Lcom/bbm/ui/ef;
.source "ChatsFragment.java"
.field final synthetic b:Lcom/bbm/ui/c/at;
.method constructor <init>(Lcom/bbm/ui/c/at;Lcom/bbm/j/r;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-direct {p0, p2}, Lcom/bbm/ui/ef;-><init>(Lcom/bbm/j/r;)V
return-void
.end method
.method private static a(Lcom/bbm/ui/c/bl;ILcom/bbm/d/fd;Lcom/bbm/d/fd;Lcom/bbm/d/fd;Lcom/bbm/d/fd;)V
.registers 10
const/4 v2, 0x0
const/16 v1, 0x8
if-nez p2, :cond_56
iget-object v0, p0, Lcom/bbm/ui/c/bl;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
:goto_a
if-nez p3, :cond_61
iget-object v0, p0, Lcom/bbm/ui/c/bl;->c:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
:goto_11
iget-object v3, p0, Lcom/bbm/ui/c/bl;->a:Landroid/view/ViewGroup;
if-nez p2, :cond_17
if-eqz p3, :cond_6c
:cond_17
move v0, v2
:goto_18
invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V
if-nez p4, :cond_6e
iget-object v0, p0, Lcom/bbm/ui/c/bl;->e:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
:goto_22
const/4 v0, 0x4
if-le p1, v0, :cond_79
iget-object v0, p0, Lcom/bbm/ui/c/bl;->f:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/bl;->g:Landroid/widget/TextView;
invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/c/bl;->g:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
:goto_38
iget-object v0, p0, Lcom/bbm/ui/c/bl;->d:Landroid/view/ViewGroup;
iget-object v3, p0, Lcom/bbm/ui/c/bl;->e:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v3}, Lcom/bbm/ui/ObservingImageView;->getVisibility()I
move-result v3
if-ne v3, v1, :cond_91
iget-object v3, p0, Lcom/bbm/ui/c/bl;->f:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v3}, Lcom/bbm/ui/ObservingImageView;->getVisibility()I
move-result v3
if-ne v3, v1, :cond_91
iget-object v3, p0, Lcom/bbm/ui/c/bl;->g:Landroid/widget/TextView;
invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I
move-result v3
if-ne v3, v1, :cond_91
:goto_52
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
return-void
:cond_56
iget-object v0, p0, Lcom/bbm/ui/c/bl;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v2}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/bl;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, p2}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/d/fd;)V
goto :goto_a
:cond_61
iget-object v0, p0, Lcom/bbm/ui/c/bl;->c:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v2}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/bl;->c:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, p3}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/d/fd;)V
goto :goto_11
:cond_6c
move v0, v1
goto :goto_18
:cond_6e
iget-object v0, p0, Lcom/bbm/ui/c/bl;->e:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v2}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/bl;->e:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, p4}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/d/fd;)V
goto :goto_22
:cond_79
iget-object v0, p0, Lcom/bbm/ui/c/bl;->g:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
if-nez p5, :cond_86
iget-object v0, p0, Lcom/bbm/ui/c/bl;->f:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
goto :goto_38
:cond_86
iget-object v0, p0, Lcom/bbm/ui/c/bl;->f:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v2}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/bl;->f:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, p5}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/d/fd;)V
goto :goto_38
:cond_91
move v1, v2
goto :goto_52
.end method
.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300b9
const/4 v2, 0x0
invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/bbm/ui/c/bl;
invoke-direct {v2, p0}, Lcom/bbm/ui/c/bl;-><init>(Lcom/bbm/ui/c/bk;)V
const v0, 0x7f0a0441
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, v2, Lcom/bbm/ui/c/bl;->a:Landroid/view/ViewGroup;
const v0, 0x7f0a0442
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, v2, Lcom/bbm/ui/c/bl;->b:Lcom/bbm/ui/ObservingImageView;
const v0, 0x7f0a0443
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, v2, Lcom/bbm/ui/c/bl;->c:Lcom/bbm/ui/ObservingImageView;
const v0, 0x7f0a0444
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, v2, Lcom/bbm/ui/c/bl;->d:Landroid/view/ViewGroup;
const v0, 0x7f0a0445
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, v2, Lcom/bbm/ui/c/bl;->e:Lcom/bbm/ui/ObservingImageView;
const v0, 0x7f0a0446
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, v2, Lcom/bbm/ui/c/bl;->f:Lcom/bbm/ui/ObservingImageView;
const v0, 0x7f0a0447
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/c/bl;->g:Landroid/widget/TextView;
const v0, 0x7f0a0448
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, v2, Lcom/bbm/ui/c/bl;->h:Lcom/bbm/ui/InlineImageTextView;
const v0, 0x7f0a044a
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, v2, Lcom/bbm/ui/c/bl;->i:Lcom/bbm/ui/InlineImageTextView;
const v0, 0x7f0a0449
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/c/bl;->j:Landroid/widget/TextView;
const v0, 0x7f0a044c
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v2, Lcom/bbm/ui/c/bl;->k:Landroid/widget/ImageView;
const v0, 0x7f0a044b
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, v2, Lcom/bbm/ui/c/bl;->l:Landroid/widget/ProgressBar;
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
.method public final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
.registers 21
check-cast p2, Lcom/bbm/ui/activities/eu;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-virtual {v1}, Lcom/bbm/ui/c/at;->isAdded()Z
move-result v1
if-eqz v1, :cond_292
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/ui/c/bl;
iget-object v2, v1, Lcom/bbm/ui/c/bl;->h:Lcom/bbm/ui/InlineImageTextView;
const/4 v3, 0x0
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Lcom/bbm/ui/InlineImageTextView;->setTypeface(Landroid/graphics/Typeface;I)V
move-object/from16 v0, p2
iget-object v2, v0, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-nez v2, :cond_499
move-object/from16 v0, p2
iget-object v10, v0, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v2
iget-object v3, v10, Lcom/bbm/d/es;->q:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v7
iget-object v11, v10, Lcom/bbm/d/es;->r:Ljava/util/List;
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const/4 v2, 0x0
move v8, v2
:goto_3e
invoke-interface {v11}, Ljava/util/List;->size()I
move-result v2
if-ge v8, v2, :cond_d8
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v12
invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v12, v2}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v2
invoke-static {v2}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v12
if-lez v8, :cond_63
invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v13
if-nez v13, :cond_63
const-string v13, ", "
invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_63
invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-nez v8, :cond_99
iget-boolean v3, v10, Lcom/bbm/d/es;->i:Z
if-eqz v3, :cond_89
iget-boolean v3, v10, Lcom/bbm/d/es;->j:Z
if-nez v3, :cond_89
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v2
move-object/from16 v0, p2
iget-object v3, v0, Lcom/bbm/ui/activities/eu;->c:Lcom/bbm/d/ec;
invoke-virtual {v2, v3}, Lcom/bbm/d/a;->a(Lcom/bbm/d/ec;)Lcom/bbm/j/r;
move-result-object v2
move-object v3, v5
move-object v5, v2
move-object v2, v6
:goto_7f
add-int/lit8 v6, v8, 0x1
move v8, v6
move-object v6, v2
move-object/from16 v17, v3
move-object v3, v5
move-object/from16 v5, v17
goto :goto_3e
:cond_89
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v3
iget-object v12, v2, Lcom/bbm/d/gp;->A:Ljava/lang/String;
iget-object v2, v2, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {v3, v12, v2}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v2
move-object v3, v5
move-object v5, v2
move-object v2, v6
goto :goto_7f
:cond_99
const/4 v12, 0x1
if-ne v8, v12, :cond_ac
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v5
iget-object v12, v2, Lcom/bbm/d/gp;->A:Ljava/lang/String;
iget-object v2, v2, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {v5, v12, v2}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v2
move-object v5, v3
move-object v3, v2
move-object v2, v6
goto :goto_7f
:cond_ac
const/4 v12, 0x2
if-ne v8, v12, :cond_c1
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v6
iget-object v12, v2, Lcom/bbm/d/gp;->A:Ljava/lang/String;
iget-object v2, v2, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {v6, v12, v2}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v2
move-object/from16 v17, v5
move-object v5, v3
move-object/from16 v3, v17
goto :goto_7f
:cond_c1
const/4 v12, 0x3
if-ne v8, v12, :cond_5b4
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v4
iget-object v12, v2, Lcom/bbm/d/gp;->A:Ljava/lang/String;
iget-object v2, v2, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {v4, v12, v2}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v2
move-object v4, v2
move-object v2, v6
move-object/from16 v17, v5
move-object v5, v3
move-object/from16 v3, v17
goto :goto_7f
:cond_d8
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v2
iget-object v8, v10, Lcom/bbm/d/es;->b:Ljava/lang/String;
invoke-static {v8}, Lcom/bbm/d/a;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
iget-wide v12, v10, Lcom/bbm/d/es;->n:J
invoke-virtual {v2, v8, v12, v13}, Lcom/bbm/d/a;->a(Ljava/lang/String;J)Lcom/bbm/d/fg;
move-result-object v12
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v2
iget-object v8, v12, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v2, v8}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v13
move-object/from16 v0, p2
iget-object v2, v0, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;
iget-boolean v2, v2, Lcom/bbm/d/es;->j:Z
if-eqz v2, :cond_131
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v8, 0x0
invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->setLength(I)V
invoke-static {v2}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_10a
iget-object v2, v13, Lcom/bbm/d/gp;->d:Ljava/lang/String;
:cond_10a
move-object/from16 v0, p0
iget-object v8, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
const v14, 0x7f0e018e
invoke-virtual {v8, v14}, Lcom/bbm/ui/c/at;->getString(I)Ljava/lang/String;
move-result-object v8
const/4 v14, 0x2
new-array v14, v14, [Ljava/lang/Object;
const/4 v15, 0x0
move-object/from16 v0, p2
iget-object v0, v0, Lcom/bbm/ui/activities/eu;->c:Lcom/bbm/d/ec;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/bbm/d/ec;->k:Ljava/lang/String;
move-object/from16 v16, v0
aput-object v16, v14, v15
const/4 v15, 0x1
aput-object v2, v14, v15
invoke-static {v8, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_131
invoke-interface {v11}, Ljava/util/List;->size()I
move-result v2
if-nez v2, :cond_29d
const/4 v2, 0x1
new-instance v3, Lcom/bbm/d/fd;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-virtual {v4}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f0200d6
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
invoke-direct {v3, v4}, Lcom/bbm/d/fd;-><init>(Landroid/graphics/drawable/Drawable;)V
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
invoke-static/range {v1 .. v6}, Lcom/bbm/ui/c/bk;->a(Lcom/bbm/ui/c/bl;ILcom/bbm/d/fd;Lcom/bbm/d/fd;Lcom/bbm/d/fd;Lcom/bbm/d/fd;)V
move-object/from16 v0, p2
iget-object v2, v0, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;
iget-boolean v2, v2, Lcom/bbm/d/es;->i:Z
if-eqz v2, :cond_293
iget-object v2, v1, Lcom/bbm/ui/c/bl;->h:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
:goto_163
const/4 v9, 0x0
iget-boolean v2, v10, Lcom/bbm/d/es;->k:Z
if-nez v2, :cond_2f5
invoke-interface {v11}, Ljava/util/List;->size()I
move-result v2
if-lez v2, :cond_2d7
const/4 v2, 0x0
invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
move-object v8, v2
:goto_176
move-object/from16 v0, p2
iget-boolean v2, v0, Lcom/bbm/ui/activities/eu;->d:Z
if-eqz v2, :cond_2db
iget-object v2, v1, Lcom/bbm/ui/c/bl;->i:Lcom/bbm/ui/InlineImageTextView;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-virtual {v3}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0e02a5
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
:goto_190
if-eqz v8, :cond_30d
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v2
invoke-virtual {v2, v8}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v2
iget-boolean v2, v2, Lcom/bbm/d/gp;->w:Z
:goto_19c
iget-object v3, v10, Lcom/bbm/d/es;->d:Lorg/json/JSONObject;
const-string v4, "message"
invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_1af
iget-object v4, v1, Lcom/bbm/ui/c/bl;->i:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v4, v3}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
:cond_1af
iget-boolean v4, v12, Lcom/bbm/d/fg;->j:Z
if-eqz v4, :cond_383
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_370
iget-object v3, v12, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
sget-object v4, Lcom/bbm/d/fk;->b:Lcom/bbm/d/fk;
if-ne v3, v4, :cond_310
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->m(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
:goto_1c7
iget-object v4, v12, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v5, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;
if-eq v4, v5, :cond_37a
iget-object v4, v1, Lcom/bbm/ui/c/bl;->h:Lcom/bbm/ui/InlineImageTextView;
const/4 v5, 0x0
const/4 v6, 0x1
invoke-virtual {v4, v5, v6}, Lcom/bbm/ui/InlineImageTextView;->setTypeface(Landroid/graphics/Typeface;I)V
:goto_1d4
iget-object v4, v1, Lcom/bbm/ui/c/bl;->i:Lcom/bbm/ui/InlineImageTextView;
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual {v4, v3, v5, v6, v7}, Lcom/bbm/ui/InlineImageTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
iget-object v3, v1, Lcom/bbm/ui/c/bl;->h:Lcom/bbm/ui/InlineImageTextView;
if-eqz v2, :cond_44b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v2}, Lcom/bbm/ui/c/at;->A(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v2
:goto_1e8
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
invoke-virtual {v3, v2, v4, v5, v6}, Lcom/bbm/ui/InlineImageTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
iget-wide v2, v12, Lcom/bbm/d/fg;->s:J
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-lez v2, :cond_455
iget-object v2, v1, Lcom/bbm/ui/c/bl;->j:Landroid/widget/TextView;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->b(Lcom/bbm/ui/c/at;)Landroid/content/Context;
move-result-object v3
iget-wide v4, v12, Lcom/bbm/d/fg;->s:J
invoke-static {v3, v4, v5}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_209
iget-object v2, v1, Lcom/bbm/ui/c/bl;->j:Landroid/widget/TextView;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v2, v1, Lcom/bbm/ui/c/bl;->k:Landroid/widget/ImageView;
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v2, v1, Lcom/bbm/ui/c/bl;->l:Landroid/widget/ProgressBar;
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V
invoke-interface {v11}, Ljava/util/List;->size()I
move-result v2
const/4 v3, 0x1
if-ne v2, v3, :cond_292
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v3
const/4 v2, 0x0
invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v3, v2}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->b(Lcom/bbm/ui/c/at;)Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;
move-result-object v3
invoke-virtual {v3, v2}, Lcom/bbm/n/b;->a(Lcom/bbm/d/gp;)Z
move-result v4
invoke-virtual {v3, v2}, Lcom/bbm/n/b;->b(Lcom/bbm/d/gp;)Z
move-result v5
invoke-virtual {v3}, Lcom/bbm/n/b;->f()Z
move-result v6
invoke-virtual {v3}, Lcom/bbm/n/b;->c()J
move-result-wide v7
const/4 v2, 0x0
if-eqz v4, :cond_46f
iget-object v2, v1, Lcom/bbm/ui/c/bl;->l:Landroid/widget/ProgressBar;
const/4 v4, 0x0
invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V
invoke-virtual {v3}, Lcom/bbm/n/b;->h()I
move-result v2
const/4 v3, 0x2
if-ne v2, v3, :cond_45e
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v2}, Lcom/bbm/ui/c/at;->b(Lcom/bbm/ui/c/at;)Landroid/content/Context;
move-result-object v2
const v3, 0x7f0e0774
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
:goto_26e
:cond_26e
if-eqz v2, :cond_292
iget-object v3, v1, Lcom/bbm/ui/c/bl;->j:Landroid/widget/TextView;
const/16 v4, 0x8
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v3, v1, Lcom/bbm/ui/c/bl;->k:Landroid/widget/ImageView;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v3, v1, Lcom/bbm/ui/c/bl;->i:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v3, v2}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, v1, Lcom/bbm/ui/c/bl;->i:Lcom/bbm/ui/InlineImageTextView;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v2}, Lcom/bbm/ui/c/at;->n(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v2
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual {v1, v2, v3, v4, v5}, Lcom/bbm/ui/InlineImageTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
:goto_292
:cond_292
return-void
:cond_293
iget-object v2, v1, Lcom/bbm/ui/c/bl;->h:Lcom/bbm/ui/InlineImageTextView;
const v3, 0x7f0e0237
invoke-virtual {v2, v3}, Lcom/bbm/ui/InlineImageTextView;->setText(I)V
goto/16 :goto_163
:cond_29d
invoke-interface {v11}, Ljava/util/List;->size()I
move-result v2
if-nez v3, :cond_2bb
const/4 v3, 0x0
:goto_2a4
if-nez v4, :cond_2c2
const/4 v4, 0x0
:goto_2a7
if-nez v5, :cond_2c9
const/4 v5, 0x0
:goto_2aa
if-nez v6, :cond_2d0
const/4 v6, 0x0
:goto_2ad
invoke-static/range {v1 .. v6}, Lcom/bbm/ui/c/bk;->a(Lcom/bbm/ui/c/bl;ILcom/bbm/d/fd;Lcom/bbm/d/fd;Lcom/bbm/d/fd;Lcom/bbm/d/fd;)V
iget-object v2, v1, Lcom/bbm/ui/c/bl;->h:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_163
:cond_2bb
invoke-interface {v3}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/bbm/d/fd;
goto :goto_2a4
:cond_2c2
invoke-interface {v4}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/bbm/d/fd;
goto :goto_2a7
:cond_2c9
invoke-interface {v5}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/bbm/d/fd;
goto :goto_2aa
:cond_2d0
invoke-interface {v6}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/bbm/d/fd;
goto :goto_2ad
:cond_2d7
const/4 v2, 0x0
move-object v8, v2
goto/16 :goto_176
:cond_2db
iget-object v14, v1, Lcom/bbm/ui/c/bl;->i:Lcom/bbm/ui/InlineImageTextView;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v2}, Lcom/bbm/ui/c/at;->b(Lcom/bbm/ui/c/at;)Landroid/content/Context;
move-result-object v2
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v3
move-object v4, v12
move-object v5, v10
move-object v6, v13
invoke-static/range {v2 .. v7}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;Lcom/bbm/d/es;Lcom/bbm/d/gp;Lcom/bbm/d/gp;)Landroid/text/Spanned;
move-result-object v2
invoke-virtual {v14, v2}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_190
:cond_2f5
iget-object v8, v1, Lcom/bbm/ui/c/bl;->i:Lcom/bbm/ui/InlineImageTextView;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v2}, Lcom/bbm/ui/c/at;->b(Lcom/bbm/ui/c/at;)Landroid/content/Context;
move-result-object v2
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v3
move-object v4, v12
move-object v5, v10
move-object v6, v13
invoke-static/range {v2 .. v7}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;Lcom/bbm/d/es;Lcom/bbm/d/gp;Lcom/bbm/d/gp;)Landroid/text/Spanned;
move-result-object v2
invoke-virtual {v8, v2}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
:cond_30d
move v2, v9
goto/16 :goto_19c
:cond_310
iget-object v3, v12, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
sget-object v4, Lcom/bbm/d/fk;->r:Lcom/bbm/d/fk;
if-ne v3, v4, :cond_320
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->n(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1c7
:cond_320
iget-object v3, v12, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
sget-object v4, Lcom/bbm/d/fk;->f:Lcom/bbm/d/fk;
if-eq v3, v4, :cond_32c
iget-object v3, v12, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
sget-object v4, Lcom/bbm/d/fk;->e:Lcom/bbm/d/fk;
if-ne v3, v4, :cond_336
:cond_32c
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->o(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1c7
:cond_336
iget-object v3, v12, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v4, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;
if-ne v3, v4, :cond_356
iget-object v3, v12, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
sget-object v4, Lcom/bbm/d/fk;->c:Lcom/bbm/d/fk;
if-ne v3, v4, :cond_34c
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->p(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1c7
:cond_34c
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->q(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1c7
:cond_356
iget-object v3, v12, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
sget-object v4, Lcom/bbm/d/fk;->c:Lcom/bbm/d/fk;
if-ne v3, v4, :cond_366
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->r(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1c7
:cond_366
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->s(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1c7
:cond_370
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->t(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1c7
:cond_37a
iget-object v4, v1, Lcom/bbm/ui/c/bl;->h:Lcom/bbm/ui/InlineImageTextView;
const/4 v5, 0x0
const/4 v6, 0x0
invoke-virtual {v4, v5, v6}, Lcom/bbm/ui/InlineImageTextView;->setTypeface(Landroid/graphics/Typeface;I)V
goto/16 :goto_1d4
:cond_383
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_393
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->t(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1d4
:cond_393
iget-object v3, v12, Lcom/bbm/d/fg;->n:Lcom/bbm/d/fi;
sget-object v4, Lcom/bbm/d/fi;->c:Lcom/bbm/d/fi;
if-eq v3, v4, :cond_441
iget-object v3, v12, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v4, Lcom/bbm/d/fj;->c:Lcom/bbm/d/fj;
if-ne v3, v4, :cond_3d5
iget-object v3, v12, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
sget-object v4, Lcom/bbm/d/fk;->c:Lcom/bbm/d/fk;
if-ne v3, v4, :cond_3af
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->r(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1d4
:cond_3af
iget-object v3, v12, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
sget-object v4, Lcom/bbm/d/fk;->r:Lcom/bbm/d/fk;
if-eq v3, v4, :cond_441
iget-object v3, v12, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
sget-object v4, Lcom/bbm/d/fk;->f:Lcom/bbm/d/fk;
if-eq v3, v4, :cond_3c1
iget-object v3, v12, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
sget-object v4, Lcom/bbm/d/fk;->e:Lcom/bbm/d/fk;
if-ne v3, v4, :cond_3cb
:cond_3c1
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->o(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1d4
:cond_3cb
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->u(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1d4
:cond_3d5
iget-object v3, v12, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v4, Lcom/bbm/d/fj;->d:Lcom/bbm/d/fj;
if-ne v3, v4, :cond_3e5
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->v(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1d4
:cond_3e5
iget-object v3, v12, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v4, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;
if-ne v3, v4, :cond_403
iget-boolean v3, v10, Lcom/bbm/d/es;->k:Z
if-eqz v3, :cond_3f9
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->q(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1d4
:cond_3f9
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->w(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1d4
:cond_403
iget-object v3, v12, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v4, Lcom/bbm/d/fj;->e:Lcom/bbm/d/fj;
if-ne v3, v4, :cond_421
iget-boolean v3, v10, Lcom/bbm/d/es;->k:Z
if-eqz v3, :cond_417
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->q(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1d4
:cond_417
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->x(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1d4
:cond_421
iget-object v3, v12, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v4, Lcom/bbm/d/fj;->b:Lcom/bbm/d/fj;
if-ne v3, v4, :cond_431
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->y(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1d4
:cond_431
iget-object v3, v12, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v4, Lcom/bbm/d/fj;->a:Lcom/bbm/d/fj;
if-ne v3, v4, :cond_441
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->z(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1d4
:cond_441
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->n(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
goto/16 :goto_1d4
:cond_44b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v2}, Lcom/bbm/ui/c/at;->n(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v2
goto/16 :goto_1e8
:cond_455
iget-object v2, v1, Lcom/bbm/ui/c/bl;->j:Landroid/widget/TextView;
const-string v3, ""
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_209
:cond_45e
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v2}, Lcom/bbm/ui/c/at;->b(Lcom/bbm/ui/c/at;)Landroid/content/Context;
move-result-object v2
const v3, 0x7f0e0775
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
goto/16 :goto_26e
:cond_46f
if-eqz v5, :cond_26e
iget-object v2, v1, Lcom/bbm/ui/c/bl;->l:Landroid/widget/ProgressBar;
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v2}, Lcom/bbm/ui/c/at;->b(Lcom/bbm/ui/c/at;)Landroid/content/Context;
move-result-object v3
if-eqz v6, :cond_495
const v2, 0x7f0e0777
:goto_485
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-static {v7, v8}, Lcom/bbm/util/fb;->c(J)Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v5
invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
goto/16 :goto_26e
:cond_495
const v2, 0x7f0e0776
goto :goto_485
:cond_499
move-object/from16 v0, p2
iget-object v7, v0, Lcom/bbm/ui/activities/eu;->b:Lcom/bbm/g/q;
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v2
iget-object v3, v7, Lcom/bbm/g/q;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v8
const/4 v2, 0x0
iget-object v3, v8, Lcom/bbm/g/a;->d:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
move-result v3
if-nez v3, :cond_4b6
iget-object v2, v8, Lcom/bbm/g/a;->d:Ljava/lang/String;
invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
move-result-object v2
:cond_4b6
if-nez v2, :cond_4d1
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-virtual {v2}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f070007
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;
move-result-object v3
iget-wide v4, v8, Lcom/bbm/g/a;->h:J
long-to-int v2, v4
invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
:cond_4d1
move-object v4, v2
const/4 v2, 0x1
new-instance v3, Lcom/bbm/d/fd;
invoke-direct {v3, v4}, Lcom/bbm/d/fd;-><init>(Landroid/graphics/drawable/Drawable;)V
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
invoke-static/range {v1 .. v6}, Lcom/bbm/ui/c/bk;->a(Lcom/bbm/ui/c/bl;ILcom/bbm/d/fd;Lcom/bbm/d/fd;Lcom/bbm/d/fd;Lcom/bbm/d/fd;)V
iget-object v2, v1, Lcom/bbm/ui/c/bl;->h:Lcom/bbm/ui/InlineImageTextView;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
const v4, 0x7f0e023a
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
iget-object v8, v8, Lcom/bbm/g/a;->r:Ljava/lang/String;
aput-object v8, v5, v6
const/4 v6, 0x1
move-object/from16 v0, p0
iget-object v8, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v8}, Lcom/bbm/ui/c/at;->b(Lcom/bbm/ui/c/at;)Landroid/content/Context;
move-result-object v8
invoke-static {v8, v7}, Lcom/bbm/util/bm;->a(Landroid/content/Context;Lcom/bbm/g/q;)Ljava/lang/String;
move-result-object v8
aput-object v8, v5, v6
invoke-virtual {v3, v4, v5}, Lcom/bbm/ui/c/at;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, v1, Lcom/bbm/ui/c/bl;->h:Lcom/bbm/ui/InlineImageTextView;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->n(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
invoke-virtual {v2, v3, v4, v5, v6}, Lcom/bbm/ui/InlineImageTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v2
iget-object v3, v7, Lcom/bbm/g/q;->k:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/g/am;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_58c
iget-object v3, v1, Lcom/bbm/ui/c/bl;->i:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v3, v2}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
:goto_52a
iget-boolean v3, v7, Lcom/bbm/g/q;->e:Z
if-eqz v3, :cond_594
iget-object v3, v1, Lcom/bbm/ui/c/bl;->i:Lcom/bbm/ui/InlineImageTextView;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v4}, Lcom/bbm/ui/c/at;->s(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v4
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v8, 0x0
invoke-virtual {v3, v4, v5, v6, v8}, Lcom/bbm/ui/InlineImageTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
iget-object v3, v1, Lcom/bbm/ui/c/bl;->h:Lcom/bbm/ui/InlineImageTextView;
const/4 v4, 0x0
const/4 v5, 0x1
invoke-virtual {v3, v4, v5}, Lcom/bbm/ui/InlineImageTextView;->setTypeface(Landroid/graphics/Typeface;I)V
:goto_545
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_55b
iget-object v2, v1, Lcom/bbm/ui/c/bl;->i:Lcom/bbm/ui/InlineImageTextView;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->t(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v3
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
invoke-virtual {v2, v3, v4, v5, v6}, Lcom/bbm/ui/InlineImageTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
:cond_55b
iget-wide v2, v7, Lcom/bbm/g/q;->h:J
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-lez v2, :cond_5ac
iget-object v2, v1, Lcom/bbm/ui/c/bl;->j:Landroid/widget/TextView;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v3}, Lcom/bbm/ui/c/at;->b(Lcom/bbm/ui/c/at;)Landroid/content/Context;
move-result-object v3
iget-wide v4, v7, Lcom/bbm/g/q;->h:J
invoke-static {v3, v4, v5}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_576
iget-object v2, v1, Lcom/bbm/ui/c/bl;->j:Landroid/widget/TextView;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v2, v1, Lcom/bbm/ui/c/bl;->k:Landroid/widget/ImageView;
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v1, v1, Lcom/bbm/ui/c/bl;->l:Landroid/widget/ProgressBar;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
goto/16 :goto_292
:cond_58c
iget-object v3, v1, Lcom/bbm/ui/c/bl;->i:Lcom/bbm/ui/InlineImageTextView;
iget-object v4, v7, Lcom/bbm/g/q;->g:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_52a
:cond_594
iget-object v3, v1, Lcom/bbm/ui/c/bl;->i:Lcom/bbm/ui/InlineImageTextView;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/bbm/ui/c/bk;->b:Lcom/bbm/ui/c/at;
invoke-static {v4}, Lcom/bbm/ui/c/at;->q(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
move-result-object v4
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v8, 0x0
invoke-virtual {v3, v4, v5, v6, v8}, Lcom/bbm/ui/InlineImageTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
iget-object v3, v1, Lcom/bbm/ui/c/bl;->h:Lcom/bbm/ui/InlineImageTextView;
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Lcom/bbm/ui/InlineImageTextView;->setTypeface(Landroid/graphics/Typeface;I)V
goto :goto_545
:cond_5ac
iget-object v2, v1, Lcom/bbm/ui/c/bl;->j:Landroid/widget/TextView;
const-string v3, ""
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_576
:cond_5b4
move-object v2, v6
move-object/from16 v17, v5
move-object v5, v3
move-object/from16 v3, v17
goto/16 :goto_7f
.end method