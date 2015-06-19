.class public final Lcom/instagram/android/nux/f;
.super Lcom/instagram/api/j/b;
.source "FacebookLoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/b",
        "<",
        "Lcom/instagram/android/nux/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Lcom/instagram/api/j/a",
            "<",
            "Lcom/instagram/android/nux/g;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/common/u/e/a;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    iput-object p4, p0, Lcom/instagram/android/nux/f;->a:Ljava/lang/String;

    return-void
.end method

.method private static d(Lcom/instagram/api/j/j;)Lcom/instagram/android/nux/g;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/android/nux/g;",
            ">;)",
            "Lcom/instagram/android/nux/g;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/nux/g;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/android/nux/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .registers 4

    const-string v0, "fb_access_token"

    iget-object v1, p0, Lcom/instagram/android/nux/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_id"

    invoke-virtual {p0}, Lcom/instagram/android/nux/f;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/v/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lcom/instagram/android/nux/f;->d(Lcom/instagram/api/j/j;)Lcom/instagram/android/nux/g;

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

    const-string v0, "fb/fb_signup/"

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
            "Lcom/instagram/android/nux/g;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final e_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
