.class public Lcom/bbm/ui/e/cg;
.super Ljava/lang/Object;
.source "TextWithContextHolder.java"

# interfaces
.implements Lcom/bbm/ui/e/at;


# instance fields
.field private final a:Z

.field private b:Lcom/bbm/ui/ObservingImageView;

.field private c:Lcom/bbm/ui/ObservingImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/bbm/ui/InlineImageTextView;

.field private h:Lcom/bbm/ui/InlineImageTextView;

.field private final i:Lcom/bbm/d/a;

.field private final j:Landroid/content/Context;

.field private final k:Lcom/bbm/ui/e/cf;

.field private final l:Landroid/view/View$OnTouchListener;

.field private final m:Lcom/bbm/ui/activities/xo;

.field private n:Landroid/view/View;

.field private final o:Ljava/lang/String;

.field private final p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/bbm/d/a;Lcom/bbm/ui/e/cf;Lcom/bbm/ui/activities/xo;Landroid/view/View$OnTouchListener;Ljava/lang/String;Z)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/bbm/ui/e/cg;->a:Z

    iput-object p3, p0, Lcom/bbm/ui/e/cg;->i:Lcom/bbm/d/a;

    iput-object p1, p0, Lcom/bbm/ui/e/cg;->j:Landroid/content/Context;

    iput-object p4, p0, Lcom/bbm/ui/e/cg;->k:Lcom/bbm/ui/e/cf;

    iput-object p5, p0, Lcom/bbm/ui/e/cg;->m:Lcom/bbm/ui/activities/xo;

    iput-object p6, p0, Lcom/bbm/ui/e/cg;->l:Landroid/view/View$OnTouchListener;

    iput-object p7, p0, Lcom/bbm/ui/e/cg;->o:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/bbm/ui/e/cg;->p:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/bbm/ui/e/cg;->a:Z

    if-nez v0, :cond_64

    const v0, 0x7f0300e6

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :goto_d
    const v0, 0x7f0a0458

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/e/cg;->b:Lcom/bbm/ui/ObservingImageView;

    const v0, 0x7f0a0453

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/e/cg;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0454

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/e/cg;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0455

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/e/cg;->f:Landroid/widget/ImageView;

    const v0, 0x7f0a0456

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, p0, Lcom/bbm/ui/e/cg;->g:Lcom/bbm/ui/InlineImageTextView;

    iget-object v0, p0, Lcom/bbm/ui/e/cg;->g:Lcom/bbm/ui/InlineImageTextView;

    iget-object v2, p0, Lcom/bbm/ui/e/cg;->l:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/InlineImageTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a04b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/e/cg;->c:Lcom/bbm/ui/ObservingImageView;

    const v0, 0x7f0a04b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, p0, Lcom/bbm/ui/e/cg;->h:Lcom/bbm/ui/InlineImageTextView;

    iput-object v1, p0, Lcom/bbm/ui/e/cg;->n:Landroid/view/View;

    return-object v1

    :cond_64
    const v0, 0x7f0300e5

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_d
.end method

