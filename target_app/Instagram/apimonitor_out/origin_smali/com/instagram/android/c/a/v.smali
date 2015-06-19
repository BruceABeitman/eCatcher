.class public final Lcom/instagram/android/c/a/v;
.super Lcom/instagram/api/j/g;
.source "UserDetailRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/g",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "I",
            "Lcom/instagram/api/j/f",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    return-void
.end method

.method private a(Lcom/instagram/user/c/a;)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/instagram/android/c/a/v;->a:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/c/a/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_13
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/c/a/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/c/a/v;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/c/a/v;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/instagram/android/c/a/v;->h()V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/instagram/api/j/q",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "user"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/c/a/v;->a(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/user/c/h;->a()V

    :cond_20
    invoke-static {p2}, Lcom/instagram/user/c/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/instagram/api/j/q;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/c/a/v;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/instagram/android/c/a/v;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/instagram/android/c/a/v;->h()V

    return-void
.end method

.method protected final b_()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/android/c/a/v;->a:Ljava/lang/String;

    if-eqz v0, :cond_13

    const-string v0, "users/%s/info/"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/instagram/android/c/a/v;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/instagram/android/c/a/v;->b:Ljava/lang/String;

    if-eqz v0, :cond_24

    const-string v0, "users/%s/usernameinfo/"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/instagram/android/c/a/v;->b:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_24
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/c/a/v;->b:Ljava/lang/String;

    return-object v0
.end method
