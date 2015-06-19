.class final Lcom/instagram/android/feed/comments/a/u;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/comments/a/t;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/comments/a/t;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/u;->a:Lcom/instagram/android/feed/comments/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/u;->a:Lcom/instagram/android/feed/comments/a/t;

    iget-object v0, v0, Lcom/instagram/android/feed/comments/a/t;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/dialog/a;->b(Landroid/support/v4/app/s;)V

    return-void
.end method
