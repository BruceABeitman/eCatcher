.class public abstract Lcom/instagram/android/l/b/d;
.super Lcom/instagram/api/j/g;
.source "UserListRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/g",
        "<",
        "Lcom/instagram/android/l/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "I",
            "Lcom/instagram/api/j/f",
            "<",
            "Lcom/instagram/android/l/b/e;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    return-void
.end method

.method private static b(Lcom/instagram/api/j/q;)Lcom/instagram/android/l/b/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/q",
            "<",
            "Lcom/instagram/android/l/b/e;",
            ">;)",
            "Lcom/instagram/android/l/b/e;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/instagram/api/j/q;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/l/b/e;

    if-nez v0, :cond_10

    new-instance v0, Lcom/instagram/android/l/b/e;

    invoke-direct {v0}, Lcom/instagram/android/l/b/e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/instagram/api/j/q;->a(Ljava/lang/Object;)V

    :cond_10
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/instagram/common/a/c/b;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/l/b/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v0, "query"

    iget-object v1, p0, Lcom/instagram/android/l/b/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/l/b/d;->a:Ljava/lang/String;

    invoke-super {p0}, Lcom/instagram/api/j/g;->h()V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/instagram/api/j/q",
            "<",
            "Lcom/instagram/android/l/b/e;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "users"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_11
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_23

    invoke-static {p2}, Lcom/instagram/user/c/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_23
    invoke-static {p3}, Lcom/instagram/android/l/b/d;->b(Lcom/instagram/api/j/q;)Lcom/instagram/android/l/b/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/instagram/android/l/b/e;->a(Ljava/util/List;)V

    :goto_2a
    return v0

    :cond_2b
    const-string v1, "next_max_id"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-static {p3}, Lcom/instagram/android/l/b/d;->b(Lcom/instagram/api/j/q;)Lcom/instagram/android/l/b/e;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/l/b/e;->a(J)V

    goto :goto_2a

    :cond_42
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method
