.class public final Lcom/bbm/ui/a/s;
.super Landroid/widget/BaseAdapter;
.source "GroupMessageListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Lcom/bbm/j/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/g/ad;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/view/View$OnTouchListener;

.field final d:Lcom/bbm/ui/activities/xo;

.field e:Landroid/graphics/drawable/Drawable;

.field final f:Z

.field final g:I

.field public h:Lcom/bbm/util/b/g;

.field public final i:Lcom/bbm/j/h;

.field j:Z

.field final k:Landroid/os/Handler;

.field final l:Ljava/lang/Runnable;

.field private final m:Landroid/view/LayoutInflater;

.field private final n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private final q:Lcom/bbm/util/fj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/fj",
            "<",
            "Lcom/bbm/ui/a/y;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v1, p0, Lcom/bbm/ui/a/s;->c:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/bbm/ui/activities/xo;

    invoke-direct {v0}, Lcom/bbm/ui/activities/xo;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/a/s;->d:Lcom/bbm/ui/activities/xo;

    iput-object v1, p0, Lcom/bbm/ui/a/s;->e:Landroid/graphics/drawable/Drawable;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/ui/a/s;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/ui/a/s;->p:Ljava/lang/String;

    new-instance v0, Lcom/bbm/ui/a/t;

    invoke-direct {v0, p0}, Lcom/bbm/ui/a/t;-><init>(Lcom/bbm/ui/a/s;)V

    iput-object v0, p0, Lcom/bbm/ui/a/s;->i:Lcom/bbm/j/h;

    new-instance v0, Lcom/bbm/util/fj;

    invoke-direct {v0}, Lcom/bbm/util/fj;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/a/s;->q:Lcom/bbm/util/fj;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bbm/ui/a/s;->k:Landroid/os/Handler;

    new-instance v0, Lcom/bbm/ui/a/u;

    invoke-direct {v0, p0}, Lcom/bbm/ui/a/u;-><init>(Lcom/bbm/ui/a/s;)V

    iput-object v0, p0, Lcom/bbm/ui/a/s;->l:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/bbm/ui/a/s;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/bbm/ui/a/s;->a:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/bbm/ui/a/s;->m:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/bbm/ui/a/s;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/a/s;->e:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/bbm/ui/a/s;->n:Ljava/lang/String;

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/a/s;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->f(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/a/s;->b:Lcom/bbm/j/w;

    iget-object v0, p0, Lcom/bbm/ui/a/s;->b:Lcom/bbm/j/w;

    iget-object v1, p0, Lcom/bbm/ui/a/s;->i:Lcom/bbm/j/h;

    invoke-interface {v0, v1}, Lcom/bbm/j/w;->a(Lcom/bbm/j/h;)V

    new-instance v0, Lcom/bbm/util/b/g;

    iget-object v1, p0, Lcom/bbm/ui/a/s;->a:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/bbm/ui/a/s;->h:Lcom/bbm/util/b/g;

    new-instance v0, Lcom/bbm/util/b/f;

    invoke-direct {v0}, Lcom/bbm/util/b/f;-><init>()V

    const/high16 v1, 0x3e80

    invoke-virtual {v0, v1}, Lcom/bbm/util/b/f;->a(F)V

    iget-object v1, p0, Lcom/bbm/ui/a/s;->h:Lcom/bbm/util/b/g;

    invoke-virtual {v1, v0}, Lcom/bbm/util/b/g;->a(Lcom/bbm/util/b/f;)V

    invoke-virtual {p0}, Lcom/bbm/ui/a/s;->a()V

    iget-object v0, p0, Lcom/bbm/ui/a/s;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/bbm/ui/a/s;->g:I

    invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/af;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/ui/a/s;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/a/s;)Lcom/bbm/j/w;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/a/s;->b:Lcom/bbm/j/w;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/g/ad;Lcom/bbm/g/ad;)Z
    .registers 6

    iget-object v0, p0, Lcom/bbm/g/ad;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/bbm/g/ad;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/bbm/g/ad;->a:Z

    iget-boolean v1, p1, Lcom/bbm/g/ad;->a:Z

    if-ne v0, v1, :cond_21

    iget-wide v0, p0, Lcom/bbm/g/ad;->f:J

    iget-wide v2, p1, Lcom/bbm/g/ad;->f:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method static synthetic b(Lcom/bbm/ui/a/s;)Lcom/bbm/util/fj;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/a/s;->q:Lcom/bbm/util/fj;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/a/s;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/a/s;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/a/s;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/a/s;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/a/s;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/a/s;->j:Z

    return v0
.end method

