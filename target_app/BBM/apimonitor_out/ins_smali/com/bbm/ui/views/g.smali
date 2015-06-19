.class final Lcom/bbm/ui/views/g;
.super Lcom/bbm/j/k;
.source "ChannelLobbyChatsPaneView.java"
.field final synthetic a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
.method constructor <init>(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 15
const v12, 0x7f020063
const/4 v11, 0x4
const/4 v5, 0x0
const/4 v3, 0x0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v6
iget-object v0, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
iget-object v1, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
iget-object v1, v1, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->b:Ljava/lang/String;
invoke-virtual {v6, v1}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v1
iput-object v1, v0, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->a:Lcom/bbm/d/ec;
iget-object v0, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-static {v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->a(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Landroid/widget/ImageView;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
iget-object v0, v0, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->a:Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->d:Z
if-eqz v0, :cond_12e
invoke-virtual {v6}, Lcom/bbm/d/a;->L()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
move v4, v5
move v2, v5
:goto_35
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-ge v4, v1, :cond_68
invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/es;
iget-boolean v7, v1, Lcom/bbm/d/es;->i:Z
if-eqz v7, :cond_176
iget-object v7, v1, Lcom/bbm/d/es;->a:Ljava/lang/String;
iget-object v8, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
iget-object v8, v8, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->a:Lcom/bbm/d/ec;
iget-object v8, v8, Lcom/bbm/d/ec;->O:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_176
add-int/lit8 v2, v2, 0x1
if-eqz v3, :cond_5f
iget-wide v7, v1, Lcom/bbm/d/es;->o:J
iget-wide v9, v3, Lcom/bbm/d/es;->o:J
cmp-long v7, v7, v9
if-lez v7, :cond_176
:cond_5f
move v13, v2
move-object v2, v1
move v1, v13
:goto_62
add-int/lit8 v3, v4, 0x1
move v4, v3
move-object v3, v2
move v2, v1
goto :goto_35
:cond_68
if-eqz v3, :cond_fc
iget-object v0, v3, Lcom/bbm/d/es;->r:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_fc
iget-object v0, v3, Lcom/bbm/d/es;->r:Ljava/util/List;
invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v6, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-static {v1}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->b(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Lcom/bbm/ui/InlineImageTextView;
move-result-object v1
iget-object v4, v0, Lcom/bbm/d/gp;->d:Ljava/lang/String;
invoke-virtual {v1, v4}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-static {v1}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->b(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Lcom/bbm/ui/InlineImageTextView;
move-result-object v1
invoke-virtual {v1, v5}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-static {v1}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->c(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Lcom/bbm/ui/ObservingImageView;
move-result-object v1
invoke-virtual {v6, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
iget-object v0, v3, Lcom/bbm/d/es;->b:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/d/a;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-wide v3, v3, Lcom/bbm/d/es;->n:J
invoke-virtual {v6, v0, v3, v4}, Lcom/bbm/d/a;->a(Ljava/lang/String;J)Lcom/bbm/d/fg;
move-result-object v0
iget-object v1, v0, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v1, v3, :cond_d8
iget-object v1, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-static {v1}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->d(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Lcom/bbm/ui/InlineImageTextView;
move-result-object v1
iget-object v3, v0, Lcom/bbm/d/fg;->l:Ljava/lang/String;
invoke-virtual {v1, v3}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-static {v1}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->d(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Lcom/bbm/ui/InlineImageTextView;
move-result-object v1
invoke-virtual {v1, v5}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V
iget-boolean v1, v0, Lcom/bbm/d/fg;->j:Z
if-eqz v1, :cond_d8
iget-object v0, v0, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v1, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;
if-eq v0, v1, :cond_d8
iget-object v0, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-static {v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->a(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_d8
:goto_d8
iget-object v0, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-static {v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->e(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-virtual {v1}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->getContext()Landroid/content/Context;
move-result-object v1
const v3, 0x7f0e018d
invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v3, v5
invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_fb
return-void
:cond_fc
iget-object v0, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-static {v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->c(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Lcom/bbm/ui/ObservingImageView;
move-result-object v0
invoke-virtual {v0, v12}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(I)V
iget-object v0, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-static {v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->b(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Lcom/bbm/ui/InlineImageTextView;
move-result-object v0
invoke-virtual {v0, v11}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-static {v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->d(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Lcom/bbm/ui/InlineImageTextView;
move-result-object v0
invoke-virtual {v0, v5}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-static {v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->d(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Lcom/bbm/ui/InlineImageTextView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-virtual {v1}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->getContext()Landroid/content/Context;
move-result-object v1
const v3, 0x7f0e052c
invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_d8
:cond_12e
iget-object v0, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-static {v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->c(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Lcom/bbm/ui/ObservingImageView;
move-result-object v0
invoke-virtual {v0, v12}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(I)V
iget-object v0, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-static {v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->e(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-virtual {v1}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->getContext()Landroid/content/Context;
move-result-object v1
const v2, 0x7f0e018c
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-static {v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->b(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Lcom/bbm/ui/InlineImageTextView;
move-result-object v0
invoke-virtual {v0, v11}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-static {v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->d(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Lcom/bbm/ui/InlineImageTextView;
move-result-object v0
invoke-virtual {v0, v5}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-static {v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->d(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Lcom/bbm/ui/InlineImageTextView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/views/g;->a:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
invoke-virtual {v1}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->getContext()Landroid/content/Context;
move-result-object v1
const v2, 0x7f0e018a
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_fb
:cond_176
move v1, v2
move-object v2, v3
goto/16 :goto_62
.end method