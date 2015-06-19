.class public Lco/vine/android/widget/TypefacesTextView;
.super Lco/vine/android/views/SdkTextView;
.source "TypefacesTextView.java"


# instance fields
.field private mWeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lco/vine/android/views/SdkTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/TypefacesTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lco/vine/android/views/SdkTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v2, Lco/vine/android/R$styleable;->VineTextView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lco/vine/android/widget/TypefacesTextView;->mWeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v2

    iget v3, p0, Lco/vine/android/widget/TypefacesTextView;->mWeight:I

    invoke-virtual {v2, v1, v3}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lco/vine/android/widget/TypefacesTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {p0}, Lco/vine/android/widget/TypefacesTextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lco/vine/android/widget/TypefacesTextView;->setPaintFlags(I)V

    return-void
.end method


# virtual methods
.method public setTypeface(Landroid/graphics/Typeface;I)V
    .registers 5

    invoke-virtual {p0}, Lco/vine/android/widget/TypefacesTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v0

    iget v1, p0, Lco/vine/android/widget/TypefacesTextView;->mWeight:I

    invoke-virtual {v0, p2, v1}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-super {p0, v0}, Lco/vine/android/views/SdkTextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setWeight(I)V
    .registers 2

    iput p1, p0, Lco/vine/android/widget/TypefacesTextView;->mWeight:I

    return-void
.end method
