.class public final Lcom/instagram/android/maps/ui/m;
.super Landroid/widget/PopupWindow;
.source "MapMediaPopup.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/instagram/android/maps/ui/af;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/instagram/android/maps/ui/b;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/instagram/android/maps/ui/m;

.field private g:Landroid/view/View;

.field private h:Lcom/instagram/android/maps/ui/m;

.field private i:Ljava/lang/Runnable;

.field private j:Landroid/view/View;

.field private k:Lcom/instagram/android/maps/ui/ah;

.field private l:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/maps/ui/af;Ljava/util/List;Landroid/view/View;Landroid/view/View;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instagram/android/maps/ui/af;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/h/b;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/m;->c:Landroid/os/Handler;

    iput-object p1, p0, Lcom/instagram/android/maps/ui/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/android/maps/ui/m;->b:Lcom/instagram/android/maps/ui/af;

    iput-object p4, p0, Lcom/instagram/android/maps/ui/m;->g:Landroid/view/View;

    iput-object p5, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    iput-object p3, p0, Lcom/instagram/android/maps/ui/m;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/m;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-direct {p0, p3}, Lcom/instagram/android/maps/ui/m;->a(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/maps/ui/af;Ljava/util/List;Landroid/view/View;Lcom/instagram/android/maps/ui/ah;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instagram/android/maps/ui/af;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/h/b;",
            ">;",
            "Landroid/view/View;",
            "Lcom/instagram/android/maps/ui/ah;",
            ")V"
        }
    .end annotation

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/m;->c:Landroid/os/Handler;

    iput-object p1, p0, Lcom/instagram/android/maps/ui/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/android/maps/ui/m;->b:Lcom/instagram/android/maps/ui/af;

    iput-object p4, p0, Lcom/instagram/android/maps/ui/m;->g:Landroid/view/View;

    iput-object p5, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    iput-object p3, p0, Lcom/instagram/android/maps/ui/m;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/m;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-direct {p0, p3}, Lcom/instagram/android/maps/ui/m;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Z)Landroid/widget/LinearLayout;
    .registers 7

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->map_media_inner_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz p1, :cond_2a

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_2a
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/m;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/ui/m;->h:Lcom/instagram/android/maps/ui/m;

    return-object p1
.end method

