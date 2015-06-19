.class final Lcom/instagram/android/feed/comments/a/g;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/CharSequence;

.field final synthetic b:Lcom/instagram/feed/d/b;

.field final synthetic c:Lcom/instagram/android/feed/comments/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;[Ljava/lang/CharSequence;Lcom/instagram/feed/d/b;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/g;->c:Lcom/instagram/android/feed/comments/a/a;

    iput-object p2, p0, Lcom/instagram/android/feed/comments/a/g;->a:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/instagram/android/feed/comments/a/g;->b:Lcom/instagram/feed/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/g;->a:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/g;->c:Lcom/instagram/android/feed/comments/a/a;

    sget v2, Lcom/facebook/az;->delete_and_report_comment:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/g;->c:Lcom/instagram/android/feed/comments/a/a;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/g;->b:Lcom/instagram/feed/d/b;

    sget v2, Lcom/instagram/android/feed/comments/a/v;->a:I

    invoke-static {v0, v1, v2}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;I)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/g;->c:Lcom/instagram/android/feed/comments/a/a;

    sget v2, Lcom/facebook/az;->delete_comment:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/g;->c:Lcom/instagram/android/feed/comments/a/a;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/g;->b:Lcom/instagram/feed/d/b;

    invoke-static {v0, v1}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;)V

    goto :goto_1b

    :cond_32
    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/g;->c:Lcom/instagram/android/feed/comments/a/a;

    sget v2, Lcom/facebook/az;->report_comment:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/g;->c:Lcom/instagram/android/feed/comments/a/a;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/g;->b:Lcom/instagram/feed/d/b;

    sget v2, Lcom/instagram/android/feed/comments/a/v;->b:I

    invoke-static {v0, v1, v2}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;I)V

    goto :goto_1b

    :cond_4a
    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/g;->c:Lcom/instagram/android/feed/comments/a/a;

    sget v2, Lcom/facebook/az;->view_profile:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/g;->c:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v1}, Lcom/instagram/android/feed/comments/a/a;->p()Landroid/support/v4/app/s;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/g;->b:Lcom/instagram/feed/d/b;

    invoke-virtual {v2}, Lcom/instagram/feed/d/b;->g()Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    goto :goto_1b

    :cond_74
    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/g;->c:Lcom/instagram/android/feed/comments/a/a;

    sget v2, Lcom/facebook/az;->copy_text:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/g;->c:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/g;->b:Lcom/instagram/feed/d/b;

    invoke-virtual {v1}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/u/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/g;->c:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->copied:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1b

    :cond_a3
    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/g;->c:Lcom/instagram/android/feed/comments/a/a;

    sget v2, Lcom/facebook/az;->reply_comment:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/feed/comments/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/g;->c:Lcom/instagram/android/feed/comments/a/a;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/g;->b:Lcom/instagram/feed/d/b;

    invoke-virtual {v1}, Lcom/instagram/feed/d/b;->g()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/g;->c:Lcom/instagram/android/feed/comments/a/a;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/g;->c:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v1}, Lcom/instagram/android/feed/comments/a/a;->e(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/g;->c:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->e(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/g;->c:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v1}, Lcom/instagram/android/feed/comments/a/a;->e(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;->bringPointIntoView(I)Z

    goto/16 :goto_1b
.end method
