.class public Lco/vine/android/widget/TightTextView;
.super Lco/vine/android/widget/TypefacesTextView;
.source "TightTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lco/vine/android/widget/TightTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/TightTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lco/vine/android/widget/TypefacesTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 10

    invoke-super {p0, p1, p2}, Lco/vine/android/widget/TypefacesTextView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v6, 0x4000

    if-eq v3, v6, :cond_38

    invoke-virtual {p0}, Lco/vine/android/widget/TightTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v6, 0x1

    if-le v1, v6, :cond_38

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_25

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_25
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p0}, Lco/vine/android/widget/TightTextView;->getMeasuredWidth()I

    move-result v6

    if-ge v5, v6, :cond_38

    const/high16 v6, -0x8000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-super {p0, v6, p2}, Lco/vine/android/widget/TypefacesTextView;->onMeasure(II)V

    :cond_38
    return-void
.end method
