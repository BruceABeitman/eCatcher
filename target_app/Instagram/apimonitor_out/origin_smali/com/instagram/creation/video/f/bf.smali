.class public abstract Lcom/instagram/creation/video/f/bf;
.super Lcom/instagram/base/a/b;
.source "VideoFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .registers 7

    sget v0, Lcom/facebook/av;->action_bar_button_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bf;->o()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v1, Lcom/instagram/a/c;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bf;->o()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/instagram/a/d;->a:Lcom/instagram/a/d;

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/a/c;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/d;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1f
    new-instance v1, Lcom/instagram/creation/video/f/bg;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/bg;-><init>(Lcom/instagram/creation/video/f/bf;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private c(Landroid/view/View;)V
    .registers 4

    sget v0, Lcom/facebook/av;->action_bar_button_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/creation/video/f/bh;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/bh;-><init>(Lcom/instagram/creation/video/f/bf;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private d(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bf;->o()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget v0, Lcom/facebook/av;->action_bar_textview_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bf;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_19
    return-void
.end method


# virtual methods
.method protected final U()Lcom/instagram/creation/b/a/b;
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/bf;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pendingMediaKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/d/a;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bf;->b(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bf;->c(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/bf;->d(Landroid/view/View;)V

    return-void
.end method

.method public abstract c()V
.end method

.method public abstract d()Ljava/lang/String;
.end method
