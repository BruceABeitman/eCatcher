.class public final Lcom/instagram/android/login/c/n;
.super Lcom/instagram/api/j/b;
.source "ValidateAccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/instagram/android/login/a;


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
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/facebook/av;->request_id_validate_account:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    return-void
.end method

.method private d(Lcom/instagram/api/j/j;)Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "account_valid"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-direct {p0, p1}, Lcom/instagram/android/login/c/n;->e(Lcom/instagram/api/j/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/instagram/api/j/j;->a(Ljava/lang/String;)V

    :cond_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private e(Lcom/instagram/api/j/j;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "errors"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/instagram/android/login/c/n;->l()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->unknown_error_occured:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    :cond_4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method


# virtual methods
.method public final a(Lcom/instagram/android/login/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/c/n;->a:Lcom/instagram/android/login/a;

    invoke-super {p0}, Lcom/instagram/api/j/b;->h()V

    return-void
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/login/c/n;->a:Lcom/instagram/android/login/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/instagram/android/login/a;->a(Lcom/instagram/common/a/c/b;Z)Lcom/instagram/common/a/c/b;

    iget-object v0, p0, Lcom/instagram/android/login/c/n;->a:Lcom/instagram/android/login/a;

    iget-object v0, v0, Lcom/instagram/android/login/a;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1b

    const-string v0, "profile_pic"

    iget-object v1, p0, Lcom/instagram/android/login/c/n;->a:Lcom/instagram/android/login/a;

    iget-object v1, v1, Lcom/instagram/android/login/a;->h:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/instagram/android/d/o;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    const-string v2, "profile_pic"

    invoke-virtual {p1, v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;[BLjava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/login/c/n;->d(Lcom/instagram/api/j/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final b_()Ljava/lang/String;
    .registers 2

    const-string v0, "accounts/validate_create/"

    return-object v0
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final c(Lcom/instagram/api/j/j;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/instagram/g/c;->b(Lcom/instagram/api/j/j;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final e_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
