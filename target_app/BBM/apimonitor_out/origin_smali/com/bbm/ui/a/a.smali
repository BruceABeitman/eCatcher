.class public Lcom/bbm/ui/a/a;
.super Lcom/bbm/ui/ga;
.source "ChannelPostAdapter.java"

# interfaces
.implements Lcom/bbm/util/ba;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/ga",
        "<",
        "Lcom/bbm/d/ek;",
        ">;",
        "Lcom/bbm/util/ba;"
    }
.end annotation


# instance fields
.field final d:Lcom/bbm/d/a/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/a/e",
            "<",
            "Lcom/bbm/d/fa;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private final g:Lcom/bbm/d/a;

.field private final h:Lcom/bbm/d/ec;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Landroid/view/View$OnClickListener;

.field private final k:Z

.field private final l:Lcom/bbm/j/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/x",
            "<",
            "Lcom/bbm/d/ek;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/bbm/ui/activities/cn;

.field private n:Lcom/bbm/d/ek;

.field private o:Landroid/widget/TextView;

.field private final p:Lcom/bbm/util/b/d;

.field private final q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bbm/util/o;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/bbm/ui/c/fq;


# direct methods
.method public constructor <init>(Lcom/bbm/j/x;Lcom/bbm/d/ec;Lcom/bbm/ui/activities/cn;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/j/x",
            "<",
            "Lcom/bbm/d/ek;",
            ">;",
            "Lcom/bbm/d/ec;",
            "Lcom/bbm/ui/activities/cn;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x1e

    invoke-direct {p0, p1, v0}, Lcom/bbm/ui/ga;-><init>(Lcom/bbm/j/x;I)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/a/a;->g:Lcom/bbm/d/a;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/bbm/ui/a/a;->e:Ljava/util/HashSet;

    new-instance v0, Lcom/bbm/ui/a/b;

    invoke-direct {v0, p0}, Lcom/bbm/ui/a/b;-><init>(Lcom/bbm/ui/a/a;)V

    iput-object v0, p0, Lcom/bbm/ui/a/a;->f:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/bbm/ui/a/f;

    invoke-direct {v0, p0}, Lcom/bbm/ui/a/f;-><init>(Lcom/bbm/ui/a/a;)V

    iput-object v0, p0, Lcom/bbm/ui/a/a;->r:Lcom/bbm/ui/c/fq;

    iput-object p1, p0, Lcom/bbm/ui/a/a;->l:Lcom/bbm/j/x;

    iput-object p3, p0, Lcom/bbm/ui/a/a;->m:Lcom/bbm/ui/activities/cn;

    new-instance v0, Lcom/bbm/util/b/f;

    invoke-direct {v0}, Lcom/bbm/util/b/f;-><init>()V

    iget-object v1, p0, Lcom/bbm/ui/a/a;->m:Lcom/bbm/ui/activities/cn;

    invoke-static {v0, v1}, Lcom/bbm/util/b/d;->a(Lcom/bbm/util/b/f;Landroid/app/Activity;)Lcom/bbm/util/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/a/a;->p:Lcom/bbm/util/b/d;

    iput-object p2, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-object v0, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->w:Z

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z

    if-nez v0, :cond_6a

    const/4 v0, 0x1

    :goto_42
    iput-boolean v0, p0, Lcom/bbm/ui/a/a;->k:Z

    new-instance v0, Lcom/bbm/ui/a/c;

    invoke-direct {v0, p0}, Lcom/bbm/ui/a/c;-><init>(Lcom/bbm/ui/a/a;)V

    iput-object v0, p0, Lcom/bbm/ui/a/a;->i:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/bbm/ui/a/e;

    invoke-direct {v0, p0}, Lcom/bbm/ui/a/e;-><init>(Lcom/bbm/ui/a/a;)V

    iput-object v0, p0, Lcom/bbm/ui/a/a;->j:Landroid/view/View$OnClickListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/a/a;->q:Ljava/util/HashMap;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-object v1, v1, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->G(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/a/e;

    iput-object v0, p0, Lcom/bbm/ui/a/a;->d:Lcom/bbm/d/a/a/e;

    return-void

    :cond_6a
    const/4 v0, 0x0

    goto :goto_42
.end method

.method private static a(Landroid/view/View;I)Landroid/widget/TextView;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/a/a;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/a/a;->o:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/a/a;Lcom/bbm/d/ek;)Lcom/bbm/d/ek;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/a/a;->n:Lcom/bbm/d/ek;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/a/a;)Lcom/bbm/ui/activities/cn;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/a/a;->m:Lcom/bbm/ui/activities/cn;

    return-object v0
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_10
.end method

