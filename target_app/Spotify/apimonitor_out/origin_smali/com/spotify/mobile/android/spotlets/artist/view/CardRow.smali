.class public Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/android/paste/widget/CardView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/spotify/android/paste/widget/internal/c;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->setOrientation(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->d:I

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->d:I

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->d:I

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->d:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->setPadding(IIII)V

    if-ltz p2, :cond_55

    const/4 v0, 0x1

    :goto_20
    invoke-static {v0}, Lcom/google/common/base/i;->a(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->a:Ljava/util/List;

    move v0, v1

    :goto_2b
    if-ge v0, p2, :cond_57

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-int/lit8 v3, p2, -0x1

    if-ge v0, v3, :cond_3f

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->d:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_3f
    new-instance v3, Lcom/spotify/android/paste/widget/CardView;

    invoke-direct {v3, p1}, Lcom/spotify/android/paste/widget/CardView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/spotify/android/paste/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, p3}, Lcom/spotify/android/paste/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_55
    move v0, v1

    goto :goto_20

    :cond_57
    new-instance v0, Lcom/spotify/android/paste/widget/internal/c;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/android/paste/widget/internal/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->b:Lcom/spotify/android/paste/widget/internal/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class should be used only from code"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class should be used only from code"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(II)I
    .registers 4

    div-int v1, p0, p1

    rem-int v0, p0, p1

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_7
    add-int/2addr v0, v1

    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/aq;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/aq",
            "<",
            "Lcom/spotify/android/paste/widget/CardView;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/i;->a(Ljava/util/Iterator;)Lcom/google/common/collect/aq;

    move-result-object v0

    return-object v0
.end method

.method public final a(ZZ)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1e

    if-eqz p2, :cond_1e

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->c:Z

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->c:Z

    if-nez v0, :cond_20

    :goto_d
    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->setWillNotDraw(Z)V

    if-eqz p1, :cond_22

    if-nez p2, :cond_22

    if-eqz p1, :cond_1d

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->d:I

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->d:I

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->setPadding(IIII)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    move v0, v2

    goto :goto_7

    :cond_20
    move v1, v2

    goto :goto_d

    :cond_22
    iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->d:I

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->d:I

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->d:I

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->setPadding(IIII)V

    goto :goto_1d
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->c:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->b:Lcom/spotify/android/paste/widget/internal/c;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/spotify/android/paste/widget/internal/c;->a(Landroid/graphics/Canvas;II)V

    :cond_14
    return-void
.end method
