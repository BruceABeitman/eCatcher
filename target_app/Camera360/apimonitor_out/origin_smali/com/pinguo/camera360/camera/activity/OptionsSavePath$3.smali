.class Lcom/pinguo/camera360/camera/activity/OptionsSavePath$3;
.super Ljava/lang/Object;
.source "OptionsSavePath.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/activity/OptionsSavePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/util/HashMap;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath$3;->compare(Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v4, 0x1

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    aget-char v0, v6, v7

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    aget-char v1, v6, v7

    if-ge v1, v0, :cond_1e

    :cond_1d
    :goto_1d
    return v4

    :cond_1e
    if-ne v1, v0, :cond_57

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    aget-char v2, v6, v7

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    aget-char v3, v6, v7

    if-ge v3, v2, :cond_30

    move v4, v5

    goto :goto_1d

    :cond_30
    if-ne v3, v2, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v4, :cond_3e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v4, :cond_4a

    :cond_3e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1d

    move v4, v5

    goto :goto_1d

    :cond_4a
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath$3;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_1d

    :cond_57
    move v4, v5

    goto :goto_1d
.end method

.method public compare(Ljava/util/HashMap;Ljava/util/HashMap;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const-string/jumbo v0, "name"

    const-string/jumbo v1, "name"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/pinguo/camera360/camera/activity/OptionsSavePath$3;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method
