.class public final Lcom/bbm/ui/e/bm;
.super Ljava/lang/Object;
.source "RealtimeLocationHolder.java"
.implements Lcom/bbm/ui/e/at;
.field final a:Landroid/content/Context;
.field protected b:Landroid/view/View;
.field protected c:Lcom/bbm/ui/InlineImageTextView;
.field protected d:Landroid/widget/TextView;
.field protected e:Landroid/widget/TextView;
.field protected f:Landroid/widget/ImageView;
.field protected g:Landroid/widget/ImageView;
.field protected h:Landroid/widget/Button;
.field  i:Lcom/bbm/d/fg;
.field private final j:Lcom/bbm/d/a;
.field private final k:Lcom/bbm/ui/activities/xo;
.field private final l:Lcom/bbm/ui/e/cf;
.method public constructor <init>(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/ui/e/cf;Lcom/bbm/ui/activities/xo;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/bbm/ui/e/bm;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/bbm/ui/e/bm;->j:Lcom/bbm/d/a;
iput-object p3, p0, Lcom/bbm/ui/e/bm;->l:Lcom/bbm/ui/e/cf;
iput-object p4, p0, Lcom/bbm/ui/e/bm;->k:Lcom/bbm/ui/activities/xo;
return-void
.end method
.method private a(Z)Landroid/graphics/drawable/Drawable;
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/bbm/ui/e/bm;->i:Lcom/bbm/d/fg;
iget-boolean v1, v1, Lcom/bbm/d/fg;->j:Z
if-eqz v1, :cond_15
iget-object v0, p0, Lcom/bbm/ui/e/bm;->i:Lcom/bbm/d/fg;
iget-object v0, v0, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v1, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;
if-ne v0, v1, :cond_12
sget-object v0, Lcom/bbm/ui/e/cf;->d:Landroid/graphics/drawable/Drawable;
:cond_11
:goto_11
return-object v0
:cond_12
sget-object v0, Lcom/bbm/ui/e/cf;->e:Landroid/graphics/drawable/Drawable;
goto :goto_11
:cond_15
iget-object v1, p0, Lcom/bbm/ui/e/bm;->i:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->a:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_20
sget-object v0, Lcom/bbm/ui/e/cf;->f:Landroid/graphics/drawable/Drawable;
goto :goto_11
:cond_20
iget-object v1, p0, Lcom/bbm/ui/e/bm;->i:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->c:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_2b
sget-object v0, Lcom/bbm/ui/e/cf;->g:Landroid/graphics/drawable/Drawable;
goto :goto_11
:cond_2b
iget-object v1, p0, Lcom/bbm/ui/e/bm;->i:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->d:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_36
sget-object v0, Lcom/bbm/ui/e/cf;->h:Landroid/graphics/drawable/Drawable;
goto :goto_11
:cond_36
iget-object v1, p0, Lcom/bbm/ui/e/bm;->i:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_46
if-eqz p1, :cond_43
sget-object v0, Lcom/bbm/ui/e/cf;->d:Landroid/graphics/drawable/Drawable;
goto :goto_11
:cond_43
sget-object v0, Lcom/bbm/ui/e/cf;->i:Landroid/graphics/drawable/Drawable;
goto :goto_11
:cond_46
iget-object v1, p0, Lcom/bbm/ui/e/bm;->i:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->e:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_56
if-eqz p1, :cond_53
sget-object v0, Lcom/bbm/ui/e/cf;->e:Landroid/graphics/drawable/Drawable;
goto :goto_11
:cond_53
sget-object v0, Lcom/bbm/ui/e/cf;->j:Landroid/graphics/drawable/Drawable;
goto :goto_11
:cond_56
iget-object v1, p0, Lcom/bbm/ui/e/bm;->i:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->b:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_11
if-nez p1, :cond_11
sget-object v0, Lcom/bbm/ui/e/cf;->k:Landroid/graphics/drawable/Drawable;
goto :goto_11
.end method
.method private a()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/ui/e/bm;->e:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/e/bm;->a:Landroid/content/Context;
const v2, 0x7f0e0380
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/e/bm;->e:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v0, p0, Lcom/bbm/ui/e/bm;->e:Landroid/widget/TextView;
const/high16 v1, -0x100
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/e/bm;->h:Landroid/widget/Button;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/e/bm;->i:Lcom/bbm/d/fg;
iget-boolean v0, v0, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/bbm/ui/e/bm;->e:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/e/bm;->h:Landroid/widget/Button;
invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/e/bm;->g:Landroid/widget/ImageView;
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_38
return-void
:cond_39
new-instance v0, Lcom/bbm/ui/e/bn;
invoke-direct {v0, p0}, Lcom/bbm/ui/e/bn;-><init>(Lcom/bbm/ui/e/bm;)V
iget-object v1, p0, Lcom/bbm/ui/e/bm;->g:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/e/bm;->e:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/e/bm;->h:Landroid/widget/Button;
invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_38
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
const v0, 0x7f0300de
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a04a9
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, p0, Lcom/bbm/ui/e/bm;->c:Lcom/bbm/ui/InlineImageTextView;
const v0, 0x7f0a04aa
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/bm;->d:Landroid/widget/TextView;
const v0, 0x7f0a04ab
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/e/bm;->g:Landroid/widget/ImageView;
const v0, 0x7f0a04ac
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/e/bm;->f:Landroid/widget/ImageView;
const v0, 0x7f0a04ad
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/bm;->e:Landroid/widget/TextView;
const v0, 0x7f0a04ae
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/e/bm;->h:Landroid/widget/Button;
iput-object v1, p0, Lcom/bbm/ui/e/bm;->b:Landroid/view/View;
return-object v1
.end method
.method public final a(Lcom/bbm/ui/e/i;Z)V
.registers 13
iget-object v0, p0, Lcom/bbm/ui/e/bm;->b:Landroid/view/View;
iget-object v1, p0, Lcom/bbm/ui/e/bm;->k:Lcom/bbm/ui/activities/xo;
invoke-static {v0, v1, p1, p2}, Lcom/bbm/ui/e/b;->a(Landroid/view/View;Lcom/bbm/ui/activities/xo;Lcom/bbm/ui/e/i;Z)V
iget-object v0, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iput-object v0, p0, Lcom/bbm/ui/e/bm;->i:Lcom/bbm/d/fg;
iget-object v0, p0, Lcom/bbm/ui/e/bm;->i:Lcom/bbm/d/fg;
iget-object v0, v0, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v0, v1, :cond_1c
const-string v0, "Shouldn\'t ever get here. Nonexistent messages have their own item type."
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_1b
:cond_1b
return-void
:cond_1c
iget-object v0, p0, Lcom/bbm/ui/e/bm;->j:Lcom/bbm/d/a;
iget-object v1, p0, Lcom/bbm/ui/e/bm;->i:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/e/bm;->g:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/bbm/ui/e/bm;->a:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f020246
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v1, p0, Lcom/bbm/ui/e/bm;->c:Lcom/bbm/ui/InlineImageTextView;
if-eqz v1, :cond_45
iget-object v1, p0, Lcom/bbm/ui/e/bm;->c:Lcom/bbm/ui/InlineImageTextView;
invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
:cond_45
iget-object v0, p0, Lcom/bbm/ui/e/bm;->d:Landroid/widget/TextView;
if-eqz v0, :cond_62
iget-object v0, p0, Lcom/bbm/ui/e/bm;->i:Lcom/bbm/d/fg;
iget-wide v0, v0, Lcom/bbm/d/fg;->s:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_62
iget-object v0, p0, Lcom/bbm/ui/e/bm;->d:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/e/bm;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/ui/e/bm;->i:Lcom/bbm/d/fg;
iget-wide v2, v2, Lcom/bbm/d/fg;->s:J
invoke-static {v1, v2, v3}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_62
iget-object v0, p0, Lcom/bbm/ui/e/bm;->f:Landroid/widget/ImageView;
if-eqz v0, :cond_75
invoke-direct {p0, p2}, Lcom/bbm/ui/e/bm;->a(Z)Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_75
iget-object v0, p0, Lcom/bbm/ui/e/bm;->f:Landroid/widget/ImageView;
invoke-direct {p0, p2}, Lcom/bbm/ui/e/bm;->a(Z)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_75
iget-object v0, p0, Lcom/bbm/ui/e/bm;->e:Landroid/widget/TextView;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/bbm/ui/e/bm;->j:Lcom/bbm/d/a;
iget-object v1, p0, Lcom/bbm/ui/e/bm;->i:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->r:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->p(Ljava/lang/String;)Lcom/bbm/d/gm;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/a/j;->a(Lcom/bbm/d/gm;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/a/d;->a(Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/a/f;
iget-object v1, v0, Lcom/bbm/util/a/f;->a:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_bc
iget-object v0, p0, Lcom/bbm/ui/e/bm;->e:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/e/bm;->a:Landroid/content/Context;
const v2, 0x7f0e06e6
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/e/bm;->e:Landroid/widget/TextView;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v0, p0, Lcom/bbm/ui/e/bm;->e:Landroid/widget/TextView;
const/high16 v1, -0x100
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/e/bm;->h:Landroid/widget/Button;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
goto/16 :goto_1b
:cond_bc
iget-object v1, v0, Lcom/bbm/util/a/f;->a:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_c7
invoke-direct {p0}, Lcom/bbm/ui/e/bm;->a()V
goto/16 :goto_1b
:cond_c7
iget v1, v0, Lcom/bbm/util/a/f;->d:I
if-eqz v1, :cond_cf
iget-boolean v1, v0, Lcom/bbm/util/a/f;->b:Z
if-eqz v1, :cond_f4
:cond_cf
invoke-direct {p0}, Lcom/bbm/ui/e/bm;->a()V
:goto_d2
new-instance v1, Lcom/bbm/ui/e/bo;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/e/bo;-><init>(Lcom/bbm/ui/e/bm;Lcom/bbm/util/a/f;)V
iget-object v0, p0, Lcom/bbm/ui/e/bm;->e:Landroid/widget/TextView;
if-eqz v0, :cond_e0
iget-object v0, p0, Lcom/bbm/ui/e/bm;->e:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_e0
iget-object v0, p0, Lcom/bbm/ui/e/bm;->h:Landroid/widget/Button;
if-eqz v0, :cond_e9
iget-object v0, p0, Lcom/bbm/ui/e/bm;->h:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_e9
iget-object v0, p0, Lcom/bbm/ui/e/bm;->g:Landroid/widget/ImageView;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/bbm/ui/e/bm;->g:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto/16 :goto_1b
:cond_f4
iget v1, v0, Lcom/bbm/util/a/f;->d:I
iget-wide v2, v0, Lcom/bbm/util/a/f;->c:J
invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;
move-result-object v4
iget-object v4, v4, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;
iget-object v5, p0, Lcom/bbm/ui/e/bm;->i:Lcom/bbm/d/fg;
iget-boolean v5, v5, Lcom/bbm/d/fg;->j:Z
invoke-interface {v4}, Lcom/glympse/android/api/GGlympse;->getTime()J
move-result-wide v6
sub-long/2addr v2, v6
const-wide/32 v6, 0xea60
const-wide/32 v8, 0xea60
rem-long v8, v2, v8
sub-long/2addr v6, v8
add-long/2addr v2, v6
if-eqz v5, :cond_159
sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
int-to-long v3, v1
invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J
move-result-wide v1
iget-object v3, p0, Lcom/bbm/ui/e/bm;->e:Landroid/widget/TextView;
iget-object v4, p0, Lcom/bbm/ui/e/bm;->a:Landroid/content/Context;
const v5, 0x7f0e037f
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
aput-object v1, v6, v7
invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/bbm/ui/e/bm;->h:Landroid/widget/Button;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V
:goto_138
iget-object v1, p0, Lcom/bbm/ui/e/bm;->e:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/e/bm;->a:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f090013
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v1, p0, Lcom/bbm/ui/e/bm;->e:Landroid/widget/TextView;
const/4 v2, 0x0
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v1, p0, Lcom/bbm/ui/e/bm;->e:Landroid/widget/TextView;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V
goto/16 :goto_d2
:cond_159
sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J
move-result-wide v1
const-wide/16 v3, 0x1
cmp-long v3, v1, v3
if-lez v3, :cond_185
iget-object v3, p0, Lcom/bbm/ui/e/bm;->e:Landroid/widget/TextView;
iget-object v4, p0, Lcom/bbm/ui/e/bm;->a:Landroid/content/Context;
const v5, 0x7f0e038b
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
aput-object v1, v6, v7
invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_17d
iget-object v1, p0, Lcom/bbm/ui/e/bm;->h:Landroid/widget/Button;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V
goto :goto_138
:cond_185
iget-object v1, p0, Lcom/bbm/ui/e/bm;->e:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/e/bm;->a:Landroid/content/Context;
const v3, 0x7f0e0384
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_17d
.end method