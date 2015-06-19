.class public Lco/vine/android/widget/ColoredTypefacesSpan;
.super Lco/vine/android/widget/TypefacesSpan;
.source "ColoredTypefacesSpan.java"


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput p2, p0, Lco/vine/android/widget/ColoredTypefacesSpan;->mColor:I

    return-void
.end method

.method public constructor <init>(Lco/vine/android/widget/ColoredSpan;Lco/vine/android/widget/TypefacesSpan;)V
    .registers 5

    invoke-virtual {p2}, Lco/vine/android/widget/TypefacesSpan;->getFamily()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lco/vine/android/widget/TypefacesSpan;->getType()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Lco/vine/android/widget/ColoredSpan;->getColor()I

    move-result v0

    iput v0, p0, Lco/vine/android/widget/ColoredTypefacesSpan;->mColor:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput p3, p0, Lco/vine/android/widget/ColoredTypefacesSpan;->mColor:I

    return-void
.end method


# virtual methods
.method public setColor(I)V
    .registers 2

    iput p1, p0, Lco/vine/android/widget/ColoredTypefacesSpan;->mColor:I

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    iget v0, p0, Lco/vine/android/widget/ColoredTypefacesSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    invoke-super {p0, p1}, Lco/vine/android/widget/TypefacesSpan;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method
