.class public Lcom/pinguo/album/data/MediaSetUtils$NameComparator;
.super Ljava/lang/Object;
.source "MediaSetUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/MediaSetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/pinguo/album/data/MediaSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/pinguo/album/data/MediaSet;Lcom/pinguo/album/data/MediaSet;)I
    .registers 6

    invoke-virtual {p1}, Lcom/pinguo/album/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/pinguo/album/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p1}, Lcom/pinguo/album/data/MediaSet;->getPath()Lcom/pinguo/album/data/MediaPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/album/data/MediaPath;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/pinguo/album/data/MediaSet;->getPath()Lcom/pinguo/album/data/MediaPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/album/data/MediaPath;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/pinguo/album/data/MediaSet;

    check-cast p2, Lcom/pinguo/album/data/MediaSet;

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/data/MediaSetUtils$NameComparator;->compare(Lcom/pinguo/album/data/MediaSet;Lcom/pinguo/album/data/MediaSet;)I

    move-result v0

    return v0
.end method
