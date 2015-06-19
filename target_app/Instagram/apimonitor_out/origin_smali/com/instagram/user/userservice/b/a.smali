.class public final Lcom/instagram/user/userservice/b/a;
.super Lcom/instagram/api/k/a/c;
.source "SuggestionsUserListRequest.java"

# interfaces
.implements Lcom/instagram/api/k/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/user/userservice/c;",
        ">;",
        "Lcom/instagram/api/k/a/d",
        "<",
        "Lcom/instagram/user/userservice/b/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/userservice/b/b;
    .registers 2

    invoke-static {p0}, Lcom/instagram/user/userservice/b/e;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/userservice/b/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/e;
    .registers 3

    invoke-static {p1}, Lcom/instagram/user/userservice/b/a;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/userservice/b/b;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .registers 2

    return-void
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .registers 2

    const-string v0, "direct_share/recent_recipients/"

    return-object v0
.end method

.method public final e_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
