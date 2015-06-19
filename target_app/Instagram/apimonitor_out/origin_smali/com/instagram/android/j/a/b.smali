.class final Lcom/instagram/android/j/a/b;
.super Lcom/instagram/android/j/c;
.source "SimilarAccountsViewBinder.java"


# instance fields
.field final synthetic a:Landroid/support/v4/app/s;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/android/j/a/b;->a:Landroid/support/v4/app/s;

    iput-object p2, p0, Lcom/instagram/android/j/a/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/android/j/a/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/instagram/android/j/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/a;)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/android/j/a/b;->a:Landroid/support/v4/app/s;

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/analytics/e;

    sget-object v1, Lcom/instagram/android/j/a;->b:Lcom/instagram/android/j/a;

    iget-object v2, p0, Lcom/instagram/android/j/a/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/j/a/b;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/android/j/b;->a(Lcom/instagram/common/analytics/e;Lcom/instagram/android/j/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/instagram/user/c/a;)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/android/j/a/b;->a:Landroid/support/v4/app/s;

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/analytics/e;

    sget-object v1, Lcom/instagram/android/j/a;->c:Lcom/instagram/android/j/a;

    iget-object v2, p0, Lcom/instagram/android/j/a/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/j/a/b;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/android/j/b;->a(Lcom/instagram/common/analytics/e;Lcom/instagram/android/j/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
