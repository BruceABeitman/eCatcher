.class public Lcom/bbm/ui/c/hk;
.super Landroid/app/Fragment;
.source "UpdatesFragment.java"


# instance fields
.field private A:Z

.field private B:Lcom/bbm/util/ew;

.field private final C:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/bbm/util/ew;",
            ">;"
        }
    .end annotation
.end field

.field private final D:Lcom/bbm/ui/gy;

.field public a:Landroid/widget/ListView;

.field private final b:Lcom/bbm/j/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/util/ew;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bbm/j/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/util/ew;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/bbm/j/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/util/ew;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/bbm/j/k;

.field private final f:Lcom/bbm/j/u;

.field private final g:Lcom/bbm/j/u;

.field private final h:Lcom/bbm/j/k;

.field private final i:Lcom/bbm/j/k;

.field private final j:Lcom/bbm/j/u;

.field private final k:Lcom/bbm/d;

.field private final l:Ljava/util/Random;

.field private m:Landroid/content/Context;

.field private n:Lcom/bbm/ui/activities/MainActivity;

.field private o:Lcom/bbm/ui/ThreeButtonSegmentedControl;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Lcom/bbm/util/b/a;

.field private s:Lcom/bbm/ui/ct;

.field private t:Lcom/bbm/ui/a/z;

.field private u:Lcom/bbm/ui/ct;

.field private v:Lcom/bbm/ui/a/z;

.field private w:Lcom/bbm/ui/ct;

.field private x:Lcom/bbm/ui/a/z;

.field private y:Lcom/bbm/util/er;

.field private z:Lcom/bbm/util/ew;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/bbm/ui/c/hl;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/hl;-><init>(Lcom/bbm/ui/c/hk;)V

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->b:Lcom/bbm/j/r;

    new-instance v0, Lcom/bbm/ui/c/hv;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/hv;-><init>(Lcom/bbm/ui/c/hk;)V

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->c:Lcom/bbm/j/r;

    new-instance v0, Lcom/bbm/ui/c/hw;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/hw;-><init>(Lcom/bbm/ui/c/hk;)V

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->d:Lcom/bbm/j/r;

    new-instance v0, Lcom/bbm/ui/c/hx;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/hx;-><init>(Lcom/bbm/ui/c/hk;)V

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->e:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/c/hy;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/hy;-><init>(Lcom/bbm/ui/c/hk;)V

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->f:Lcom/bbm/j/u;

    new-instance v0, Lcom/bbm/ui/c/hz;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/hz;-><init>(Lcom/bbm/ui/c/hk;)V

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->g:Lcom/bbm/j/u;

    new-instance v0, Lcom/bbm/ui/c/ia;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/ia;-><init>(Lcom/bbm/ui/c/hk;)V

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->h:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/c/ib;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/ib;-><init>(Lcom/bbm/ui/c/hk;)V

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->i:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/c/ic;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/ic;-><init>(Lcom/bbm/ui/c/hk;)V

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->j:Lcom/bbm/j/u;

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->k:Lcom/bbm/d;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->l:Ljava/util/Random;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbm/ui/c/hk;->p:I

    const-string v0, "FragmentIndex"

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->q:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->B:Lcom/bbm/util/ew;

    new-instance v0, Lcom/bbm/ui/c/hm;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/hm;-><init>(Lcom/bbm/ui/c/hk;)V

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->C:Ljava/util/Comparator;

    new-instance v0, Lcom/bbm/ui/c/hn;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/hn;-><init>(Lcom/bbm/ui/c/hk;)V

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->D:Lcom/bbm/ui/gy;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/c/hk;Lcom/bbm/util/bl;Lcom/bbm/util/bl;)Lcom/bbm/ui/c/id;
    .registers 13

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->b:Lcom/bbm/j/r;

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_61

    iget-object v2, p1, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v2, v3, :cond_61

    iget-object v2, p2, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v2, v3, :cond_61

    iget-object v2, p1, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;

    const-string v3, "value"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v2, p2, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;

    const-string v3, "value"

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    if-lt v4, v5, :cond_5e

    move v3, v1

    move v2, v1

    :goto_31
    if-ge v3, v4, :cond_5e

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/util/ew;

    iget-object v1, v1, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;

    sget-object v8, Lcom/bbm/util/ex;->d:Lcom/bbm/util/ex;

    if-eq v1, v8, :cond_58

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/util/ew;

    iget-wide v8, v1, Lcom/bbm/util/ew;->b:J

    cmp-long v1, v8, v6

    if-gtz v1, :cond_4e

    sget-object v0, Lcom/bbm/ui/c/id;->b:Lcom/bbm/ui/c/id;

    :goto_4d
    return-object v0

    :cond_4e
    add-int/lit8 v1, v2, 0x1

    if-lt v1, v5, :cond_59

    invoke-static {}, Lcom/bbm/b/e;->b()V

    sget-object v0, Lcom/bbm/ui/c/id;->a:Lcom/bbm/ui/c/id;

    goto :goto_4d

    :cond_58
    move v1, v2

    :cond_59
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_31

    :cond_5e
    sget-object v0, Lcom/bbm/ui/c/id;->b:Lcom/bbm/ui/c/id;

    goto :goto_4d

    :cond_61
    sget-object v0, Lcom/bbm/ui/c/id;->c:Lcom/bbm/ui/c/id;

    goto :goto_4d
