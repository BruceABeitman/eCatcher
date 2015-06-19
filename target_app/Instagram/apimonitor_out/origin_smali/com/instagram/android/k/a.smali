.class public final Lcom/instagram/android/k/a;
.super Ljava/lang/Object;
.source "ContentAdvisoryUtil.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/instagram/android/k/a;->a:Ljava/util/Map;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/instagram/android/k/a;->a(Landroid/content/Context;)V

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/k/a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/k/b;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instagram/android/k/a;->a(Landroid/content/res/Resources;Lcom/instagram/android/k/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/res/Resources;Lcom/instagram/android/k/b;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    iget v0, p1, Lcom/instagram/android/k/b;->d:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget v0, p1, Lcom/instagram/android/k/b;->e:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    move v0, v1

    :goto_18
    if-ge v0, v5, :cond_27

    aget-object v6, v2, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_27
    aget-object v0, v2, v5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_39
    return-object v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method private static a(Landroid/content/Context;)V
    .registers 11

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/instagram/android/k/a;->a:Ljava/util/Map;

    invoke-static {}, Lcom/instagram/android/k/b;->values()[Lcom/instagram/android/k/b;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_e
    if-ge v2, v4, :cond_2e

    aget-object v5, v3, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v6, v5, Lcom/instagram/android/k/b;->f:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_1e
    if-ge v0, v7, :cond_2a

    aget-object v8, v6, v0

    sget-object v9, Lcom/instagram/android/k/a;->a:Ljava/util/Map;

    invoke-interface {v9, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    :cond_2e
    return-void
.end method
