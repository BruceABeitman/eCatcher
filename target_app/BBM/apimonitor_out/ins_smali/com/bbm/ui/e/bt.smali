.class public final Lcom/bbm/ui/e/bt;
.super Ljava/lang/Object;
.source "SharedAdHolder.java"
.implements Lcom/bbm/ui/e/at;
.field private static b:Lcom/bbm/d/fg;
.field  a:Landroid/widget/ImageView;
.field private c:Lcom/bbm/d/fg;
.field private final d:Landroid/content/Context;
.field private final e:Z
.field private final f:Lcom/bbm/ui/activities/xo;
.field private final g:Lcom/bbm/ui/e/cf;
.field private h:Landroid/widget/TextView;
.field private i:Landroid/widget/TextView;
.field private j:Lcom/bbm/ui/LinkifyTextView;
.field private k:Lcom/bbm/ui/ObservingImageView;
.field private l:Landroid/widget/TextView;
.field private m:Landroid/widget/TextView;
.field private n:Landroid/widget/TextView;
.field private o:Landroid/widget/RelativeLayout;
.field private p:Landroid/view/View;
.field private final q:Lcom/bbm/util/b/i;
.field private final r:Lcom/bbm/j/k;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/bbm/d/fg;
invoke-direct {v0}, Lcom/bbm/d/fg;-><init>()V
sput-object v0, Lcom/bbm/ui/e/bt;->b:Lcom/bbm/d/fg;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;ZLcom/bbm/util/b/i;Lcom/bbm/ui/activities/xo;Lcom/bbm/ui/e/cf;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/bbm/ui/e/bt;->b:Lcom/bbm/d/fg;
iput-object v0, p0, Lcom/bbm/ui/e/bt;->c:Lcom/bbm/d/fg;
new-instance v0, Lcom/bbm/ui/e/bw;
invoke-direct {v0, p0}, Lcom/bbm/ui/e/bw;-><init>(Lcom/bbm/ui/e/bt;)V
iput-object v0, p0, Lcom/bbm/ui/e/bt;->r:Lcom/bbm/j/k;
iput-object p1, p0, Lcom/bbm/ui/e/bt;->d:Landroid/content/Context;
iput-boolean p2, p0, Lcom/bbm/ui/e/bt;->e:Z
iput-object p4, p0, Lcom/bbm/ui/e/bt;->f:Lcom/bbm/ui/activities/xo;
iput-object p5, p0, Lcom/bbm/ui/e/bt;->g:Lcom/bbm/ui/e/cf;
iput-object p3, p0, Lcom/bbm/ui/e/bt;->q:Lcom/bbm/util/b/i;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/e/bt;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/e/bt;->e:Z
return v0
.end method
.method static synthetic b(Lcom/bbm/ui/e/bt;)V
.registers 8
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/e/bt;->c:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/b/q;->b(Ljava/lang/String;)Lcom/bbm/b/a;
move-result-object v0
iget-object v1, v0, Lcom/bbm/b/a;->u:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_39
iget-wide v1, v0, Lcom/bbm/b/a;->e:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
const-wide/16 v5, 0x3e8
div-long/2addr v3, v5
cmp-long v1, v1, v3
if-lez v1, :cond_39
invoke-static {v0}, Lcom/bbm/b/e;->a(Lcom/bbm/b/a;)Z
move-result v1
if-nez v1, :cond_3a
sget-object v1, Lcom/bbm/b/aj;->a:Lcom/bbm/b/aj;
iget-object v2, v0, Lcom/bbm/b/a;->h:Ljava/lang/String;
iget-boolean v3, v0, Lcom/bbm/b/a;->n:Z
invoke-static {v1, v2, v3}, Lcom/bbm/b/e;->b(Lcom/bbm/b/aj;Ljava/lang/String;Z)V
iget-object v1, v0, Lcom/bbm/b/a;->a:Ljava/lang/String;
iget-object v2, v0, Lcom/bbm/b/a;->h:Ljava/lang/String;
sget-object v3, Lcom/bbm/b/e;->a:Lcom/bbm/b/aj;
iget-boolean v0, v0, Lcom/bbm/b/a;->n:Z
invoke-static {v1, v2, v3, v0}, Lcom/bbm/b/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/b/aj;Z)V
:cond_39
:goto_39
return-void
:cond_3a
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/bbm/ui/e/bt;->d:Landroid/content/Context;
const-class v3, Lcom/bbm/ui/activities/SponsoredAdActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "sponsored_ad_id"
iget-object v3, p0, Lcom/bbm/ui/e/bt;->c:Lcom/bbm/d/fg;
iget-object v3, v3, Lcom/bbm/d/fg;->a:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v2, "sponsored_ad_subtype"
iget-object v3, v0, Lcom/bbm/b/a;->r:Lcom/bbm/b/b;
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
const-string v2, "sponsored_ad_type"
iget-object v3, v0, Lcom/bbm/b/a;->s:Lcom/bbm/b/c;
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
const-string v2, "sponsored_ad_has_interstitial"
invoke-static {v0}, Lcom/bbm/b/e;->a(Lcom/bbm/b/a;)Z
move-result v3
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
sget-object v2, Lcom/bbm/ui/activities/ahw;->d:Lcom/bbm/ui/activities/ahw;
invoke-virtual {v2, v1}, Lcom/bbm/ui/activities/ahw;->a(Landroid/content/Intent;)V
iget-object v2, p0, Lcom/bbm/ui/e/bt;->d:Landroid/content/Context;
invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
sget-object v1, Lcom/bbm/b/aj;->a:Lcom/bbm/b/aj;
iget-object v2, v0, Lcom/bbm/b/a;->h:Ljava/lang/String;
iget-boolean v0, v0, Lcom/bbm/b/a;->n:Z
invoke-static {v1, v2, v0}, Lcom/bbm/b/e;->a(Lcom/bbm/b/aj;Ljava/lang/String;Z)V
goto :goto_39
.end method
.method static synthetic c(Lcom/bbm/ui/e/bt;)Lcom/bbm/d/fg;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bt;->c:Lcom/bbm/d/fg;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/e/bt;)Landroid/widget/RelativeLayout;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bt;->o:Landroid/widget/RelativeLayout;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/e/bt;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bt;->l:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/e/bt;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bt;->m:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/e/bt;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bt;->n:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic h(Lcom/bbm/ui/e/bt;)Lcom/bbm/ui/ObservingImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bt;->k:Lcom/bbm/ui/ObservingImageView;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/e/bt;)Lcom/bbm/util/b/i;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bt;->q:Lcom/bbm/util/b/i;
return-object v0
.end method
.method static synthetic j(Lcom/bbm/ui/e/bt;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bt;->d:Landroid/content/Context;
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
const v0, 0x7f0300e0
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a0453
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/bt;->h:Landroid/widget/TextView;
const v0, 0x7f0a0455
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/e/bt;->a:Landroid/widget/ImageView;
const v0, 0x7f0a0454
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/bt;->i:Landroid/widget/TextView;
const v0, 0x7f0a0456
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/LinkifyTextView;
iput-object v0, p0, Lcom/bbm/ui/e/bt;->j:Lcom/bbm/ui/LinkifyTextView;
const v0, 0x7f0a04b3
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/bt;->l:Landroid/widget/TextView;
const v0, 0x7f0a04b4
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/bt;->m:Landroid/widget/TextView;
const v0, 0x7f0a04b5
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/bt;->n:Landroid/widget/TextView;
const v0, 0x7f0a04b2
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/e/bt;->k:Lcom/bbm/ui/ObservingImageView;
iget-object v0, p0, Lcom/bbm/ui/e/bt;->d:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/ui/e/bt;->k:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v2}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
invoke-static {v0, v2}, Lcom/bbm/b/e;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;)V
const v0, 0x7f0a04b1
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/bbm/ui/e/bt;->o:Landroid/widget/RelativeLayout;
iput-object v1, p0, Lcom/bbm/ui/e/bt;->p:Landroid/view/View;
new-instance v0, Lcom/bbm/ui/e/bu;
invoke-direct {v0, p0}, Lcom/bbm/ui/e/bu;-><init>(Lcom/bbm/ui/e/bt;)V
iget-object v2, p0, Lcom/bbm/ui/e/bt;->p:Landroid/view/View;
invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v2, p0, Lcom/bbm/ui/e/bt;->n:Landroid/widget/TextView;
invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v2, p0, Lcom/bbm/ui/e/bt;->j:Lcom/bbm/ui/LinkifyTextView;
invoke-virtual {v2, v0}, Lcom/bbm/ui/LinkifyTextView;->setOnNonActiveTextClickListener(Landroid/view/View$OnClickListener;)V
new-instance v0, Lcom/bbm/ui/e/bv;
invoke-direct {v0, p0}, Lcom/bbm/ui/e/bv;-><init>(Lcom/bbm/ui/e/bt;)V
iget-object v2, p0, Lcom/bbm/ui/e/bt;->p:Landroid/view/View;
invoke-virtual {v2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
iget-object v2, p0, Lcom/bbm/ui/e/bt;->n:Landroid/widget/TextView;
invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
iget-object v2, p0, Lcom/bbm/ui/e/bt;->j:Lcom/bbm/ui/LinkifyTextView;
invoke-virtual {v2, v0}, Lcom/bbm/ui/LinkifyTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
return-object v1
.end method
.method public final a(Lcom/bbm/ui/e/i;Z)V
.registers 8
iget-object v0, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iput-object v0, p0, Lcom/bbm/ui/e/bt;->c:Lcom/bbm/d/fg;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/e/bt;->c:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/e/bt;->p:Landroid/view/View;
iget-object v2, p0, Lcom/bbm/ui/e/bt;->f:Lcom/bbm/ui/activities/xo;
invoke-static {v0, p1}, Lcom/bbm/ui/e/b;->a(Landroid/view/View;Lcom/bbm/ui/e/i;)V
const/4 v0, 0x0
iget-boolean v2, p0, Lcom/bbm/ui/e/bt;->e:Z
if-eqz v2, :cond_61
iget-object v0, p0, Lcom/bbm/ui/e/bt;->c:Lcom/bbm/d/fg;
iget-object v0, v0, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;
if-ne v0, v2, :cond_5e
sget-object v0, Lcom/bbm/ui/e/cf;->d:Landroid/graphics/drawable/Drawable;
:goto_26
:cond_26
iget-object v2, p0, Lcom/bbm/ui/e/bt;->a:Landroid/widget/ImageView;
invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/bbm/ui/e/bt;->i:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/e/bt;->d:Landroid/content/Context;
iget-object v3, p0, Lcom/bbm/ui/e/bt;->c:Lcom/bbm/d/fg;
iget-wide v3, v3, Lcom/bbm/d/fg;->s:J
invoke-static {v2, v3, v4}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/e/bt;->h:Landroid/widget/TextView;
invoke-static {v1}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/e/bt;->j:Lcom/bbm/ui/LinkifyTextView;
if-eqz v0, :cond_58
iget-object v0, p0, Lcom/bbm/ui/e/bt;->c:Lcom/bbm/d/fg;
iget-object v0, v0, Lcom/bbm/d/fg;->l:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_b0
iget-object v0, p0, Lcom/bbm/ui/e/bt;->j:Lcom/bbm/ui/LinkifyTextView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/bbm/ui/LinkifyTextView;->setVisibility(I)V
:cond_58
:goto_58
iget-object v0, p0, Lcom/bbm/ui/e/bt;->r:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
return-void
:cond_5e
sget-object v0, Lcom/bbm/ui/e/cf;->e:Landroid/graphics/drawable/Drawable;
goto :goto_26
:cond_61
iget-object v2, p0, Lcom/bbm/ui/e/bt;->c:Lcom/bbm/d/fg;
iget-object v2, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v3, Lcom/bbm/d/fj;->a:Lcom/bbm/d/fj;
if-ne v2, v3, :cond_6c
sget-object v0, Lcom/bbm/ui/e/cf;->f:Landroid/graphics/drawable/Drawable;
goto :goto_26
:cond_6c
iget-object v2, p0, Lcom/bbm/ui/e/bt;->c:Lcom/bbm/d/fg;
iget-object v2, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v3, Lcom/bbm/d/fj;->c:Lcom/bbm/d/fj;
if-ne v2, v3, :cond_77
sget-object v0, Lcom/bbm/ui/e/cf;->g:Landroid/graphics/drawable/Drawable;
goto :goto_26
:cond_77
iget-object v2, p0, Lcom/bbm/ui/e/bt;->c:Lcom/bbm/d/fg;
iget-object v2, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v3, Lcom/bbm/d/fj;->d:Lcom/bbm/d/fj;
if-ne v2, v3, :cond_82
sget-object v0, Lcom/bbm/ui/e/cf;->h:Landroid/graphics/drawable/Drawable;
goto :goto_26
:cond_82
iget-object v2, p0, Lcom/bbm/ui/e/bt;->c:Lcom/bbm/d/fg;
iget-object v2, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v3, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;
if-ne v2, v3, :cond_92
if-eqz p2, :cond_8f
sget-object v0, Lcom/bbm/ui/e/cf;->d:Landroid/graphics/drawable/Drawable;
goto :goto_26
:cond_8f
sget-object v0, Lcom/bbm/ui/e/cf;->i:Landroid/graphics/drawable/Drawable;
goto :goto_26
:cond_92
iget-object v2, p0, Lcom/bbm/ui/e/bt;->c:Lcom/bbm/d/fg;
iget-object v2, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v3, Lcom/bbm/d/fj;->e:Lcom/bbm/d/fj;
if-ne v2, v3, :cond_a2
if-eqz p2, :cond_9f
sget-object v0, Lcom/bbm/ui/e/cf;->e:Landroid/graphics/drawable/Drawable;
goto :goto_26
:cond_9f
sget-object v0, Lcom/bbm/ui/e/cf;->j:Landroid/graphics/drawable/Drawable;
goto :goto_26
:cond_a2
iget-object v2, p0, Lcom/bbm/ui/e/bt;->c:Lcom/bbm/d/fg;
iget-object v2, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v3, Lcom/bbm/d/fj;->b:Lcom/bbm/d/fj;
if-ne v2, v3, :cond_26
if-nez p2, :cond_26
sget-object v0, Lcom/bbm/ui/e/cf;->k:Landroid/graphics/drawable/Drawable;
goto/16 :goto_26
:cond_b0
iget-object v0, p0, Lcom/bbm/ui/e/bt;->j:Lcom/bbm/ui/LinkifyTextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/LinkifyTextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/e/bt;->j:Lcom/bbm/ui/LinkifyTextView;
iget-object v1, p0, Lcom/bbm/ui/e/bt;->g:Lcom/bbm/ui/e/cf;
iget v1, v1, Lcom/bbm/ui/e/cf;->n:I
invoke-virtual {v0, v1}, Lcom/bbm/ui/LinkifyTextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/e/bt;->j:Lcom/bbm/ui/LinkifyTextView;
iget-object v1, p0, Lcom/bbm/ui/e/bt;->c:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/ui/LinkifyTextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_58
.end method