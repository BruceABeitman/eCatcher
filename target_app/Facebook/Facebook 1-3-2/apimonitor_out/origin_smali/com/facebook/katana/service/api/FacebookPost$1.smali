.class Lcom/facebook/katana/service/api/FacebookPost$1;
.super Ljava/lang/Object;
.source "FacebookPost.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/FacebookPost;
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
        "Lcom/facebook/katana/service/api/FacebookPost;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/facebook/katana/service/api/FacebookPost;Lcom/facebook/katana/service/api/FacebookPost;)I
    .registers 7

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookPost;->getCreatedTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookPost;->getCreatedTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, -0x1

    :goto_d
    return v0

    :cond_e
    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookPost;->getCreatedTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookPost;->getCreatedTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    goto :goto_d

    :cond_1c
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/facebook/katana/service/api/FacebookPost;

    check-cast p2, Lcom/facebook/katana/service/api/FacebookPost;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/service/api/FacebookPost$1;->compare(Lcom/facebook/katana/service/api/FacebookPost;Lcom/facebook/katana/service/api/FacebookPost;)I

    move-result v0

    return v0
.end method
