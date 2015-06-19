.class public Lcom/bbm/ui/c/fm;
.super Landroid/app/Fragment;
.source "SlideMenuFragment.java"


# instance fields
.field public a:Lcom/bbm/ui/slidingmenu/a;

.field public b:Lcom/bbm/ui/c/fq;

.field public c:Lcom/bbm/ui/c/fq;

.field public d:Z

.field private e:Landroid/widget/ListView;

.field private f:Lcom/bbm/ui/c/fr;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lcom/bbm/ui/slidingmenu/a;

.field private final k:Lcom/bbm/ui/c/ft;

.field private l:Landroid/view/View$OnClickListener;

.field private m:Landroid/view/View$OnTouchListener;

.field private n:Landroid/view/View;

.field private final o:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v1, p0, Lcom/bbm/ui/c/fm;->g:Landroid/view/View;

    iput-object v1, p0, Lcom/bbm/ui/c/fm;->h:Landroid/view/View;

    iput-object v1, p0, Lcom/bbm/ui/c/fm;->i:Landroid/view/View;

    iput-object v1, p0, Lcom/bbm/ui/c/fm;->j:Lcom/bbm/ui/slidingmenu/a;

    iput-object v1, p0, Lcom/bbm/ui/c/fm;->a:Lcom/bbm/ui/slidingmenu/a;

    new-instance v0, Lcom/bbm/ui/c/ft;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/ft;-><init>(Lcom/bbm/ui/c/fm;)V

    iput-object v0, p0, Lcom/bbm/ui/c/fm;->k:Lcom/bbm/ui/c/ft;

    iput-object v1, p0, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    iput-object v1, p0, Lcom/bbm/ui/c/fm;->c:Lcom/bbm/ui/c/fq;

    iput-object v1, p0, Lcom/bbm/ui/c/fm;->l:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/c/fm;->d:Z

    iput-object v1, p0, Lcom/bbm/ui/c/fm;->m:Landroid/view/View$OnTouchListener;

    iput-object v1, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    new-instance v0, Lcom/bbm/ui/c/fn;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/fn;-><init>(Lcom/bbm/ui/c/fm;)V

    iput-object v0, p0, Lcom/bbm/ui/c/fm;->o:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/c/fm;)Lcom/bbm/ui/c/ft;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->k:Lcom/bbm/ui/c/ft;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/c/fm;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/c/fm;)Lcom/bbm/ui/c/fr;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->f:Lcom/bbm/ui/c/fr;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/c/fm;)Lcom/bbm/ui/c/fq;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/c/fm;)Lcom/bbm/ui/c/fq;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->c:Lcom/bbm/ui/c/fq;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/c/fm;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/c/fm;->d:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/c/fm;->l:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/bbm/ui/c/fm;->h:Landroid/view/View;

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final a(Landroid/view/View$OnTouchListener;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_9
    return-void

    :cond_a
    iput-object p1, p0, Lcom/bbm/ui/c/fm;->m:Landroid/view/View$OnTouchListener;

    goto :goto_9
.end method

.method public final a(Lcom/bbm/ui/slidingmenu/a;)V
    .registers 13

    const v3, 0x7f0a04dc

    const v10, 0x7f0a041a

    const v9, 0x7f0a0418

    const/16 v6, 0x8

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/bbm/ui/c/fm;->j:Lcom/bbm/ui/slidingmenu/a;

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->g:Landroid/view/View;

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    const v1, 0x7f0a03bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/fm;->g:Landroid/view/View;

    :cond_21
    iget-object v0, p0, Lcom/bbm/ui/c/fm;->h:Landroid/view/View;

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->g:Landroid/view/View;

    const v1, 0x7f0a0419

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/fm;->h:Landroid/view/View;

    :cond_34
    iget-object v0, p0, Lcom/bbm/ui/c/fm;->j:Lcom/bbm/ui/slidingmenu/a;

    if-eqz v0, :cond_16b

    iget-object v7, p0, Lcom/bbm/ui/c/fm;->h:Landroid/view/View;

    if-eqz v7, :cond_3e

    if-nez p1, :cond_5a

    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/bbm/ui/c/fm;->g:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->g:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_59
    return-void

    :cond_5a
    iget-object v0, p0, Lcom/bbm/ui/c/fm;->h:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a04da

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a04db

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a04dd

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->a()Lcom/google/b/a/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/b/a/l;->a()Z

    move-result v4

    if-eqz v4, :cond_124

    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->a()Lcom/google/b/a/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_a1
    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->e()Z

    move-result v4

    if-eqz v4, :cond_129

    move v4, v5

    :goto_a8
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/c/fm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bbm/util/c/c;->a(Landroid/content/Context;)Lcom/bbm/util/c/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    invoke-virtual {v1, v4, v8}, Lcom/bbm/util/c/c;->a(Ljava/lang/CharSequence;F)Landroid/text/Spannable;

    move-result-object v1

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e3

    invoke-virtual {p0}, Lcom/bbm/ui/c/fm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bbm/util/c/c;->a(Landroid/content/Context;)Lcom/bbm/util/c/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    invoke-virtual {v1, v4, v8}, Lcom/bbm/util/c/c;->a(Ljava/lang/CharSequence;F)Landroid/text/Spannable;

    move-result-object v1

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_e3
    iget-boolean v1, p0, Lcom/bbm/ui/c/fm;->d:Z

    if-eqz v1, :cond_12c

    invoke-virtual {p0}, Lcom/bbm/ui/c/fm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f02030e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_f5
    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_162

    const/high16 v1, 0x4180

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_103
    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->g()Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->g()Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->g()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    goto/16 :goto_3e

    :cond_124
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a1

    :cond_129
    move v4, v6

    goto/16 :goto_a8

    :cond_12c
    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->f()Z

    move-result v1

    if-eqz v1, :cond_145

    invoke-virtual {p0}, Lcom/bbm/ui/c/fm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f09015f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v1, -0x1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_f5

    :cond_145
    invoke-virtual {p0}, Lcom/bbm/ui/c/fm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f02030f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/bbm/ui/c/fm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f09017d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_f5

    :cond_162
    const/high16 v1, 0x4190

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_103

    :cond_16b
    iget-object v0, p0, Lcom/bbm/ui/c/fm;->h:Landroid/view/View;

    if-eqz v0, :cond_50

    iget-object v2, p0, Lcom/bbm/ui/c/fm;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a04dd

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->g:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->g:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_50
.end method

.method public final a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/slidingmenu/a;",
            ">;",
            "Lcom/bbm/ui/slidingmenu/a;",
            "Lcom/bbm/ui/slidingmenu/a;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->k:Lcom/bbm/ui/c/ft;

    iput-object p1, v0, Lcom/bbm/ui/c/ft;->a:Ljava/util/List;

    iget-object v0, v0, Lcom/bbm/d/b/f;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->c()V

    :goto_b
    invoke-virtual {p0, p2}, Lcom/bbm/ui/c/fm;->b(Lcom/bbm/ui/slidingmenu/a;)V

    invoke-virtual {p0, p3}, Lcom/bbm/ui/c/fm;->a(Lcom/bbm/ui/slidingmenu/a;)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/bbm/ui/c/fm;->k:Lcom/bbm/ui/c/ft;

    iget-object v1, v0, Lcom/bbm/ui/c/ft;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v0, v0, Lcom/bbm/d/b/f;->e:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->c()V

    goto :goto_b
.end method

.method public final b(Lcom/bbm/ui/slidingmenu/a;)V
    .registers 10

    const v4, 0x7f0a04dd

    const v3, 0x7f0a04dc

    const/16 v6, 0x8

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/bbm/ui/c/fm;->a:Lcom/bbm/ui/slidingmenu/a;

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->i:Landroid/view/View;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    const v1, 0x7f0a03ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/fm;->i:Landroid/view/View;

    :cond_1e
    iget-object v0, p0, Lcom/bbm/ui/c/fm;->a:Lcom/bbm/ui/slidingmenu/a;

    if-eqz v0, :cond_f6

    iget-object v7, p0, Lcom/bbm/ui/c/fm;->i:Landroid/view/View;

    if-eqz v7, :cond_28

    if-nez p1, :cond_32

    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_31
    return-void

    :cond_32
    iget-object v0, p0, Lcom/bbm/ui/c/fm;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a04da

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a04db

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->a()Lcom/google/b/a/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/b/a/l;->a()Z

    move-result v4

    if-eqz v4, :cond_e7

    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->a()Lcom/google/b/a/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_76
    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->e()Z

    move-result v0

    if-eqz v0, :cond_eb

    move v0, v5

    :goto_7d
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ed

    const/high16 v0, 0x4180

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8e
    invoke-virtual {p0}, Lcom/bbm/ui/c/fm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/c/c;->a(Landroid/content/Context;)Lcom/bbm/util/c/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/bbm/util/c/c;->a(Ljava/lang/CharSequence;F)Landroid/text/Spannable;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c6

    invoke-virtual {p0}, Lcom/bbm/ui/c/fm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/c/c;->a(Landroid/content/Context;)Lcom/bbm/util/c/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bbm/util/c/c;->a(Ljava/lang/CharSequence;F)Landroid/text/Spannable;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_c6
    invoke-virtual {p0}, Lcom/bbm/ui/c/fm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->g()Z

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/bbm/ui/slidingmenu/a;->g()Z

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    goto/16 :goto_28

    :cond_e7
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_76

    :cond_eb
    move v0, v6

    goto :goto_7d

    :cond_ed
    const/high16 v0, 0x4190

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8e

    :cond_f6
    iget-object v0, p0, Lcom/bbm/ui/c/fm;->i:Landroid/view/View;

    if-eqz v0, :cond_28

    iget-object v2, p0, Lcom/bbm/ui/c/fm;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->i:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_28
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    const v3, 0x7f030100

    const/4 v2, 0x0

    const v0, 0x7f030096

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->m:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/bbm/ui/c/fm;->m:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_18
    iget-object v0, p0, Lcom/bbm/ui/c/fm;->e:Landroid/widget/ListView;

    invoke-virtual {p1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->e:Landroid/widget/ListView;

    invoke-virtual {p1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    const v3, 0x7f0a03bb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bbm/ui/c/fm;->e:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    new-instance v0, Lcom/bbm/ui/c/fr;

    iget-object v1, p0, Lcom/bbm/ui/c/fm;->k:Lcom/bbm/ui/c/ft;

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/c/fr;-><init>(Lcom/bbm/ui/c/fm;Lcom/bbm/j/r;)V

    iput-object v0, p0, Lcom/bbm/ui/c/fm;->f:Lcom/bbm/ui/c/fr;

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/c/fm;->f:Lcom/bbm/ui/c/fr;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/bbm/ui/c/fo;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/fo;-><init>(Lcom/bbm/ui/c/fm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    const v1, 0x7f0a03bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/fm;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->g:Landroid/view/View;

    const v1, 0x7f0a0419

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/fm;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    const v1, 0x7f0a03ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/fm;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    new-instance v1, Lcom/bbm/ui/c/fp;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/fp;-><init>(Lcom/bbm/ui/c/fm;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->n:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->o:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/c/fm;->o:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method
