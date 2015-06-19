.class public final Lcom/instagram/android/c/a/y;
.super Lcom/instagram/android/l/b/d;
.source "UserSearchRequest.java"


# instance fields
.field private a:Lcom/instagram/android/util/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Lcom/instagram/api/j/f",
            "<",
            "Lcom/instagram/android/l/b/e;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/android/l/b/d;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V

    new-instance v0, Lcom/instagram/android/util/g;

    invoke-direct {v0}, Lcom/instagram/android/util/g;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/c/a/y;->a:Lcom/instagram/android/util/g;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/c/a/y;->a:Lcom/instagram/android/util/g;

    invoke-virtual {v0, p1}, Lcom/instagram/android/util/g;->a(Lcom/instagram/common/a/c/b;)Lcom/instagram/common/a/c/b;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/c/a/y;->a:Lcom/instagram/android/util/g;

    invoke-virtual {v0}, Lcom/instagram/android/util/g;->a()V

    iget-object v0, p0, Lcom/instagram/android/c/a/y;->a:Lcom/instagram/android/util/g;

    invoke-virtual {v0, p1}, Lcom/instagram/android/util/g;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/instagram/android/l/b/d;->h()V

    return-void
.end method

.method protected final b_()Ljava/lang/String;
    .registers 2

    const-string v0, "users/search/"

    return-object v0
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method public final e()Lcom/instagram/android/util/g;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/c/a/y;->a:Lcom/instagram/android/util/g;

    return-object v0
.end method
