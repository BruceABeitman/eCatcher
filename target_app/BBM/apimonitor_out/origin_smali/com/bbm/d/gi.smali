.class public final Lcom/bbm/d/gi;
.super Ljava/lang/Object;
.source "StickerImageCriteria.java"

# interfaces
.implements Lcom/bbm/d/a/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bbm/d/a/a/d",
        "<",
        "Lcom/bbm/d/gh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/b/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/a/l",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/gi;->a:Lcom/google/b/a/l;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/bbm/d/gi;->a:Lcom/google/b/a/l;

    invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "internalStickerId"

    iget-object v2, p0, Lcom/bbm/d/gi;->a:Lcom/google/b/a/l;

    invoke-virtual {v2}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-object v0
.end method

.method public final synthetic a(Lcom/bbm/d/a/a;)Z
    .registers 4

    check-cast p1, Lcom/bbm/d/gh;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/bbm/d/gi;->a:Lcom/google/b/a/l;

    invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v0, p0, Lcom/bbm/d/gi;->a:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lcom/bbm/d/gh;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :cond_17
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/bbm/d/gi;

    iget-object v2, p0, Lcom/bbm/d/gi;->a:Lcom/google/b/a/l;

    iget-object v3, p1, Lcom/bbm/d/gi;->a:Lcom/google/b/a/l;

    invoke-virtual {v2, v3}, Lcom/google/b/a/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/gi;->a:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_9
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_c
    iget-object v0, p0, Lcom/bbm/d/gi;->a:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->hashCode()I

    move-result v0

    goto :goto_9
.end method
