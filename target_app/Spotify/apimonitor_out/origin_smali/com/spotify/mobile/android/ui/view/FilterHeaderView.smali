.class public Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageButton;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/spotify/mobile/android/ui/view/j;

.field private d:Z

.field private e:Z

.field private f:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/PopupWindow;

.field private i:Landroid/widget/ListView;

.field private j:Lcom/spotify/mobile/android/ui/adapter/o;

.field private k:Lcom/spotify/mobile/android/ui/adapter/u;

.field private l:Lcom/spotify/mobile/android/util/au;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/drawable/Drawable;

.field private final q:Lcom/spotify/mobile/android/ui/actions/a;

.field private r:Landroid/view/View$OnTouchListener;

.field private final s:Landroid/view/View$OnClickListener;

.field private final t:Landroid/widget/AdapterView$OnItemClickListener;

.field private final u:Landroid/text/TextWatcher;

.field private final v:Landroid/view/View$OnKeyListener;

.field private final w:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->q:Lcom/spotify/mobile/android/ui/actions/a;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$1;-><init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->r:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$2;-><init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->s:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;-><init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->t:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$4;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$4;-><init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->u:Landroid/text/TextWatcher;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$5;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$5;-><init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->v:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$6;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$6;-><init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->w:Landroid/view/View$OnFocusChangeListener;

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->q:Lcom/spotify/mobile/android/ui/actions/a;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$1;-><init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->r:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$2;-><init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->s:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;-><init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->t:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$4;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$4;-><init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->u:Landroid/text/TextWatcher;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$5;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$5;-><init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->v:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$6;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$6;-><init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->w:Landroid/view/View$OnFocusChangeListener;

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->c()V

    return-void
.end method

.method private a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
    .registers 5

    new-instance v0, Lcom/spotify/android/paste/graphics/f;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(I)V

    const/high16 v1, 0x41c0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(F)V

    return-object v0
.end method

.method public static a(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/util/cw;Lcom/spotify/mobile/android/ui/view/j;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/util/cw;",
            ">;",
            "Lcom/spotify/mobile/android/util/cw;",
            "Lcom/spotify/mobile/android/ui/view/j;",
            ")",
            "Lcom/spotify/mobile/android/ui/view/FilterHeaderView;"
        }
    .end annotation

    const v0, 0x7f030084

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Ljava/lang/String;)V

    invoke-direct {v0, p2, p3}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Ljava/util/List;Lcom/spotify/mobile/android/util/cw;)V

    iput-object p4, v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->c:Lcom/spotify/mobile/android/ui/view/j;

    return-object v0
.end method

