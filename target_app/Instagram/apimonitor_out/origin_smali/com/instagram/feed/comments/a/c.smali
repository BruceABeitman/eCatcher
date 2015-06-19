.class final Lcom/instagram/feed/comments/a/c;
.super Ljava/lang/Object;
.source "CommentRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/b;

.field final synthetic b:Lcom/instagram/feed/comments/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/feed/comments/a/a;Lcom/instagram/feed/d/b;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/feed/comments/a/c;->b:Lcom/instagram/feed/comments/a/a;

    iput-object p2, p0, Lcom/instagram/feed/comments/a/c;->a:Lcom/instagram/feed/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/feed/comments/a/c;->b:Lcom/instagram/feed/comments/a/a;

    invoke-static {v0}, Lcom/instagram/feed/comments/a/a;->a(Lcom/instagram/feed/comments/a/a;)Lcom/instagram/feed/comments/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/feed/comments/a/c;->a:Lcom/instagram/feed/d/b;

    invoke-interface {v0, v1}, Lcom/instagram/feed/comments/a/g;->b(Lcom/instagram/feed/d/b;)V

    return-void
.end method
