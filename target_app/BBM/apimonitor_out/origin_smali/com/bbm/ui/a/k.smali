.class public Lcom/bbm/ui/a/k;
.super Lcom/bbm/ui/ga;
.source "ChannelPostCommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/ga",
        "<",
        "Lcom/bbm/d/el;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Z

.field public e:Z

.field public f:Z

.field final g:Lcom/bbm/d/a/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/a/e",
            "<",
            "Lcom/bbm/d/fb;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/bbm/d/ec;

.field private final j:Ljava/lang/String;

.field private final k:Landroid/content/Context;

.field private l:Landroid/widget/ImageView;

.field private final m:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/bbm/j/r",
            "<",
            "Lcom/bbm/d/fd;",
            ">;>;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Landroid/view/View$OnClickListener;

.field private p:Landroid/view/View;

.field private q:Z

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bbm/j/x;Lcom/bbm/d/ec;Ljava/lang/String;ZLandroid/content/Context;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/j/x",
            "<",
            "Lcom/bbm/d/el;",
            ">;",
            "Lcom/bbm/d/ec;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x28

    invoke-direct {p0, p1, v0}, Lcom/bbm/ui/ga;-><init>(Lcom/bbm/j/x;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/a/k;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/bbm/ui/a/k;->n:I

    new-instance v0, Lcom/bbm/ui/a/l;

    invoke-direct {v0, p0}, Lcom/bbm/ui/a/l;-><init>(Lcom/bbm/ui/a/k;)V

    iput-object v0, p0, Lcom/bbm/ui/a/k;->o:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/bbm/ui/a/k;->i:Lcom/bbm/d/ec;

    iput-object p3, p0, Lcom/bbm/ui/a/k;->j:Ljava/lang/String;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/bbm/ui/a/k;->m:Landroid/util/LruCache;

    invoke-interface {p1}, Lcom/bbm/j/x;->g()I

    move-result v0

    if-lez v0, :cond_29

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/bbm/j/x;->a(Z)V

    :cond_29
    iput-object p5, p0, Lcom/bbm/ui/a/k;->k:Landroid/content/Context;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/a/k;->i:Lcom/bbm/d/ec;

    iget-object v1, v1, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->F(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/a/e;

    iput-object v0, p0, Lcom/bbm/ui/a/k;->g:Lcom/bbm/d/a/a/e;

    iput-boolean p4, p0, Lcom/bbm/ui/a/k;->f:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/a/k;->h:Ljava/util/HashMap;

    new-instance v0, Lcom/bbm/ui/a/m;

    invoke-direct {v0, p0}, Lcom/bbm/ui/a/m;-><init>(Lcom/bbm/ui/a/k;)V

    invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/a/k;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/a/k;->k:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/bbm/d/el;Landroid/app/Activity;I)Landroid/view/View;
    .registers 14

    const/4 v8, 0x0

    const/16 v7, 0x8

    invoke-virtual {p0}, Lcom/bbm/ui/a/k;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-object p1

    :cond_a
    const v0, 0x7f0a00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bbm/ui/a/q;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p2, Lcom/bbm/d/el;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-boolean v1, p2, Lcom/bbm/d/el;->c:Z

    if-eqz v1, :cond_d5

    iget-object v0, v6, Lcom/bbm/ui/a/q;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbm/ui/a/k;->i:Lcom/bbm/d/ec;

    iget-object v1, v1, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/bbm/ui/a/q;->a:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/a/k;->i:Lcom/bbm/d/ec;

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/ec;)Lcom/bbm/j/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/SquaredObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    :goto_3a
    iget-object v0, p0, Lcom/bbm/ui/a/k;->i:Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/a/k;->j:Ljava/lang/String;

    iget-object v2, p2, Lcom/bbm/d/el;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bbm/util/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/a/k;->i:Lcom/bbm/d/ec;

    iget-boolean v1, v1, Lcom/bbm/d/ec;->w:Z

    if-nez v1, :cond_60

    iget-object v1, p0, Lcom/bbm/ui/a/k;->i:Lcom/bbm/d/ec;

    iget-boolean v1, v1, Lcom/bbm/d/ec;->t:Z

    if-eqz v1, :cond_141

    iget-object v1, p0, Lcom/bbm/ui/a/k;->g:Lcom/bbm/d/a/a/e;

    invoke-virtual {v1, v0}, Lcom/bbm/d/a/a/e;->a(Ljava/lang/String;)Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fb;

    iget-object v0, v0, Lcom/bbm/d/fb;->d:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_141

    :cond_60
    iget-object v0, p0, Lcom/bbm/ui/a/k;->i:Lcom/bbm/d/ec;

    iget-wide v1, p2, Lcom/bbm/d/el;->h:J

    iget-boolean v3, p2, Lcom/bbm/d/el;->j:Z

    iget-object v4, v6, Lcom/bbm/ui/a/q;->c:Landroid/widget/ImageView;

    iget-object v5, v6, Lcom/bbm/ui/a/q;->d:Landroid/widget/TextView;

    invoke-static/range {v0 .. v5}, Lcom/bbm/util/ac;->a(Lcom/bbm/d/ec;JZLandroid/widget/ImageView;Landroid/widget/TextView;)V

    :goto_6d
    iget-boolean v0, p2, Lcom/bbm/d/el;->l:Z

    if-eqz v0, :cond_14d

    iget-object v0, v6, Lcom/bbm/ui/a/q;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v6, Lcom/bbm/ui/a/q;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_7f

    iget-object v0, v6, Lcom/bbm/ui/a/q;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_7f
    const v0, 0x3f333333

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/bbm/ui/a/k;->p:Landroid/view/View;

    if-eq p1, v0, :cond_98

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f09003f

    move-object v2, p1

    :goto_91
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_98
    iget-object v0, v6, Lcom/bbm/ui/a/q;->f:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/bbm/d/el;->e:Ljava/lang/String;

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v1, v6, Lcom/bbm/ui/a/q;->g:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/bbm/d/el;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_189

    iget-object v2, p0, Lcom/bbm/ui/a/k;->k:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/bbm/util/bd;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    :goto_c8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/bbm/ui/a/q;->a:Lcom/bbm/ui/SquaredObservingImageView;

    const v1, 0x7f0a001c

    invoke-virtual {v0, v1, p2}, Lcom/bbm/ui/SquaredObservingImageView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_9

    :cond_d5
    iget-object v1, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_f1

    iget-object v1, v6, Lcom/bbm/ui/a/q;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v6, Lcom/bbm/ui/a/q;->a:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/ui/SquaredObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    goto/16 :goto_3a

    :cond_f1
    iget-object v0, v6, Lcom/bbm/ui/a/q;->e:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/bbm/d/el;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/a/k;->m:Landroid/util/LruCache;

    iget-object v1, p2, Lcom/bbm/d/el;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/j/r;

    if-nez v0, :cond_127

    iget-object v1, p2, Lcom/bbm/d/el;->b:Ljava/util/List;

    if-eqz v1, :cond_127

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_127

    iget-object v0, v6, Lcom/bbm/ui/a/q;->a:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/SquaredObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v0}, Lcom/bbm/util/m;->a(Ljava/util/List;I)Lcom/bbm/util/m;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/a/k;->k:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/bbm/util/m;->a(Landroid/content/Context;)Lcom/bbm/j/r;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/a/k;->m:Landroid/util/LruCache;

    iget-object v2, p2, Lcom/bbm/d/el;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_127
    if-eqz v0, :cond_130

    iget-object v1, v6, Lcom/bbm/ui/a/q;->a:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/SquaredObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    goto/16 :goto_3a

    :cond_130
    iget-object v0, v6, Lcom/bbm/ui/a/q;->a:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;

    invoke-virtual {v1}, Lcom/bbm/d/a/d/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/SquaredObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3a

    :cond_141
    iget-object v0, v6, Lcom/bbm/ui/a/q;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v6, Lcom/bbm/ui/a/q;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6d

    :cond_14d
    iget-object v0, v6, Lcom/bbm/ui/a/q;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v6, Lcom/bbm/ui/a/q;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_15c

    iget-object v0, v6, Lcom/bbm/ui/a/q;->b:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_15c
    const/high16 v0, 0x3f80

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p2, Lcom/bbm/d/el;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/a/k;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_177

    iget-object v0, p0, Lcom/bbm/ui/a/k;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f090040

    move-object v2, p1

    goto/16 :goto_91

    :cond_177
    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez p4, :cond_183

    const v0, 0x7f0901ae

    move-object v2, p1

    goto/16 :goto_91

    :cond_183
    const v0, 0x7f090043

    move-object v2, p1

    goto/16 :goto_91

    :cond_189
    const-string v0, ""

    goto/16 :goto_c8
