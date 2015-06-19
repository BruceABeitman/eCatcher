.class public final Lcom/spotify/mobile/android/util/HtmlUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/text/Spannable;Lcom/spotify/mobile/android/util/bd;)V
    .registers 10

    const/4 v2, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    array-length v3, v0

    move v1, v2

    :goto_f
    if-ge v1, v3, :cond_2d

    aget-object v4, v0, v1

    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    new-instance v7, Lcom/spotify/mobile/android/util/HtmlUtil$UnderlineFreeClickableSpan;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4, p1}, Lcom/spotify/mobile/android/util/HtmlUtil$UnderlineFreeClickableSpan;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/util/bd;)V

    invoke-interface {p0, v7, v5, v6, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2d
    return-void
.end method
