.class public final Lcom/instagram/android/c/a/a;
.super Lcom/instagram/api/j/b;
.source "BlockStatusUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/b",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/instagram/user/c/a;


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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/common/u/e/a;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    return-void
.end method

.method private d(Lcom/instagram/api/j/j;)Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/user/follow/l;->a()Lcom/instagram/user/follow/l;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/c/a/a;->b:Lcom/instagram/user/c/a;

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-string v3, "friendship_status"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/instagram/user/follow/l;->a(Lcom/instagram/user/c/a;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/api/j/b;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/api/j/j;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/c/a/a;->b:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->E()V

    invoke-super {p0, p1}, Lcom/instagram/api/j/b;->a(Lcom/instagram/api/j/j;)V

    return-void
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .registers 4

    const-string v0, "user_id"

    iget-object v1, p0, Lcom/instagram/android/c/a/a;->b:Lcom/instagram/user/c/a;

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/instagram/user/c/a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/c/a/a;->b:Lcom/instagram/user/c/a;

    iput-object p2, p0, Lcom/instagram/android/c/a/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/instagram/android/c/a/a;->h()V

    return-void
.end method

.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/c/a/a;->d(Lcom/instagram/api/j/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final b_()Ljava/lang/String;
    .registers 5

    const-string v0, "friendships/%s/%s/"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/c/a/a;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/instagram/android/c/a/a;->b:Lcom/instagram/user/c/a;

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method
