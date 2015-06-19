.class public final Lcom/instagram/android/login/c/h;
.super Lcom/instagram/api/j/g;
.source "LookupRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/g",
        "<",
        "Lcom/instagram/android/login/c/i;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/instagram/android/login/c/i;


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
            "Lcom/instagram/android/login/c/i;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/common/u/e/a;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    new-instance v0, Lcom/instagram/android/login/c/i;

    invoke-direct {v0, p0}, Lcom/instagram/android/login/c/i;-><init>(Lcom/instagram/android/login/c/h;)V

    iput-object v0, p0, Lcom/instagram/android/login/c/h;->b:Lcom/instagram/android/login/c/i;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .registers 4

    const-string v0, "q"

    iget-object v1, p0, Lcom/instagram/android/login/c/h;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/c/h;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/instagram/android/login/c/h;->h()V

    return-void
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
            "Lcom/instagram/android/login/c/i;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "user"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    iget-object v1, p0, Lcom/instagram/android/login/c/h;->b:Lcom/instagram/android/login/c/i;

    invoke-static {p2}, Lcom/instagram/user/c/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/login/c/i;->a(Lcom/instagram/user/c/a;)V

    iget-object v1, p0, Lcom/instagram/android/login/c/h;->b:Lcom/instagram/android/login/c/i;

    invoke-virtual {p3, v1}, Lcom/instagram/api/j/q;->a(Ljava/lang/Object;)V

    :goto_1a
    return v0

    :cond_1b
    const-string v1, "has_valid_phone"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    iget-object v1, p0, Lcom/instagram/android/login/c/h;->b:Lcom/instagram/android/login/c/i;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/login/c/i;->a(Z)V

    goto :goto_1a

    :cond_30
    const-string v1, "can_email_reset"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    iget-object v1, p0, Lcom/instagram/android/login/c/h;->b:Lcom/instagram/android/login/c/i;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/login/c/i;->b(Z)V

    goto :goto_1a

    :cond_45
    const-string v1, "can_sms_reset"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    iget-object v1, p0, Lcom/instagram/android/login/c/h;->b:Lcom/instagram/android/login/c/i;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/login/c/i;->c(Z)V

    goto :goto_1a

    :cond_5a
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final b_()Ljava/lang/String;
    .registers 2

    const-string v0, "users/lookup/"

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
