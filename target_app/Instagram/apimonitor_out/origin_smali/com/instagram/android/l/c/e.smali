.class final Lcom/instagram/android/l/c/e;
.super Lcom/instagram/android/l/b/d;
.source "UserListFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/l/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/l/c/a;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V
    .registers 6

    iput-object p1, p0, Lcom/instagram/android/l/c/e;->a:Lcom/instagram/android/l/c/a;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/instagram/android/l/b/d;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .registers 4

    const-string v0, "fb_access_token"

    iget-object v1, p0, Lcom/instagram/android/l/c/e;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v1}, Lcom/instagram/android/l/c/a;->q(Lcom/instagram/android/l/c/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final b_()Ljava/lang/String;
    .registers 2

    const-string v0, "fb/find/?include=extra_display_name"

    return-object v0
.end method

.method public final e_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
