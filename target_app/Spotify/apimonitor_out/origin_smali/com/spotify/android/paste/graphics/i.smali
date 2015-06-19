.class public final Lcom/spotify/android/paste/graphics/i;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .registers 2

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p1, p0, Lcom/spotify/android/paste/graphics/i;->a:Landroid/graphics/Typeface;

    return-void
.end method

.method private a(Landroid/text/TextPaint;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/android/paste/graphics/i;->a:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    if-eq v2, v1, :cond_19

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_19
    iput-object v0, p0, Lcom/spotify/android/paste/graphics/i;->a:Landroid/graphics/Typeface;

    :cond_1b
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_8
.end method


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/spotify/android/paste/graphics/i;->a(Landroid/text/TextPaint;)V

    return-void
.end method

.method public final updateMeasureState(Landroid/text/TextPaint;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/spotify/android/paste/graphics/i;->a(Landroid/text/TextPaint;)V

    return-void
.end method