.method public final a(Lcom/bbm/ui/e/i;Z)V
    .registers 13

    const/16 v9, 0x8

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/bbm/ui/e/cg;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/bbm/ui/e/cg;->m:Lcom/bbm/ui/activities/xo;

    invoke-static {v0, v1, p1, p2}, Lcom/bbm/ui/e/b;->a(Landroid/view/View;Lcom/bbm/ui/activities/xo;Lcom/bbm/ui/e/i;Z)V

    iget-object v0, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;

    iget-object v1, v0, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v1, v2, :cond_1a

    const-string v0, "Shouldn\'t ever get here. Nonexistent messages have their own item type."

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v1, p0, Lcom/bbm/ui/e/cg;->i:Lcom/bbm/d/a;

    iget-object v2, v0, Lcom/bbm/d/fg;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/e/cg;->i:Lcom/bbm/d/a;

    invoke-virtual {v2}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/e/cg;->i:Lcom/bbm/d/a;

    iget-object v4, v0, Lcom/bbm/d/fg;->r:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bbm/d/a;->p(Ljava/lang/String;)Lcom/bbm/d/gm;

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/e/cg;->b:Lcom/bbm/ui/ObservingImageView;

    if-eqz v4, :cond_51

    iget-boolean v4, p0, Lcom/bbm/ui/e/cg;->p:Z

    if-eqz v4, :cond_162

    iget-object v4, p0, Lcom/bbm/ui/e/cg;->b:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v4, v8}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/bbm/ui/e/cg;->b:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v4, v8}, Lcom/bbm/ui/ObservingImageView;->setAnimationAllowed(Z)V

    iget-object v4, p0, Lcom/bbm/ui/e/cg;->b:Lcom/bbm/ui/ObservingImageView;

    iget-object v5, p0, Lcom/bbm/ui/e/cg;->i:Lcom/bbm/d/a;

    iget-object v6, v1, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    iget-object v7, v1, Lcom/bbm/d/gp;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    :cond_51
    :goto_51
    iget-object v4, p0, Lcom/bbm/ui/e/cg;->d:Landroid/widget/TextView;

    if-eqz v4, :cond_5e

    iget-object v4, p0, Lcom/bbm/ui/e/cg;->d:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5e
    iget-object v1, p0, Lcom/bbm/ui/e/cg;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_74

    invoke-static {p2, v0}, Lcom/bbm/ui/e/ce;->a(ZLcom/bbm/d/fg;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/bbm/ui/e/cg;->f:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/bbm/ui/e/cf;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/bbm/ui/e/cg;->f:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_74
    iget-object v1, p0, Lcom/bbm/ui/e/cg;->g:Lcom/bbm/ui/InlineImageTextView;

    if-eqz v1, :cond_95

    iget-object v1, v0, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;

    sget-object v4, Lcom/bbm/d/fk;->b:Lcom/bbm/d/fk;

    if-ne v1, v4, :cond_169

    iget-object v1, p0, Lcom/bbm/ui/e/cg;->g:Lcom/bbm/ui/InlineImageTextView;

    iget-object v4, p0, Lcom/bbm/ui/e/cg;->k:Lcom/bbm/ui/e/cf;

    iget v4, v4, Lcom/bbm/ui/e/cf;->l:I

    invoke-virtual {v1, v4}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/bbm/ui/e/cg;->g:Lcom/bbm/ui/InlineImageTextView;

    iget-object v4, p0, Lcom/bbm/ui/e/cg;->j:Landroid/content/Context;

    const v5, 0x7f0e02c6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_95
    :goto_95
    iget-object v1, p0, Lcom/bbm/ui/e/cg;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_ae

    iget-wide v4, v0, Lcom/bbm/d/fg;->s:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_ae

    iget-object v1, p0, Lcom/bbm/ui/e/cg;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bbm/ui/e/cg;->j:Landroid/content/Context;

    iget-wide v5, v0, Lcom/bbm/d/fg;->s:J

    invoke-static {v4, v5, v6}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ae
    iget-object v0, p0, Lcom/bbm/ui/e/cg;->c:Lcom/bbm/ui/ObservingImageView;

    if-eqz v0, :cond_d0

    iget-object v0, v3, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;

    sget-object v1, Lcom/bbm/d/gn;->d:Lcom/bbm/d/gn;

    if-ne v0, v1, :cond_d0

    iget-boolean v0, p0, Lcom/bbm/ui/e/cg;->a:Z

    if-eqz v0, :cond_17b

    iget-object v0, p0, Lcom/bbm/ui/e/cg;->c:Lcom/bbm/ui/ObservingImageView;

    iget-object v1, p0, Lcom/bbm/ui/e/cg;->i:Lcom/bbm/d/a;

    iget-object v4, v2, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    iget-object v2, v2, Lcom/bbm/d/gp;->a:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    :goto_cb
    iget-object v0, p0, Lcom/bbm/ui/e/cg;->c:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, v8}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V

    :cond_d0
    iget-object v0, p0, Lcom/bbm/ui/e/cg;->h:Lcom/bbm/ui/InlineImageTextView;

    if-eqz v0, :cond_12d

    iget-object v0, p0, Lcom/bbm/ui/e/cg;->h:Lcom/bbm/ui/InlineImageTextView;

    iget-object v1, p0, Lcom/bbm/ui/e/cg;->k:Lcom/bbm/ui/e/cf;

    iget v1, v1, Lcom/bbm/ui/e/cf;->n:I

    invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V

    iget-object v0, v3, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;

    sget-object v1, Lcom/bbm/d/gn;->d:Lcom/bbm/d/gn;

    if-ne v0, v1, :cond_194

    iget-object v0, p0, Lcom/bbm/ui/e/cg;->c:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, v8}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/bbm/ui/e/cg;->j:Landroid/content/Context;

    const v2, 0x7f0e04f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_f6
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, v3, Lcom/bbm/d/gm;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/SpannableString;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v0, v3, v8

    const/4 v4, 0x1

    const-string v5, " "

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v3, -0xffff01

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/bbm/ui/e/cg;->h:Lcom/bbm/ui/InlineImageTextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v2, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Landroid/text/SpannableString;Landroid/widget/TextView$BufferType;)V

    :cond_12d
    iget-object v0, p0, Lcom/bbm/ui/e/cg;->b:Lcom/bbm/ui/ObservingImageView;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bbm/ui/e/cg;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bbm/ui/e/cg;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    iget-boolean v0, p1, Lcom/bbm/ui/e/i;->b:Z

    if-eqz v0, :cond_209

    iget-boolean v0, p0, Lcom/bbm/ui/e/cg;->p:Z

    if-eqz v0, :cond_156

    iget-object v0, p0, Lcom/bbm/ui/e/cg;->b:Lcom/bbm/ui/ObservingImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/e/cg;->b:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/bbm/ui/e/cg;->b:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/ObservingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_156
    iget-object v0, p0, Lcom/bbm/ui/e/cg;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/e/cg;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_19

    :cond_162
    iget-object v4, p0, Lcom/bbm/ui/e/cg;->b:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v4, v9}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    goto/16 :goto_51

    :cond_169
    iget-object v1, p0, Lcom/bbm/ui/e/cg;->g:Lcom/bbm/ui/InlineImageTextView;

    iget-object v4, p0, Lcom/bbm/ui/e/cg;->k:Lcom/bbm/ui/e/cf;

    iget v4, v4, Lcom/bbm/ui/e/cf;->n:I

    invoke-virtual {v1, v4}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/bbm/ui/e/cg;->g:Lcom/bbm/ui/InlineImageTextView;

    iget-object v4, v0, Lcom/bbm/d/fg;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_95

    :cond_17b
    iget-object v0, p0, Lcom/bbm/ui/e/cg;->i:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/ui/e/cg;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/e/cg;->c:Lcom/bbm/ui/ObservingImageView;

    iget-object v2, p0, Lcom/bbm/ui/e/cg;->i:Lcom/bbm/d/a;

    iget-object v4, v0, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    iget-object v0, v0, Lcom/bbm/d/gp;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    goto/16 :goto_cb

    :cond_194
    iget-object v0, v3, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;

    sget-object v1, Lcom/bbm/d/gn;->c:Lcom/bbm/d/gn;

    if-ne v0, v1, :cond_1af

    iget-object v0, p0, Lcom/bbm/ui/e/cg;->c:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, v9}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/bbm/ui/e/cg;->j:Landroid/content/Context;

    const v2, 0x7f0e04f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_f6

    :cond_1af
    iget-object v0, v3, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;

    sget-object v1, Lcom/bbm/d/gn;->a:Lcom/bbm/d/gn;

    if-ne v0, v1, :cond_1ca

    iget-object v0, p0, Lcom/bbm/ui/e/cg;->c:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, v9}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/bbm/ui/e/cg;->j:Landroid/content/Context;

    const v2, 0x7f0e04f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_f6

    :cond_1ca
    iget-object v0, v3, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;

    sget-object v1, Lcom/bbm/d/gn;->e:Lcom/bbm/d/gn;

    if-ne v0, v1, :cond_1e5

    iget-object v0, p0, Lcom/bbm/ui/e/cg;->c:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, v9}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/bbm/ui/e/cg;->j:Landroid/content/Context;

    const v2, 0x7f0e038f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_f6

    :cond_1e5
    iget-object v0, v3, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;

    sget-object v1, Lcom/bbm/d/gn;->b:Lcom/bbm/d/gn;

    if-ne v0, v1, :cond_200

    iget-object v0, p0, Lcom/bbm/ui/e/cg;->c:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, v9}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/bbm/ui/e/cg;->j:Landroid/content/Context;

    const v2, 0x7f0e04f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_f6

    :cond_200
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_f6

    :cond_209
    iget-boolean v0, p0, Lcom/bbm/ui/e/cg;->p:Z

    if-eqz v0, :cond_22f

    iget-object v0, p0, Lcom/bbm/ui/e/cg;->b:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, v8}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/e/cg;->b:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/bbm/ui/e/cg;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/bbm/ui/e/cg;->b:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/ObservingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_22f
    iget-object v0, p0, Lcom/bbm/ui/e/cg;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/e/cg;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_19
.end method
