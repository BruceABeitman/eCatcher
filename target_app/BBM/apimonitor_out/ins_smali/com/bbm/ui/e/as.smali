.class public final Lcom/bbm/ui/e/as;
.super Ljava/lang/Object;
.source "MergedBubbleHolder.java"
.implements Lcom/bbm/ui/e/at;
.field  a:Landroid/widget/ImageView;
.field private b:Lcom/bbm/ui/InlineImageTextView;
.field private final c:Landroid/content/Context;
.field private final d:Lcom/bbm/d/a;
.field private final e:Lcom/bbm/ui/e/cf;
.field private final f:Landroid/view/View$OnTouchListener;
.field private final g:Lcom/bbm/ui/activities/xo;
.field private h:Landroid/view/View;
.field private final i:Z
.field private final j:I
.field private final k:I
.method public constructor <init>(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/ui/e/cf;Lcom/bbm/ui/activities/xo;Landroid/view/View$OnTouchListener;Z)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/bbm/ui/e/as;->c:Landroid/content/Context;
iput-object p2, p0, Lcom/bbm/ui/e/as;->d:Lcom/bbm/d/a;
iput-object p3, p0, Lcom/bbm/ui/e/as;->e:Lcom/bbm/ui/e/cf;
iput-object p4, p0, Lcom/bbm/ui/e/as;->g:Lcom/bbm/ui/activities/xo;
iput-object p5, p0, Lcom/bbm/ui/e/as;->f:Landroid/view/View$OnTouchListener;
iput-boolean p6, p0, Lcom/bbm/ui/e/as;->i:Z
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b00f6
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iput v0, p0, Lcom/bbm/ui/e/as;->j:I
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b00f1
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iput v0, p0, Lcom/bbm/ui/e/as;->k:I
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
const v0, 0x7f0300d8
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a0455
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/e/as;->a:Landroid/widget/ImageView;
const v0, 0x7f0a0456
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, p0, Lcom/bbm/ui/e/as;->b:Lcom/bbm/ui/InlineImageTextView;
iget-object v0, p0, Lcom/bbm/ui/e/as;->b:Lcom/bbm/ui/InlineImageTextView;
iget-object v2, p0, Lcom/bbm/ui/e/as;->f:Landroid/view/View$OnTouchListener;
invoke-virtual {v0, v2}, Lcom/bbm/ui/InlineImageTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iput-object v1, p0, Lcom/bbm/ui/e/as;->h:Landroid/view/View;
return-object v1
.end method
.method public final a(Lcom/bbm/ui/e/i;Z)V
.registers 9
const/4 v0, 0x0
iget-object v1, p0, Lcom/bbm/ui/e/as;->h:Landroid/view/View;
iget-object v2, p0, Lcom/bbm/ui/e/as;->g:Lcom/bbm/ui/activities/xo;
invoke-static {v1, v2, p1, p2}, Lcom/bbm/ui/e/b;->a(Landroid/view/View;Lcom/bbm/ui/activities/xo;Lcom/bbm/ui/e/i;Z)V
iget-object v2, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iget-object v1, v2, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v1, v3, :cond_18
const-string v1, "MergedBubbleHolder.setMessage: Invoked with nonexistent message, which shouldn\'t have happened."
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v1, v0}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_17
:goto_17
return-void
:cond_18
iget-object v3, v2, Lcom/bbm/d/fg;->n:Lcom/bbm/d/fi;
iget-object v1, p0, Lcom/bbm/ui/e/as;->a:Landroid/widget/ImageView;
if-eqz v1, :cond_44
invoke-static {p2, v2}, Lcom/bbm/ui/e/ce;->a(ZLcom/bbm/d/fg;)Ljava/lang/String;
move-result-object v1
iget-object v4, p0, Lcom/bbm/ui/e/as;->a:Landroid/widget/ImageView;
iget-object v5, p0, Lcom/bbm/ui/e/as;->e:Lcom/bbm/ui/e/cf;
invoke-static {v1}, Lcom/bbm/ui/e/cf;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v4, p0, Lcom/bbm/ui/e/as;->a:Landroid/widget/ImageView;
invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
sget-object v1, Lcom/bbm/d/fi;->c:Lcom/bbm/d/fi;
if-ne v1, v3, :cond_37
const/4 v0, 0x4
:cond_37
iget-object v1, p0, Lcom/bbm/ui/e/as;->a:Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I
move-result v1
if-eq v1, v0, :cond_44
iget-object v1, p0, Lcom/bbm/ui/e/as;->a:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_44
iget-object v0, p0, Lcom/bbm/ui/e/as;->a:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
iget-boolean v1, v2, Lcom/bbm/d/fg;->j:Z
if-eqz v1, :cond_80
iget-boolean v1, p0, Lcom/bbm/ui/e/as;->i:Z
if-eqz v1, :cond_7d
iget-object v1, p0, Lcom/bbm/ui/e/as;->e:Lcom/bbm/ui/e/cf;
iget v1, v1, Lcom/bbm/ui/e/cf;->s:F
float-to-int v1, v1
:goto_59
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
:goto_5b
iget-object v0, p0, Lcom/bbm/ui/e/as;->b:Lcom/bbm/ui/InlineImageTextView;
if-eqz v0, :cond_17
iget-object v0, v2, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
sget-object v1, Lcom/bbm/d/fk;->b:Lcom/bbm/d/fk;
if-ne v0, v1, :cond_8f
iget-object v0, p0, Lcom/bbm/ui/e/as;->b:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, p0, Lcom/bbm/ui/e/as;->e:Lcom/bbm/ui/e/cf;
iget v1, v1, Lcom/bbm/ui/e/cf;->l:I
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/e/as;->b:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, p0, Lcom/bbm/ui/e/as;->c:Landroid/content/Context;
const v2, 0x7f0e02c6
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_17
:cond_7d
iget v1, p0, Lcom/bbm/ui/e/as;->k:I
goto :goto_59
:cond_80
iget-boolean v1, p0, Lcom/bbm/ui/e/as;->i:Z
if-eqz v1, :cond_8c
iget-object v1, p0, Lcom/bbm/ui/e/as;->e:Lcom/bbm/ui/e/cf;
iget v1, v1, Lcom/bbm/ui/e/cf;->r:F
float-to-int v1, v1
:goto_89
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
goto :goto_5b
:cond_8c
iget v1, p0, Lcom/bbm/ui/e/as;->j:I
goto :goto_89
:cond_8f
iget-object v0, v2, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
sget-object v1, Lcom/bbm/d/fk;->c:Lcom/bbm/d/fk;
if-ne v0, v1, :cond_a7
iget-object v0, p0, Lcom/bbm/ui/e/as;->b:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, p0, Lcom/bbm/ui/e/as;->e:Lcom/bbm/ui/e/cf;
iget v1, v1, Lcom/bbm/ui/e/cf;->m:I
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/e/as;->b:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, v2, Lcom/bbm/d/fg;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_17
:cond_a7
sget-object v0, Lcom/bbm/d/fi;->d:Lcom/bbm/d/fi;
if-eq v0, v3, :cond_cc
iget-object v1, p0, Lcom/bbm/ui/e/as;->b:Lcom/bbm/ui/InlineImageTextView;
sget-object v0, Lcom/bbm/d/fi;->b:Lcom/bbm/d/fi;
if-ne v3, v0, :cond_c7
iget-object v0, p0, Lcom/bbm/ui/e/as;->e:Lcom/bbm/ui/e/cf;
iget v0, v0, Lcom/bbm/ui/e/cf;->n:I
:goto_b5
invoke-virtual {v1, v0}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/e/as;->b:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, p0, Lcom/bbm/ui/e/as;->c:Landroid/content/Context;
iget-object v3, p0, Lcom/bbm/ui/e/as;->d:Lcom/bbm/d/a;
invoke-static {v1, v3, v2}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_17
:cond_c7
iget-object v0, p0, Lcom/bbm/ui/e/as;->e:Lcom/bbm/ui/e/cf;
iget v0, v0, Lcom/bbm/ui/e/cf;->q:I
goto :goto_b5
:cond_cc
iget-object v0, p0, Lcom/bbm/ui/e/as;->b:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, p0, Lcom/bbm/ui/e/as;->e:Lcom/bbm/ui/e/cf;
iget v1, v1, Lcom/bbm/ui/e/cf;->n:I
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/e/as;->b:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, v2, Lcom/bbm/d/fg;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_17
.end method