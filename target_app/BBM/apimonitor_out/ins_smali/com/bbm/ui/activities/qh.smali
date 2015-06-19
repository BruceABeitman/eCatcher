.class final Lcom/bbm/ui/activities/qh;
.super Lcom/bbm/j/k;
.source "GroupLobbyActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupLobbyActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/qh;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 8
const/16 v1, 0x8
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/qh;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Lcom/bbm/ui/activities/GroupLobbyActivity;)Lcom/bbm/g/am;
move-result-object v0
iget-object v3, p0, Lcom/bbm/ui/activities/qh;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v3, v3, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v3
iget-object v0, v3, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v0, v4, :cond_18
:goto_17
return-void
:cond_18
const/4 v0, 0x0
iget-object v4, v3, Lcom/bbm/g/a;->d:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
move-result v4
if-nez v4, :cond_27
iget-object v0, v3, Lcom/bbm/g/a;->d:Ljava/lang/String;
invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
move-result-object v0
:cond_27
if-nez v0, :cond_40
iget-object v0, p0, Lcom/bbm/ui/activities/qh;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v4, 0x7f070007
invoke-virtual {v0, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;
move-result-object v4
iget-wide v5, v3, Lcom/bbm/g/a;->h:J
long-to-int v0, v5
invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V
:cond_40
iget-object v4, p0, Lcom/bbm/ui/activities/qh;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/GroupLobbyActivity;->g(Lcom/bbm/ui/activities/GroupLobbyActivity;)Lcom/bbm/ui/ObservingImageView;
move-result-object v4
invoke-virtual {v4, v0}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/bbm/ui/activities/qh;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->h(Lcom/bbm/ui/activities/GroupLobbyActivity;)Lcom/bbm/ui/InlineImageTextView;
move-result-object v0
iget-object v4, v3, Lcom/bbm/g/a;->r:Ljava/lang/String;
invoke-virtual {v0, v4}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/activities/qh;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->i(Lcom/bbm/ui/activities/GroupLobbyActivity;)Lcom/bbm/ui/InlineImageTextView;
move-result-object v0
iget-object v4, v3, Lcom/bbm/g/a;->f:Ljava/lang/String;
invoke-virtual {v0, v4}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/activities/qh;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->i(Lcom/bbm/ui/activities/GroupLobbyActivity;)Lcom/bbm/ui/InlineImageTextView;
move-result-object v4
iget-object v0, v3, Lcom/bbm/g/a;->f:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_c0
move v0, v1
:goto_6e
invoke-virtual {v4, v0}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V
iget-boolean v0, v3, Lcom/bbm/g/a;->m:Z
if-eqz v0, :cond_87
iget-object v0, p0, Lcom/bbm/ui/activities/qh;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Lcom/bbm/ui/activities/GroupLobbyActivity;)Lcom/bbm/g/am;
move-result-object v0
iget-object v4, p0, Lcom/bbm/ui/activities/qh;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v4, v4, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
new-instance v5, Lcom/bbm/g/ax;
invoke-direct {v5, v4}, Lcom/bbm/g/ax;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v5}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
:cond_87
iget-object v0, p0, Lcom/bbm/ui/activities/qh;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->j(Lcom/bbm/ui/activities/GroupLobbyActivity;)Landroid/widget/ImageView;
move-result-object v4
iget-boolean v0, v3, Lcom/bbm/g/a;->l:Z
if-eqz v0, :cond_c2
move v0, v2
:goto_92
invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/qh;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->k(Lcom/bbm/ui/activities/GroupLobbyActivity;)Landroid/widget/ImageView;
move-result-object v4
iget-boolean v0, v3, Lcom/bbm/g/a;->p:Z
if-eqz v0, :cond_c4
move v0, v2
:goto_a0
invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/qh;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->l(Lcom/bbm/ui/activities/GroupLobbyActivity;)Landroid/widget/ImageView;
move-result-object v4
iget-boolean v0, v3, Lcom/bbm/g/a;->n:Z
if-eqz v0, :cond_c6
move v0, v2
:goto_ae
invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/qh;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->m(Lcom/bbm/ui/activities/GroupLobbyActivity;)Landroid/widget/ImageView;
move-result-object v0
iget-boolean v3, v3, Lcom/bbm/g/a;->k:Z
if-eqz v3, :cond_c8
:goto_bb
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
goto/16 :goto_17
:cond_c0
move v0, v2
goto :goto_6e
:cond_c2
move v0, v1
goto :goto_92
:cond_c4
move v0, v1
goto :goto_a0
:cond_c6
move v0, v1
goto :goto_ae
:cond_c8
move v2, v1
goto :goto_bb
.end method