.class public Lcom/instagram/android/c/a/b;
.super Lcom/instagram/api/j/g;
.source "FetchGeoMediaRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/g",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/instagram/android/h/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Lcom/instagram/api/j/a",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/h/b;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/common/u/e/a;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/c/a/b;->a:Ljava/lang/String;

    invoke-super {p0}, Lcom/instagram/api/j/g;->h()V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/instagram/api/j/q",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/h/b;",
            ">;>;)Z"
        }
    .end annotation

    const-string v0, "geo_media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_10
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_22

    invoke-static {p2}, Lcom/instagram/android/h/b;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/h/b;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_22
    invoke-virtual {p3, v0}, Lcom/instagram/api/j/q;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method protected b_()Ljava/lang/String;
    .registers 5

    const-string v0, "maps/user/%s/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/c/a/b;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method public final c(Lcom/instagram/api/j/j;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/h/b;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