.end method

.method static synthetic a(Lcom/bbm/ui/c/hk;Lcom/bbm/util/er;)Lcom/bbm/util/er;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/hk;->y:Lcom/bbm/util/er;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/c/hk;Lcom/bbm/util/ew;)Lcom/bbm/util/ew;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/hk;->B:Lcom/bbm/util/ew;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/c/hk;)Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->C:Ljava/util/Comparator;

    return-object v0
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->s:Lcom/bbm/ui/ct;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->s:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->b()V

    :cond_9
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->t:Lcom/bbm/ui/a/z;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->t:Lcom/bbm/ui/a/z;

    invoke-direct {p0, v0}, Lcom/bbm/ui/c/hk;->a(Lcom/bbm/ui/a/z;)V

    :cond_12
    return-void
.end method

.method private a(I)V
    .registers 10

    const v7, 0x7f020302

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_15c

    :goto_7
    iput p1, p0, Lcom/bbm/ui/c/hk;->p:I

    return-void

    :pswitch_a
    invoke-direct {p0}, Lcom/bbm/ui/c/hk;->b()V

    invoke-direct {p0}, Lcom/bbm/ui/c/hk;->c()V

    new-instance v0, Lcom/bbm/ui/a/z;

    iget-object v1, p0, Lcom/bbm/ui/c/hk;->b:Lcom/bbm/j/r;

    iget-object v2, p0, Lcom/bbm/ui/c/hk;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/bbm/ui/c/hk;->n:Lcom/bbm/ui/activities/MainActivity;

    iget-object v4, p0, Lcom/bbm/ui/c/hk;->r:Lcom/bbm/util/b/a;

    iget-object v5, p0, Lcom/bbm/ui/c/hk;->n:Lcom/bbm/ui/activities/MainActivity;

    iget-object v5, v5, Lcom/bbm/ui/activities/MainActivity;->b:Lcom/bbm/j/t;

    invoke-direct/range {v0 .. v5}, Lcom/bbm/ui/a/z;-><init>(Lcom/bbm/j/r;Landroid/content/Context;Landroid/app/Activity;Lcom/bbm/util/b/a;Lcom/bbm/j/t;)V

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->t:Lcom/bbm/ui/a/z;

    new-instance v0, Lcom/bbm/ui/ct;

    iget-object v1, p0, Lcom/bbm/ui/c/hk;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/bbm/ui/c/hk;->t:Lcom/bbm/ui/a/z;

    invoke-direct {v0, v1, v2}, Lcom/bbm/ui/ct;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->s:Lcom/bbm/ui/ct;

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->a:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/bbm/ui/c/hk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/c/hk;->s:Lcom/bbm/ui/ct;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/c/hk;->t:Lcom/bbm/ui/a/z;

    iget-object v1, v1, Lcom/bbm/ui/a/z;->b:Lcom/bbm/util/eq;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/bbm/ui/c/ho;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/ho;-><init>(Lcom/bbm/ui/c/hk;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/bbm/ui/c/hp;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/hp;-><init>(Lcom/bbm/ui/c/hk;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->s:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->k:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    const-string v1, "hasNewChannelUpdate"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->k:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    const-string v1, "hasNewUpdate"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->k:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    new-instance v1, Lcom/bbm/g/bd;

    invoke-direct {v1}, Lcom/bbm/g/bd;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->k:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    new-instance v1, Lcom/bbm/g/as;

    invoke-direct {v1}, Lcom/bbm/g/as;-><init>()V

    invoke-virtual {v1}, Lcom/bbm/g/as;->b()Lcom/bbm/g/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/g/as;->d()Lcom/bbm/g/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/g/as;->e()Lcom/bbm/g/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/g/as;->f()Lcom/bbm/g/as;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    goto/16 :goto_7

    :pswitch_a8
    invoke-direct {p0}, Lcom/bbm/ui/c/hk;->a()V

    invoke-direct {p0}, Lcom/bbm/ui/c/hk;->c()V

    new-instance v0, Lcom/bbm/ui/a/z;

    iget-object v1, p0, Lcom/bbm/ui/c/hk;->c:Lcom/bbm/j/r;

    iget-object v2, p0, Lcom/bbm/ui/c/hk;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/bbm/ui/c/hk;->n:Lcom/bbm/ui/activities/MainActivity;

    iget-object v4, p0, Lcom/bbm/ui/c/hk;->r:Lcom/bbm/util/b/a;

    iget-object v5, p0, Lcom/bbm/ui/c/hk;->n:Lcom/bbm/ui/activities/MainActivity;

    iget-object v5, v5, Lcom/bbm/ui/activities/MainActivity;->b:Lcom/bbm/j/t;

    invoke-direct/range {v0 .. v5}, Lcom/bbm/ui/a/z;-><init>(Lcom/bbm/j/r;Landroid/content/Context;Landroid/app/Activity;Lcom/bbm/util/b/a;Lcom/bbm/j/t;)V

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->v:Lcom/bbm/ui/a/z;

    new-instance v0, Lcom/bbm/ui/ct;

    iget-object v1, p0, Lcom/bbm/ui/c/hk;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/bbm/ui/c/hk;->v:Lcom/bbm/ui/a/z;

    invoke-direct {v0, v1, v2}, Lcom/bbm/ui/ct;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->u:Lcom/bbm/ui/ct;

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->a:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/bbm/ui/c/hk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/c/hk;->u:Lcom/bbm/ui/ct;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/bbm/ui/c/hq;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/hq;-><init>(Lcom/bbm/ui/c/hk;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/bbm/ui/c/hr;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/hr;-><init>(Lcom/bbm/ui/c/hk;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->u:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V

    goto/16 :goto_7

    :pswitch_fb
    invoke-direct {p0}, Lcom/bbm/ui/c/hk;->a()V

    invoke-direct {p0}, Lcom/bbm/ui/c/hk;->b()V

    new-instance v0, Lcom/bbm/ui/a/z;

    iget-object v1, p0, Lcom/bbm/ui/c/hk;->d:Lcom/bbm/j/r;

    iget-object v2, p0, Lcom/bbm/ui/c/hk;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/bbm/ui/c/hk;->n:Lcom/bbm/ui/activities/MainActivity;

    iget-object v4, p0, Lcom/bbm/ui/c/hk;->r:Lcom/bbm/util/b/a;

    iget-object v5, p0, Lcom/bbm/ui/c/hk;->n:Lcom/bbm/ui/activities/MainActivity;

    iget-object v5, v5, Lcom/bbm/ui/activities/MainActivity;->b:Lcom/bbm/j/t;

    invoke-direct/range {v0 .. v5}, Lcom/bbm/ui/a/z;-><init>(Lcom/bbm/j/r;Landroid/content/Context;Landroid/app/Activity;Lcom/bbm/util/b/a;Lcom/bbm/j/t;)V

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->x:Lcom/bbm/ui/a/z;

    new-instance v0, Lcom/bbm/ui/ct;

    iget-object v1, p0, Lcom/bbm/ui/c/hk;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/bbm/ui/c/hk;->x:Lcom/bbm/ui/a/z;

    invoke-direct {v0, v1, v2}, Lcom/bbm/ui/ct;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->w:Lcom/bbm/ui/ct;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a;->B()Lcom/bbm/util/ay;

    move-result-object v0

    sget-object v1, Lcom/bbm/util/ay;->c:Lcom/bbm/util/ay;

    if-ne v0, v1, :cond_131

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_131
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/c/hk;->w:Lcom/bbm/ui/ct;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/c/hk;->x:Lcom/bbm/ui/a/z;

    iget-object v1, v1, Lcom/bbm/ui/a/z;->b:Lcom/bbm/util/eq;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/bbm/ui/c/hs;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/hs;-><init>(Lcom/bbm/ui/c/hk;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/bbm/ui/c/ht;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/ht;-><init>(Lcom/bbm/ui/c/hk;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->w:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V

    goto/16 :goto_7

    :pswitch_data_15c
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a8
        :pswitch_fb
    .end packed-switch
.end method

.method private a(Lcom/bbm/ui/a/z;)V
    .registers 6

    iget-boolean v0, p0, Lcom/bbm/ui/c/hk;->A:Z

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v2, p1, Lcom/bbm/ui/a/z;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_37

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_17

    invoke-static {v0, v1}, Lcom/bbm/d/z;->a(Ljava/lang/String;Ljava/util/List;)Lcom/bbm/d/av;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/hk;->k:Lcom/bbm/d;

    iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    goto :goto_17

    :cond_37
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p1, Lcom/bbm/ui/a/z;->c:Ljava/util/HashMap;

    goto :goto_6
.end method

.method static synthetic a(Lcom/bbm/ui/c/hk;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbm/ui/c/hk;->a(I)V

    return-void
.end method

.method static synthetic a(Ljava/util/ArrayList;)Z
    .registers 4

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->y()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    invoke-virtual {v0}, Lcom/bbm/d/a;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fz;

    new-instance v2, Lcom/bbm/util/ew;

    invoke-direct {v2, v0}, Lcom/bbm/util/ew;-><init>(Lcom/bbm/d/fz;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2b
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic b(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/ThreeButtonSegmentedControl;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->o:Lcom/bbm/ui/ThreeButtonSegmentedControl;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/c/hk;Lcom/bbm/util/ew;)Lcom/bbm/util/ew;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/hk;->z:Lcom/bbm/util/ew;

    return-object p1
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->u:Lcom/bbm/ui/ct;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->u:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->b()V

    :cond_9
    return-void
.end method

.method static synthetic b(Ljava/util/ArrayList;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->G()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v3

    if-eqz v3, :cond_13

    :goto_12
    return v2

    :cond_13
    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fy;

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v4

    iget-object v4, v4, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iget-object v5, v0, Lcom/bbm/d/fy;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v4

    iget-object v4, v4, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v5, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v4, v5, :cond_3d

    move v1, v2

    goto :goto_1d

    :cond_3d
    iget-object v4, v0, Lcom/bbm/d/fy;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1d

    new-instance v4, Lcom/bbm/util/ew;

    invoke-direct {v4, v0}, Lcom/bbm/util/ew;-><init>(Lcom/bbm/d/fy;)V

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_4e
    move v2, v1

    goto :goto_12
.end method

.method static synthetic c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->n:Lcom/bbm/ui/activities/MainActivity;

    return-object v0
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->w:Lcom/bbm/ui/ct;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->w:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->b()V

    :cond_9
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->x:Lcom/bbm/ui/a/z;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->x:Lcom/bbm/ui/a/z;

    invoke-direct {p0, v0}, Lcom/bbm/ui/c/hk;->a(Lcom/bbm/ui/a/z;)V

    :cond_12
    return-void
.end method

.method static synthetic c(Ljava/util/ArrayList;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/b/q;->a()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v3

    if-eqz v3, :cond_12

    move v0, v1

    :goto_11
    return v0

    :cond_12
    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/b/a;

    new-instance v4, Lcom/bbm/util/ew;

    invoke-direct {v4, v0}, Lcom/bbm/util/ew;-><init>(Lcom/bbm/b/a;)V

    iget-wide v5, v4, Lcom/bbm/util/ew;->b:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_44

    const-string v5, "Adding SponsoredPost %s to outputList"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/bbm/b/a;->h:Ljava/lang/String;

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_44
    const-string v4, "Filtering SponsoredPost %s"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/bbm/b/a;->h:Ljava/lang/String;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1c

    :cond_50
    move v0, v2

    goto :goto_11
.end method

.method static synthetic d(Lcom/bbm/ui/c/hk;)Lcom/bbm/j/r;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->b:Lcom/bbm/j/r;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/c/hk;)Ljava/util/Random;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->l:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/c/hk;)Lcom/bbm/d;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->k:Lcom/bbm/d;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/c/hk;)Lcom/bbm/j/r;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->d:Lcom/bbm/j/r;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/ew;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->B:Lcom/bbm/util/ew;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/c/hk;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/ui/c/hk;)I
    .registers 2

    iget v0, p0, Lcom/bbm/ui/c/hk;->p:I

    return v0
.end method

.method static synthetic k(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/a/z;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->t:Lcom/bbm/ui/a/z;

    return-object v0
.end method

.method static synthetic l(Lcom/bbm/ui/c/hk;)Lcom/bbm/j/u;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->j:Lcom/bbm/j/u;

    return-object v0
.end method

.method static synthetic m(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/er;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->y:Lcom/bbm/util/er;

    return-object v0
.end method

.method static synthetic n(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/ew;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->z:Lcom/bbm/util/ew;

    return-object v0
.end method

.method static synthetic o(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/a/z;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->v:Lcom/bbm/ui/a/z;

    return-object v0
.end method

.method static synthetic p(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/a/z;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->x:Lcom/bbm/ui/a/z;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    const/4 v4, 0x0

    const-string v0, "onCreateView"

    const-class v1, Lcom/bbm/ui/c/hk;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    if-eqz p3, :cond_12

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->q:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bbm/ui/c/hk;->p:I

    :cond_12
    const v0, 0x7f030099

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->m:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbm/ui/c/hk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/MainActivity;

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->n:Lcom/bbm/ui/activities/MainActivity;

    const v0, 0x7f0a03d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ThreeButtonSegmentedControl;

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->o:Lcom/bbm/ui/ThreeButtonSegmentedControl;

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->o:Lcom/bbm/ui/ThreeButtonSegmentedControl;

    iget-object v2, p0, Lcom/bbm/ui/c/hk;->D:Lcom/bbm/ui/gy;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/ThreeButtonSegmentedControl;->setOnOptionSelectedListener(Lcom/bbm/ui/gy;)V

    invoke-virtual {p0}, Lcom/bbm/ui/c/hk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b03a9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v2, Lcom/bbm/util/b/a;

    iget-object v3, p0, Lcom/bbm/ui/c/hk;->n:Lcom/bbm/ui/activities/MainActivity;

    invoke-direct {v2, v3, v0}, Lcom/bbm/util/b/a;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/bbm/ui/c/hk;->r:Lcom/bbm/util/b/a;

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->r:Lcom/bbm/util/b/a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/bbm/util/b/a;->a:Z

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->r:Lcom/bbm/util/b/a;

    const v2, 0x7f0200d8

    invoke-virtual {v0, v2}, Lcom/bbm/util/b/a;->a(I)V

    new-instance v0, Lcom/bbm/util/b/f;

    invoke-direct {v0}, Lcom/bbm/util/b/f;-><init>()V

    iget-object v2, p0, Lcom/bbm/ui/c/hk;->r:Lcom/bbm/util/b/a;

    invoke-virtual {v2, v0}, Lcom/bbm/util/b/a;->a(Lcom/bbm/util/b/f;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->r:Lcom/bbm/util/b/a;

    iput-boolean v4, v0, Lcom/bbm/util/b/i;->j:Z

    const v0, 0x7f0a03d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bbm/ui/c/hk;->a:Landroid/widget/ListView;

    iget v0, p0, Lcom/bbm/ui/c/hk;->p:I

    invoke-direct {p0, v0}, Lcom/bbm/ui/c/hk;->a(I)V

    return-object v1
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "onDestroy"

    const-class v1, Lcom/bbm/ui/c/hk;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .registers 3

    const-string v0, "onDetach"

    const-class v1, Lcom/bbm/ui/c/hk;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iget v0, p0, Lcom/bbm/ui/c/hk;->p:I

    packed-switch v0, :pswitch_data_76

    :cond_c
    :goto_c
    :pswitch_c
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->r:Lcom/bbm/util/b/a;

    invoke-virtual {v0}, Lcom/bbm/util/b/a;->b()V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->r:Lcom/bbm/util/b/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bbm/util/b/i;->e:Z

    invoke-virtual {v0}, Lcom/bbm/util/b/i;->b()V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->r:Lcom/bbm/util/b/a;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->r:Lcom/bbm/util/b/a;

    invoke-virtual {v0}, Lcom/bbm/util/b/a;->c()V

    :cond_22
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->s:Lcom/bbm/ui/ct;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->s:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->e()V

    :cond_2b
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->u:Lcom/bbm/ui/ct;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->u:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->e()V

    :cond_34
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->w:Lcom/bbm/ui/ct;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->w:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->e()V

    :cond_3d
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->t:Lcom/bbm/ui/a/z;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->t:Lcom/bbm/ui/a/z;

    invoke-virtual {v0}, Lcom/bbm/ui/a/z;->d()V

    :cond_46
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->v:Lcom/bbm/ui/a/z;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->v:Lcom/bbm/ui/a/z;

    invoke-virtual {v0}, Lcom/bbm/ui/a/z;->d()V

    :cond_4f
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->x:Lcom/bbm/ui/a/z;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->x:Lcom/bbm/ui/a/z;

    invoke-virtual {v0}, Lcom/bbm/ui/a/z;->d()V

    :cond_58
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void

    :pswitch_62
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->t:Lcom/bbm/ui/a/z;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->t:Lcom/bbm/ui/a/z;

    invoke-direct {p0, v0}, Lcom/bbm/ui/c/hk;->a(Lcom/bbm/ui/a/z;)V

    goto :goto_c

    :pswitch_6c
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->x:Lcom/bbm/ui/a/z;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->x:Lcom/bbm/ui/a/z;

    invoke-direct {p0, v0}, Lcom/bbm/ui/c/hk;->a(Lcom/bbm/ui/a/z;)V

    goto :goto_c

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_62
        :pswitch_c
        :pswitch_6c
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    const-string v0, "onPause"

    const-class v1, Lcom/bbm/ui/c/hk;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/n;->j:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->d(Lcom/bbm/c/n;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->e:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->h:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->i:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->f:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->e()V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->g:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->e()V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->r:Lcom/bbm/util/b/a;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->r:Lcom/bbm/util/b/a;

    invoke-virtual {v0}, Lcom/bbm/util/b/a;->c()V

    :cond_32
    iget v0, p0, Lcom/bbm/ui/c/hk;->p:I

    packed-switch v0, :pswitch_data_5a

    :cond_37
    :goto_37
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void

    :pswitch_3b
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->s:Lcom/bbm/ui/ct;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->s:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->b()V

    goto :goto_37

    :pswitch_45
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->u:Lcom/bbm/ui/ct;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->u:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->b()V

    goto :goto_37

    :pswitch_4f
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->w:Lcom/bbm/ui/ct;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->w:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->b()V

    goto :goto_37

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_45
        :pswitch_4f
    .end packed-switch
.end method

.method public onResume()V
    .registers 3

    const-string v0, "onResume"

    const-class v1, Lcom/bbm/ui/c/hk;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/n;->j:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->b(Lcom/bbm/c/n;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->e:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->h:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->i:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->f:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->g:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    iget v0, p0, Lcom/bbm/ui/c/hk;->p:I

    packed-switch v0, :pswitch_data_50

    :cond_2e
    :goto_2e
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void

    :pswitch_32
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->s:Lcom/bbm/ui/ct;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->s:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V

    goto :goto_2e

    :pswitch_3c
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->u:Lcom/bbm/ui/ct;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->u:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V

    goto :goto_2e

    :pswitch_46
    iget-object v0, p0, Lcom/bbm/ui/c/hk;->w:Lcom/bbm/ui/ct;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->w:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V

    goto :goto_2e

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_32
        :pswitch_3c
        :pswitch_46
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/bbm/ui/c/hk;->q:Ljava/lang/String;

    iget v1, p0, Lcom/bbm/ui/c/hk;->p:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/c/hk;->A:Z

    return-void
.end method
