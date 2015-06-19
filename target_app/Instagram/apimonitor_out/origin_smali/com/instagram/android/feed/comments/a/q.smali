.class final Lcom/instagram/android/feed/comments/a/q;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/q;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/q;->a:Lcom/instagram/android/feed/comments/a/a;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/q;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v1}, Lcom/instagram/android/feed/comments/a/a;->e(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;Landroid/widget/TextView;)V

    return-void
.end method
