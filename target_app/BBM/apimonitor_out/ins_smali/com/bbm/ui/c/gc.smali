.class final Lcom/bbm/ui/c/gc;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"
.implements Lcom/bbm/l/c/d;
.field final synthetic a:Lcom/bbm/ui/c/fu;
.method constructor <init>(Lcom/bbm/ui/c/fu;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 6
const/4 v3, 0x1
iget-object v0, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v0}, Lcom/bbm/ui/c/fu;->k(Lcom/bbm/ui/c/fu;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v1}, Lcom/bbm/ui/c/fu;->j(Lcom/bbm/ui/c/fu;)Ljava/lang/Runnable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v0}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;)Landroid/widget/TextView;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
packed-switch p1, :pswitch_data_5c
iget-object v0, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v0}, Lcom/bbm/ui/c/fu;->h(Lcom/bbm/ui/c/fu;)Landroid/widget/Button;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v0}, Lcom/bbm/ui/c/fu;->l(Lcom/bbm/ui/c/fu;)Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
const v2, 0x7f0e06d7
invoke-virtual {v1, v2}, Lcom/bbm/ui/c/fu;->getString(I)Ljava/lang/String;
move-result-object v1
const/16 v2, 0xdac
invoke-static {v0, v1, v2}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V
:goto_3b
return-void
:pswitch_3c
iget-object v0, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v0}, Lcom/bbm/ui/c/fu;->l(Lcom/bbm/ui/c/fu;)Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
const v2, 0x7f0e06dd
invoke-virtual {v1, v2}, Lcom/bbm/ui/c/fu;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-virtual {v0}, Lcom/bbm/ui/c/fu;->getActivity()Landroid/app/Activity;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Activity;->finish()V
goto :goto_3b
:pswitch_data_5c
.packed-switch 0x1
:pswitch_3c
.end packed-switch
.end method
.method public final a(Lcom/bbm/l/b/m;)V
.registers 8
const/4 v1, 0x0
const/4 v0, 0x1
iget-object v2, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v2}, Lcom/bbm/ui/c/fu;->k(Lcom/bbm/ui/c/fu;)Landroid/os/Handler;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v3}, Lcom/bbm/ui/c/fu;->j(Lcom/bbm/ui/c/fu;)Ljava/lang/Runnable;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v2, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v2}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;)Landroid/widget/TextView;
move-result-object v2
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
if-nez p1, :cond_3c
iget-object v1, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v1}, Lcom/bbm/ui/c/fu;->h(Lcom/bbm/ui/c/fu;)Landroid/widget/Button;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v0}, Lcom/bbm/ui/c/fu;->l(Lcom/bbm/ui/c/fu;)Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
const v2, 0x7f0e06d7
invoke-virtual {v1, v2}, Lcom/bbm/ui/c/fu;->getString(I)Ljava/lang/String;
move-result-object v1
const/16 v2, 0xdac
invoke-static {v0, v1, v2}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V
:goto_3b
:cond_3b
return-void
:cond_3c
iget-object v2, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v2}, Lcom/bbm/ui/c/fu;->g(Lcom/bbm/ui/c/fu;)Lcom/bbm/l/b/m;
move-result-object v2
if-eqz p1, :cond_74
iget-object v3, v2, Lcom/bbm/l/b/l;->a:Ljava/lang/String;
iget-object v4, p1, Lcom/bbm/l/b/l;->a:Ljava/lang/String;
invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_74
iget-object v3, v2, Lcom/bbm/l/b/l;->b:Ljava/lang/String;
iget-object v4, p1, Lcom/bbm/l/b/l;->b:Ljava/lang/String;
invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_74
iget-object v2, v2, Lcom/bbm/l/b/l;->d:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/l/b/l;->d:Ljava/lang/String;
invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_74
move v2, v0
:goto_63
if-nez v2, :cond_76
iget-object v0, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v0, p1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Lcom/bbm/l/b/m;)Lcom/bbm/l/b/m;
iget-object v0, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v0}, Lcom/bbm/ui/c/fu;->m(Lcom/bbm/ui/c/fu;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->c()V
goto :goto_3b
:cond_74
move v2, v1
goto :goto_63
:cond_76
iget-object v2, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
iget-object v2, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v2}, Lcom/bbm/ui/c/fu;->g(Lcom/bbm/ui/c/fu;)Lcom/bbm/l/b/m;
move-result-object v2
const-string v3, "A2CDA"
invoke-static {v2, v3}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/l/b/m;Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_90
iget-object v1, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-static {v1, v0}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Ljava/lang/Boolean;)V
goto :goto_3b
:cond_90
iget-object v2, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
iget-object v2, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v2}, Lcom/bbm/ui/c/fu;->g(Lcom/bbm/ui/c/fu;)Lcom/bbm/l/b/m;
move-result-object v2
const-string v3, "bnx6"
invoke-static {v2, v3}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/l/b/m;Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_3b
iget-object v2, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v2}, Lcom/bbm/ui/c/fu;->n(Lcom/bbm/ui/c/fu;)Lcom/bbm/ui/activities/StickerDetailsActivity;
move-result-object v2
if-eqz v2, :cond_3b
iget-object v2, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-virtual {v2}, Lcom/bbm/ui/c/fu;->getActivity()Landroid/app/Activity;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v3}, Lcom/bbm/ui/c/fu;->g(Lcom/bbm/ui/c/fu;)Lcom/bbm/l/b/m;
move-result-object v3
iget-object v4, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
iget-object v4, v4, Lcom/bbm/ui/c/fu;->a:Lcom/bbm/l/d/b;
iget-object v5, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v5}, Lcom/bbm/ui/c/fu;->o(Lcom/bbm/ui/c/fu;)Ljava/lang/String;
move-result-object v5
invoke-static {v2, v3, v4, v5}, Lcom/bbm/l/a;->a(Landroid/app/Activity;Lcom/bbm/l/b/m;Lcom/bbm/l/d/b;Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_d8
:goto_c4
iget-object v1, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v1}, Lcom/bbm/ui/c/fu;->h(Lcom/bbm/ui/c/fu;)Landroid/widget/Button;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v1, p0, Lcom/bbm/ui/c/gc;->a:Lcom/bbm/ui/c/fu;
invoke-static {v1}, Lcom/bbm/ui/c/fu;->n(Lcom/bbm/ui/c/fu;)Lcom/bbm/ui/activities/StickerDetailsActivity;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/StickerDetailsActivity;->a(Z)V
goto/16 :goto_3b
:cond_d8
move v0, v1
goto :goto_c4
.end method