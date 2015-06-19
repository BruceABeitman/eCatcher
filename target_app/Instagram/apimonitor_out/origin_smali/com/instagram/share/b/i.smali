.class public final Lcom/instagram/share/b/i;
.super Lcom/instagram/api/e/a;
.source "GraphMeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/e/a",
        "<",
        "Lcom/instagram/share/b/k;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/api/e/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/common/a/c/b;
    .registers 4

    invoke-super {p0}, Lcom/instagram/api/e/a;->a()Lcom/instagram/common/a/c/b;

    move-result-object v0

    const-string v1, "fields"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    const-string v0, "me"

    return-object v0
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method public final d()Lcom/instagram/common/a/a/p;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/common/a/a/p",
            "<",
            "Lcom/instagram/share/b/k;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/instagram/share/b/j;

    invoke-direct {v0, p0}, Lcom/instagram/share/b/j;-><init>(Lcom/instagram/share/b/i;)V

    return-object v0
.end method