.method private a(II)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/m;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_21

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/m;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->a(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_21
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->f()Lcom/instagram/android/maps/ui/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/ui/b;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/instagram/android/h/b;Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->f:Lcom/instagram/android/maps/ui/m;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->c:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/ui/p;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/p;-><init>(Lcom/instagram/android/maps/ui/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->c:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/ui/q;

    invoke-direct {v1, p0, p1, p2}, Lcom/instagram/android/maps/ui/q;-><init>(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/h/b;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    :cond_23
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->c:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/ui/t;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/t;-><init>(Lcom/instagram/android/maps/ui/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e
.end method

.method private a(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/maps/ui/m;->c(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/ui/ad;

    invoke-direct {v1, p0, p1, p2}, Lcom/instagram/android/maps/ui/ad;-><init>(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Lcom/instagram/android/h/b;Landroid/widget/LinearLayout;)V
    .registers 8

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->animated_info_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/facebook/av;->animated_info_button:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/maps/ui/w;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/maps/ui/w;-><init>(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/h/b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/maps/ui/m;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/maps/ui/m;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/h/b;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/maps/ui/m;->a(Lcom/instagram/android/h/b;Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/h/b;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    if-eqz v0, :cond_12

    invoke-super {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/as;->dialog_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_12
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/m;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->f()Lcom/instagram/android/maps/ui/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/m;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/ui/n;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/n;-><init>(Lcom/instagram/android/maps/ui/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->e()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_5b

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->a(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    invoke-direct {p0, v4}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->a(Lcom/instagram/android/h/b;Landroid/widget/LinearLayout;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    :cond_51
    :goto_51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_5a

    invoke-direct {p0, p1}, Lcom/instagram/android/maps/ui/m;->b(Ljava/util/List;)V

    :cond_5a
    return-void

    :cond_5b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_77

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    goto :goto_51

    :cond_77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_a3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    goto :goto_51

    :cond_a3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_d9

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    goto/16 :goto_51

    :cond_d9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_119

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    goto/16 :goto_51

    :cond_119
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_163

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    goto/16 :goto_51

    :cond_163
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1be

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    goto/16 :goto_51

    :cond_1be
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_224

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    goto/16 :goto_51

    :cond_224
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x9

    if-lt v0, v2, :cond_51

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_51

    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/m;->a(Z)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/maps/ui/m;->a(Ljava/util/List;Landroid/widget/LinearLayout;)V

    invoke-direct {p0, v0}, Lcom/instagram/android/maps/ui/m;->a(Landroid/view/View;)V

    goto/16 :goto_51
.end method

.method private a(Ljava/util/List;Landroid/widget/LinearLayout;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/h/b;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->animated_map_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f80

    invoke-direct {v1, v6, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/facebook/av;->animated_map_button:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/facebook/az;->show_all_x_photos:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/instagram/android/maps/ui/v;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/maps/ui/v;-><init>(Lcom/instagram/android/maps/ui/m;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private b(II)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->c:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/ui/u;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/maps/ui/u;-><init>(Lcom/instagram/android/maps/ui/m;I)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private b(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/maps/ui/m;->c(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/ui/ae;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/maps/ui/ae;-><init>(Lcom/instagram/android/maps/ui/m;Lcom/instagram/android/h/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/maps/ui/m;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->c()V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/h/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/at;->maps_full_frame_total_width_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int v2, v0, v1

    const/4 v0, 0x0

    move v1, v0

    :goto_2c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4b

    const/16 v0, 0x9

    if-ge v1, v0, :cond_4b

    invoke-static {}, Lcom/instagram/common/e/b/h;->a()Lcom/instagram/common/e/b/h;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    invoke-virtual {v0, v2}, Lcom/instagram/android/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/instagram/common/e/b/h;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2c

    :cond_4b
    return-void
.end method

.method private c(Lcom/instagram/android/h/b;Landroid/view/ViewGroup;)Lcom/instagram/android/maps/ui/IgAnimatingMapItem;
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->constrained_image_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f80

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_31

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->map_media_inner_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_31
    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/facebook/av;->constrained_image_view:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    new-instance v2, Lcom/instagram/android/maps/ui/o;

    invoke-direct {v2, p0, v1, p1}, Lcom/instagram/android/maps/ui/o;-><init>(Lcom/instagram/android/maps/ui/m;Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;Lcom/instagram/android/h/b;)V

    invoke-virtual {v1, v2}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->setOnMeasureListener(Lcom/instagram/common/ui/b/a;)V

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->invalidate()V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/af;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->b:Lcom/instagram/android/maps/ui/af;

    return-object v0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->i()V

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/ah;->g()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/ah;->g()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->a(II)V

    goto :goto_7
.end method

.method static synthetic d(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/ah;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    return-object v0
.end method

.method private d()V
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/m;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_21

    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/m;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_21
    return-void
.end method

.method static synthetic e(Lcom/instagram/android/maps/ui/m;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private e()Landroid/widget/LinearLayout;
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->map_media_centering_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private f()Lcom/instagram/android/maps/ui/b;
    .registers 5

    const/16 v3, 0x11

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    if-nez v0, :cond_72

    new-instance v0, Lcom/instagram/android/maps/ui/b;

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/maps/ui/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setOrientation(I)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    invoke-virtual {v0, v3}, Lcom/instagram/android/maps/ui/b;->setGravity(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->g()I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/ui/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/ah;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setOriginalSize(I)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/ah;->g()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setStartX(I)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/ah;->g()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setStartY(F)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    new-instance v1, Lcom/instagram/android/maps/ui/x;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/x;-><init>(Lcom/instagram/android/maps/ui/m;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setAnimationStartListener(Lcom/instagram/android/maps/ui/f;)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    new-instance v1, Lcom/instagram/android/maps/ui/y;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/y;-><init>(Lcom/instagram/android/maps/ui/m;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setReverseAnimationPreFinishListener(Lcom/instagram/android/maps/ui/e;)V

    :cond_6d
    :goto_6d
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/b;->a()V

    :cond_72
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    return-object v0

    :cond_75
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    if-eqz v0, :cond_6d

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setOriginalSize(I)V

    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/ui/b;->setStartX(I)V

    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/ui/b;->setStartY(F)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    new-instance v1, Lcom/instagram/android/maps/ui/aa;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/aa;-><init>(Lcom/instagram/android/maps/ui/m;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setAnimationStartListener(Lcom/instagram/android/maps/ui/f;)V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    new-instance v1, Lcom/instagram/android/maps/ui/ab;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/ab;-><init>(Lcom/instagram/android/maps/ui/m;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setReverseAnimationPreFinishListener(Lcom/instagram/android/maps/ui/e;)V

    goto :goto_6d
.end method

.method static synthetic f(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/b;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->d:Lcom/instagram/android/maps/ui/b;

    return-object v0
.end method

.method private g()I
    .registers 3

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->map_media_outer_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/instagram/android/maps/ui/m;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    return-object v0
.end method

.method private h()V
    .registers 3

    const/4 v0, 0x4

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/m;->b(II)V

    return-void
.end method

.method static synthetic h(Lcom/instagram/android/maps/ui/m;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->i()V

    return-void
.end method

.method static synthetic i(Lcom/instagram/android/maps/ui/m;)Landroid/content/Context;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .registers 4

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->d()V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->f:Lcom/instagram/android/maps/ui/m;

    const/4 v1, 0x0

    const/16 v2, 0x15e

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/maps/ui/m;->b(II)V

    return-void
.end method

.method private j()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/instagram/android/maps/ui/m;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/m;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->h:Lcom/instagram/android/maps/ui/m;

    return-object v0
.end method

.method static synthetic l(Lcom/instagram/android/maps/ui/m;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->h()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->h:Lcom/instagram/android/maps/ui/m;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->h:Lcom/instagram/android/maps/ui/m;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/m;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->h:Lcom/instagram/android/maps/ui/m;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/m;->a()V

    :goto_11
    return-void

    :cond_12
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->c()V

    goto :goto_11
.end method

.method public final a(Lcom/instagram/android/maps/ui/d;)V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->f()Lcom/instagram/android/maps/ui/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/ui/b;->setReverAnimationFinishListener(Lcom/instagram/android/maps/ui/d;)V

    return-void
.end method

.method public final a(Lcom/instagram/android/maps/ui/m;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/ui/m;->f:Lcom/instagram/android/maps/ui/m;

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->h:Lcom/instagram/android/maps/ui/m;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->h:Lcom/instagram/android/maps/ui/m;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/m;->dismiss()V

    :cond_9
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/m;->dismiss()V

    return-void
.end method

.method public final dismiss()V
    .registers 3

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->k:Lcom/instagram/android/maps/ui/ah;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/ah;->c()V

    :cond_c
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->i:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1f
    return-void
.end method

.method public final getContentView()Landroid/view/View;
    .registers 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->l:Landroid/widget/FrameLayout;

    if-nez v0, :cond_25

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/m;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/m;->l:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->l:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/m;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_25
    iget-object v0, p0, Lcom/instagram/android/maps/ui/m;->l:Landroid/widget/FrameLayout;

    return-object v0
.end method
