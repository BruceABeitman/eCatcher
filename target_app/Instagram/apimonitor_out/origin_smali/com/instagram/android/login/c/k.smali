.class public final Lcom/instagram/android/login/c/k;
.super Lcom/instagram/api/j/b;
.source "ResetRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/b",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


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
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/facebook/av;->request_id_login:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    return-void
.end method

.method private static d(Lcom/instagram/api/j/j;)Lcom/instagram/user/c/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)",
            "Lcom/instagram/user/c/a;"
        }
    .end annotation

    const-string v0, "logged_in_user"

    const-class v1, Lcom/instagram/user/c/a;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/api/j/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .registers 4

    const-string v0, "user_id"

    iget-object v1, p0, Lcom/instagram/android/login/c/k;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "new_password1"

    iget-object v1, p0, Lcom/instagram/android/login/c/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "new_password2"

    iget-object v1, p0, Lcom/instagram/android/login/c/k;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "token"

    iget-object v1, p0, Lcom/instagram/android/login/c/k;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_id"

    invoke-virtual {p0}, Lcom/instagram/android/login/c/k;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/v/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "guid"

    invoke-virtual {p0}, Lcom/instagram/android/login/c/k;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/v/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/instagram/android/login/c/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/instagram/android/login/c/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/android/login/c/k;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/instagram/android/login/c/k;->f:Ljava/lang/String;

    invoke-super {p0}, Lcom/instagram/api/j/b;->h()V

    return-void
.end method

.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lcom/instagram/android/login/c/k;->d(Lcom/instagram/api/j/j;)Lcom/instagram/user/c/a;

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

    const-string v0, "accounts/change_password/"

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
            "Lcom/instagram/user/c/a;",
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
