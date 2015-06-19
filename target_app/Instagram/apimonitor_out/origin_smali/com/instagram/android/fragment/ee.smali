.class public abstract Lcom/instagram/android/fragment/ee;
.super Lcom/instagram/base/a/b;
.source "SearchFragment.java"


# instance fields
.field protected a:Z

.field private aa:Lcom/instagram/common/c/h;

.field private ab:Lcom/instagram/android/feed/a;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ee;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/ee;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput-boolean v3, p0, Lcom/instagram/android/fragment/ee;->c:Z

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->i:Landroid/view/View;

    sget v1, Lcom/facebook/av;->row_search_for_x_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->i:Landroid/view/View;

    sget v1, Lcom/facebook/av;->row_search_for_x_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ee;->n()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->search_for_x:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private aa()Lcom/instagram/android/fragment/y;
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ee;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/y;

    return-object v0
.end method

.method private ab()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->f:Landroid/view/View;

    sget v3, Lcom/facebook/av;->view_switcher_button_right:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/fragment/ee;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->g:Landroid/widget/TextView;

    sget v3, Lcom/facebook/az;->tags:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/instagram/android/fragment/ee;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ee;->b()I

    move-result v0

    sget v4, Lcom/instagram/android/fragment/ei;->a:I

    if-ne v0, v4, :cond_6e

    move v0, v1

    :goto_20
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->g:Landroid/widget/TextView;

    new-instance v3, Lcom/instagram/android/fragment/eg;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/eg;-><init>(Lcom/instagram/android/fragment/ee;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->f:Landroid/view/View;

    sget v3, Lcom/facebook/av;->view_switcher_button_left:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/fragment/ee;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->h:Landroid/widget/TextView;

    sget v3, Lcom/facebook/az;->users:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ee;->b()I

    move-result v3

    sget v4, Lcom/instagram/android/fragment/ei;->b:I

    if-ne v3, v4, :cond_70

    :goto_4a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/fragment/eh;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/eh;-><init>(Lcom/instagram/android/fragment/ee;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->f:Landroid/view/View;

    sget v1, Lcom/facebook/av;->tab_shadow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_6d

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setClipChildren(Z)V

    :cond_6d
    return-void

    :cond_6e
    move v0, v2

    goto :goto_20

    :cond_70
    move v1, v2

    goto :goto_4a
.end method

.method static synthetic b(Lcom/instagram/android/fragment/ee;)Lcom/instagram/android/fragment/y;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/fragment/ee;->aa()Lcom/instagram/android/fragment/y;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/fragment/ee;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/fragment/ee;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->e:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public G()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->aa:Lcom/instagram/common/c/h;

    invoke-interface {v0}, Lcom/instagram/common/c/h;->c()V

    return-void
.end method

.method protected abstract U()I
.end method

.method public final V()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final W()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected final X()Lcom/instagram/android/feed/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->ab:Lcom/instagram/android/feed/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/instagram/android/feed/a;

    invoke-direct {v0}, Lcom/instagram/android/feed/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/ee;->ab:Lcom/instagram/android/feed/a;

    :cond_b
    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->ab:Lcom/instagram/android/feed/a;

    return-object v0
.end method

.method protected final Y()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->e:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method protected final Z()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/ee;->c:Z

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->i:Landroid/view/View;

    sget v1, Lcom/facebook/av;->row_search_for_x_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    const/4 v2, 0x0

    sget v0, Lcom/facebook/aw;->fragment_search:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ee;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->d:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/instagram/android/fragment/ee;->e:Landroid/widget/ListView;

    sget v0, Lcom/facebook/aw;->view_switcher_buttons:I

    iget-object v1, p0, Lcom/instagram/android/fragment/ee;->e:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ee;->f:Landroid/view/View;

    invoke-direct {p0}, Lcom/instagram/android/fragment/ee;->ab()V

    sget v0, Lcom/facebook/aw;->row_search_for_x:I

    iget-object v1, p0, Lcom/instagram/android/fragment/ee;->e:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ee;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->i:Landroid/view/View;

    sget v1, Lcom/facebook/av;->search_glyph:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ee;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->i:Landroid/view/View;

    const-string v1, "TAG_ROW_FOOTER_SEARCH"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instagram/android/fragment/ee;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instagram/android/fragment/ee;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/instagram/android/fragment/ee;->c:Z

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/ee;->a(Ljava/lang/CharSequence;)V

    :cond_6d
    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->d:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    new-instance v0, Lcom/instagram/common/c/j;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ee;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/common/c/j;->a()Lcom/instagram/common/c/g;

    move-result-object v0

    const-string v1, "BROADCAST_UPDATED_SEARCHES"

    new-instance v2, Lcom/instagram/android/fragment/ej;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/fragment/ej;-><init>(Lcom/instagram/android/fragment/ee;B)V

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/c/g;->a()Lcom/instagram/common/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ee;->aa:Lcom/instagram/common/c/h;

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->e:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ee;->c()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->aa:Lcom/instagram/common/c/h;

    invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/ee;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract a(Landroid/widget/AdapterView;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)V"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected abstract b()I
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/instagram/android/fragment/ee;->a:Z

    if-nez v0, :cond_11

    invoke-static {p1}, Lcom/instagram/common/u/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/ee;->a(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method protected abstract c()Landroid/widget/BaseAdapter;
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iput-object p1, p0, Lcom/instagram/android/fragment/ee;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ee;->d()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ee;->a(Ljava/lang/CharSequence;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    invoke-virtual {p0}, Lcom/instagram/android/fragment/ee;->Z()V

    goto :goto_1a
.end method

.method protected final c(Z)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->i:Landroid/view/View;

    sget v1, Lcom/facebook/av;->search_loading_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_f
    const/16 v0, 0x8

    goto :goto_b
.end method

.method protected abstract d()Landroid/widget/Filter;
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/instagram/android/fragment/ef;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/ef;-><init>(Lcom/instagram/android/fragment/ee;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public final l_()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ee;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/instagram/android/fragment/ee;->d:Landroid/view/View;

    iput-object v1, p0, Lcom/instagram/android/fragment/ee;->e:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/instagram/android/fragment/ee;->f:Landroid/view/View;

    iput-object v1, p0, Lcom/instagram/android/fragment/ee;->i:Landroid/view/View;

    iput-object v1, p0, Lcom/instagram/android/fragment/ee;->g:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/instagram/android/fragment/ee;->h:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/instagram/android/fragment/ee;->ab:Lcom/instagram/android/feed/a;

    return-void
.end method
