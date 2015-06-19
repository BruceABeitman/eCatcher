.class Lcom/glympse/android/controls/FormattedTextBuilder;
.super Ljava/lang/Object;
.source "FormattedTextBuilder.java"


# instance fields
.field private _builder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/controls/FormattedTextBuilder;->_builder:Ljava/lang/StringBuilder;

    return-void
.end method

.method static find(Ljava/lang/String;[ZLjava/lang/String;[C)Z
    .registers 15

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    if-nez p1, :cond_17

    :cond_16
    :goto_16
    return v3

    :cond_17
    move v0, v1

    :goto_18
    if-ge v0, v2, :cond_1f

    aput-boolean v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_1f
    move v0, v3

    :goto_20
    if-eqz p3, :cond_5a

    array-length v7, p3

    move v4, v1

    :goto_24
    if-ge v4, v7, :cond_5a

    aget-char v2, p3, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    move v2, v0

    move v0, v1

    :goto_3f
    invoke-virtual {v5, v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    if-ltz v10, :cond_55

    if-eqz p1, :cond_16

    move v0, v3

    :goto_48
    if-ge v0, v9, :cond_51

    add-int v2, v10, v0

    aput-boolean v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_51
    add-int v0, v10, v9

    move v2, v3

    goto :goto_3f

    :cond_55
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_24

    :cond_5a
    move v3, v0

    goto :goto_16

    :cond_5c
    move v0, v1

    goto :goto_20
.end method


# virtual methods
.method append(C)Lcom/glympse/android/controls/FormattedTextBuilder;
    .registers 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/glympse/android/controls/FormattedTextBuilder;->append(Ljava/lang/String;)Lcom/glympse/android/controls/FormattedTextBuilder;

    move-result-object v0

    return-object v0
.end method

.method append(I)Lcom/glympse/android/controls/FormattedTextBuilder;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/controls/FormattedTextBuilder;->_builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method append(Ljava/lang/String;)Lcom/glympse/android/controls/FormattedTextBuilder;
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/controls/FormattedTextBuilder;->_builder:Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "<br>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method appendHighlighted(Ljava/lang/String;[Z)Lcom/glympse/android/controls/FormattedTextBuilder;
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    array-length v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v1

    move v0, v1

    :goto_11
    if-ge v2, v3, :cond_5c

    aget-boolean v5, p2, v2

    if-eqz v5, :cond_41

    if-nez v0, :cond_41

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_29

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/glympse/android/controls/FormattedTextBuilder;->append(Ljava/lang/String;)Lcom/glympse/android/controls/FormattedTextBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_29
    const/16 v0, 0xda

    const/16 v5, 0x1d

    const/16 v6, 0x5d

    invoke-static {v0, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/glympse/android/controls/FormattedTextBuilder;->beginColor(I)Lcom/glympse/android/controls/FormattedTextBuilder;

    const/4 v0, 0x1

    :cond_37
    :goto_37
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_41
    aget-boolean v5, p2, v2

    if-nez v5, :cond_37

    if-eqz v0, :cond_37

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_57

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/glympse/android/controls/FormattedTextBuilder;->append(Ljava/lang/String;)Lcom/glympse/android/controls/FormattedTextBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_57
    invoke-virtual {p0}, Lcom/glympse/android/controls/FormattedTextBuilder;->endColor()Lcom/glympse/android/controls/FormattedTextBuilder;

    move v0, v1

    goto :goto_37

    :cond_5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_6c

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/glympse/android/controls/FormattedTextBuilder;->append(Ljava/lang/String;)Lcom/glympse/android/controls/FormattedTextBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_6c
    if-eqz v0, :cond_71

    invoke-virtual {p0}, Lcom/glympse/android/controls/FormattedTextBuilder;->endColor()Lcom/glympse/android/controls/FormattedTextBuilder;

    :cond_71
    return-object p0
.end method

.method beginBold()Lcom/glympse/android/controls/FormattedTextBuilder;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/controls/FormattedTextBuilder;->_builder:Ljava/lang/StringBuilder;

    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method beginColor(I)Lcom/glympse/android/controls/FormattedTextBuilder;
    .registers 7

    iget-object v0, p0, Lcom/glympse/android/controls/FormattedTextBuilder;->_builder:Ljava/lang/StringBuilder;

    const-string v1, "<font color=\"#%02X%02X%02X%02X\">"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method endBold()Lcom/glympse/android/controls/FormattedTextBuilder;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/controls/FormattedTextBuilder;->_builder:Ljava/lang/StringBuilder;

    const-string v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method endColor()Lcom/glympse/android/controls/FormattedTextBuilder;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/controls/FormattedTextBuilder;->_builder:Ljava/lang/StringBuilder;

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method length()I
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/controls/FormattedTextBuilder;->_builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method reset()Lcom/glympse/android/controls/FormattedTextBuilder;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/controls/FormattedTextBuilder;->_builder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object p0
.end method

.method toSpanned()Landroid/text/Spanned;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/controls/FormattedTextBuilder;->_builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/controls/FormattedTextBuilder;->_builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
