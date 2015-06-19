.class public Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;
.super Lcom/bbm/ui/views/ShadowFrame;
.source "ChannelLobbyPostsPaneView.java"
.field protected a:Ljava/lang/String;
.field public final b:Lcom/bbm/j/k;
.field private c:Lcom/bbm/ui/ObservingImageView;
.field private d:Landroid/widget/TextView;
.field private e:Lcom/bbm/ui/InlineImageTextView;
.field private f:Lcom/bbm/ui/InlineImageTextView;
.field private g:Landroid/widget/ImageView;
.field private h:Lcom/bbm/d/ek;
.field private i:Lcom/bbm/j/x;
.field private j:Lcom/bbm/util/o;
.field private k:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/ui/views/ShadowFrame;-><init>(Landroid/content/Context;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->k:Z
new-instance v0, Lcom/bbm/ui/views/h;
invoke-direct {v0, p0}, Lcom/bbm/ui/views/h;-><init>(Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;)V
iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->b:Lcom/bbm/j/k;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/bbm/ui/views/ShadowFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->k:Z
new-instance v0, Lcom/bbm/ui/views/h;
invoke-direct {v0, p0}, Lcom/bbm/ui/views/h;-><init>(Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;)V
iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->b:Lcom/bbm/j/k;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/views/ShadowFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->k:Z
new-instance v0, Lcom/bbm/ui/views/h;
invoke-direct {v0, p0}, Lcom/bbm/ui/views/h;-><init>(Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;)V
iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->b:Lcom/bbm/j/k;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;)V
.registers 7
const/4 v3, 0x1
const/4 v1, 0x0
const/16 v5, 0x8
const/4 v4, 0x0
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->i:Lcom/bbm/j/x;
invoke-interface {v0}, Lcom/bbm/j/x;->b()Z
move-result v0
if-nez v0, :cond_3e
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->i:Lcom/bbm/j/x;
invoke-interface {v0}, Lcom/bbm/j/x;->f()Z
move-result v0
if-nez v0, :cond_dd
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->i:Lcom/bbm/j/x;
invoke-interface {v0, v4, v3}, Lcom/bbm/j/x;->a(II)Ljava/util/List;
move-result-object v0
:goto_1b
if-eqz v0, :cond_23
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v2
if-nez v2, :cond_3f
:cond_23
iput-boolean v4, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->k:Z
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->c:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v5}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->e:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v0, v5}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->f:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v0, v5}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->d:Landroid/widget/TextView;
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->g:Landroid/widget/ImageView;
invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_3e
:goto_3e
return-void
:cond_3f
invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ek;
iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->h:Lcom/bbm/d/ek;
iput-boolean v3, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->k:Z
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->h:Lcom/bbm/d/ek;
iget-object v0, v0, Lcom/bbm/d/ek;->t:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v2, :cond_3e
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->e:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v0, v4}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->f:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v0, v4}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->d:Landroid/widget/TextView;
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->g:Landroid/widget/ImageView;
invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->j:Lcom/bbm/util/o;
if-eqz v0, :cond_79
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->h:Lcom/bbm/d/ek;
iget-object v0, v0, Lcom/bbm/d/ek;->j:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->j:Lcom/bbm/util/o;
iget-object v2, v2, Lcom/bbm/util/o;->g:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_79
iput-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->j:Lcom/bbm/util/o;
:cond_79
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->h:Lcom/bbm/d/ek;
iget-object v0, v0, Lcom/bbm/d/ek;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v2
if-lez v2, :cond_d1
iget-object v2, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->j:Lcom/bbm/util/o;
if-nez v2, :cond_93
iget-object v2, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->a:Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->h:Lcom/bbm/d/ek;
iget-object v3, v3, Lcom/bbm/d/ek;->j:Ljava/lang/String;
invoke-static {v0, v2, v3}, Lcom/bbm/util/r;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/o;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->j:Lcom/bbm/util/o;
:cond_93
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->j:Lcom/bbm/util/o;
if-eqz v0, :cond_b3
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->c:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v4}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->c:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
iget-object v2, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->c:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v2}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
iget-object v3, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->j:Lcom/bbm/util/o;
iget-object v4, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->c:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v3, v4, v1, v0, v2}, Lcom/bbm/util/o;->a(Lcom/bbm/ui/ObservingImageView;Lcom/bbm/util/b/d;II)V
:goto_b3
:cond_b3
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->h:Lcom/bbm/d/ek;
iget-object v0, v0, Lcom/bbm/d/ek;->s:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_d7
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->e:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->h:Lcom/bbm/d/ek;
iget-object v1, v1, Lcom/bbm/d/ek;->s:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
:goto_c6
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->f:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->h:Lcom/bbm/d/ek;
iget-object v1, v1, Lcom/bbm/d/ek;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_3e
:cond_d1
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->c:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v5}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
goto :goto_b3
:cond_d7
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->e:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v0, v5}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V
goto :goto_c6
:cond_dd
move-object v0, v1
goto/16 :goto_1b
.end method
.method protected final a(Landroid/content/Context;)V
.registers 4
invoke-super {p0, p1}, Lcom/bbm/ui/views/ShadowFrame;->a(Landroid/content/Context;)V
const v0, 0x7f030043
invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->setViewStub(I)V
const v0, 0x7f0a024f
invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->c:Lcom/bbm/ui/ObservingImageView;
iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->c:Lcom/bbm/ui/ObservingImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V
const v0, 0x7f0a0254
invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->e:Lcom/bbm/ui/InlineImageTextView;
const v0, 0x7f0a0255
invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->f:Lcom/bbm/ui/InlineImageTextView;
const v0, 0x7f0a0252
invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->d:Landroid/widget/TextView;
const v0, 0x7f0a0251
invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->g:Landroid/widget/ImageView;
return-void
.end method
.method public getPostExists()Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->k:Z
return v0
.end method
.method public setChannel(Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->a:Ljava/lang/String;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->a:Ljava/lang/String;
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a;->d(Ljava/lang/String;Z)Lcom/bbm/j/x;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->i:Lcom/bbm/j/x;
return-void
.end method