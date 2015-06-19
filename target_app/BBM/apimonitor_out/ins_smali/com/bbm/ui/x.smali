.class final Lcom/bbm/ui/x;
.super Lcom/bbm/j/k;
.source "ChannelActionBar.java"
.field final synthetic a:Lcom/bbm/ui/w;
.method constructor <init>(Lcom/bbm/ui/w;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/x;->a:Lcom/bbm/ui/w;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method public final a()V
.registers 8
const/16 v2, 0x8
const/4 v1, 0x0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v3
iget-object v0, p0, Lcom/bbm/ui/x;->a:Lcom/bbm/ui/w;
iget-object v0, v0, Lcom/bbm/ui/w;->a:Ljava/lang/String;
invoke-virtual {v3, v0}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v4
iget-object v0, v4, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
sget-object v5, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v5, :cond_70
invoke-static {v4}, Lcom/bbm/util/ac;->a(Lcom/bbm/d/ec;)Z
move-result v0
if-eqz v0, :cond_9a
iget-object v0, p0, Lcom/bbm/ui/x;->a:Lcom/bbm/ui/w;
iget-object v5, p0, Lcom/bbm/ui/x;->a:Lcom/bbm/ui/w;
iget-object v5, v5, Lcom/bbm/ui/w;->f:Landroid/widget/TextView;
invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;
move-result-object v5
invoke-static {v5, v4}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Lcom/bbm/d/ec;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5, v4}, Lcom/bbm/ui/w;->a(Ljava/lang/String;Lcom/bbm/d/ec;)V
:goto_2c
iget-object v0, p0, Lcom/bbm/ui/x;->a:Lcom/bbm/ui/w;
iget-object v5, v4, Lcom/bbm/d/ec;->k:Ljava/lang/String;
invoke-virtual {v0, v5, v4}, Lcom/bbm/ui/w;->b(Ljava/lang/String;Lcom/bbm/d/ec;)V
iget-object v0, p0, Lcom/bbm/ui/x;->a:Lcom/bbm/ui/w;
iget-boolean v5, v4, Lcom/bbm/d/ec;->u:Z
iget-object v6, v0, Lcom/bbm/ui/w;->g:Landroid/widget/ImageView;
invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I
move-result v6
if-nez v6, :cond_41
if-nez v5, :cond_49
:cond_41
iget-object v6, v0, Lcom/bbm/ui/w;->g:Landroid/widget/ImageView;
if-eqz v5, :cond_b3
move v0, v1
:goto_46
invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_49
iget-object v0, p0, Lcom/bbm/ui/x;->a:Lcom/bbm/ui/w;
iget-boolean v5, v4, Lcom/bbm/d/ec;->l:Z
iget-object v6, v0, Lcom/bbm/ui/w;->h:Landroid/widget/ImageView;
invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I
move-result v6
if-nez v6, :cond_57
if-nez v5, :cond_5f
:cond_57
iget-object v6, v0, Lcom/bbm/ui/w;->h:Landroid/widget/ImageView;
if-eqz v5, :cond_b5
move v0, v1
:goto_5c
invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_5f
iget-object v0, p0, Lcom/bbm/ui/x;->a:Lcom/bbm/ui/w;
invoke-virtual {v0, v4}, Lcom/bbm/ui/w;->a(Lcom/bbm/d/ec;)V
iget-object v0, p0, Lcom/bbm/ui/x;->a:Lcom/bbm/ui/w;
iget-object v0, v0, Lcom/bbm/ui/w;->d:Landroid/widget/ImageView;
iget-boolean v4, v4, Lcom/bbm/d/ec;->b:Z
if-eqz v4, :cond_6d
move v2, v1
:cond_6d
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_70
iget-object v0, p0, Lcom/bbm/ui/x;->a:Lcom/bbm/ui/w;
iget-object v0, v0, Lcom/bbm/ui/w;->a:Ljava/lang/String;
invoke-virtual {v3, v0}, Lcom/bbm/d/a;->C(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v0
sget-object v2, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
if-ne v0, v2, :cond_99
iget-object v0, p0, Lcom/bbm/ui/x;->a:Lcom/bbm/ui/w;
iget-object v0, v0, Lcom/bbm/ui/w;->b:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v2, 0x7f0a0524
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/x;->a:Lcom/bbm/ui/w;
iget-object v0, v0, Lcom/bbm/ui/w;->b:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V
:cond_99
return-void
:cond_9a
iget-object v0, v4, Lcom/bbm/d/ec;->h:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_aa
iget-object v0, p0, Lcom/bbm/ui/x;->a:Lcom/bbm/ui/w;
iget-object v5, v4, Lcom/bbm/d/ec;->h:Ljava/lang/String;
invoke-virtual {v0, v5, v4}, Lcom/bbm/ui/w;->a(Ljava/lang/String;Lcom/bbm/d/ec;)V
goto :goto_2c
:cond_aa
iget-object v0, p0, Lcom/bbm/ui/x;->a:Lcom/bbm/ui/w;
iget-object v5, v4, Lcom/bbm/d/ec;->j:Ljava/lang/String;
invoke-virtual {v0, v5, v4}, Lcom/bbm/ui/w;->a(Ljava/lang/String;Lcom/bbm/d/ec;)V
goto/16 :goto_2c
:cond_b3
move v0, v2
goto :goto_46
:cond_b5
move v0, v2
goto :goto_5c
.end method