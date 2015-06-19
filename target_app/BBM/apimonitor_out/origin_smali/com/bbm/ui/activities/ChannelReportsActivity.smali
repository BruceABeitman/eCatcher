.class public Lcom/bbm/ui/activities/ChannelReportsActivity;
.super Lcom/bbm/ui/activities/cn;
.source "ChannelReportsActivity.java"


# instance fields
.field a:Landroid/content/Context;

.field public b:Lcom/bbm/d/a;

.field protected final c:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Lcom/bbm/d/ec;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lcom/bbm/ui/gk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/ui/gk",
            "<",
            "Lcom/bbm/ui/activities/ea;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

.field private h:Lcom/bbm/j/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/fa;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/bbm/j/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/fb;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private final l:Lcom/bbm/d/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/b/q",
            "<",
            "Lcom/bbm/ui/gp",
            "<",
            "Lcom/bbm/ui/activities/ea;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m:Lcom/bbm/j/k;

.field private final n:Landroid/view/View$OnClickListener;

.field private final o:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private p:Lcom/bbm/ui/activities/eb;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/cn;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->b:Lcom/bbm/d/a;

    new-instance v0, Lcom/bbm/ui/activities/do;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/do;-><init>(Lcom/bbm/ui/activities/ChannelReportsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->c:Lcom/bbm/j/a;

    new-instance v0, Lcom/bbm/ui/activities/dp;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/dp;-><init>(Lcom/bbm/ui/activities/ChannelReportsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->l:Lcom/bbm/d/b/q;

    new-instance v0, Lcom/bbm/ui/activities/dt;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/dt;-><init>(Lcom/bbm/ui/activities/ChannelReportsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->m:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/dv;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/dv;-><init>(Lcom/bbm/ui/activities/ChannelReportsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->n:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/bbm/ui/activities/dw;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/dw;-><init>(Lcom/bbm/ui/activities/ChannelReportsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->o:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChannelReportsActivity;)Lcom/bbm/j/w;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->h:Lcom/bbm/j/w;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChannelReportsActivity;Lcom/bbm/j/w;)Lcom/bbm/j/w;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->h:Lcom/bbm/j/w;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChannelReportsActivity;Lcom/bbm/ui/activities/eb;)Lcom/bbm/ui/activities/eb;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->p:Lcom/bbm/ui/activities/eb;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChannelReportsActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/ChannelReportsActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :try_start_6
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_14} :catch_26

    move-result-object v0

    :goto_15
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-lez v1, :cond_30

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    :goto_25
    return-object v0

    :catch_26
    move-exception v1

    const-string v2, "Caught Cannot parse date"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_30
    const-string v0, ""

    goto :goto_25
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChannelReportsActivity;Lcom/bbm/ui/c/fm;Lcom/bbm/ui/activities/ea;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const v7, 0x7f020268

    const/4 v6, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a003c

    const v3, 0x7f020297

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0471

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/bbm/ui/activities/ea;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    new-instance v0, Lcom/bbm/ui/slidingmenu/a;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    :goto_42
    new-instance v2, Lcom/bbm/ui/slidingmenu/a;

    invoke-direct {v2, v6, p3, p4}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2, v0}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    new-instance v0, Lcom/bbm/ui/activities/dx;

    invoke-direct {v0, p0, p2}, Lcom/bbm/ui/activities/dx;-><init>(Lcom/bbm/ui/activities/ChannelReportsActivity;Lcom/bbm/ui/activities/ea;)V

    iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    new-instance v0, Lcom/bbm/ui/activities/dy;

    invoke-direct {v0, p0, p2}, Lcom/bbm/ui/activities/dy;-><init>(Lcom/bbm/ui/activities/ChannelReportsActivity;Lcom/bbm/ui/activities/ea;)V

    invoke-virtual {p1, v0}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_5a
    new-instance v0, Lcom/bbm/ui/slidingmenu/a;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ChannelReportsActivity;)Lcom/bbm/j/w;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->i:Lcom/bbm/j/w;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ChannelReportsActivity;Lcom/bbm/j/w;)Lcom/bbm/j/w;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->i:Lcom/bbm/j/w;

    return-object p1
.end method