.method static synthetic f(Lcom/bbm/ui/a/s;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/a/s;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/a/s;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/a/s;->r:Z

    return v0
.end method


# virtual methods
.method public final a(I)Lcom/bbm/g/ad;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/a/s;->b:Lcom/bbm/j/w;

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/bbm/ui/a/s;->b:Lcom/bbm/j/w;

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_2b

    iget-object v0, p0, Lcom/bbm/ui/a/s;->b:Lcom/bbm/j/w;

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/ad;

    :goto_2a
    return-object v0

    :cond_2b
    new-instance v0, Lcom/bbm/g/ad;

    invoke-direct {v0}, Lcom/bbm/g/ad;-><init>()V

    goto :goto_2a
.end method

.method protected final a()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/a/s;->b:Lcom/bbm/j/w;

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/bbm/ui/a/s;->b:Lcom/bbm/j/w;

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/ad;

    iget-object v1, p0, Lcom/bbm/ui/a/s;->b:Lcom/bbm/j/w;

    invoke-interface {v1}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/bbm/ui/a/s;->b:Lcom/bbm/j/w;

    invoke-interface {v2}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/g/ad;

    if-eqz v0, :cond_46

    iget-object v0, v0, Lcom/bbm/g/ad;->c:Ljava/lang/String;

    :goto_3d
    iput-object v0, p0, Lcom/bbm/ui/a/s;->o:Ljava/lang/String;

    if-eqz v1, :cond_49

    iget-object v0, v1, Lcom/bbm/g/ad;->c:Ljava/lang/String;

    :goto_43
    iput-object v0, p0, Lcom/bbm/ui/a/s;->p:Ljava/lang/String;

    :cond_45
    return-void

    :cond_46
    const-string v0, ""

    goto :goto_3d

    :cond_49
    const-string v0, ""

    goto :goto_43
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/a/s;->b:Lcom/bbm/j/w;

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bbm/ui/a/s;->a(I)Lcom/bbm/g/ad;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bbm/ui/a/s;->a(I)Lcom/bbm/g/ad;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bbm/g/ad;->a:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const v7, 0x7f0a0025

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/bbm/ui/a/s;->getItemViewType(I)I

    move-result v4

    invoke-virtual {p0, p1}, Lcom/bbm/ui/a/s;->a(I)Lcom/bbm/g/ad;

    move-result-object v5

    if-nez p2, :cond_c6

    move v0, v2

    :goto_10
    if-eqz v0, :cond_c4

    new-instance v6, Lcom/bbm/ui/a/y;

    invoke-direct {v6, p0, v3}, Lcom/bbm/ui/a/y;-><init>(Lcom/bbm/ui/a/s;B)V

    iget-boolean v0, v5, Lcom/bbm/g/ad;->a:Z

    if-nez v0, :cond_b8

    iget-object v0, p0, Lcom/bbm/ui/a/s;->m:Landroid/view/LayoutInflater;

    const v1, 0x7f0300dc

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :goto_25
    iget-boolean v0, v5, Lcom/bbm/g/ad;->a:Z

    iput-boolean v0, v6, Lcom/bbm/ui/a/y;->g:Z

    const v0, 0x7f0a0458

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, v6, Lcom/bbm/ui/a/y;->a:Lcom/bbm/ui/ObservingImageView;

    iget-object v0, v6, Lcom/bbm/ui/a/y;->a:Lcom/bbm/ui/ObservingImageView;

    if-eqz v0, :cond_3d

    iget-object v0, v6, Lcom/bbm/ui/a/y;->a:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setAnimationAllowed(Z)V

    :cond_3d
    const v0, 0x7f0a0453

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/bbm/ui/a/y;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0454

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/bbm/ui/a/y;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0455

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lcom/bbm/ui/a/y;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a0456

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/bbm/ui/a/y;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/a/s;->c:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/bbm/ui/a/s;->c:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v6, Lcom/bbm/ui/a/y;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_7d

    iget-object v0, v6, Lcom/bbm/ui/a/y;->e:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/bbm/ui/a/s;->c:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7d
    new-instance v0, Lcom/bbm/ui/a/v;

    invoke-direct {v0, p0, v6}, Lcom/bbm/ui/a/v;-><init>(Lcom/bbm/ui/a/s;Lcom/bbm/ui/a/y;)V

    iput-object v0, v6, Lcom/bbm/ui/a/y;->i:Lcom/bbm/j/a;

    invoke-virtual {v6, p1}, Lcom/bbm/ui/a/y;->a(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_8a
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/a/y;

    invoke-virtual {v0, p1}, Lcom/bbm/ui/a/y;->a(I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/j/k;

    if-nez v0, :cond_a7

    new-instance v0, Lcom/bbm/ui/a/w;

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/a/w;-><init>(Lcom/bbm/ui/a/s;Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/bbm/ui/a/s;->r:Z

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iput-boolean v3, p0, Lcom/bbm/ui/a/s;->r:Z

    :cond_a7
    invoke-virtual {v0}, Lcom/bbm/j/k;->d_()V

    invoke-virtual {v1, v7, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f0a0023

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v1

    :cond_b8
    iget-object v0, p0, Lcom/bbm/ui/a/s;->m:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d5

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_25

    :cond_c4
    move-object v1, p2

    goto :goto_8a

    :cond_c6
    move v0, v3

    goto/16 :goto_10
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