.method public static a(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/util/cw;Lcom/spotify/mobile/android/ui/view/j;Landroid/widget/ListView;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/util/cw;",
            ">;",
            "Lcom/spotify/mobile/android/util/cw;",
            "Lcom/spotify/mobile/android/ui/view/j;",
            "Landroid/widget/ListView;",
            ")",
            "Lcom/spotify/mobile/android/ui/view/FilterHeaderView;"
        }
    .end annotation

    const v0, 0x7f030084

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Ljava/lang/String;)V

    invoke-direct {v0, p2, p3}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Ljava/util/List;Lcom/spotify/mobile/android/util/cw;)V

    iput-object p4, v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->c:Lcom/spotify/mobile/android/ui/view/j;

    invoke-static {p5, v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b(Landroid/view/View;Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    instance-of v1, p5, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;

    if-nez v1, :cond_23

    :cond_1f
    invoke-virtual {p5, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    :goto_22
    return-object v0

    :cond_23
    check-cast p5, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;

    invoke-virtual {p5, v0}, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->b(Landroid/view/View;)V

    goto :goto_22
.end method

.method public static a(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/util/cw;Ljava/util/List;Lcom/spotify/mobile/android/ui/view/j;Landroid/widget/ListView;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/util/cw;",
            ">;",
            "Lcom/spotify/mobile/android/util/cw;",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/util/av;",
            ">;",
            "Lcom/spotify/mobile/android/ui/view/j;",
            "Landroid/widget/ListView;",
            ")",
            "Lcom/spotify/mobile/android/ui/view/FilterHeaderView;"
        }
    .end annotation

    const/4 v4, 0x0

    const v0, 0x7f030084

    invoke-virtual {p0, v0, p6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Ljava/lang/String;)V

    const-string v1, "We need a non-null filterOptions list"

    invoke-static {p4, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    new-instance v1, Lcom/spotify/mobile/android/util/au;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lcom/spotify/mobile/android/util/au;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->l:Lcom/spotify/mobile/android/util/au;

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->j:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v2, v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->l:Lcom/spotify/mobile/android/util/au;

    const v3, 0x7f0f0215

    invoke-virtual {v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;II)V

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->j:Lcom/spotify/mobile/android/ui/adapter/o;

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v4, v2, v4

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->d([I)V

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->i:Landroid/widget/ListView;

    iget-object v2, v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->j:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3e
    invoke-direct {v0, p2, p3}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Ljava/util/List;Lcom/spotify/mobile/android/util/cw;)V

    iput-object p5, v0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->c:Lcom/spotify/mobile/android/ui/view/j;

    invoke-static {p6, v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b(Landroid/view/View;Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_50

    instance-of v1, p6, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;

    if-nez v1, :cond_54

    :cond_50
    invoke-virtual {p6, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    :goto_53
    return-object v0

    :cond_54
    check-cast p6, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;

    invoke-virtual {p6, v0}, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->b(Landroid/view/View;)V

    goto :goto_53
.end method

.method public static a(Landroid/view/View;Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
    .registers 4

    iget-object v0, p1, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$7;

    invoke-direct {v1, v0, p1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$7;-><init>(Landroid/widget/TextView;Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static a(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->c:Lcom/spotify/mobile/android/ui/view/j;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;Lcom/spotify/mobile/android/util/cw;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/mobile/android/util/cw;)V

    return-void
.end method

.method private a(Lcom/spotify/mobile/android/util/cw;)V
    .registers 4

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cw;->e()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_8
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cw;->f()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    :cond_1e
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b:Landroid/widget/TextView;

    if-nez p1, :cond_6

    const-string p1, ""

    :cond_6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->d:Z

    return-void
.end method

.method private a(Ljava/util/List;Lcom/spotify/mobile/android/util/cw;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/util/cw;",
            ">;",
            "Lcom/spotify/mobile/android/util/cw;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "We need a non-null sortOptions list"

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4d

    move v0, v1

    :goto_e
    const-string v3, "sortOptions must contain at least one item each."

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/cw;

    invoke-virtual {p2}, Lcom/spotify/mobile/android/util/cw;->f()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/util/cw;->a(Z)Lcom/spotify/mobile/android/util/cw;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/u;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, p1, v3}, Lcom/spotify/mobile/android/ui/adapter/u;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->k:Lcom/spotify/mobile/android/ui/adapter/u;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->j:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->k:Lcom/spotify/mobile/android/ui/adapter/u;

    const v4, 0x7f0f0216

    invoke-virtual {v0, v3, v4, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;II)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->j:Lcom/spotify/mobile/android/ui/adapter/o;

    new-array v3, v1, [I

    aput v1, v3, v2

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/adapter/o;->d([I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->j:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0, p2}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/mobile/android/util/cw;)V

    return-void

    :cond_4d
    move v0, v2

    goto :goto_e
.end method

.method private a(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->e:Z

    if-eq v0, p1, :cond_11

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->e:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->c:Lcom/spotify/mobile/android/ui/view/j;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->c:Lcom/spotify/mobile/android/ui/view/j;

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->e:Z

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/view/j;->a(Z)V

    :cond_11
    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/adapter/o;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->j:Lcom/spotify/mobile/android/ui/adapter/o;

    return-object v0
.end method

.method private static b(Landroid/view/View;Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_5
    if-nez v0, :cond_1c

    if-eqz v1, :cond_1c

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1c

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    const v2, 0x7f0a02f5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_5

    :cond_1c
    const-string v1, "View with FilterHeaderView must use list_overlay layout"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_24

    :goto_23
    return-void

    :cond_24
    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Landroid/view/View;Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    goto :goto_23
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030089

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->h:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->h:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->i:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->t:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->cS:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->n:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->cU:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->o:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->cW:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->p:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->j:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->j:Lcom/spotify/mobile/android/ui/adapter/o;

    new-instance v1, Lcom/spotify/mobile/android/ui/view/i;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/spotify/mobile/android/ui/view/i;-><init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Lcom/spotify/mobile/android/ui/adapter/v;)V

    new-instance v0, Lcom/spotify/android/paste/graphics/f;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aO:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {v0, v1, v2}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->m:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->f:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/actions/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->q:Lcom/spotify/mobile/android/ui/actions/a;

    return-object v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic h(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->h:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic i(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/util/au;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->l:Lcom/spotify/mobile/android/util/au;

    return-object v0
.end method

.method static synthetic j(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/adapter/u;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->k:Lcom/spotify/mobile/android/ui/adapter/u;

    return-object v0
.end method

.method static synthetic k(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/view/j;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->c:Lcom/spotify/mobile/android/ui/view/j;

    return-object v0
.end method

.method static synthetic l(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v5, v2, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_e
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->f:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->d:Z

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->q:Lcom/spotify/mobile/android/ui/actions/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->f:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->g:Ljava/lang/String;

    if-eqz v1, :cond_34

    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aF:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    :goto_24
    invoke-static {v4, v0, v5, v5}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    :cond_2b
    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->d:Z

    return-void

    :cond_2e
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_e

    :cond_34
    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aG:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    goto :goto_24
.end method

.method static synthetic m(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0, v2}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Z)V

    return-void
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(I)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->f:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->g:Ljava/lang/String;

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    const v0, 0x7f0a02ef

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a:Landroid/widget/ImageButton;

    const v0, 0x7f0a02ee

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->u:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->v:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->w:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->d:Z

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->e:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->r:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/mobile/android/util/cw;)V

    goto :goto_a
.end method
