.class final Lcom/instagram/android/l/c/r;
.super Lcom/instagram/android/l/b/d;
.source "UserListFragment.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/instagram/android/l/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/l/c/a;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/instagram/android/l/c/r;->b:Lcom/instagram/android/l/c/a;

    iput-object p5, p0, Lcom/instagram/android/l/c/r;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/instagram/android/l/b/d;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/instagram/android/l/b/d;->a(Lcom/instagram/common/a/c/b;)V

    iget-object v0, p0, Lcom/instagram/android/l/c/r;->b:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->j(Lcom/instagram/android/l/c/a;)Lcom/instagram/android/l/c/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/c/v;->j()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    const-string v0, "max_id"

    iget-object v1, p0, Lcom/instagram/android/l/c/r;->b:Lcom/instagram/android/l/c/a;

    invoke-static {v1}, Lcom/instagram/android/l/c/a;->j(Lcom/instagram/android/l/c/a;)Lcom/instagram/android/l/c/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/l/c/v;->j()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method protected final b_()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/c/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method
