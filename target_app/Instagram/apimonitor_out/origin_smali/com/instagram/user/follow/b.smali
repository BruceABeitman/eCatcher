.class public final Lcom/instagram/user/follow/b;
.super Lcom/instagram/api/j/b;
.source "FetchFollowingStatusRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/b",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/instagram/user/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/user/c/a;)V
    .registers 7

    invoke-static {}, Lcom/instagram/common/u/e/a;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    iput-object p3, p0, Lcom/instagram/user/follow/b;->a:Lcom/instagram/user/c/a;

    iget-object v0, p0, Lcom/instagram/user/follow/b;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v0

    sget-object v1, Lcom/instagram/user/c/c;->a:Lcom/instagram/user/c/c;

    if-ne v0, v1, :cond_1f

    invoke-static {}, Lcom/instagram/user/follow/l;->a()Lcom/instagram/user/follow/l;

    iget-object v0, p0, Lcom/instagram/user/follow/b;->a:Lcom/instagram/user/c/a;

    sget-object v1, Lcom/instagram/user/c/c;->b:Lcom/instagram/user/c/c;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/user/follow/l;->a(Lcom/instagram/user/c/a;Lcom/instagram/user/c/c;I)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/api/j/j;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/user/follow/b;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v0

    sget-object v1, Lcom/instagram/user/c/c;->b:Lcom/instagram/user/c/c;

    if-ne v0, v1, :cond_12

    invoke-static {}, Lcom/instagram/user/follow/l;->a()Lcom/instagram/user/follow/l;

    iget-object v0, p0, Lcom/instagram/user/follow/b;->a:Lcom/instagram/user/c/a;

    invoke-static {v0}, Lcom/instagram/user/follow/l;->b(Lcom/instagram/user/c/a;)V

    :cond_12
    return-void
.end method

.method public final b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/user/follow/l;->a()Lcom/instagram/user/follow/l;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/user/follow/b;->a:Lcom/instagram/user/c/a;

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/instagram/user/follow/l;->a(Lcom/instagram/user/c/a;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/api/j/b;)V

    return-object p1
.end method

.method protected final b_()Ljava/lang/String;
    .registers 5

    const-string v0, "friendships/show/%s/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/user/follow/b;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

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
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
