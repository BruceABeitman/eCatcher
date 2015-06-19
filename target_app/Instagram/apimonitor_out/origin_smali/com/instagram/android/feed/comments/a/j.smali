.class final Lcom/instagram/android/feed/comments/a/j;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/CharSequence;

.field final synthetic b:I

.field final synthetic c:Lcom/instagram/feed/d/b;

.field final synthetic d:Lcom/instagram/android/feed/comments/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;[Ljava/lang/CharSequence;ILcom/instagram/feed/d/b;)V
    .registers 5

    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/j;->d:Lcom/instagram/android/feed/comments/a/a;

    iput-object p2, p0, Lcom/instagram/android/feed/comments/a/j;->a:[Ljava/lang/CharSequence;

    iput p3, p0, Lcom/instagram/android/feed/comments/a/j;->b:I

    iput-object p4, p0, Lcom/instagram/android/feed/comments/a/j;->c:Lcom/instagram/feed/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/j;->a:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/j;->d:Lcom/instagram/android/feed/comments/a/a;

    sget v3, Lcom/facebook/az;->flag_comment_option_spam:I

    invoke-virtual {v2, v3}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget v1, p0, Lcom/instagram/android/feed/comments/a/j;->b:I

    sget v2, Lcom/instagram/android/feed/comments/a/v;->a:I

    if-ne v1, v2, :cond_37

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/j;->d:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v1}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/j;->d:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v2}, Lcom/instagram/android/feed/comments/a/a;->y()Landroid/support/v4/app/an;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/feed/comments/a/j;->c:Lcom/instagram/feed/d/b;

    sget v4, Lcom/instagram/feed/comments/c/b;->b:I

    new-instance v5, Lcom/instagram/android/feed/comments/a/s;

    iget-object v6, p0, Lcom/instagram/android/feed/comments/a/j;->d:Lcom/instagram/android/feed/comments/a/a;

    invoke-direct {v5, v6, v0}, Lcom/instagram/android/feed/comments/a/s;-><init>(Lcom/instagram/android/feed/comments/a/a;B)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/instagram/feed/comments/b/a;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;ILcom/instagram/api/j/a;)V

    :cond_36
    :goto_36
    return-void

    :cond_37
    new-instance v1, Lcom/instagram/feed/comments/c/d;

    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/j;->c:Lcom/instagram/feed/d/b;

    iget-object v3, p0, Lcom/instagram/android/feed/comments/a/j;->d:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v3}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/feed/comments/a/j;->d:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v4}, Lcom/instagram/android/feed/comments/a/a;->y()Landroid/support/v4/app/an;

    move-result-object v4

    new-instance v5, Lcom/instagram/android/feed/comments/a/t;

    iget-object v6, p0, Lcom/instagram/android/feed/comments/a/j;->d:Lcom/instagram/android/feed/comments/a/a;

    invoke-direct {v5, v6, v0}, Lcom/instagram/android/feed/comments/a/t;-><init>(Lcom/instagram/android/feed/comments/a/a;B)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/instagram/feed/comments/c/d;-><init>(Lcom/instagram/feed/d/b;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V

    invoke-virtual {v1}, Lcom/instagram/feed/comments/c/d;->h()V

    goto :goto_36

    :cond_55
    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/j;->d:Lcom/instagram/android/feed/comments/a/a;

    sget v3, Lcom/facebook/az;->flag_abusive_content:I

    invoke-virtual {v2, v3}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/j;->d:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v1}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/j;->c:Lcom/instagram/feed/d/b;

    iget v3, p0, Lcom/instagram/android/feed/comments/a/j;->b:I

    sget v4, Lcom/instagram/android/feed/comments/a/v;->a:I

    if-ne v3, v4, :cond_72

    const/4 v0, 0x1

    :cond_72
    invoke-static {v1, v2, v0}, Lcom/instagram/feed/comments/util/ReportCommentUtil;->a(Landroid/content/Context;Lcom/instagram/feed/d/b;Z)V

    goto :goto_36
.end method
