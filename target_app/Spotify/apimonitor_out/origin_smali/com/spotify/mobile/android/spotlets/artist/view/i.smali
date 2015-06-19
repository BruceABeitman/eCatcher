.class public final Lcom/spotify/mobile/android/spotlets/artist/view/i;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/graphics/drawable/Drawable;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/i;->a:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/spotify/mobile/android/spotlets/artist/view/i;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/spotify/mobile/android/spotlets/artist/view/i",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/i;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/i;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/i;->a:Landroid/view/View;

    return-object v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/i;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getOpacity()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public final setAlpha(I)V
    .registers 2

    return-void
.end method

.method public final setBounds(IIII)V
    .registers 9

    const/high16 v3, 0x4000

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/i;->a:Landroid/view/View;

    sub-int v1, p3, p1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    sub-int v2, p4, p2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/i;->a:Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