.method static synthetic a(Lcom/bbm/ui/a/a;Lcom/bbm/ui/c/fm;)V
    .registers 10

    const v7, 0x7f020297

    const/4 v6, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a0034

    const v3, 0x7f020266

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/a/a;->m:Lcom/bbm/ui/activities/cn;

    const v5, 0x7f0e01d8

    invoke-virtual {v4, v5}, Lcom/bbm/ui/activities/cn;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->u:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z

    if-eqz v0, :cond_72

    :cond_30
    new-instance v0, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a0048

    const v3, 0x7f020298

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/a/a;->m:Lcom/bbm/ui/activities/cn;

    const v5, 0x7f0e01db

    invoke-virtual {v4, v5}, Lcom/bbm/ui/activities/cn;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->w:Z

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z

    if-eqz v0, :cond_72

    :cond_57
    new-instance v0, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a004d

    const v3, 0x7f02027c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/a/a;->m:Lcom/bbm/ui/activities/cn;

    const v5, 0x7f0e01dc

    invoke-virtual {v4, v5}, Lcom/bbm/ui/activities/cn;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_72
    iget-object v0, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z

    if-nez v0, :cond_d8

    iget-object v0, p0, Lcom/bbm/ui/a/a;->n:Lcom/bbm/d/ek;

    iget-boolean v0, v0, Lcom/bbm/d/ek;->h:Z

    if-eqz v0, :cond_ba

    new-instance v0, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a0042

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/a/a;->m:Lcom/bbm/ui/activities/cn;

    const v5, 0x7f0e01d9

    invoke-virtual {v4, v5}, Lcom/bbm/ui/activities/cn;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/bbm/ui/a/g;

    invoke-direct {v2, p0}, Lcom/bbm/ui/a/g;-><init>(Lcom/bbm/ui/a/a;)V

    invoke-virtual {p1, v2}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    :goto_9b
    iget-object v2, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-boolean v2, v2, Lcom/bbm/d/ec;->q:Z

    if-eqz v2, :cond_a9

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bbm/ui/slidingmenu/a;->d(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/bbm/ui/slidingmenu/a;->b(Z)V

    :cond_a9
    :goto_a9
    new-instance v2, Lcom/bbm/ui/slidingmenu/a;

    iget-object v3, p0, Lcom/bbm/ui/a/a;->n:Lcom/bbm/d/ek;

    iget-object v3, v3, Lcom/bbm/d/ek;->s:Ljava/lang/String;

    invoke-direct {v2, v6, v3, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bbm/ui/a/a;->r:Lcom/bbm/ui/c/fq;

    iput-object v3, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    invoke-virtual {p1, v1, v2, v0}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    return-void

    :cond_ba
    new-instance v0, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a0046

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/a/a;->m:Lcom/bbm/ui/activities/cn;

    const v5, 0x7f0e01da

    invoke-virtual {v4, v5}, Lcom/bbm/ui/activities/cn;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/bbm/ui/a/h;

    invoke-direct {v2, p0}, Lcom/bbm/ui/a/h;-><init>(Lcom/bbm/ui/a/a;)V

    invoke-virtual {p1, v2}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_9b

    :cond_d8
    new-instance v0, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f020268

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/a/a;->m:Lcom/bbm/ui/activities/cn;

    invoke-virtual {v3}, Lcom/bbm/ui/activities/cn;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/bbm/ui/a/i;

    invoke-direct {v2, p0}, Lcom/bbm/ui/a/i;-><init>(Lcom/bbm/ui/a/a;)V

    invoke-virtual {p1, v2}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_a9
.end method

.method static synthetic a(Lcom/bbm/ui/a/a;Z)V
    .registers 9

    invoke-static {}, Lcom/bbm/util/fb;->a()V

    new-instance v4, Landroid/widget/Toast;

    iget-object v0, p0, Lcom/bbm/ui/a/a;->m:Lcom/bbm/ui/activities/cn;

    invoke-direct {v4, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bbm/ui/a/a;->m:Lcom/bbm/ui/activities/cn;

    iget-object v2, p0, Lcom/bbm/ui/a/a;->m:Lcom/bbm/ui/activities/cn;

    if-eqz p1, :cond_36

    const v1, 0x7f0e04be

    :goto_13
    invoke-virtual {v2, v1}, Lcom/bbm/ui/activities/cn;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Landroid/widget/Toast;->getGravity()I

    move-result v2

    invoke-virtual {v4}, Landroid/widget/Toast;->getXOffset()I

    move-result v3

    invoke-virtual {v4}, Landroid/widget/Toast;->getYOffset()I

    move-result v4

    iget-object v5, p0, Lcom/bbm/ui/a/a;->m:Lcom/bbm/ui/activities/cn;

    invoke-virtual {v5}, Lcom/bbm/ui/activities/cn;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b03aa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;IIII)V

    return-void

    :cond_36
    const v1, 0x7f0e04c2

    goto :goto_13
.end method

.method static synthetic b(Lcom/bbm/ui/a/a;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/a/a;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method private static b(Landroid/view/View;I)Lcom/bbm/ui/LinkifyTextView;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/LinkifyTextView;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/a/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/a/a;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/bbm/ui/a/a;)Lcom/bbm/j/x;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/a/a;->l:Lcom/bbm/j/x;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ec;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/a/a;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/a/a;->g:Lcom/bbm/d/a;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ek;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/a/a;->n:Lcom/bbm/d/ek;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/a/a;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/a/a;->q:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/ui/a/a;->m:Lcom/bbm/ui/activities/cn;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b6

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/a/j;

    invoke-direct {v2}, Lcom/bbm/ui/a/j;-><init>()V

    const v0, 0x7f0a042d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, v2, Lcom/bbm/ui/a/j;->h:Lcom/bbm/ui/ObservingImageView;

    iget-object v0, v2, Lcom/bbm/ui/a/j;->h:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V

    const v0, 0x7f0a042e

    invoke-static {v1, v0}, Lcom/bbm/ui/a/a;->b(Landroid/view/View;I)Lcom/bbm/ui/LinkifyTextView;

    move-result-object v0

    iput-object v0, v2, Lcom/bbm/ui/a/j;->f:Lcom/bbm/ui/LinkifyTextView;

    const v0, 0x7f0a042f

    invoke-static {v1, v0}, Lcom/bbm/ui/a/a;->b(Landroid/view/View;I)Lcom/bbm/ui/LinkifyTextView;

    move-result-object v0

    iput-object v0, v2, Lcom/bbm/ui/a/j;->b:Lcom/bbm/ui/LinkifyTextView;

    const v0, 0x7f0a0432

    invoke-static {v1, v0}, Lcom/bbm/ui/a/a;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v2, Lcom/bbm/ui/a/j;->g:Landroid/widget/TextView;

    const v0, 0x7f0a0434

    invoke-static {v1, v0}, Lcom/bbm/ui/a/a;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v2, Lcom/bbm/ui/a/j;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0436

    invoke-static {v1, v0}, Lcom/bbm/ui/a/a;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v2, Lcom/bbm/ui/a/j;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0435

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v2, Lcom/bbm/ui/a/j;->k:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->e:Z

    if-nez v0, :cond_6d

    iget-object v0, v2, Lcom/bbm/ui/a/j;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/bbm/ui/a/j;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_6d
    const v0, 0x7f0a0438

    invoke-static {v1, v0}, Lcom/bbm/ui/a/a;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v2, Lcom/bbm/ui/a/j;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0433

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v2, Lcom/bbm/ui/a/j;->i:Landroid/widget/ImageButton;

    const v0, 0x7f0a0437

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v2, Lcom/bbm/ui/a/j;->j:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z

    if-eqz v0, :cond_9c

    iget-object v0, v2, Lcom/bbm/ui/a/j;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, v2, Lcom/bbm/ui/a/j;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9c
    const v0, 0x7f0a0439

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/bbm/ui/a/j;->l:Landroid/widget/ImageView;

    const v0, 0x7f0a043a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/bbm/ui/a/j;->m:Landroid/widget/TextView;

    iget-object v0, v2, Lcom/bbm/ui/a/j;->b:Lcom/bbm/ui/LinkifyTextView;

    iget-object v3, p0, Lcom/bbm/ui/a/a;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/LinkifyTextView;->setOnNonActiveTextClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v2, Lcom/bbm/ui/a/j;->f:Lcom/bbm/ui/LinkifyTextView;

    iget-object v3, p0, Lcom/bbm/ui/a/a;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/LinkifyTextView;->setOnNonActiveTextClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v2, Lcom/bbm/ui/a/j;->k:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/bbm/ui/a/a;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v2, Lcom/bbm/ui/a/j;->j:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/bbm/ui/a/a;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/a/a;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 12

    const/16 v8, 0x8

    check-cast p2, Lcom/bbm/d/ek;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/bbm/ui/a/j;

    iget-object v0, v5, Lcom/bbm/ui/a/j;->a:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, v5, Lcom/bbm/ui/a/j;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/bbm/ui/a/a;->q:Ljava/util/HashMap;

    iget-object v1, v5, Lcom/bbm/ui/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/o;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/bbm/util/o;->a()V

    :cond_28
    iget-object v0, p2, Lcom/bbm/d/ek;->t:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_127

    iget-object v0, p0, Lcom/bbm/ui/a/a;->q:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/o;

    if-nez v0, :cond_57

    iget-object v1, p2, Lcom/bbm/d/ek;->k:Ljava/util/List;

    if-eqz v1, :cond_57

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_57

    iget-object v0, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    iget-object v2, p2, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/bbm/util/r;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/o;

    move-result-object v0

    if-eqz v0, :cond_57

    iget-object v1, p0, Lcom/bbm/ui/a/a;->q:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    if-eqz v0, :cond_61

    iget-object v1, v0, Lcom/bbm/util/o;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_128

    :cond_61
    iget-object v0, v5, Lcom/bbm/ui/a/j;->h:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, v8}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    :goto_66
    iget-object v0, v5, Lcom/bbm/ui/a/j;->f:Lcom/bbm/ui/LinkifyTextView;

    iget-object v1, p2, Lcom/bbm/d/ek;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bbm/ui/a/a;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, v5, Lcom/bbm/ui/a/j;->b:Lcom/bbm/ui/LinkifyTextView;

    iget-object v1, p2, Lcom/bbm/d/ek;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bbm/ui/a/a;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/bbm/d/ek;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    iget-object v0, v5, Lcom/bbm/ui/a/j;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbm/ui/a/a;->m:Lcom/bbm/ui/activities/cn;

    iget-object v2, p2, Lcom/bbm/d/ek;->q:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-static {v1, v2, v3}, Lcom/bbm/util/bd;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_90
    iget-object v0, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->e:Z

    if-eqz v0, :cond_9d

    iget-object v0, v5, Lcom/bbm/ui/a/j;->e:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/bbm/d/ek;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9d
    iget-object v1, v5, Lcom/bbm/ui/a/j;->d:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/bbm/d/ek;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_191

    const-string v0, "0"

    :goto_a9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v5, Lcom/bbm/ui/a/j;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c3

    iget-object v1, v5, Lcom/bbm/ui/a/j;->c:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/bbm/d/ek;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_195

    const-string v0, "0"

    :goto_c0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c3
    iget-object v0, p2, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    iput-object v0, v5, Lcom/bbm/ui/a/j;->a:Ljava/lang/String;

    iget-object v1, v5, Lcom/bbm/ui/a/j;->j:Landroid/widget/ImageButton;

    iget-boolean v0, p2, Lcom/bbm/d/ek;->i:Z

    if-eqz v0, :cond_199

    const v0, 0x7f020356

    :goto_d0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-wide v0, p2, Lcom/bbm/d/ek;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_19e

    iget-object v0, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->w:Z

    if-nez v0, :cond_ff

    iget-object v0, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z

    if-eqz v0, :cond_19e

    iget-object v0, p0, Lcom/bbm/ui/a/a;->d:Lcom/bbm/d/a/a/e;

    iget-object v1, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-object v1, v1, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    iget-object v2, p2, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bbm/util/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a/a/e;->a(Ljava/lang/String;)Lcom/bbm/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fa;

    iget-object v0, v0, Lcom/bbm/d/fa;->c:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_19e

    :cond_ff
    iget-object v0, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-wide v1, p2, Lcom/bbm/d/ek;->f:J

    iget-boolean v3, p2, Lcom/bbm/d/ek;->h:Z

    iget-object v4, v5, Lcom/bbm/ui/a/j;->l:Landroid/widget/ImageView;

    iget-object v5, v5, Lcom/bbm/ui/a/j;->m:Landroid/widget/TextView;

    invoke-static/range {v0 .. v5}, Lcom/bbm/util/ac;->a(Lcom/bbm/d/ec;JZLandroid/widget/ImageView;Landroid/widget/TextView;)V

    :goto_10c
    iget-object v0, p0, Lcom/bbm/ui/a/a;->h:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->w:Z

    if-eqz v0, :cond_127

    iget-boolean v0, p2, Lcom/bbm/d/ek;->m:Z

    if-nez v0, :cond_127

    iget-object v0, p0, Lcom/bbm/ui/a/a;->e:Ljava/util/HashSet;

    iget-object v1, p2, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_127

    iget-object v0, p0, Lcom/bbm/ui/a/a;->e:Ljava/util/HashSet;

    iget-object v1, p2, Lcom/bbm/d/ek;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_127
    return-void

    :cond_128
    iget-object v1, p0, Lcom/bbm/ui/a/a;->m:Lcom/bbm/ui/activities/cn;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/cn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const v3, 0x7f0b02c2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iget v2, v0, Lcom/bbm/util/o;->b:I

    int-to-float v2, v2

    iget v3, v0, Lcom/bbm/util/o;->a:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/bbm/ui/a/a;->m:Lcom/bbm/ui/activities/cn;

    invoke-static {v3}, Lcom/bbm/util/b/h;->a(Landroid/content/Context;)I

    move-result v3

    if-le v2, v3, :cond_180

    iget-object v1, v5, Lcom/bbm/ui/a/j;->h:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/bbm/util/o;->a:I

    mul-int/2addr v2, v3

    iget v4, v0, Lcom/bbm/util/o;->b:I

    div-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, v5, Lcom/bbm/ui/a/j;->h:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_167
    iget-object v1, v5, Lcom/bbm/ui/a/j;->h:Lcom/bbm/ui/ObservingImageView;

    iget-object v2, p0, Lcom/bbm/ui/a/a;->p:Lcom/bbm/util/b/d;

    iget-object v3, v5, Lcom/bbm/ui/a/j;->h:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v3}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, v5, Lcom/bbm/ui/a/j;->h:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v4}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bbm/util/o;->a(Lcom/bbm/ui/ObservingImageView;Lcom/bbm/util/b/d;II)V

    goto/16 :goto_66

    :cond_180
    iget-object v3, v5, Lcom/bbm/ui/a/j;->h:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v3}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, v5, Lcom/bbm/ui/a/j;->h:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_167

    :cond_191
    iget-object v0, p2, Lcom/bbm/d/ek;->n:Ljava/lang/String;

    goto/16 :goto_a9

    :cond_195
    iget-object v0, p2, Lcom/bbm/d/ek;->o:Ljava/lang/String;

    goto/16 :goto_c0

    :cond_199
    const v0, 0x7f020355

    goto/16 :goto_d0

    :cond_19e
    iget-object v0, v5, Lcom/bbm/ui/a/j;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v5, Lcom/bbm/ui/a/j;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_10c
.end method

.method public final d()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/a/a;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bbm/ui/a/a;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbm/ui/a/a;->m:Lcom/bbm/ui/activities/cn;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/cn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_16
    return-void
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/a/a;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/o;

    invoke-virtual {v0}, Lcom/bbm/util/o;->a()V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Lcom/bbm/ui/a/a;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/bbm/util/fb;->a()V

    return-void
.end method

.method public final f()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/a/a;->p:Lcom/bbm/util/b/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bbm/ui/a/a;->p:Lcom/bbm/util/b/d;

    invoke-virtual {v0}, Lcom/bbm/util/b/d;->a()V

    :cond_9
    return-void
.end method
