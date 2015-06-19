.class public final Lcom/instagram/android/c/b/a;
.super Lcom/instagram/api/k/a/b;
.source "ChangePasswordRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/b",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/c/b/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/instagram/android/c/b/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/android/c/b/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/api/b/a;)V
    .registers 4

    const-string v0, "old_password"

    iget-object v1, p0, Lcom/instagram/android/c/b/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "new_password1"

    iget-object v1, p0, Lcom/instagram/android/c/b/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "new_password2"

    iget-object v1, p0, Lcom/instagram/android/c/b/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .registers 2

    const-string v0, "accounts/change_password/"

    return-object v0
.end method

.method public final e_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
