.class public Lco/vine/android/widget/TypefacesSpan;
.super Landroid/text/style/TypefaceSpan;
.source "TypefacesSpan.java"


# instance fields
.field private final newType:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .registers 3

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lco/vine/android/widget/TypefacesSpan;->newType:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lco/vine/android/widget/TypefacesSpan;->newType:Landroid/graphics/Typeface;

    return-void
.end method

.method private static applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public getType()Landroid/graphics/Typeface;
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/TypefacesSpan;->newType:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    iget-object v0, p0, Lco/vine/android/widget/TypefacesSpan;->newType:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lco/vine/android/widget/TypefacesSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    iget-object v0, p0, Lco/vine/android/widget/TypefacesSpan;->newType:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lco/vine/android/widget/TypefacesSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    return-void
.end method
