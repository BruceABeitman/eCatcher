.class public Lcom/bbm/ui/SpanFixTextView;
.super Landroid/widget/TextView;
.source "SpanFixTextView.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/bbm/ui/SpanFixTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/SpanFixTextView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;II)Lcom/bbm/ui/fz;
    .registers 14

    const/4 v9, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p1, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    array-length v0, v3

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v3

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v6, v3

    move v1, v2

    :goto_1a
    if-ge v1, v6, :cond_53

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    invoke-static {p1, v8}, Lcom/bbm/ui/SpanFixTextView;->a(Ljava/lang/CharSequence;I)Z

    move-result v8

    if-eqz v8, :cond_32

    const-string v8, " "

    invoke-virtual {p1, v7, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-static {p1, v7}, Lcom/bbm/ui/SpanFixTextView;->a(Ljava/lang/CharSequence;I)Z

    move-result v8

    if-eqz v8, :cond_44

    const-string v8, " "

    invoke-virtual {p1, v7, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    :try_start_44
    invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/SpanFixTextView;->a(Ljava/lang/CharSequence;II)V

    new-instance v0, Lcom/bbm/ui/fz;

    const/4 v7, 0x1

    invoke-direct {v0, v7, v4, v5}, Lcom/bbm/ui/fz;-><init>(ZLjava/util/List;Ljava/util/List;)V
    :try_end_4d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_44 .. :try_end_4d} :catch_4e

    :goto_4d
    return-object v0

    :catch_4e
    move-exception v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    :cond_53
    new-instance v0, Lcom/bbm/ui/fz;

    invoke-direct {v0, v2, v9, v9}, Lcom/bbm/ui/fz;-><init>(ZLjava/util/List;Ljava/util/List;)V

    goto :goto_4d
.end method

.method private a(II)V
    .registers 4

    invoke-virtual {p0}, Lcom/bbm/ui/SpanFixTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/bbm/ui/SpanFixTextView;->a(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private a(IILandroid/text/SpannableStringBuilder;Lcom/bbm/ui/fz;)V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p4, Lcom/bbm/ui/fz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p3, v2, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :try_start_1a
    invoke-direct {p0, p3, p1, p2}, Lcom/bbm/ui/SpanFixTextView;->a(Ljava/lang/CharSequence;II)V
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_7

    :catch_1e
    move-exception v3

    const-string v3, " "

    invoke-virtual {p3, v2, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_7

    :cond_25
    iget-object v0, p4, Lcom/bbm/ui/fz;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v1

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p3, v3, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :try_start_3f
    invoke-direct {p0, p3, p1, p2}, Lcom/bbm/ui/SpanFixTextView;->a(Ljava/lang/CharSequence;II)V
    :try_end_42
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3f .. :try_end_42} :catch_44

    const/4 v0, 0x0

    goto :goto_2c

    :catch_44
    move-exception v3

    add-int/lit8 v0, v0, -0x1

    const-string v3, " "

    invoke-virtual {p3, v0, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move v0, v1

    goto :goto_2c

    :cond_4e
    if-eqz v0, :cond_56

    invoke-virtual {p0, p3}, Lcom/bbm/ui/SpanFixTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_56
    return-void
.end method

.method private a(Ljava/lang/CharSequence;II)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bbm/ui/SpanFixTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0, p2, p3}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;I)Z
    .registers 4

    if-ltz p1, :cond_a

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {p0}, Lcom/bbm/ui/SpanFixTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_25

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-direct {p0, v1, p1, p2}, Lcom/bbm/ui/SpanFixTextView;->a(Landroid/text/SpannableStringBuilder;II)Lcom/bbm/ui/fz;

    move-result-object v0

    iget-boolean v2, v0, Lcom/bbm/ui/fz;->a:Z

    if-eqz v2, :cond_21

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/bbm/ui/SpanFixTextView;->a(IILandroid/text/SpannableStringBuilder;Lcom/bbm/ui/fz;)V

    goto :goto_3

    :cond_21
    invoke-direct {p0, p1, p2}, Lcom/bbm/ui/SpanFixTextView;->a(II)V

    goto :goto_3

    :cond_25
    invoke-direct {p0, p1, p2}, Lcom/bbm/ui/SpanFixTextView;->a(II)V

    goto :goto_3
.end method
