.class public final Lcom/instagram/android/login/c/a;
.super Lcom/instagram/api/j/g;
.source "CheckUsernameRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/g",
        "<",
        "Lcom/instagram/android/h/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


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
            "Lcom/instagram/android/h/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    return-void
.end method

.method private static b(Lcom/instagram/api/j/q;)Lcom/instagram/android/h/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/q",
            "<",
            "Lcom/instagram/android/h/a;",
            ">;)",
            "Lcom/instagram/android/h/a;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/instagram/api/j/q;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/a;

    if-nez v0, :cond_10

    new-instance v0, Lcom/instagram/android/h/a;

    invoke-direct {v0}, Lcom/instagram/android/h/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/instagram/api/j/q;->a(Ljava/lang/Object;)V

    :cond_10
    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .registers 4

    const-string v0, "username"

    iget-object v1, p0, Lcom/instagram/android/login/c/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/login/c/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iput-object p1, p0, Lcom/instagram/android/login/c/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/instagram/android/login/c/a;->h()V

    goto :goto_8
.end method

.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/instagram/api/j/q",
            "<",
            "Lcom/instagram/android/h/a;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "username"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {p3}, Lcom/instagram/android/login/c/a;->b(Lcom/instagram/api/j/q;)Lcom/instagram/android/h/a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/h/a;->a(Ljava/lang/String;)V

    :goto_17
    return v0

    :cond_18
    const-string v1, "available"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {p3}, Lcom/instagram/android/login/c/a;->b(Lcom/instagram/api/j/q;)Lcom/instagram/android/h/a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/h/a;->a(Z)V

    goto :goto_17

    :cond_2f
    const-string v1, "error"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-static {p3}, Lcom/instagram/android/login/c/a;->b(Lcom/instagram/api/j/q;)Lcom/instagram/android/h/a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/h/a;->b(Ljava/lang/String;)V

    goto :goto_17

    :cond_46
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final b_()Ljava/lang/String;
    .registers 2

    const-string v0, "users/check_username/"

    return-object v0
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/login/c/a;->a:Ljava/lang/String;

    return-object v0
.end method
