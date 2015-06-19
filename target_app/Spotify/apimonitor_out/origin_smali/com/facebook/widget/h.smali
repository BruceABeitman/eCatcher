.class final Lcom/facebook/widget/h;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/facebook/widget/ToolTipPopup;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/facebook/widget/ToolTipPopup;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/widget/h;->a:Lcom/facebook/widget/ToolTipPopup;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/facebook/widget/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/a/f;->b:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/facebook/a/e;->f:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/widget/h;->b:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/a/e;->d:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/widget/h;->c:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/a/e;->a:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/h;->d:Landroid/view/View;

    sget v0, Lcom/facebook/a/e;->b:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/widget/h;->e:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/h;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/h;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/widget/h;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/h;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/widget/h;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/h;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/widget/h;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/h;->e:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/h;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/widget/h;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/h;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/widget/h;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
