.class public final Lcom/instagram/android/util/d;
.super Ljava/lang/Object;
.source "NumberUtil.java"


# direct methods
.method public static a(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x0

    const/4 v2, 0x1

    if-gtz p1, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    if-ne p1, v2, :cond_18

    sget v0, Lcom/facebook/az;->posts_singular:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_18
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    invoke-virtual {v0, v5}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    sget v1, Lcom/facebook/az;->posts_plural:I

    new-array v2, v2, [Ljava/lang/Object;

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