.end method

.method static synthetic a(Lcom/bbm/ui/a/k;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/a/k;->l:Landroid/widget/ImageView;

    return-object p1
.end method

.method private static a(Landroid/view/View;)V
    .registers 3

    new-instance v1, Lcom/bbm/ui/a/q;

    invoke-direct {v1}, Lcom/bbm/ui/a/q;-><init>()V

    const v0, 0x7f0a0125

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbm/ui/a/q;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0126

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbm/ui/a/q;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0123

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/SquaredObservingImageView;

    iput-object v0, v1, Lcom/bbm/ui/a/q;->a:Lcom/bbm/ui/SquaredObservingImageView;

    const v0, 0x7f0a0127

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbm/ui/a/q;->g:Landroid/widget/TextView;

    const v0, 0x7f0a0128

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/bbm/ui/a/q;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a0129

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbm/ui/a/q;->d:Landroid/widget/TextView;

    const v0, 0x7f0a012a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/bbm/ui/a/q;->h:Landroid/widget/ImageView;

    const v0, 0x7f0a00a1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/bbm/ui/a/k;)Lcom/bbm/d/ec;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/a/k;->i:Lcom/bbm/d/ec;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/a/k;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/a/k;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/bbm/ui/a/k;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/a/k;->f:Z

    return v0
