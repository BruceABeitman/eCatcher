.class public final Lcom/spotify/mobile/android/provider/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 11

    const/4 v4, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p0, :cond_a

    move-object v0, v1

    :goto_9
    return-object v0

    :cond_a
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    move v0, v4

    :goto_13
    if-ge v3, v6, :cond_69

    aget-object v2, v5, v3

    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v7, v2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_60

    aget-object v7, v2, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v8, "?"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    if-nez p1, :cond_46

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selectionArgs cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    array-length v2, p1

    if-lt v0, v2, :cond_51

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too few values in selectionArgs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    :cond_59
    :try_start_59
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_60
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_60} :catch_64

    :cond_60
    :goto_60
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_13

    :catch_64
    move-exception v8

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    :cond_69
    move-object v0, v1

    goto :goto_9
.end method
