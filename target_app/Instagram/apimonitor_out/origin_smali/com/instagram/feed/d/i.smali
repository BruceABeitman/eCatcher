.class final Lcom/instagram/feed/d/i;
.super Lcom/instagram/feed/d/k;
.source "CommentRenderer.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/instagram/feed/d/b;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/instagram/feed/d/b;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/feed/d/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/instagram/feed/d/i;->b:Lcom/instagram/feed/d/b;

    invoke-direct {p0}, Lcom/instagram/feed/d/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "Media.COMMENT_HASHTAG_CLICKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Media.EXTRA_HASHTAG_NAME"

    iget-object v2, p0, Lcom/instagram/feed/d/i;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Media.EXTRA_MEDIA_ID"

    iget-object v2, p0, Lcom/instagram/feed/d/i;->b:Lcom/instagram/feed/d/b;

    invoke-virtual {v2}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    return-void
.end method
