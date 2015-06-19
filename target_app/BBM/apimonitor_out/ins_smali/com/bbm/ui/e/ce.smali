.class public final Lcom/bbm/ui/e/ce;
.super Ljava/lang/Object;
.source "TextHolder.java"
.implements Lcom/bbm/ui/e/at;
.field  a:Landroid/widget/TextView;
.field  b:Landroid/widget/ImageView;
.field private final c:Z
.field private d:Lcom/bbm/ui/ObservingImageView;
.field private e:Landroid/widget/TextView;
.field private f:Lcom/bbm/ui/InlineImageTextView;
.field private final g:Lcom/bbm/d/a;
.field private final h:Landroid/content/Context;
.field private final i:Lcom/bbm/ui/e/cf;
.field private final j:Landroid/view/View$OnTouchListener;
.field private final k:Lcom/bbm/ui/activities/xo;
.field private l:Landroid/view/View;
.field private final m:Z
.field private final n:Lcom/bbm/j/r;
.method public constructor <init>(Landroid/content/Context;ZLcom/bbm/d/a;Lcom/bbm/ui/e/cf;Lcom/bbm/ui/activities/xo;Landroid/view/View$OnTouchListener;ZLcom/bbm/j/r;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p2, p0, Lcom/bbm/ui/e/ce;->c:Z
iput-object p3, p0, Lcom/bbm/ui/e/ce;->g:Lcom/bbm/d/a;
iput-object p1, p0, Lcom/bbm/ui/e/ce;->h:Landroid/content/Context;
iput-object p4, p0, Lcom/bbm/ui/e/ce;->i:Lcom/bbm/ui/e/cf;
iput-object p5, p0, Lcom/bbm/ui/e/ce;->k:Lcom/bbm/ui/activities/xo;
iput-object p6, p0, Lcom/bbm/ui/e/ce;->j:Landroid/view/View$OnTouchListener;
iput-boolean p7, p0, Lcom/bbm/ui/e/ce;->m:Z
iput-object p8, p0, Lcom/bbm/ui/e/ce;->n:Lcom/bbm/j/r;
return-void
.end method
.method public static a(ZLcom/bbm/d/fg;)Ljava/lang/String;
.registers 6
iget-object v1, p1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
iget-boolean v2, p1, Lcom/bbm/d/fg;->j:Z
const-string v0, ""
if-eqz v2, :cond_2b
sget-object v0, Lcom/bbm/d/fk;->c:Lcom/bbm/d/fk;
iget-object v2, p1, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
if-ne v0, v2, :cond_18
sget-object v0, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;
if-ne v1, v0, :cond_15
const-string v0, "message_icon_broadcast_read"
:cond_14
:goto_14
return-object v0
:cond_15
const-string v0, "message_icon_broadcast_unread"
goto :goto_14
:cond_18
sget-object v0, Lcom/bbm/d/fk;->b:Lcom/bbm/d/fk;
iget-object v2, p1, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
if-ne v0, v2, :cond_21
const-string v0, "message_icon_ping"
goto :goto_14
:cond_21
sget-object v0, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;
if-ne v1, v0, :cond_28
const-string v0, "message_icon_read"
goto :goto_14
:cond_28
const-string v0, "message_icon_unread"
goto :goto_14
:cond_2b
sget-object v2, Lcom/bbm/d/fk;->c:Lcom/bbm/d/fk;
iget-object v3, p1, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
if-ne v2, v3, :cond_3b
sget-object v0, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;
if-ne v1, v0, :cond_38
const-string v0, "message_icon_broadcast_read"
goto :goto_14
:cond_38
const-string v0, "message_icon_broadcast_unread"
goto :goto_14
:cond_3b
sget-object v2, Lcom/bbm/d/fj;->a:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_42
const-string v0, "message_icon_pending"
goto :goto_14
:cond_42
sget-object v2, Lcom/bbm/d/fj;->c:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_49
const-string v0, "message_icon_sending"
goto :goto_14
:cond_49
sget-object v2, Lcom/bbm/d/fj;->d:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_50
const-string v0, "message_icon_sent"
goto :goto_14
:cond_50
sget-object v2, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_5c
if-eqz p0, :cond_59
const-string v0, "message_icon_read"
goto :goto_14
:cond_59
const-string v0, "message_icon_r"
goto :goto_14
:cond_5c
sget-object v2, Lcom/bbm/d/fj;->e:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_68
if-eqz p0, :cond_65
const-string v0, "message_icon_read"
goto :goto_14
:cond_65
const-string v0, "message_icon_delivered"
goto :goto_14
:cond_68
sget-object v2, Lcom/bbm/d/fj;->b:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_14
if-nez p0, :cond_14
const-string v0, "message_icon_fail"
goto :goto_14
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/bbm/ui/e/ce;->c:Z
if-nez v0, :cond_4e
const v0, 0x7f0300dc
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
move-object v1, v0
:goto_d
const v0, 0x7f0a0458
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/e/ce;->d:Lcom/bbm/ui/ObservingImageView;
const v0, 0x7f0a0453
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/ce;->e:Landroid/widget/TextView;
const v0, 0x7f0a0454
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/ce;->a:Landroid/widget/TextView;
const v0, 0x7f0a0455
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/e/ce;->b:Landroid/widget/ImageView;
const v0, 0x7f0a0456
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, p0, Lcom/bbm/ui/e/ce;->f:Lcom/bbm/ui/InlineImageTextView;
iget-object v0, p0, Lcom/bbm/ui/e/ce;->f:Lcom/bbm/ui/InlineImageTextView;
iget-object v2, p0, Lcom/bbm/ui/e/ce;->j:Landroid/view/View$OnTouchListener;
invoke-virtual {v0, v2}, Lcom/bbm/ui/InlineImageTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iput-object v1, p0, Lcom/bbm/ui/e/ce;->l:Landroid/view/View;
return-object v1
:cond_4e
const v0, 0x7f0300d5
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
move-object v1, v0
goto :goto_d
.end method
.method public final a(Lcom/bbm/ui/e/i;Z)V
.registers 14
const/4 v4, 0x4
const/16 v10, 0x8
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/ui/e/ce;->l:Landroid/view/View;
iget-object v1, p0, Lcom/bbm/ui/e/ce;->k:Lcom/bbm/ui/activities/xo;
invoke-static {v0, v1, p1, p2}, Lcom/bbm/ui/e/b;->a(Landroid/view/View;Lcom/bbm/ui/activities/xo;Lcom/bbm/ui/e/i;Z)V
iget-object v5, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iget-object v0, v5, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v0, v1, :cond_1b
const-string v0, "Shouldn\'t ever get here. Nonexistent messages have their own item type."
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_1a
:cond_1a
return-void
:cond_1b
iget-object v0, p0, Lcom/bbm/ui/e/ce;->g:Lcom/bbm/d/a;
iget-object v1, v5, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v6
iget-object v0, p0, Lcom/bbm/ui/e/ce;->n:Lcom/bbm/j/r;
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-object v1, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v1, v3, :cond_121
const/4 v1, 0x1
:goto_32
iget-object v7, v5, Lcom/bbm/d/fg;->n:Lcom/bbm/d/fi;
iget-object v3, p0, Lcom/bbm/ui/e/ce;->d:Lcom/bbm/ui/ObservingImageView;
if-eqz v3, :cond_70
iget-boolean v3, p0, Lcom/bbm/ui/e/ce;->m:Z
if-eqz v3, :cond_124
iget-object v3, p0, Lcom/bbm/ui/e/ce;->d:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v3, v2}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
const/4 v3, 0x0
if-eqz v1, :cond_5a
iget-boolean v8, v0, Lcom/bbm/d/ec;->w:Z
if-eqz v8, :cond_4c
iget-boolean v8, v5, Lcom/bbm/d/fg;->j:Z
if-nez v8, :cond_54
:cond_4c
iget-boolean v8, v0, Lcom/bbm/d/ec;->t:Z
if-eqz v8, :cond_5a
iget-boolean v8, v5, Lcom/bbm/d/fg;->j:Z
if-nez v8, :cond_5a
:cond_54
iget-object v3, p0, Lcom/bbm/ui/e/ce;->g:Lcom/bbm/d/a;
invoke-virtual {v3, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/ec;)Lcom/bbm/j/r;
move-result-object v3
:cond_5a
if-nez v3, :cond_66
iget-object v3, p0, Lcom/bbm/ui/e/ce;->g:Lcom/bbm/d/a;
iget-object v8, v6, Lcom/bbm/d/gp;->A:Ljava/lang/String;
iget-object v9, v6, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {v3, v8, v9}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v3
:cond_66
iget-object v8, p0, Lcom/bbm/ui/e/ce;->d:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v8, v3}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
iget-object v3, p0, Lcom/bbm/ui/e/ce;->d:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v3, v2}, Lcom/bbm/ui/ObservingImageView;->setAnimationAllowed(Z)V
:cond_70
:goto_70
if-eqz v1, :cond_12b
iget-boolean v1, v0, Lcom/bbm/d/ec;->w:Z
if-eqz v1, :cond_7a
iget-boolean v1, v5, Lcom/bbm/d/fg;->j:Z
if-nez v1, :cond_82
:cond_7a
iget-boolean v1, v0, Lcom/bbm/d/ec;->t:Z
if-eqz v1, :cond_12b
iget-boolean v1, v5, Lcom/bbm/d/fg;->j:Z
if-nez v1, :cond_12b
:cond_82
iget-object v1, p0, Lcom/bbm/ui/e/ce;->e:Landroid/widget/TextView;
iget-object v0, v0, Lcom/bbm/d/ec;->k:Ljava/lang/String;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_89
:cond_89
iget-object v0, p0, Lcom/bbm/ui/e/ce;->b:Landroid/widget/ImageView;
if-eqz v0, :cond_b3
invoke-static {p2, v5}, Lcom/bbm/ui/e/ce;->a(ZLcom/bbm/d/fg;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/e/ce;->b:Landroid/widget/ImageView;
iget-object v3, p0, Lcom/bbm/ui/e/ce;->i:Lcom/bbm/ui/e/cf;
invoke-static {v0}, Lcom/bbm/ui/e/cf;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v1, p0, Lcom/bbm/ui/e/ce;->b:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
sget-object v0, Lcom/bbm/d/fi;->c:Lcom/bbm/d/fi;
if-ne v0, v7, :cond_1ba
move v0, v4
:goto_a6
iget-object v1, p0, Lcom/bbm/ui/e/ce;->b:Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I
move-result v1
if-eq v1, v0, :cond_b3
iget-object v1, p0, Lcom/bbm/ui/e/ce;->b:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_b3
iget-object v0, p0, Lcom/bbm/ui/e/ce;->f:Lcom/bbm/ui/InlineImageTextView;
if-eqz v0, :cond_d4
sget-object v0, Lcom/bbm/d/fk;->b:Lcom/bbm/d/fk;
iget-object v1, v5, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
if-ne v0, v1, :cond_13a
iget-object v0, p0, Lcom/bbm/ui/e/ce;->f:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, p0, Lcom/bbm/ui/e/ce;->i:Lcom/bbm/ui/e/cf;
iget v1, v1, Lcom/bbm/ui/e/cf;->l:I
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/e/ce;->f:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, p0, Lcom/bbm/ui/e/ce;->h:Landroid/content/Context;
const v3, 0x7f0e02c6
invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
:cond_d4
:goto_d4
iget-object v0, p0, Lcom/bbm/ui/e/ce;->a:Landroid/widget/TextView;
if-eqz v0, :cond_ed
iget-wide v0, v5, Lcom/bbm/d/fg;->s:J
const-wide/16 v6, 0x0
cmp-long v0, v0, v6
if-lez v0, :cond_ed
iget-object v0, p0, Lcom/bbm/ui/e/ce;->a:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/e/ce;->h:Landroid/content/Context;
iget-wide v5, v5, Lcom/bbm/d/fg;->s:J
invoke-static {v1, v5, v6}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_ed
iget-object v0, p0, Lcom/bbm/ui/e/ce;->d:Lcom/bbm/ui/ObservingImageView;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/bbm/ui/e/ce;->e:Landroid/widget/TextView;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/bbm/ui/e/ce;->a:Landroid/widget/TextView;
if-eqz v0, :cond_1a
iget-boolean v0, p1, Lcom/bbm/ui/e/i;->b:Z
if-eqz v0, :cond_188
iget-boolean v0, p0, Lcom/bbm/ui/e/ce;->m:Z
if-eqz v0, :cond_115
iget-object v0, p0, Lcom/bbm/ui/e/ce;->d:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v4}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/e/ce;->d:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;
iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I
iget-object v1, p0, Lcom/bbm/ui/e/ce;->d:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v1, v0}, Lcom/bbm/ui/ObservingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_115
iget-object v0, p0, Lcom/bbm/ui/e/ce;->e:Landroid/widget/TextView;
invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/e/ce;->a:Landroid/widget/TextView;
invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_1a
:cond_121
move v1, v2
goto/16 :goto_32
:cond_124
iget-object v3, p0, Lcom/bbm/ui/e/ce;->d:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v3, v10}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
goto/16 :goto_70
:cond_12b
iget-object v0, p0, Lcom/bbm/ui/e/ce;->e:Landroid/widget/TextView;
if-eqz v0, :cond_89
iget-object v0, p0, Lcom/bbm/ui/e/ce;->e:Landroid/widget/TextView;
invoke-static {v6}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_89
:cond_13a
sget-object v0, Lcom/bbm/d/fk;->c:Lcom/bbm/d/fk;
iget-object v1, v5, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
if-ne v0, v1, :cond_151
iget-object v0, p0, Lcom/bbm/ui/e/ce;->f:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, p0, Lcom/bbm/ui/e/ce;->i:Lcom/bbm/ui/e/cf;
iget v1, v1, Lcom/bbm/ui/e/cf;->m:I
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/e/ce;->f:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, v5, Lcom/bbm/d/fg;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_d4
:cond_151
sget-object v0, Lcom/bbm/d/fi;->d:Lcom/bbm/d/fi;
if-eq v0, v7, :cond_176
iget-object v1, p0, Lcom/bbm/ui/e/ce;->f:Lcom/bbm/ui/InlineImageTextView;
sget-object v0, Lcom/bbm/d/fi;->b:Lcom/bbm/d/fi;
if-ne v7, v0, :cond_171
iget-object v0, p0, Lcom/bbm/ui/e/ce;->i:Lcom/bbm/ui/e/cf;
iget v0, v0, Lcom/bbm/ui/e/cf;->n:I
:goto_15f
invoke-virtual {v1, v0}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/e/ce;->f:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, p0, Lcom/bbm/ui/e/ce;->h:Landroid/content/Context;
iget-object v3, p0, Lcom/bbm/ui/e/ce;->g:Lcom/bbm/d/a;
invoke-static {v1, v3, v5}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_d4
:cond_171
iget-object v0, p0, Lcom/bbm/ui/e/ce;->i:Lcom/bbm/ui/e/cf;
iget v0, v0, Lcom/bbm/ui/e/cf;->q:I
goto :goto_15f
:cond_176
iget-object v0, p0, Lcom/bbm/ui/e/ce;->f:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, p0, Lcom/bbm/ui/e/ce;->i:Lcom/bbm/ui/e/cf;
iget v1, v1, Lcom/bbm/ui/e/cf;->n:I
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/e/ce;->f:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, v5, Lcom/bbm/d/fg;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_d4
:cond_188
iget-boolean v0, p0, Lcom/bbm/ui/e/ce;->m:Z
if-eqz v0, :cond_1ae
iget-object v0, p0, Lcom/bbm/ui/e/ce;->d:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v2}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/e/ce;->d:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;
iget-object v1, p0, Lcom/bbm/ui/e/ce;->h:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v3, 0x7f0b00ee
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F
move-result v1
float-to-int v1, v1
iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I
iget-object v1, p0, Lcom/bbm/ui/e/ce;->d:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v1, v0}, Lcom/bbm/ui/ObservingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_1ae
iget-object v0, p0, Lcom/bbm/ui/e/ce;->e:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/e/ce;->a:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_1a
:cond_1ba
move v0, v2
goto/16 :goto_a6
.end method