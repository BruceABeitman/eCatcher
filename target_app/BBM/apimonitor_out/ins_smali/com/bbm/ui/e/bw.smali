.class final Lcom/bbm/ui/e/bw;
.super Lcom/bbm/j/k;
.source "SharedAdHolder.java"
.field final synthetic a:Lcom/bbm/ui/e/bt;
.method constructor <init>(Lcom/bbm/ui/e/bt;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
invoke-static {v2}, Lcom/bbm/ui/e/bt;->c(Lcom/bbm/ui/e/bt;)Lcom/bbm/d/fg;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/fg;->a:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_b3
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
invoke-static {v3}, Lcom/bbm/ui/e/bt;->c(Lcom/bbm/ui/e/bt;)Lcom/bbm/d/fg;
move-result-object v3
iget-object v3, v3, Lcom/bbm/d/fg;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/b/q;->b(Ljava/lang/String;)Lcom/bbm/b/a;
move-result-object v2
iget-object v3, v2, Lcom/bbm/b/a;->u:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v3, v4, :cond_27
:goto_26
:cond_26
return-void
:cond_27
iget-object v3, v2, Lcom/bbm/b/a;->u:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v3, v4, :cond_b3
iget-object v3, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
invoke-static {v3}, Lcom/bbm/ui/e/bt;->d(Lcom/bbm/ui/e/bt;)Landroid/widget/RelativeLayout;
move-result-object v3
invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v3, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
invoke-static {v3}, Lcom/bbm/ui/e/bt;->e(Lcom/bbm/ui/e/bt;)Landroid/widget/TextView;
move-result-object v3
iget-object v4, v2, Lcom/bbm/b/a;->q:Ljava/lang/String;
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
invoke-static {v3}, Lcom/bbm/ui/e/bt;->f(Lcom/bbm/ui/e/bt;)Landroid/widget/TextView;
move-result-object v3
iget-object v4, v2, Lcom/bbm/b/a;->g:Ljava/lang/String;
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
invoke-static {v3}, Lcom/bbm/ui/e/bt;->g(Lcom/bbm/ui/e/bt;)Landroid/widget/TextView;
move-result-object v3
iget-object v4, v2, Lcom/bbm/b/a;->d:Ljava/lang/String;
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
invoke-static {v3}, Lcom/bbm/ui/e/bt;->g(Lcom/bbm/ui/e/bt;)Landroid/widget/TextView;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v3, v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v3, v2, Lcom/bbm/b/a;->j:Lorg/json/JSONObject;
const-string v4, "interstitialImage"
invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_eb
iget-object v4, v2, Lcom/bbm/b/a;->i:Ljava/lang/String;
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_eb
iget-object v3, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
invoke-static {v3}, Lcom/bbm/ui/e/bt;->h(Lcom/bbm/ui/e/bt;)Lcom/bbm/ui/ObservingImageView;
move-result-object v3
const/4 v4, 0x4
invoke-virtual {v3, v4}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
const-string v3, "shared ads no image"
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v3, v0}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_88
:goto_88
iget-boolean v0, v2, Lcom/bbm/b/a;->l:Z
if-nez v0, :cond_9d
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
sget-object v3, Lcom/bbm/b/ai;->a:Lcom/bbm/b/ai;
sget-object v4, Lcom/bbm/b/aj;->a:Lcom/bbm/b/aj;
iget-object v5, v2, Lcom/bbm/b/a;->h:Ljava/lang/String;
invoke-static {v3, v4, v5}, Lcom/bbm/b/v;->a(Lcom/bbm/b/ai;Lcom/bbm/b/aj;Ljava/lang/String;)Lcom/bbm/b/ah;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
:cond_9d
iget-boolean v0, v2, Lcom/bbm/b/a;->n:Z
if-nez v0, :cond_b2
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
sget-object v3, Lcom/bbm/b/ai;->b:Lcom/bbm/b/ai;
sget-object v4, Lcom/bbm/b/aj;->a:Lcom/bbm/b/aj;
iget-object v2, v2, Lcom/bbm/b/a;->h:Ljava/lang/String;
invoke-static {v3, v4, v2}, Lcom/bbm/b/v;->a(Lcom/bbm/b/ai;Lcom/bbm/b/aj;Ljava/lang/String;)Lcom/bbm/b/ah;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
:cond_b2
move v0, v1
:cond_b3
if-nez v0, :cond_26
iget-object v0, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
invoke-static {v0}, Lcom/bbm/ui/e/bt;->d(Lcom/bbm/ui/e/bt;)Landroid/widget/RelativeLayout;
move-result-object v0
const/16 v2, 0x8
invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
invoke-static {v0}, Lcom/bbm/ui/e/bt;->g(Lcom/bbm/ui/e/bt;)Landroid/widget/TextView;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
invoke-static {v2}, Lcom/bbm/ui/e/bt;->j(Lcom/bbm/ui/e/bt;)Landroid/content/Context;
move-result-object v2
const v3, 0x7f0e00f2
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
invoke-static {v0}, Lcom/bbm/ui/e/bt;->g(Lcom/bbm/ui/e/bt;)Landroid/widget/TextView;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
invoke-static {v2}, Lcom/bbm/ui/e/bt;->g(Lcom/bbm/ui/e/bt;)Landroid/widget/TextView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;
move-result-object v2
invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
goto/16 :goto_26
:cond_eb
iget-object v4, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
invoke-static {v4}, Lcom/bbm/ui/e/bt;->h(Lcom/bbm/ui/e/bt;)Lcom/bbm/ui/ObservingImageView;
move-result-object v4
invoke-virtual {v4, v0}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_10b
iget-object v0, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
invoke-static {v0}, Lcom/bbm/ui/e/bt;->i(Lcom/bbm/ui/e/bt;)Lcom/bbm/util/b/i;
move-result-object v0
iget-object v4, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
invoke-static {v4}, Lcom/bbm/ui/e/bt;->h(Lcom/bbm/ui/e/bt;)Lcom/bbm/ui/ObservingImageView;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lcom/bbm/util/b/i;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
goto/16 :goto_88
:cond_10b
iget-object v0, v2, Lcom/bbm/b/a;->i:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_88
iget-object v0, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
invoke-static {v0}, Lcom/bbm/ui/e/bt;->i(Lcom/bbm/ui/e/bt;)Lcom/bbm/util/b/i;
move-result-object v0
iget-object v3, v2, Lcom/bbm/b/a;->i:Ljava/lang/String;
iget-object v4, p0, Lcom/bbm/ui/e/bw;->a:Lcom/bbm/ui/e/bt;
invoke-static {v4}, Lcom/bbm/ui/e/bt;->h(Lcom/bbm/ui/e/bt;)Lcom/bbm/ui/ObservingImageView;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lcom/bbm/util/b/i;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
goto/16 :goto_88
.end method