.method static synthetic c(Lcom/bbm/ui/activities/ChannelReportsActivity;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/ChannelReportsActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/ChannelReportsActivity;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->k:Z

    return v0
.end method

.method static synthetic f(Lcom/bbm/ui/activities/ChannelReportsActivity;)Lcom/bbm/ui/gk;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->f:Lcom/bbm/ui/gk;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/activities/ChannelReportsActivity;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->j:Z

    return v0
.end method

.method static synthetic h(Lcom/bbm/ui/activities/ChannelReportsActivity;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->n:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/activities/ChannelReportsActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->k:Z

    return v0
.end method

.method static synthetic j(Lcom/bbm/ui/activities/ChannelReportsActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->j:Z

    return v0
.end method

.method static synthetic k(Lcom/bbm/ui/activities/ChannelReportsActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->h:Lcom/bbm/j/w;

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->i:Lcom/bbm/j/w;

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    if-lez v0, :cond_22

    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {v1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVisibility(I)V

    return-void

    :cond_22
    const/16 v0, 0x8

    goto :goto_1e
.end method

.method static synthetic l(Lcom/bbm/ui/activities/ChannelReportsActivity;)Lcom/bbm/ui/activities/eb;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->p:Lcom/bbm/ui/activities/eb;

    return-object v0
.end method


# virtual methods
.method protected final a(ILcom/bbm/ui/activities/ea;)V
    .registers 8

    packed-switch p1, :pswitch_data_3c

    :goto_3
    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    return-void

    :pswitch_c
    iget-object v0, p2, Lcom/bbm/ui/activities/ea;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/bbm/ui/activities/ea;->a:Ljava/lang/String;

    new-instance v3, Lcom/bbm/d/ao;

    invoke-direct {v3, v1, v2}, Lcom/bbm/d/ao;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    goto :goto_3

    :cond_27
    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/bbm/ui/activities/ea;->b:Ljava/lang/String;

    iget-object v3, p2, Lcom/bbm/ui/activities/ea;->a:Ljava/lang/String;

    new-instance v4, Lcom/bbm/d/an;

    invoke-direct {v4, v1, v2, v3}, Lcom/bbm/d/an;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    goto :goto_3

    :pswitch_data_3c
    .packed-switch 0x7f0a003c
        :pswitch_c
    .end packed-switch
.end method

.method protected final e()V
    .registers 1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->onBackPressed()V

    return-void
.end method

.method public final f()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->d:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->d:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_a
    return-void
.end method

.method protected final g()V
    .registers 1

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->g()V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->f()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const v6, 0x7f0b00e0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/cn;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->a:Landroid/content/Context;

    const v0, 0x7f0a0145

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const v0, 0x7f0a0143

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->f:Lcom/bbm/ui/gk;

    if-nez v0, :cond_3b

    new-instance v0, Lcom/bbm/ui/activities/ds;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->l:Lcom/bbm/d/b/q;

    invoke-static {}, Lcom/bbm/util/bn;->a()Lcom/bbm/util/bn;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/activities/ds;-><init>(Lcom/bbm/ui/activities/ChannelReportsActivity;Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->f:Lcom/bbm/ui/gk;

    :cond_3b
    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->f:Lcom/bbm/ui/gk;

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->f:Lcom/bbm/ui/gk;

    invoke-virtual {v0, v5}, Lcom/bbm/ui/gk;->b(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setHorizontalSpacing(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVerticalSpacing(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setStickyHeaderIsTranscluent(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAreHeadersSticky(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->o:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/w;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/bbm/ui/w;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ChannelReportsActivity;->a(Lcom/bbm/ui/activities/aka;)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bbm/util/az;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/bbm/util/az;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v4}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    new-instance v1, Lcom/bbm/ui/activities/du;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/du;-><init>(Lcom/bbm/ui/activities/ChannelReportsActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onPause()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->f:Lcom/bbm/ui/gk;

    invoke-virtual {v0}, Lcom/bbm/ui/gk;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->m:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->f:Lcom/bbm/ui/gk;

    iget-object v0, v0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->m:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method

.method public final setHighlightedRow$5359dc9a(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->f()V

    iput-object p1, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChannelReportsActivity;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
