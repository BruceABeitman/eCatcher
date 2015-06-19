.class public final Lcom/bbm/ui/e/m;
.super Ljava/lang/Object;
.source "EphemeralTextHolder.java"
.implements Lcom/bbm/ui/e/at;
.field  a:Landroid/view/View$OnLayoutChangeListener;
.field private b:Lcom/bbm/ui/ObservingImageView;
.field private c:Landroid/widget/TextView;
.field private d:Landroid/widget/TextView;
.field private e:Landroid/widget/TextView;
.field private f:Landroid/widget/TextView;
.field private g:Landroid/widget/ImageView;
.field private h:Landroid/widget/ProgressBar;
.field private i:Lcom/bbm/ui/InlineImageTextView;
.field private j:J
.field private final k:Landroid/content/Context;
.field private final l:Z
.field private final m:Lcom/bbm/ui/e/cf;
.field private final n:Landroid/view/View$OnTouchListener;
.field private final o:Lcom/bbm/util/cr;
.field private p:Lcom/bbm/ui/e/bd;
.field private q:Landroid/view/View;
.field private r:Lcom/bbm/ui/e/p;
.method public constructor <init>(Landroid/content/Context;ZLcom/bbm/ui/e/cf;Landroid/view/View$OnTouchListener;Lcom/bbm/util/cr;Lcom/bbm/ui/e/bd;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/bbm/ui/e/n;
invoke-direct {v0, p0}, Lcom/bbm/ui/e/n;-><init>(Lcom/bbm/ui/e/m;)V
iput-object v0, p0, Lcom/bbm/ui/e/m;->a:Landroid/view/View$OnLayoutChangeListener;
iput-boolean p2, p0, Lcom/bbm/ui/e/m;->l:Z
iput-object p1, p0, Lcom/bbm/ui/e/m;->k:Landroid/content/Context;
iput-object p3, p0, Lcom/bbm/ui/e/m;->m:Lcom/bbm/ui/e/cf;
iput-object p4, p0, Lcom/bbm/ui/e/m;->n:Landroid/view/View$OnTouchListener;
iput-object p5, p0, Lcom/bbm/ui/e/m;->o:Lcom/bbm/util/cr;
iput-object p6, p0, Lcom/bbm/ui/e/m;->p:Lcom/bbm/ui/e/bd;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/e/m;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/m;->k:Landroid/content/Context;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/e/m;)J
.registers 3
iget-wide v0, p0, Lcom/bbm/ui/e/m;->j:J
return-wide v0
.end method
.method static synthetic c(Lcom/bbm/ui/e/m;)Lcom/bbm/ui/e/bd;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/m;->p:Lcom/bbm/ui/e/bd;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/e/m;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/m;->h:Landroid/widget/ProgressBar;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/e/m;)Lcom/bbm/util/cr;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/m;->o:Lcom/bbm/util/cr;
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
const v2, 0x7f0a0458
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/bbm/ui/e/m;->l:Z
if-eqz v0, :cond_72
const v0, 0x7f0300bd
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
move-object v1, v0
:goto_10
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/e/m;->b:Lcom/bbm/ui/ObservingImageView;
const v0, 0x7f0a0172
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/bbm/ui/e/m;->h:Landroid/widget/ProgressBar;
const v0, 0x7f0a0457
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/m;->e:Landroid/widget/TextView;
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/e/m;->b:Lcom/bbm/ui/ObservingImageView;
const v0, 0x7f0a0453
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/m;->c:Landroid/widget/TextView;
const v0, 0x7f0a0454
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/m;->d:Landroid/widget/TextView;
const v0, 0x7f0a0455
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/e/m;->g:Landroid/widget/ImageView;
const v0, 0x7f0a0456
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, p0, Lcom/bbm/ui/e/m;->i:Lcom/bbm/ui/InlineImageTextView;
iget-object v0, p0, Lcom/bbm/ui/e/m;->i:Lcom/bbm/ui/InlineImageTextView;
const/4 v2, 0x0
invoke-virtual {v0, v2}, Lcom/bbm/ui/InlineImageTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
iget-object v0, p0, Lcom/bbm/ui/e/m;->i:Lcom/bbm/ui/InlineImageTextView;
iget-object v2, p0, Lcom/bbm/ui/e/m;->n:Landroid/view/View$OnTouchListener;
invoke-virtual {v0, v2}, Lcom/bbm/ui/InlineImageTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iput-object v1, p0, Lcom/bbm/ui/e/m;->q:Landroid/view/View;
return-object v1
:cond_72
const v0, 0x7f0300be
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a0459
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/m;->f:Landroid/widget/TextView;
goto :goto_10
.end method
.method public final a(Lcom/bbm/ui/e/i;Z)V
.registers 13
const/16 v7, 0x8
const/4 v9, 0x0
iget-object v0, p0, Lcom/bbm/ui/e/m;->e:Landroid/widget/TextView;
invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/e/m;->h:Landroid/widget/ProgressBar;
invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
iget-object v2, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iget-wide v3, v2, Lcom/bbm/d/fg;->i:J
iput-wide v3, p0, Lcom/bbm/ui/e/m;->j:J
iget-object v0, v2, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
iget-object v3, v2, Lcom/bbm/d/fg;->g:Lorg/json/JSONObject;
const-string v4, "ephemeralMetaDataId"
invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/bbm/d/a;->I(Ljava/lang/String;)Lcom/bbm/d/eu;
move-result-object v3
iget-object v4, v2, Lcom/bbm/d/fg;->n:Lcom/bbm/d/fi;
iget-boolean v5, v2, Lcom/bbm/d/fg;->j:Z
if-eqz v5, :cond_bf
iget-object v5, p0, Lcom/bbm/ui/e/m;->q:Landroid/view/View;
const v6, 0x7f020069
invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V
:goto_37
iget-object v5, p0, Lcom/bbm/ui/e/m;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v5, v9}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v5, v0, Lcom/bbm/d/gp;->A:Ljava/lang/String;
iget-object v6, v0, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {v1, v5, v6}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v5
iget-object v6, p0, Lcom/bbm/ui/e/m;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v6, v5}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
iget-object v5, p0, Lcom/bbm/ui/e/m;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v5, v9}, Lcom/bbm/ui/ObservingImageView;->setAnimationAllowed(Z)V
iget-object v5, p0, Lcom/bbm/ui/e/m;->c:Landroid/widget/TextView;
invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-boolean v0, v2, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_cc
iget-boolean v0, v3, Lcom/bbm/d/eu;->e:Z
if-eqz v0, :cond_c9
const-string v0, "message_icon_read"
:goto_61
iget-object v5, p0, Lcom/bbm/ui/e/m;->g:Landroid/widget/ImageView;
iget-object v6, p0, Lcom/bbm/ui/e/m;->m:Lcom/bbm/ui/e/cf;
invoke-static {v0}, Lcom/bbm/ui/e/cf;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
move-result-object v6
invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v5, p0, Lcom/bbm/ui/e/m;->g:Landroid/widget/ImageView;
invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
sget-object v0, Lcom/bbm/d/fi;->c:Lcom/bbm/d/fi;
if-ne v0, v4, :cond_fc
iget-object v0, p0, Lcom/bbm/ui/e/m;->g:Landroid/widget/ImageView;
const/4 v5, 0x4
invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_7b
iget-object v0, p0, Lcom/bbm/ui/e/m;->i:Lcom/bbm/ui/InlineImageTextView;
iget-object v5, p0, Lcom/bbm/ui/e/m;->k:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f090088
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I
move-result v5
invoke-virtual {v0, v5}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V
sget-object v0, Lcom/bbm/d/fi;->d:Lcom/bbm/d/fi;
if-eq v0, v4, :cond_108
iget-object v3, p0, Lcom/bbm/ui/e/m;->i:Lcom/bbm/ui/InlineImageTextView;
sget-object v0, Lcom/bbm/d/fi;->b:Lcom/bbm/d/fi;
if-ne v4, v0, :cond_103
iget-object v0, p0, Lcom/bbm/ui/e/m;->m:Lcom/bbm/ui/e/cf;
iget v0, v0, Lcom/bbm/ui/e/cf;->n:I
:goto_9b
invoke-virtual {v3, v0}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/e/m;->i:Lcom/bbm/ui/InlineImageTextView;
iget-object v3, p0, Lcom/bbm/ui/e/m;->k:Landroid/content/Context;
invoke-static {v3, v1, v2}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
:goto_a9
:cond_a9
iget-wide v0, v2, Lcom/bbm/d/fg;->s:J
const-wide/16 v3, 0x0
cmp-long v0, v0, v3
if-lez v0, :cond_be
iget-object v0, p0, Lcom/bbm/ui/e/m;->d:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/e/m;->k:Landroid/content/Context;
iget-wide v2, v2, Lcom/bbm/d/fg;->s:J
invoke-static {v1, v2, v3}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_be
return-void
:cond_bf
iget-object v5, p0, Lcom/bbm/ui/e/m;->q:Landroid/view/View;
const v6, 0x7f020097
invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V
goto/16 :goto_37
:cond_c9
const-string v0, "message_icon_unread"
goto :goto_61
:cond_cc
iget-object v0, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v5, Lcom/bbm/d/fj;->a:Lcom/bbm/d/fj;
if-ne v0, v5, :cond_d5
const-string v0, "message_icon_pending"
goto :goto_61
:cond_d5
sget-object v5, Lcom/bbm/d/fj;->c:Lcom/bbm/d/fj;
if-ne v0, v5, :cond_dc
const-string v0, "message_icon_sending"
goto :goto_61
:cond_dc
sget-object v5, Lcom/bbm/d/fj;->d:Lcom/bbm/d/fj;
if-ne v0, v5, :cond_e4
const-string v0, "message_icon_sent"
goto/16 :goto_61
:cond_e4
sget-object v5, Lcom/bbm/d/fj;->e:Lcom/bbm/d/fj;
if-eq v0, v5, :cond_f8
sget-object v5, Lcom/bbm/d/fj;->b:Lcom/bbm/d/fj;
if-ne v0, v5, :cond_f0
const-string v0, "message_icon_fail"
goto/16 :goto_61
:cond_f0
iget-boolean v0, v3, Lcom/bbm/d/eu;->e:Z
if-eqz v0, :cond_f8
const-string v0, "message_icon_r"
goto/16 :goto_61
:cond_f8
const-string v0, "message_icon_delivered"
goto/16 :goto_61
:cond_fc
iget-object v0, p0, Lcom/bbm/ui/e/m;->g:Landroid/widget/ImageView;
invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V
goto/16 :goto_7b
:cond_103
iget-object v0, p0, Lcom/bbm/ui/e/m;->m:Lcom/bbm/ui/e/cf;
iget v0, v0, Lcom/bbm/ui/e/cf;->q:I
goto :goto_9b
:cond_108
iget-boolean v0, v2, Lcom/bbm/d/fg;->j:Z
if-nez v0, :cond_140
iget-object v0, p0, Lcom/bbm/ui/e/m;->i:Lcom/bbm/ui/InlineImageTextView;
const v1, 0x7f0e0311
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(I)V
iget-object v0, p0, Lcom/bbm/ui/e/m;->f:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/e/m;->k:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v4, 0x7f0d0005
iget-wide v5, v3, Lcom/bbm/d/eu;->d:J
long-to-int v5, v5
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
iget-wide v7, v3, Lcom/bbm/d/eu;->d:J
long-to-int v7, v7
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v6, v9
invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-boolean v0, v3, Lcom/bbm/d/eu;->c:Z
if-eqz v0, :cond_a9
iget-object v0, p0, Lcom/bbm/ui/e/m;->e:Landroid/widget/TextView;
invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_a9
:cond_140
iget-boolean v0, v3, Lcom/bbm/d/eu;->e:Z
if-nez v0, :cond_178
iget-object v0, p0, Lcom/bbm/ui/e/m;->i:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, p0, Lcom/bbm/ui/e/m;->k:Landroid/content/Context;
const v4, 0x7f0e0310
invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, v3, Lcom/bbm/d/eu;->b:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/e/m;->o:Lcom/bbm/util/cr;
invoke-virtual {v1}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_a9
iget-object v0, p0, Lcom/bbm/ui/e/m;->r:Lcom/bbm/ui/e/p;
if-nez v0, :cond_16b
new-instance v0, Lcom/bbm/ui/e/p;
invoke-direct {v0, p0}, Lcom/bbm/ui/e/p;-><init>(Lcom/bbm/ui/e/m;)V
iput-object v0, p0, Lcom/bbm/ui/e/m;->r:Lcom/bbm/ui/e/p;
:cond_16b
iget-object v0, p0, Lcom/bbm/ui/e/m;->r:Lcom/bbm/ui/e/p;
iput-object v3, v0, Lcom/bbm/ui/e/p;->a:Lcom/bbm/d/eu;
iget-object v0, p0, Lcom/bbm/ui/e/m;->q:Landroid/view/View;
iget-object v1, p0, Lcom/bbm/ui/e/m;->r:Lcom/bbm/ui/e/p;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
goto/16 :goto_a9
:cond_178
iget-object v0, v3, Lcom/bbm/d/eu;->b:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/e/m;->o:Lcom/bbm/util/cr;
invoke-virtual {v1}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1ba
iget-object v0, p0, Lcom/bbm/ui/e/m;->q:Landroid/view/View;
iget-object v1, p0, Lcom/bbm/ui/e/m;->a:Landroid/view/View$OnLayoutChangeListener;
invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
iget-object v0, p0, Lcom/bbm/ui/e/m;->i:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, p0, Lcom/bbm/ui/e/m;->k:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v3, 0x7f09008a
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/e/m;->i:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, v2, Lcom/bbm/d/fg;->g:Lorg/json/JSONObject;
const-string v3, "message"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/e/m;->h:Landroid/widget/ProgressBar;
invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/e/m;->p:Lcom/bbm/ui/e/bd;
iget-object v1, p0, Lcom/bbm/ui/e/m;->h:Landroid/widget/ProgressBar;
invoke-virtual {v0, v1}, Lcom/bbm/ui/e/bd;->a(Landroid/widget/ProgressBar;)V
goto/16 :goto_a9
:cond_1ba
iget-object v0, p0, Lcom/bbm/ui/e/m;->q:Landroid/view/View;
iget-object v1, p0, Lcom/bbm/ui/e/m;->a:Landroid/view/View$OnLayoutChangeListener;
invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
iget-object v0, p0, Lcom/bbm/ui/e/m;->i:Lcom/bbm/ui/InlineImageTextView;
const v1, 0x7f0e0312
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(I)V
iget-object v0, p0, Lcom/bbm/ui/e/m;->h:Landroid/widget/ProgressBar;
invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/e/m;->q:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
goto/16 :goto_a9
.end method