.class public Lcom/bbm/ui/c/ey;
.super Landroid/app/Fragment;
.source "PeopleYouKnowFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field private b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

.field private final c:Lcom/bbm/i/b;

.field private d:Lcom/bbm/ui/c/fc;

.field private final e:Lcom/bbm/ui/c/fd;

.field private final f:Lcom/bbm/util/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cr",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/bbm/util/dc;

.field private final h:Landroid/widget/AdapterView$OnItemClickListener;

.field private i:Z

.field private j:Lcom/bbm/h/aq;

.field private k:Landroid/widget/ProgressBar;

.field private final l:Lcom/bbm/j/k;

.field private final m:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-static {}, Lcom/bbm/util/bn;->a()Lcom/bbm/util/bn;

    move-result-object v0

    new-instance v1, Lcom/bbm/i/b;

    invoke-static {}, Lcom/bbm/Alaska;->x()Lcom/bbm/j/r;

    move-result-object v2

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bbm/i/b;-><init>(Lcom/bbm/j/r;Lcom/bbm/d;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bbm/ui/c/ey;-><init>(Lcom/bbm/util/dc;Lcom/bbm/i/b;Lcom/bbm/h/aq;)V

    return-void
.end method

.method public constructor <init>(Lcom/bbm/util/dc;Lcom/bbm/i/b;Lcom/bbm/h/aq;)V
    .registers 7

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/bbm/ui/c/fd;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/fd;-><init>(Lcom/bbm/ui/c/ey;)V

    iput-object v0, p0, Lcom/bbm/ui/c/ey;->e:Lcom/bbm/ui/c/fd;

    new-instance v0, Lcom/bbm/util/cr;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/ui/c/ey;->f:Lcom/bbm/util/cr;

    new-instance v0, Lcom/bbm/ui/c/fe;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/fe;-><init>(Lcom/bbm/ui/c/ey;)V

    iput-object v0, p0, Lcom/bbm/ui/c/ey;->h:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/c/ey;->i:Z

    new-instance v0, Lcom/bbm/ui/c/ez;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/ez;-><init>(Lcom/bbm/ui/c/ey;)V

    iput-object v0, p0, Lcom/bbm/ui/c/ey;->m:Lcom/bbm/j/a;

    iget-object v0, p0, Lcom/bbm/ui/c/ey;->m:Lcom/bbm/j/a;

    iput-boolean v2, v0, Lcom/bbm/j/a;->c:Z

    iput-object p2, p0, Lcom/bbm/ui/c/ey;->c:Lcom/bbm/i/b;

    iput-object p1, p0, Lcom/bbm/ui/c/ey;->g:Lcom/bbm/util/dc;

    iget-object v0, p0, Lcom/bbm/ui/c/ey;->c:Lcom/bbm/i/b;

    invoke-virtual {v0}, Lcom/bbm/i/b;->b()V

    iput-object p3, p0, Lcom/bbm/ui/c/ey;->j:Lcom/bbm/h/aq;

    new-instance v0, Lcom/bbm/ui/c/fa;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/fa;-><init>(Lcom/bbm/ui/c/ey;)V

    iput-object v0, p0, Lcom/bbm/ui/c/ey;->l:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/c/ey;)Lcom/bbm/i/b;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ey;->c:Lcom/bbm/i/b;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/c/ey;)Z
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/c/ey;->c:Lcom/bbm/i/b;

    sget-object v1, Lcom/bbm/ui/c/hj;->b:Lcom/bbm/ui/c/hj;

    invoke-virtual {v0}, Lcom/bbm/i/b;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v0}, Lcom/bbm/i/b;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/gp;

    iget-object v3, v0, Lcom/bbm/ui/gp;->b:Ljava/lang/Object;

    if-ne v3, v1, :cond_16

    iget-object v0, v0, Lcom/bbm/ui/gp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method static synthetic c(Lcom/bbm/ui/c/ey;)Lcom/bbm/j/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ey;->m:Lcom/bbm/j/a;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/c/ey;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ey;->k:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/c/ey;)Lcom/bbm/util/cr;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ey;->f:Lcom/bbm/util/cr;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/c/ey;)Lcom/bbm/h/aq;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ey;->j:Lcom/bbm/h/aq;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/c/ey;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ey;->a:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/c/ey;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ey;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/c/ey;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ey;->h:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/ui/c/ey;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/c/ey;->i:Z

    return v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    const/4 v1, 0x0

    const-string v0, "onCreateView"

    const-class v2, Lcom/bbm/ui/c/ey;

    invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/ey;->j:Lcom/bbm/h/aq;

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/bbm/ui/c/ey;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/ey;->j:Lcom/bbm/h/aq;

    :cond_1a
    if-eqz p3, :cond_91

    const-string v0, "com.bbm.ui.PeopleYouKnowFragment.invitesent"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_22
    iput-boolean v0, p0, Lcom/bbm/ui/c/ey;->i:Z

    const v0, 0x7f030095

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    new-instance v0, Lcom/bbm/ui/c/fc;

    invoke-virtual {p0}, Lcom/bbm/ui/c/ey;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/c/ey;->c:Lcom/bbm/i/b;

    iget-object v4, p0, Lcom/bbm/ui/c/ey;->g:Lcom/bbm/util/dc;

    new-instance v1, Lcom/bbm/util/b/f;

    invoke-direct {v1}, Lcom/bbm/util/b/f;-><init>()V

    invoke-virtual {p0}, Lcom/bbm/ui/c/ey;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/bbm/util/b/d;->a(Lcom/bbm/util/b/f;Landroid/app/Activity;)Lcom/bbm/util/b/d;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bbm/ui/c/fc;-><init>(Lcom/bbm/ui/c/ey;Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;Lcom/bbm/util/b/d;)V

    iput-object v0, p0, Lcom/bbm/ui/c/ey;->d:Lcom/bbm/ui/c/fc;

    const v0, 0x7f0a03b9

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput-object v0, p0, Lcom/bbm/ui/c/ey;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v0, p0, Lcom/bbm/ui/c/ey;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, p0, Lcom/bbm/ui/c/ey;->d:Lcom/bbm/ui/c/fc;

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0a0286

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bbm/ui/c/ey;->k:Landroid/widget/ProgressBar;

    const v0, 0x7f0a03b8

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iget-object v1, p0, Lcom/bbm/ui/c/ey;->e:Lcom/bbm/ui/c/fd;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a02e7

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/bbm/ui/c/fb;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/fb;-><init>(Lcom/bbm/ui/c/ey;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/ey;->d:Lcom/bbm/ui/c/fc;

    invoke-virtual {v1}, Lcom/bbm/ui/c/fc;->getCount()I

    move-result v1

    iput v1, v0, Lcom/bbm/c/c;->ai:I

    return-object v6

    :cond_91
    move v0, v1

    goto :goto_22
.end method

.method public onPause()V
    .registers 3

    const-string v0, "onPause"

    const-class v1, Lcom/bbm/ui/c/ey;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/bbm/ui/c/ey;->l:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    return-void
.end method

.method public onResume()V
    .registers 3

    const-string v0, "onResume"

    const-class v1, Lcom/bbm/ui/c/ey;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/c/ey;->l:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "com.bbm.ui.PeopleYouKnowFragment.invitesent"

    iget-boolean v1, p0, Lcom/bbm/ui/c/ey;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
