.class public Lcom/bbm/ui/e/ch;
.super Ljava/lang/Object;
.source "TpaContentMessageHolder.java"

# interfaces
.implements Lcom/bbm/ui/e/at;


# instance fields
.field protected a:Lcom/bbm/ui/InlineImageTextView;

.field protected b:Landroid/widget/TextView;

.field protected c:Lcom/bbm/ui/ObservingImageView;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/view/View;

.field private final h:Landroid/content/Context;

.field private final i:Lcom/bbm/d/a;

.field private final j:Lcom/bbm/ui/e/cf;

.field private final k:Lcom/bbm/ui/activities/xo;

.field private l:Lcom/bbm/d/fg;

.field private m:Lcom/bbm/d/gm;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/ui/e/cf;Lcom/bbm/ui/activities/xo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbm/ui/e/ch;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/bbm/ui/e/ch;->i:Lcom/bbm/d/a;

    iput-object p3, p0, Lcom/bbm/ui/e/ch;->j:Lcom/bbm/ui/e/cf;

    iput-object p4, p0, Lcom/bbm/ui/e/ch;->k:Lcom/bbm/ui/activities/xo;

    return-void
.end method

.method private a(Z)Landroid/graphics/drawable/Drawable;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bbm/ui/e/ch;->l:Lcom/bbm/d/fg;

    iget-boolean v1, v1, Lcom/bbm/d/fg;->j:Z

    if-eqz v1, :cond_15

    iget-object v0, p0, Lcom/bbm/ui/e/ch;->l:Lcom/bbm/d/fg;

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
    iget-object v1, p0, Lcom/bbm/ui/e/ch;->l:Lcom/bbm/d/fg;

    iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v2, Lcom/bbm/d/fj;->a:Lcom/bbm/d/fj;

    if-ne v1, v2, :cond_20

    sget-object v0, Lcom/bbm/ui/e/cf;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    :cond_20
    iget-object v1, p0, Lcom/bbm/ui/e/ch;->l:Lcom/bbm/d/fg;

    iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v2, Lcom/bbm/d/fj;->c:Lcom/bbm/d/fj;

    if-ne v1, v2, :cond_2b

    sget-object v0, Lcom/bbm/ui/e/cf;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    :cond_2b
    iget-object v1, p0, Lcom/bbm/ui/e/ch;->l:Lcom/bbm/d/fg;

    iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v2, Lcom/bbm/d/fj;->d:Lcom/bbm/d/fj;

    if-ne v1, v2, :cond_36

    sget-object v0, Lcom/bbm/ui/e/cf;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_11

    :cond_36
    iget-object v1, p0, Lcom/bbm/ui/e/ch;->l:Lcom/bbm/d/fg;

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
    iget-object v1, p0, Lcom/bbm/ui/e/ch;->l:Lcom/bbm/d/fg;

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
    iget-object v1, p0, Lcom/bbm/ui/e/ch;->l:Lcom/bbm/d/fg;

    iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v2, Lcom/bbm/d/fj;->b:Lcom/bbm/d/fj;

    if-ne v1, v2, :cond_11

    if-nez p1, :cond_11

    sget-object v0, Lcom/bbm/ui/e/cf;->k:Landroid/graphics/drawable/Drawable;

    goto :goto_11
.end method

.method static synthetic a(Lcom/bbm/ui/e/ch;)Lcom/bbm/d/gm;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/e/ch;->m:Lcom/bbm/d/gm;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/e/ch;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/e/ch;->h:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    const v0, 0x7f0300e4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/e/ch;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/bbm/ui/e/ch;->g:Landroid/view/View;

    const v1, 0x7f0a04bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, p0, Lcom/bbm/ui/e/ch;->a:Lcom/bbm/ui/InlineImageTextView;

    iget-object v0, p0, Lcom/bbm/ui/e/ch;->g:Landroid/view/View;

    const v1, 0x7f0a04bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/e/ch;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/e/ch;->g:Landroid/view/View;

    const v1, 0x7f0a04be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/e/ch;->c:Lcom/bbm/ui/ObservingImageView;

    iget-object v0, p0, Lcom/bbm/ui/e/ch;->g:Landroid/view/View;

    const v1, 0x7f0a04bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/e/ch;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbm/ui/e/ch;->g:Landroid/view/View;

    const v1, 0x7f0a04c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/e/ch;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/e/ch;->g:Landroid/view/View;

    const v1, 0x7f0a04c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/e/ch;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/e/ch;->g:Landroid/view/View;

    return-object v0
.end method

