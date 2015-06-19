.class public Lco/vine/android/widget/StyledTextView;
.super Lco/vine/android/widget/TypefacesTextView;
.source "StyledTextView.java"


# instance fields
.field init:Z

.field private mListener:Lco/vine/android/widget/SpanClickListener;

.field private mOriginalText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/vine/android/widget/StyledTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/StyledTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lco/vine/android/widget/TypefacesTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/widget/StyledTextView;->init:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    invoke-super {p0, p1}, Lco/vine/android/widget/TypefacesTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setSpanClickListener(Lco/vine/android/widget/SpanClickListener;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/widget/StyledTextView;->mListener:Lco/vine/android/widget/SpanClickListener;

    return-void
.end method

.method public setStyledText(Ljava/lang/String;[Landroid/text/style/StyleSpan;)V
    .registers 5

    iput-object p1, p0, Lco/vine/android/widget/StyledTextView;->mOriginalText:Ljava/lang/String;

    const/16 v0, 0x22

    invoke-static {p2, p1, v0}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lco/vine/android/widget/StyledTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
