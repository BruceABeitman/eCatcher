.class public final Lcom/instagram/f/a/a/a/a;
.super Ljava/lang/Object;
.source "DirectShareCommentRemover.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;Lcom/instagram/api/j/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Lcom/instagram/feed/d/b;",
            "Lcom/instagram/api/j/a",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/instagram/f/a/a/h;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/instagram/f/a/a/h;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;Lcom/instagram/api/j/a;)V

    invoke-static {p2, v0}, Lcom/instagram/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;Lcom/instagram/api/j/c;)V

    return-void
.end method