.method public final a(Lcom/bbm/ui/e/i;Z)V
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/bbm/ui/e/ch;->n:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/bbm/ui/e/ch;->a:Lcom/bbm/ui/InlineImageTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/e/ch;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/e/ch;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/e/ch;->f:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_22
    iget-object v0, p0, Lcom/bbm/ui/e/ch;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/bbm/ui/e/ch;->k:Lcom/bbm/ui/activities/xo;

    invoke-static {v0, v1, p1, p2}, Lcom/bbm/ui/e/b;->a(Landroid/view/View;Lcom/bbm/ui/activities/xo;Lcom/bbm/ui/e/i;Z)V

    iget-object v0, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;

    iput-object v0, p0, Lcom/bbm/ui/e/ch;->l:Lcom/bbm/d/fg;

    iget-object v0, p0, Lcom/bbm/ui/e/ch;->l:Lcom/bbm/d/fg;

    iget-object v0, v0, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v0, v1, :cond_3d

    const-string v0, "Shouldn\'t ever get here. Nonexistent messages have their own item type."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_3c
    return-void

    :cond_3d
    iget-object v0, p0, Lcom/bbm/ui/e/ch;->i:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/ui/e/ch;->l:Lcom/bbm/d/fg;

    iget-object v1, v1, Lcom/bbm/d/fg;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/e/ch;->a:Lcom/bbm/ui/InlineImageTextView;

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/bbm/ui/e/ch;->a:Lcom/bbm/ui/InlineImageTextView;

    invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_54
    iget-object v1, p0, Lcom/bbm/ui/e/ch;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/bbm/ui/e/ch;->l:Lcom/bbm/d/fg;

    iget-wide v1, v1, Lcom/bbm/d/fg;->s:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_71

    iget-object v1, p0, Lcom/bbm/ui/e/ch;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbm/ui/e/ch;->h:Landroid/content/Context;

    iget-object v3, p0, Lcom/bbm/ui/e/ch;->l:Lcom/bbm/d/fg;

    iget-wide v3, v3, Lcom/bbm/d/fg;->s:J

    invoke-static {v2, v3, v4}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_71
    iget-object v1, p0, Lcom/bbm/ui/e/ch;->i:Lcom/bbm/d/a;

    iget-object v2, p0, Lcom/bbm/ui/e/ch;->l:Lcom/bbm/d/fg;

    iget-object v2, v2, Lcom/bbm/d/fg;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->p(Ljava/lang/String;)Lcom/bbm/d/gm;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/e/ch;->m:Lcom/bbm/d/gm;

    iget-object v1, p0, Lcom/bbm/ui/e/ch;->m:Lcom/bbm/d/gm;

    if-nez v1, :cond_8b

    const-string v0, "TextMessageContext cannot be empty."

    const-class v1, Lcom/bbm/ui/e/ch;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean v6, p0, Lcom/bbm/ui/e/ch;->n:Z

    goto :goto_3c

    :cond_8b
    iget-object v1, p0, Lcom/bbm/ui/e/ch;->m:Lcom/bbm/d/gm;

    invoke-static {v1}, Lcom/bbm/util/dm;->a(Lcom/bbm/d/gm;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bbm/d/a;->z(Ljava/lang/String;)Lcom/bbm/d/fl;

    move-result-object v2

    new-instance v3, Lcom/bbm/ui/e/ci;

    invoke-direct {v3, p0, v2, v1}, Lcom/bbm/ui/e/ci;-><init>(Lcom/bbm/ui/e/ch;Lcom/bbm/d/fl;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/ui/e/ch;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_b4

    iget-object v1, p0, Lcom/bbm/ui/e/ch;->m:Lcom/bbm/d/gm;

    invoke-static {v1}, Lcom/bbm/util/dm;->b(Lcom/bbm/d/gm;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b4

    iget-object v4, p0, Lcom/bbm/ui/e/ch;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/e/ch;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b4
    iget-object v1, p0, Lcom/bbm/ui/e/ch;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_d2

    iget-object v1, p0, Lcom/bbm/ui/e/ch;->m:Lcom/bbm/d/gm;

    invoke-static {v1}, Lcom/bbm/util/dm;->c(Lcom/bbm/d/gm;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14a

    const-string v4, "null"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14a

    iget-object v4, p0, Lcom/bbm/ui/e/ch;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/e/ch;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d2
    :goto_d2
    iget-object v1, p0, Lcom/bbm/ui/e/ch;->c:Lcom/bbm/ui/ObservingImageView;

    if-eqz v1, :cond_fb

    if-eqz v2, :cond_fb

    iget-object v1, v2, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v4, :cond_fb

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/fl;)Lcom/bbm/j/r;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/e/ch;->c:Lcom/bbm/ui/ObservingImageView;

    if-eqz v2, :cond_f6

    if-eqz v1, :cond_f6

    iget-object v2, p0, Lcom/bbm/ui/e/ch;->c:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v2, v1}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    iget-object v1, p0, Lcom/bbm/ui/e/ch;->c:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1, v5}, Lcom/bbm/ui/ObservingImageView;->setAnimationAllowed(Z)V

    :cond_f6
    iget-object v1, p0, Lcom/bbm/ui/e/ch;->c:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1, v3}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_fb
    iget-object v1, p0, Lcom/bbm/ui/e/ch;->d:Landroid/widget/ImageView;

    if-eqz v1, :cond_10e

    invoke-direct {p0, p2}, Lcom/bbm/ui/e/ch;->a(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_10e

    iget-object v1, p0, Lcom/bbm/ui/e/ch;->d:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/bbm/ui/e/ch;->a(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_10e
    iput-boolean v6, p0, Lcom/bbm/ui/e/ch;->n:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setMessage: message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbm/ui/e/ch;->l:Lcom/bbm/d/fg;

    iget-object v2, v2, Lcom/bbm/d/fg;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/e/ch;->l:Lcom/bbm/d/fg;

    iget-wide v2, v2, Lcom/bbm/d/fg;->s:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sender: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    const-class v2, Lcom/bbm/ui/e/ch;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_3c

    :cond_14a
    iget-object v1, p0, Lcom/bbm/ui/e/ch;->f:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d2
.end method
