.class public final Lcom/instagram/android/c/b/b;
.super Lcom/instagram/api/e/a;
.source "FacebookAccountsGraphRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/e/a",
        "<",
        "Lcom/instagram/android/c/b/e;",
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

    const-string v1, "type"

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    const-string v0, "me/accounts/"

    return-object v0
.end method

.method public final d()Lcom/instagram/common/a/a/p;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/common/a/a/p",
            "<",
            "Lcom/instagram/android/c/b/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/instagram/android/c/b/c;

    invoke-direct {v0, p0}, Lcom/instagram/android/c/b/c;-><init>(Lcom/instagram/android/c/b/b;)V

    return-object v0
.end method
