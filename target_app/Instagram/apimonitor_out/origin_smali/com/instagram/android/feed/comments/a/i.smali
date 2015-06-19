.class final Lcom/instagram/android/feed/comments/a/i;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/b;

.field final synthetic b:Lcom/instagram/android/feed/comments/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/i;->b:Lcom/instagram/android/feed/comments/a/a;

    iput-object p2, p0, Lcom/instagram/android/feed/comments/a/i;->a:Lcom/instagram/feed/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/i;->b:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/i;->b:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v1}, Lcom/instagram/android/feed/comments/a/a;->y()Landroid/support/v4/app/an;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/i;->a:Lcom/instagram/feed/d/b;

    sget v3, Lcom/instagram/feed/comments/c/b;->a:I

    new-instance v4, Lcom/instagram/android/feed/comments/a/s;

    iget-object v5, p0, Lcom/instagram/android/feed/comments/a/i;->b:Lcom/instagram/android/feed/comments/a/a;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/instagram/android/feed/comments/a/s;-><init>(Lcom/instagram/android/feed/comments/a/a;B)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/feed/comments/b/a;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;ILcom/instagram/api/j/a;)V

    return-void
.end method