.end method


# virtual methods
.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/bbm/ui/a/k;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    :goto_8
    return-object p2

    :pswitch_9
    iget-object v0, p0, Lcom/bbm/ui/a/k;->k:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030016

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/bbm/ui/a/k;->a(Landroid/view/View;)V

    goto :goto_8

    :pswitch_1a
    iget-object v0, p0, Lcom/bbm/ui/a/k;->k:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030015

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/bbm/ui/a/k;->a(Landroid/view/View;)V

    goto :goto_8

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1a
    .end packed-switch
.end method

.method public final a(Landroid/view/View;I)V
    .registers 6

    invoke-virtual {p0}, Lcom/bbm/ui/a/k;->d()V

    iput p2, p0, Lcom/bbm/ui/a/k;->n:I

    iput-object p1, p0, Lcom/bbm/ui/a/k;->p:Landroid/view/View;

    iget v0, p0, Lcom/bbm/ui/a/k;->n:I

    if-lez v0, :cond_19

    iget v0, p0, Lcom/bbm/ui/a/k;->n:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/a/k;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/el;

    iget-object v0, v0, Lcom/bbm/d/el;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/ui/a/k;->r:Ljava/lang/String;

    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/a/k;->q:Z

    iget-object v0, p0, Lcom/bbm/ui/a/k;->p:Landroid/view/View;

    iget-object v1, p0, Lcom/bbm/ui/a/k;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    check-cast p2, Lcom/bbm/d/el;

    iget-object v0, p0, Lcom/bbm/ui/a/k;->k:Landroid/content/Context;

    check-cast v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;

    iget-object v1, p0, Lcom/bbm/ui/a/k;->h:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/bbm/d/el;->k:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/bbm/ui/a/k;->h:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/bbm/d/el;->k:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/ac;->e(Ljava/lang/String;)V

    :cond_1f
    iget-object v1, p2, Lcom/bbm/d/el;->k:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v4, 0x2

    if-le v1, v4, :cond_7a

    move v1, v2

    :goto_2c
    packed-switch v1, :pswitch_data_7c

    new-instance v1, Lcom/bbm/ui/a/n;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/a/n;-><init>(Lcom/bbm/ui/a/k;Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/bbm/ui/a/k;->a(Landroid/view/View;Lcom/bbm/d/el;Landroid/app/Activity;I)Landroid/view/View;

    :goto_3a
    return-void

    :pswitch_3b
    iget-object v1, p0, Lcom/bbm/ui/a/k;->i:Lcom/bbm/d/ec;

    iget-boolean v1, v1, Lcom/bbm/d/ec;->q:Z

    if-nez v1, :cond_76

    iget-boolean v1, p2, Lcom/bbm/d/el;->l:Z

    if-nez v1, :cond_76

    const v1, 0x7f0a00a1

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/ui/a/q;

    const v2, 0x7f0a012c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/bbm/ui/a/q;->b:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/bbm/ui/a/q;->b:Landroid/widget/ImageView;

    new-instance v4, Lcom/bbm/ui/a/o;

    invoke-direct {v4, p0, p2, v1, p1}, Lcom/bbm/ui/a/o;-><init>(Lcom/bbm/ui/a/k;Lcom/bbm/d/el;Lcom/bbm/ui/a/q;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/bbm/ui/a/p;

    invoke-direct {v2, p0, v1}, Lcom/bbm/ui/a/p;-><init>(Lcom/bbm/ui/a/k;Lcom/bbm/ui/a/q;)V

    iget-boolean v4, p2, Lcom/bbm/d/el;->l:Z

    if-nez v4, :cond_6f

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6f
    iget-object v1, v1, Lcom/bbm/ui/a/q;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_76
    invoke-direct {p0, p1, p2, v0, v3}, Lcom/bbm/ui/a/k;->a(Landroid/view/View;Lcom/bbm/d/el;Landroid/app/Activity;I)Landroid/view/View;

    goto :goto_3a

    :cond_7a
    move v1, v3

    goto :goto_2c

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_3b
    .end packed-switch
.end method

.method public final d()V
    .registers 6

    const/4 v4, 0x0

    const v3, 0x7f09003f

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/bbm/ui/a/k;->p:Landroid/view/View;

    if-eqz v0, :cond_36

    iget v0, p0, Lcom/bbm/ui/a/k;->n:I

    if-lez v0, :cond_36

    iget v0, p0, Lcom/bbm/ui/a/k;->n:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/a/k;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/el;

    if-eqz v0, :cond_30

    iget-boolean v2, p0, Lcom/bbm/ui/a/k;->q:Z

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/bbm/ui/a/k;->p:Landroid/view/View;

    iget-boolean v0, v0, Lcom/bbm/d/el;->l:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/bbm/ui/a/k;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_2d
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_30
    :goto_30
    iput-object v4, p0, Lcom/bbm/ui/a/k;->p:Landroid/view/View;

    iput-object v4, p0, Lcom/bbm/ui/a/k;->r:Ljava/lang/String;

    iput v1, p0, Lcom/bbm/ui/a/k;->n:I

    :cond_36
    return-void

    :cond_37
    move v0, v1

    goto :goto_2d

    :cond_39
    iget-object v2, p0, Lcom/bbm/ui/a/k;->p:Landroid/view/View;

    iget-boolean v0, v0, Lcom/bbm/d/el;->l:Z

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/bbm/ui/a/k;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_49
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_30

    :cond_4d
    iget-object v0, p0, Lcom/bbm/ui/a/k;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090043

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_49
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/a/k;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bbm/ui/a/k;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method public getItemViewType(I)I
    .registers 4

    invoke-virtual {p0}, Lcom/bbm/ui/a/k;->getCount()I

    move-result v0

    if-lez v0, :cond_1e

    if-ltz p1, :cond_1e

    invoke-virtual {p0, p1}, Lcom/bbm/ui/a/k;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/el;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lcom/bbm/d/el;->k:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
