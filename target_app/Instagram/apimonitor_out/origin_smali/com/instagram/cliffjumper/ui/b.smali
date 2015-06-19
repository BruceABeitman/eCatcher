.class public final Lcom/instagram/cliffjumper/ui/b;
.super Landroid/widget/PopupWindow;
.source "NuxBubble.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v4, -0x2

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->nux_bubble_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/ui/b;->getContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/ui/b;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/b;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->nux_bubble_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/ui/b;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/instagram/cliffjumper/ui/b;->b:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/instagram/cliffjumper/ui/b;->c:I

    iget v0, p0, Lcom/instagram/cliffjumper/ui/b;->d:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/instagram/cliffjumper/ui/b;->f:I

    iget v0, p0, Lcom/instagram/cliffjumper/ui/b;->c:I

    iget v1, p0, Lcom/instagram/cliffjumper/ui/b;->f:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/instagram/cliffjumper/ui/b;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->nux_bubble_nub_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/ui/b;->e:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->nux_bubble_nub_minimum_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/ui/b;->h:I

    iget v0, p0, Lcom/instagram/cliffjumper/ui/b;->d:I

    iget v1, p0, Lcom/instagram/cliffjumper/ui/b;->e:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/instagram/cliffjumper/ui/b;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/instagram/cliffjumper/ui/b;->i:I

    invoke-virtual {p0, v3}, Lcom/instagram/cliffjumper/ui/b;->setTouchable(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .registers 10

    const/4 v6, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v1, p2

    iget v2, p0, Lcom/instagram/cliffjumper/ui/b;->d:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iget v3, p0, Lcom/instagram/cliffjumper/ui/b;->c:I

    iget v4, p0, Lcom/instagram/cliffjumper/ui/b;->d:I

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/instagram/cliffjumper/ui/b;->a:Landroid/view/View;

    iget v4, p0, Lcom/instagram/cliffjumper/ui/b;->b:I

    const/4 v5, 0x1

    aget v0, v0, v5

    sub-int v0, v4, v0

    invoke-virtual {v3, v2, v6, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    iget v0, p0, Lcom/instagram/cliffjumper/ui/b;->f:I

    if-lt v1, v0, :cond_38

    iget v0, p0, Lcom/instagram/cliffjumper/ui/b;->g:I

    if-le v1, v0, :cond_5d

    :cond_38
    iget-object v0, p0, Lcom/instagram/cliffjumper/ui/b;->a:Landroid/view/View;

    sget v3, Lcom/facebook/av;->nux_bubble_nub:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget v3, p0, Lcom/instagram/cliffjumper/ui/b;->h:I

    iget v4, p0, Lcom/instagram/cliffjumper/ui/b;->i:I

    iget v5, p0, Lcom/instagram/cliffjumper/ui/b;->e:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    sub-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_5d
    return-void
.end method
