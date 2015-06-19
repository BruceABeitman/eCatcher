.class public final Lcom/instagram/android/feed/comments/b/a;
.super Ljava/lang/Object;
.source "CommentPoster.java"


# direct methods
.method private static a(Lcom/instagram/feed/d/b;Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/api/j/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/feed/d/b;",
            "Lcom/instagram/android/feed/comments/a/a;",
            ")",
            "Lcom/instagram/api/j/a",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/instagram/android/feed/comments/b/b;

    invoke-direct {v0, p1, p0}, Lcom/instagram/android/feed/comments/b/b;-><init>(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/app/an;Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/user/c/a;)V
    .registers 11

    invoke-static {p2}, Lcom/instagram/h/a/a;->b(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/instagram/feed/d/l;->ao()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    new-instance v2, Lcom/instagram/feed/d/b;

    invoke-direct {v2}, Lcom/instagram/feed/d/b;-><init>()V

    invoke-virtual {v2, p2}, Lcom/instagram/feed/d/b;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/l;)V

    invoke-virtual {v2, p4}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/user/c/a;)V

    invoke-virtual {v2, v0, v1}, Lcom/instagram/feed/d/b;->a(J)V

    sget-object v0, Lcom/instagram/feed/d/c;->c:Lcom/instagram/feed/d/c;

    invoke-virtual {v2, v0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/c;)V

    invoke-static {v2, p0, p1}, Lcom/instagram/android/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;Landroid/content/Context;Landroid/support/v4/app/an;)V

    return-void
.end method

.method private static a(Lcom/instagram/feed/d/b;Landroid/content/Context;Landroid/support/v4/app/an;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/feed/d/b;",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/l;->b(Lcom/instagram/feed/d/b;)V

    new-instance v0, Lcom/instagram/f/a/a/r;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/instagram/f/a/a/r;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;Lcom/instagram/api/j/a;)V

    invoke-virtual {v0}, Lcom/instagram/f/a/a/r;->h()V

    return-void
.end method

.method private static a(Lcom/instagram/feed/d/b;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/feed/d/b;",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Lcom/instagram/api/j/a",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/l;->b(Lcom/instagram/feed/d/b;)V

    new-instance v0, Lcom/instagram/android/feed/comments/c/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/instagram/android/feed/comments/c/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V

    invoke-virtual {v0, p0}, Lcom/instagram/android/feed/comments/c/a;->a(Lcom/instagram/feed/d/b;)V

    return-void
.end method

.method public static a(Lcom/instagram/feed/d/b;Landroid/support/v4/app/Fragment;)V
    .registers 5

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->y()Landroid/support/v4/app/an;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/instagram/android/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/user/c/a;Lcom/instagram/android/feed/comments/a/a;)V
    .registers 10

    invoke-static {p0}, Lcom/instagram/h/a/a;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ao()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    new-instance v2, Lcom/instagram/feed/d/b;

    invoke-direct {v2}, Lcom/instagram/feed/d/b;-><init>()V

    invoke-virtual {v2, p0}, Lcom/instagram/feed/d/b;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/l;)V

    invoke-virtual {v2, p2}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/user/c/a;)V

    invoke-virtual {v2, v0, v1}, Lcom/instagram/feed/d/b;->a(J)V

    sget-object v0, Lcom/instagram/feed/d/c;->c:Lcom/instagram/feed/d/c;

    invoke-virtual {v2, v0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/c;)V

    invoke-virtual {p3}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3}, Lcom/instagram/android/feed/comments/a/a;->y()Landroid/support/v4/app/an;

    move-result-object v1

    invoke-static {v2, p3}, Lcom/instagram/android/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/api/j/a;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/instagram/android/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V

    const-string v0, "comment"

    invoke-static {v0, p1, p3}, Lcom/instagram/feed/c/e;->b(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    return-void
.end method

.method public static b(Lcom/instagram/feed/d/b;Landroid/support/v4/app/Fragment;)V
    .registers 4

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->y()Landroid/support/v4/app/an;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/instagram/android/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;Landroid/content/Context;Landroid/support/v4/app/an;)V

    return-void
.end method
