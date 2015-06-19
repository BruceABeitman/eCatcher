.class public final Lcom/bbm/ui/c/dc;
.super Lcom/bbm/ui/ee;
.source "GroupUpdatesFragment.java"
.field protected final b:Landroid/content/Context;
.field  c:Lcom/bbm/util/b/g;
.field final synthetic d:Lcom/bbm/ui/c/cz;
.method public constructor <init>(Lcom/bbm/ui/c/cz;Landroid/content/Context;Lcom/bbm/j/j;)V
.registers 8
iput-object p1, p0, Lcom/bbm/ui/c/dc;->d:Lcom/bbm/ui/c/cz;
invoke-direct {p0, p3}, Lcom/bbm/ui/ee;-><init>(Lcom/bbm/j/j;)V
iput-object p2, p0, Lcom/bbm/ui/c/dc;->b:Landroid/content/Context;
new-instance v0, Lcom/bbm/util/b/g;
invoke-virtual {p1}, Lcom/bbm/ui/c/cz;->getActivity()Landroid/app/Activity;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/c/dc;->b:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0b003c
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F
move-result v2
float-to-int v2, v2
invoke-direct {v0, v1, v2}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;I)V
iput-object v0, p0, Lcom/bbm/ui/c/dc;->c:Lcom/bbm/util/b/g;
new-instance v0, Lcom/bbm/util/b/f;
invoke-direct {v0}, Lcom/bbm/util/b/f;-><init>()V
iget-object v1, p0, Lcom/bbm/ui/c/dc;->c:Lcom/bbm/util/b/g;
invoke-virtual {v1, v0}, Lcom/bbm/util/b/g;->a(Lcom/bbm/util/b/f;)V
return-void
.end method
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300cf
const/4 v2, 0x0
invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/bbm/ui/c/dd;
invoke-direct {v2, p0}, Lcom/bbm/ui/c/dd;-><init>(Lcom/bbm/ui/c/dc;)V
const v0, 0x7f0a03e6
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, v2, Lcom/bbm/ui/c/dd;->a:Lcom/bbm/ui/ObservingImageView;
const v0, 0x7f0a03ea
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/c/dd;->b:Landroid/widget/TextView;
const v0, 0x7f0a03e9
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/c/dd;->c:Landroid/widget/TextView;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
.registers 14
const/4 v10, 0x3
const/4 v9, 0x2
const/4 v8, 0x1
const/4 v7, 0x0
check-cast p2, Lcom/bbm/g/ak;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/dd;
iget-object v1, p0, Lcom/bbm/ui/c/dc;->d:Lcom/bbm/ui/c/cz;
invoke-virtual {v1}, Lcom/bbm/ui/c/cz;->isAdded()Z
move-result v1
if-eqz v1, :cond_8d
iget-object v1, p0, Lcom/bbm/ui/c/dc;->d:Lcom/bbm/ui/c/cz;
invoke-virtual {v1}, Lcom/bbm/ui/c/cz;->isHidden()Z
move-result v1
if-nez v1, :cond_8d
iget-object v1, p0, Lcom/bbm/ui/c/dc;->d:Lcom/bbm/ui/c/cz;
invoke-virtual {v1}, Lcom/bbm/ui/c/cz;->isDetached()Z
move-result v1
if-nez v1, :cond_8d
iget-object v1, v0, Lcom/bbm/ui/c/dd;->c:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/c/dc;->d:Lcom/bbm/ui/c/cz;
invoke-virtual {v2}, Lcom/bbm/ui/c/cz;->getActivity()Landroid/app/Activity;
move-result-object v2
iget-wide v3, p2, Lcom/bbm/g/ak;->k:J
invoke-static {v2, v3, v4}, Lcom/bbm/util/bd;->c(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v1, 0x0
iget-object v2, p2, Lcom/bbm/g/ak;->m:Lcom/bbm/g/al;
iget-object v3, p2, Lcom/bbm/g/ak;->b:Ljava/lang/String;
invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iget-object v4, p2, Lcom/bbm/g/ak;->g:Ljava/lang/String;
invoke-static {v4}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iget-object v5, p2, Lcom/bbm/g/ak;->i:Ljava/lang/String;
invoke-static {v5}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
sget-object v6, Lcom/bbm/g/al;->a:Lcom/bbm/g/al;
if-ne v2, v6, :cond_8e
iget-object v1, p0, Lcom/bbm/ui/c/dc;->b:Landroid/content/Context;
const v2, 0x7f0e0445
new-array v4, v8, [Ljava/lang/Object;
aput-object v3, v4, v7
invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
move-object v2, v1
:goto_60
iget-object v1, v0, Lcom/bbm/ui/c/dd;->b:Landroid/widget/TextView;
check-cast v1, Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v1, v2}, Lcom/bbm/ui/InlineImageTextView;->setHtmlText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/bbm/ui/c/dc;->d:Lcom/bbm/ui/c/cz;
invoke-static {v1}, Lcom/bbm/ui/c/cz;->c(Lcom/bbm/ui/c/cz;)Lcom/bbm/g/am;
move-result-object v1
iget-object v2, p2, Lcom/bbm/g/ak;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v1
iget-object v1, v1, Lcom/bbm/g/o;->a:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_1b4
iget-object v0, v0, Lcom/bbm/ui/c/dd;->a:Lcom/bbm/ui/ObservingImageView;
iget-object v1, p0, Lcom/bbm/ui/c/dc;->d:Lcom/bbm/ui/c/cz;
invoke-virtual {v1}, Lcom/bbm/ui/c/cz;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0200d6
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_8d
:cond_8d
return-void
:cond_8e
sget-object v6, Lcom/bbm/g/al;->b:Lcom/bbm/g/al;
if-ne v2, v6, :cond_a1
iget-object v1, p0, Lcom/bbm/ui/c/dc;->b:Landroid/content/Context;
const v2, 0x7f0e0446
new-array v4, v8, [Ljava/lang/Object;
aput-object v3, v4, v7
invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
move-object v2, v1
goto :goto_60
:cond_a1
sget-object v6, Lcom/bbm/g/al;->c:Lcom/bbm/g/al;
if-ne v2, v6, :cond_b4
iget-object v1, p0, Lcom/bbm/ui/c/dc;->b:Landroid/content/Context;
const v2, 0x7f0e0448
new-array v4, v8, [Ljava/lang/Object;
aput-object v3, v4, v7
invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
move-object v2, v1
goto :goto_60
:cond_b4
sget-object v6, Lcom/bbm/g/al;->d:Lcom/bbm/g/al;
if-ne v2, v6, :cond_da
iget-object v1, p0, Lcom/bbm/ui/c/dc;->d:Lcom/bbm/ui/c/cz;
invoke-static {v1}, Lcom/bbm/ui/c/cz;->c(Lcom/bbm/ui/c/cz;)Lcom/bbm/g/am;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/c/dc;->d:Lcom/bbm/ui/c/cz;
invoke-static {v2}, Lcom/bbm/ui/c/cz;->b(Lcom/bbm/ui/c/cz;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->j(Ljava/lang/String;)Lcom/bbm/j/w;
iget-object v1, p0, Lcom/bbm/ui/c/dc;->b:Landroid/content/Context;
const v2, 0x7f0e0449
new-array v6, v10, [Ljava/lang/Object;
aput-object v3, v6, v7
aput-object v4, v6, v8
aput-object v5, v6, v9
invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
move-object v2, v1
goto :goto_60
:cond_da
sget-object v6, Lcom/bbm/g/al;->e:Lcom/bbm/g/al;
if-ne v2, v6, :cond_101
iget-object v1, p0, Lcom/bbm/ui/c/dc;->d:Lcom/bbm/ui/c/cz;
invoke-static {v1}, Lcom/bbm/ui/c/cz;->c(Lcom/bbm/ui/c/cz;)Lcom/bbm/g/am;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/c/dc;->d:Lcom/bbm/ui/c/cz;
invoke-static {v2}, Lcom/bbm/ui/c/cz;->b(Lcom/bbm/ui/c/cz;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->j(Ljava/lang/String;)Lcom/bbm/j/w;
iget-object v1, p0, Lcom/bbm/ui/c/dc;->b:Landroid/content/Context;
const v2, 0x7f0e044c
new-array v6, v10, [Ljava/lang/Object;
aput-object v3, v6, v7
aput-object v4, v6, v8
aput-object v5, v6, v9
invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
move-object v2, v1
goto/16 :goto_60
:cond_101
sget-object v6, Lcom/bbm/g/al;->f:Lcom/bbm/g/al;
if-ne v2, v6, :cond_128
iget-object v1, p0, Lcom/bbm/ui/c/dc;->d:Lcom/bbm/ui/c/cz;
invoke-static {v1}, Lcom/bbm/ui/c/cz;->c(Lcom/bbm/ui/c/cz;)Lcom/bbm/g/am;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/c/dc;->d:Lcom/bbm/ui/c/cz;
invoke-static {v2}, Lcom/bbm/ui/c/cz;->b(Lcom/bbm/ui/c/cz;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->j(Ljava/lang/String;)Lcom/bbm/j/w;
iget-object v1, p0, Lcom/bbm/ui/c/dc;->b:Landroid/content/Context;
const v2, 0x7f0e044b
new-array v6, v10, [Ljava/lang/Object;
aput-object v3, v6, v7
aput-object v4, v6, v8
aput-object v5, v6, v9
invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
move-object v2, v1
goto/16 :goto_60
:cond_128
sget-object v6, Lcom/bbm/g/al;->g:Lcom/bbm/g/al;
if-ne v2, v6, :cond_14f
iget-object v1, p0, Lcom/bbm/ui/c/dc;->d:Lcom/bbm/ui/c/cz;
invoke-static {v1}, Lcom/bbm/ui/c/cz;->c(Lcom/bbm/ui/c/cz;)Lcom/bbm/g/am;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/c/dc;->d:Lcom/bbm/ui/c/cz;
invoke-static {v2}, Lcom/bbm/ui/c/cz;->b(Lcom/bbm/ui/c/cz;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->j(Ljava/lang/String;)Lcom/bbm/j/w;
iget-object v1, p0, Lcom/bbm/ui/c/dc;->b:Landroid/content/Context;
const v2, 0x7f0e044a
new-array v6, v10, [Ljava/lang/Object;
aput-object v3, v6, v7
aput-object v4, v6, v8
aput-object v5, v6, v9
invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
move-object v2, v1
goto/16 :goto_60
:cond_14f
sget-object v4, Lcom/bbm/g/al;->c:Lcom/bbm/g/al;
if-ne v2, v4, :cond_174
iget-object v1, p0, Lcom/bbm/ui/c/dc;->d:Lcom/bbm/ui/c/cz;
invoke-static {v1}, Lcom/bbm/ui/c/cz;->c(Lcom/bbm/ui/c/cz;)Lcom/bbm/g/am;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/c/dc;->d:Lcom/bbm/ui/c/cz;
invoke-static {v2}, Lcom/bbm/ui/c/cz;->b(Lcom/bbm/ui/c/cz;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->j(Ljava/lang/String;)Lcom/bbm/j/w;
iget-object v1, p0, Lcom/bbm/ui/c/dc;->b:Landroid/content/Context;
const v2, 0x7f0e0442
new-array v4, v9, [Ljava/lang/Object;
aput-object v3, v4, v7
aput-object v5, v4, v8
invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
move-object v2, v1
goto/16 :goto_60
:cond_174
sget-object v4, Lcom/bbm/g/al;->i:Lcom/bbm/g/al;
if-ne v2, v4, :cond_188
iget-object v1, p0, Lcom/bbm/ui/c/dc;->b:Landroid/content/Context;
const v2, 0x7f0e0447
new-array v4, v8, [Ljava/lang/Object;
aput-object v3, v4, v7
invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
move-object v2, v1
goto/16 :goto_60
:cond_188
sget-object v4, Lcom/bbm/g/al;->k:Lcom/bbm/g/al;
if-ne v2, v4, :cond_19e
iget-object v1, p0, Lcom/bbm/ui/c/dc;->b:Landroid/content/Context;
const v2, 0x7f0e0444
new-array v4, v9, [Ljava/lang/Object;
aput-object v3, v4, v7
aput-object v5, v4, v8
invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
move-object v2, v1
goto/16 :goto_60
:cond_19e
sget-object v4, Lcom/bbm/g/al;->l:Lcom/bbm/g/al;
if-ne v2, v4, :cond_1bd
iget-object v1, p0, Lcom/bbm/ui/c/dc;->b:Landroid/content/Context;
const v2, 0x7f0e0443
new-array v4, v9, [Ljava/lang/Object;
aput-object v3, v4, v7
aput-object v5, v4, v8
invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
move-object v2, v1
goto/16 :goto_60
:cond_1b4
iget-object v2, p0, Lcom/bbm/ui/c/dc;->c:Lcom/bbm/util/b/g;
iget-object v0, v0, Lcom/bbm/ui/c/dd;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v2, v1, v0}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
goto/16 :goto_8d
:cond_1bd
move-object v2, v1
goto/16 :goto_60
.end method