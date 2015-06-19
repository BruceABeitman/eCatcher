.class public final Lcom/instagram/android/c/a/i;
.super Lcom/instagram/api/j/b;
.source "PeopleTagReviewRequest.java"


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
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "I",
            "Lcom/instagram/api/j/a",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/common/u/e/a;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    iput p3, p0, Lcom/instagram/android/c/a/i;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/api/j/j;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/instagram/api/j/b;->a(Lcom/instagram/api/j/j;)V

    return-void
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .registers 5

    const-string v1, "enabled"

    iget v0, p0, Lcom/instagram/android/c/a/i;->a:I

    sget v2, Lcom/instagram/android/c/a/j;->a:I

    if-ne v0, v2, :cond_e

    const-string v0, "1"

    :goto_a
    invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const-string v0, "0"

    goto :goto_a
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

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    iget v0, p0, Lcom/instagram/android/c/a/i;->a:I

    sget v2, Lcom/instagram/android/c/a/j;->a:I

    if-ne v0, v2, :cond_1b

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v1, v0}, Lcom/instagram/user/c/a;->b(Z)V

    invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/instagram/user/c/h;->b(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    const/4 v0, 0x0

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final b_()Ljava/lang/String;
    .registers 2

    const-string v0, "usertags/review_preference/"

    return-object v0
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final e_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
