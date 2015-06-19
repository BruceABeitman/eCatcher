.class public final Lcom/instagram/user/d/a;
.super Ljava/lang/Object;
.source "RecommendedUser.java"


# static fields
.field private static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/instagram/user/c/a;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/instagram/user/d/a;->f:Ljava/util/HashMap;

    const-string v1, "frequency_algorithm"

    sget v2, Lcom/facebook/au;->people_context_likes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/instagram/user/d/a;->f:Ljava/util/HashMap;

    const-string v1, "mutual_friends_algorithm"

    sget v2, Lcom/facebook/au;->people_context_follows:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/instagram/user/d/a;->f:Ljava/util/HashMap;

    const-string v1, "chaining_algorithm"

    sget v2, Lcom/facebook/au;->people_context_follows:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/instagram/user/d/a;->f:Ljava/util/HashMap;

    const-string v1, "curated_algorithm"

    sget v2, Lcom/facebook/au;->people_context_suggested:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/instagram/user/d/a;->f:Ljava/util/HashMap;

    const-string v1, "facebook_friends_algorithm"

    sget v2, Lcom/facebook/au;->people_context_fb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/instagram/user/d/a;->f:Ljava/util/HashMap;

    const-string v1, "pages_algorithm"

    sget v2, Lcom/facebook/au;->people_context_fb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/instagram/user/d/a;->f:Ljava/util/HashMap;

    const-string v1, "popular_content_accounts_algorithm"

    sget v2, Lcom/facebook/au;->people_context_likes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/instagram/user/d/a;->f:Ljava/util/HashMap;

    const-string v1, "follow_graph_algorithm"

    sget v2, Lcom/facebook/au;->people_context_follow:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/instagram/user/d/a;->f:Ljava/util/HashMap;

    const-string v1, "followers_algorithm"

    sget v2, Lcom/facebook/au;->people_context_follow:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/instagram/user/d/a;->f:Ljava/util/HashMap;

    const-string v1, "super_users_algorithm"

    sget v2, Lcom/facebook/au;->people_context_location:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/instagram/user/d/a;->f:Ljava/util/HashMap;

    const-string v1, "contact_importer_algorithm"

    sget v2, Lcom/facebook/au;->people_context_ci:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/d/a;
    .registers 2

    invoke-static {p0}, Lcom/instagram/user/d/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/d/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/instagram/user/c/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/user/d/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/user/d/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/user/d/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/user/d/a;->e:Ljava/lang/String;

    return-object v0
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
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/instagram/user/d/a;

    iget-object v2, p0, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;

    iget-object v3, p1, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v2, v3}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_23
    move v0, v1

    goto :goto_4

    :cond_25
    iget-object v2, p1, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;

    if-eqz v2, :cond_4

    goto :goto_23
.end method

.method public final f()I
    .registers 3

    sget-object v0, Lcom/instagram/user/d/a;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/instagram/user/d/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/instagram/user/d/a;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/instagram/user/d/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_18
    return v0

    :cond_19
    sget v0, Lcom/facebook/au;->people_context_suggested:I

    goto :goto_18
.end method

.method final g()Lcom/instagram/user/d/a;
    .registers 3

    iget-object v0, p0, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;

    sget-object v1, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/c;)V

    iget-object v0, p0, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;

    sget-object v1, Lcom/instagram/user/c/e;->b:Lcom/instagram/user/c/e;

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/e;)V

    return-object p0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/instagram/user/d/a;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
