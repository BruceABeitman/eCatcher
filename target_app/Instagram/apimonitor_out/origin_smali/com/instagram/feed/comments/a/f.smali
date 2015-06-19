.class final Lcom/instagram/feed/comments/a/f;
.super Ljava/lang/Object;
.source "CommentRowViewBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/feed/comments/a/e;


# direct methods
.method constructor <init>(Lcom/instagram/feed/comments/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/feed/comments/a/f;->a:Lcom/instagram/feed/comments/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/feed/comments/a/f;->a:Lcom/instagram/feed/comments/a/e;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->b:Lcom/instagram/feed/comments/a/h;

    iget-object v0, v0, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method
