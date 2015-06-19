.class public Lcom/bbm/ui/e/d;
.super Ljava/lang/Object;
.source "ChannelInviteMessageHolder.java"
.implements Lcom/bbm/ui/e/at;
.field private static h:Lcom/bbm/d/fg;
.field  a:Landroid/widget/ImageView;
.field  b:Lcom/bbm/ui/ObservingImageView;
.field  c:Landroid/widget/TextView;
.field  d:Landroid/widget/Button;
.field  e:Landroid/widget/Button;
.field private final f:Lcom/bbm/ui/e/cf;
.field private g:Landroid/widget/TextView;
.field private i:Lcom/bbm/d/fg;
.field private final j:Lcom/bbm/ui/e/bg;
.field private final k:Lcom/bbm/d/a;
.field private l:Lcom/bbm/ui/ChannelInviteMessageView;
.field private m:Landroid/view/View$OnTouchListener;
.field private final n:Lcom/bbm/ui/activities/xo;
.field private final o:Landroid/content/Context;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/bbm/d/fg;
invoke-direct {v0}, Lcom/bbm/d/fg;-><init>()V
sput-object v0, Lcom/bbm/ui/e/d;->h:Lcom/bbm/d/fg;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/ui/activities/xo;Lcom/bbm/ui/e/bg;Landroid/view/View$OnTouchListener;Lcom/bbm/ui/e/cf;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/bbm/ui/e/d;->h:Lcom/bbm/d/fg;
iput-object v0, p0, Lcom/bbm/ui/e/d;->i:Lcom/bbm/d/fg;
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/e/d;->m:Landroid/view/View$OnTouchListener;
iput-object p1, p0, Lcom/bbm/ui/e/d;->o:Landroid/content/Context;
iput-object p2, p0, Lcom/bbm/ui/e/d;->k:Lcom/bbm/d/a;
iput-object p3, p0, Lcom/bbm/ui/e/d;->n:Lcom/bbm/ui/activities/xo;
iput-object p4, p0, Lcom/bbm/ui/e/d;->j:Lcom/bbm/ui/e/bg;
iput-object p5, p0, Lcom/bbm/ui/e/d;->m:Landroid/view/View$OnTouchListener;
iput-object p6, p0, Lcom/bbm/ui/e/d;->f:Lcom/bbm/ui/e/cf;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/e/d;)Lcom/bbm/d/fg;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/d;->i:Lcom/bbm/d/fg;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/e/d;)Lcom/bbm/ui/e/bg;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/d;->j:Lcom/bbm/ui/e/bg;
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
const/4 v3, 0x0
const v0, 0x7f0300d3
invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a0455
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/e/d;->a:Landroid/widget/ImageView;
const v0, 0x7f0a0456
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/d;->g:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/e/d;->g:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/e/d;->m:Landroid/view/View$OnTouchListener;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v0, 0x7f0a0362
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/e/d;->b:Lcom/bbm/ui/ObservingImageView;
iget-object v0, p0, Lcom/bbm/ui/e/d;->b:Lcom/bbm/ui/ObservingImageView;
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/bbm/ui/e/d;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setAnimationAllowed(Z)V
:cond_39
const v0, 0x7f0a048f
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/d;->c:Landroid/widget/TextView;
const v0, 0x7f0a0491
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/e/d;->d:Landroid/widget/Button;
const v0, 0x7f0a0492
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/e/d;->e:Landroid/widget/Button;
iget-object v0, p0, Lcom/bbm/ui/e/d;->e:Landroid/widget/Button;
new-instance v2, Lcom/bbm/ui/e/e;
invoke-direct {v2, p0}, Lcom/bbm/ui/e/e;-><init>(Lcom/bbm/ui/e/d;)V
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object v0, v1
check-cast v0, Lcom/bbm/ui/ChannelInviteMessageView;
iput-object v0, p0, Lcom/bbm/ui/e/d;->l:Lcom/bbm/ui/ChannelInviteMessageView;
return-object v1
.end method
.method public final a(Lcom/bbm/ui/e/i;Z)V
.registers 7
iget-object v0, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iput-object v0, p0, Lcom/bbm/ui/e/d;->i:Lcom/bbm/d/fg;
iget-object v0, p0, Lcom/bbm/ui/e/d;->l:Lcom/bbm/ui/ChannelInviteMessageView;
iget-object v1, p0, Lcom/bbm/ui/e/d;->n:Lcom/bbm/ui/activities/xo;
invoke-static {v0, v1, p1, p2}, Lcom/bbm/ui/e/b;->a(Landroid/view/View;Lcom/bbm/ui/activities/xo;Lcom/bbm/ui/e/i;Z)V
iget-object v0, p0, Lcom/bbm/ui/e/d;->a:Landroid/widget/ImageView;
if-eqz v0, :cond_25
const/4 v0, 0x0
iget-object v1, p0, Lcom/bbm/ui/e/d;->i:Lcom/bbm/d/fg;
iget-boolean v1, v1, Lcom/bbm/d/fg;->j:Z
if-eqz v1, :cond_a8
iget-object v0, p0, Lcom/bbm/ui/e/d;->i:Lcom/bbm/d/fg;
iget-object v0, v0, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v1, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;
if-ne v0, v1, :cond_a4
sget-object v0, Lcom/bbm/ui/e/cf;->d:Landroid/graphics/drawable/Drawable;
:goto_20
:cond_20
iget-object v1, p0, Lcom/bbm/ui/e/d;->a:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_25
iget-object v0, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iget-object v1, v0, Lcom/bbm/d/fg;->c:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_a3
iget-object v1, p0, Lcom/bbm/ui/e/d;->k:Lcom/bbm/d/a;
iget-object v2, v0, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/e/d;->l:Lcom/bbm/ui/ChannelInviteMessageView;
invoke-static {v1}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Lcom/bbm/ui/ChannelInviteMessageView;->setSenderText(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/ui/e/d;->l:Lcom/bbm/ui/ChannelInviteMessageView;
iget-wide v2, v0, Lcom/bbm/d/fg;->s:J
invoke-virtual {v1, v2, v3}, Lcom/bbm/ui/ChannelInviteMessageView;->setDateText(J)V
iget-object v1, p0, Lcom/bbm/ui/e/d;->k:Lcom/bbm/d/a;
iget-object v0, v0, Lcom/bbm/d/fg;->c:Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->S(Ljava/lang/String;)Lcom/bbm/d/eg;
move-result-object v1
iget-object v0, v1, Lcom/bbm/d/eg;->h:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v2, :cond_144
iget-object v0, p0, Lcom/bbm/ui/e/d;->l:Lcom/bbm/ui/ChannelInviteMessageView;
iget-object v2, v1, Lcom/bbm/d/eg;->d:Ljava/lang/String;
invoke-virtual {v0, v2}, Lcom/bbm/ui/ChannelInviteMessageView;->setBodyText(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/e/d;->k:Lcom/bbm/d/a;
iget-object v2, v1, Lcom/bbm/d/eg;->a:Ljava/lang/String;
invoke-virtual {v0, v2}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v2
iget-object v0, v2, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v3, :cond_13b
iget-object v0, p0, Lcom/bbm/ui/e/d;->d:Landroid/widget/Button;
new-instance v3, Lcom/bbm/ui/e/f;
invoke-direct {v3, p0, v2}, Lcom/bbm/ui/e/f;-><init>(Lcom/bbm/ui/e/d;Lcom/bbm/d/ec;)V
invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v3, p0, Lcom/bbm/ui/e/d;->l:Lcom/bbm/ui/ChannelInviteMessageView;
iget-object v0, v2, Lcom/bbm/d/ec;->k:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_fe
iget-object v0, v2, Lcom/bbm/d/ec;->I:Ljava/lang/String;
:goto_80
invoke-virtual {v3, v0}, Lcom/bbm/ui/ChannelInviteMessageView;->setChanneNameText(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/e/d;->l:Lcom/bbm/ui/ChannelInviteMessageView;
iget-object v3, v2, Lcom/bbm/d/ec;->j:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/bbm/ui/ChannelInviteMessageView;->setChanneDescriptionText(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/e/d;->l:Lcom/bbm/ui/ChannelInviteMessageView;
invoke-virtual {v0, v2}, Lcom/bbm/ui/ChannelInviteMessageView;->setChannelAvatar(Lcom/bbm/d/ec;)V
iget-boolean v0, v1, Lcom/bbm/d/eg;->c:Z
if-eqz v0, :cond_118
iget-object v0, p0, Lcom/bbm/ui/e/d;->l:Lcom/bbm/ui/ChannelInviteMessageView;
const-string v3, ""
invoke-virtual {v0, v3}, Lcom/bbm/ui/ChannelInviteMessageView;->setInviteStatusText(Ljava/lang/String;)V
iget-boolean v0, v2, Lcom/bbm/d/ec;->v:Z
if-eqz v0, :cond_101
iget-object v0, p0, Lcom/bbm/ui/e/d;->l:Lcom/bbm/ui/ChannelInviteMessageView;
invoke-virtual {v0}, Lcom/bbm/ui/ChannelInviteMessageView;->setInviteeRestritedState()V
:goto_a3
:cond_a3
return-void
:cond_a4
sget-object v0, Lcom/bbm/ui/e/cf;->e:Landroid/graphics/drawable/Drawable;
goto/16 :goto_20
:cond_a8
iget-object v1, p0, Lcom/bbm/ui/e/d;->i:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->a:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_b4
sget-object v0, Lcom/bbm/ui/e/cf;->f:Landroid/graphics/drawable/Drawable;
goto/16 :goto_20
:cond_b4
iget-object v1, p0, Lcom/bbm/ui/e/d;->i:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->c:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_c0
sget-object v0, Lcom/bbm/ui/e/cf;->g:Landroid/graphics/drawable/Drawable;
goto/16 :goto_20
:cond_c0
iget-object v1, p0, Lcom/bbm/ui/e/d;->i:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->d:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_cc
sget-object v0, Lcom/bbm/ui/e/cf;->h:Landroid/graphics/drawable/Drawable;
goto/16 :goto_20
:cond_cc
iget-object v1, p0, Lcom/bbm/ui/e/d;->i:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_de
if-eqz p2, :cond_da
sget-object v0, Lcom/bbm/ui/e/cf;->d:Landroid/graphics/drawable/Drawable;
goto/16 :goto_20
:cond_da
sget-object v0, Lcom/bbm/ui/e/cf;->i:Landroid/graphics/drawable/Drawable;
goto/16 :goto_20
:cond_de
iget-object v1, p0, Lcom/bbm/ui/e/d;->i:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->e:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_f0
if-eqz p2, :cond_ec
sget-object v0, Lcom/bbm/ui/e/cf;->e:Landroid/graphics/drawable/Drawable;
goto/16 :goto_20
:cond_ec
sget-object v0, Lcom/bbm/ui/e/cf;->j:Landroid/graphics/drawable/Drawable;
goto/16 :goto_20
:cond_f0
iget-object v1, p0, Lcom/bbm/ui/e/d;->i:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->b:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_20
if-nez p2, :cond_20
sget-object v0, Lcom/bbm/ui/e/cf;->k:Landroid/graphics/drawable/Drawable;
goto/16 :goto_20
:cond_fe
iget-object v0, v2, Lcom/bbm/d/ec;->k:Ljava/lang/String;
goto :goto_80
:cond_101
iget-object v3, p0, Lcom/bbm/ui/e/d;->l:Lcom/bbm/ui/ChannelInviteMessageView;
iget-object v0, v1, Lcom/bbm/d/eg;->e:Lcom/bbm/d/eh;
sget-object v1, Lcom/bbm/d/eh;->b:Lcom/bbm/d/eh;
if-eq v0, v1, :cond_111
iget-boolean v0, v2, Lcom/bbm/d/ec;->t:Z
if-nez v0, :cond_111
iget-boolean v0, v2, Lcom/bbm/d/ec;->w:Z
if-eqz v0, :cond_116
:cond_111
const/4 v0, 0x1
:goto_112
invoke-virtual {v3, v0}, Lcom/bbm/ui/ChannelInviteMessageView;->setInviteeState(Z)V
goto :goto_a3
:cond_116
const/4 v0, 0x0
goto :goto_112
:cond_118
iget-object v2, p0, Lcom/bbm/ui/e/d;->l:Lcom/bbm/ui/ChannelInviteMessageView;
iget-object v0, v1, Lcom/bbm/d/eg;->e:Lcom/bbm/d/eh;
sget-object v3, Lcom/bbm/d/eh;->c:Lcom/bbm/d/eh;
if-ne v0, v3, :cond_12d
const v0, 0x7f0e01aa
:goto_123
invoke-virtual {v2, v0}, Lcom/bbm/ui/ChannelInviteMessageView;->setInviteStatusText(I)V
iget-object v0, p0, Lcom/bbm/ui/e/d;->l:Lcom/bbm/ui/ChannelInviteMessageView;
invoke-virtual {v0}, Lcom/bbm/ui/ChannelInviteMessageView;->setInviterState()V
goto/16 :goto_a3
:cond_12d
iget-object v0, v1, Lcom/bbm/d/eg;->e:Lcom/bbm/d/eh;
sget-object v1, Lcom/bbm/d/eh;->b:Lcom/bbm/d/eh;
if-ne v0, v1, :cond_137
const v0, 0x7f0e01a9
goto :goto_123
:cond_137
const v0, 0x7f0e01ab
goto :goto_123
:cond_13b
iget-object v0, p0, Lcom/bbm/ui/e/d;->l:Lcom/bbm/ui/ChannelInviteMessageView;
iget-object v1, p0, Lcom/bbm/ui/e/d;->k:Lcom/bbm/d/a;
invoke-virtual {v0, v1}, Lcom/bbm/ui/ChannelInviteMessageView;->a(Lcom/bbm/d/a;)V
goto/16 :goto_a3
:cond_144
iget-object v0, p0, Lcom/bbm/ui/e/d;->l:Lcom/bbm/ui/ChannelInviteMessageView;
iget-object v1, p0, Lcom/bbm/ui/e/d;->k:Lcom/bbm/d/a;
invoke-virtual {v0, v1}, Lcom/bbm/ui/ChannelInviteMessageView;->a(Lcom/bbm/d/a;)V
goto/16 :goto_a3
.end method