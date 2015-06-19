.class public Lcom/instagram/creation/video/ui/ClipStackView;
.super Landroid/widget/LinearLayout;
.source "ClipStackView.java"

# interfaces
.implements Lcom/instagram/creation/video/c;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private a:Lcom/instagram/creation/video/i/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/creation/video/ui/ClipStackView;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/i/a;

    new-instance v2, Lcom/instagram/creation/video/ui/b;

    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/ClipStackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/instagram/creation/video/ui/b;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/i/a;)V

    invoke-virtual {p0, v2}, Lcom/instagram/creation/video/ui/ClipStackView;->addView(Landroid/view/View;)V

    goto :goto_6

    :cond_1f
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/ClipStackView;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_1b

    invoke-virtual {p0, v2}, Lcom/instagram/creation/video/ui/ClipStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/b;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/b;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/creation/video/i/a;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/i/a;->b(Lcom/instagram/creation/video/i/b;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_1b
    return-void
.end method

.method public final a(I)V
    .registers 2

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/i/a;)V
    .registers 4

    new-instance v0, Lcom/instagram/creation/video/ui/b;

    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/ClipStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/instagram/creation/video/ui/b;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/i/a;)V

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/ClipStackView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final b(Lcom/instagram/creation/video/i/a;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/instagram/creation/video/ui/ClipStackView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/ui/b;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/video/i/a;->b(Lcom/instagram/creation/video/i/b;)V

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/ClipStackView;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final c()V
    .registers 1

    return-void
.end method

.method public final c(Lcom/instagram/creation/video/i/a;)V
    .registers 2

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    const/high16 v2, -0x8000

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/ClipStackView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/ClipStackView;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v0, 0x0

    :goto_16
    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/ClipStackView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_26

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/ClipStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_26
    return-void
.end method

.method public setClipStack(Lcom/instagram/creation/video/i/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/ui/ClipStackView;->a:Lcom/instagram/creation/video/i/d;

    invoke-direct {p0}, Lcom/instagram/creation/video/ui/ClipStackView;->b()V

    return-void
.end method
