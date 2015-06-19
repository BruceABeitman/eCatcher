.class final Lcom/instagram/feed/d/w;
.super Lcom/instagram/feed/d/k;
.source "MediaRenderer.java"


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/l;


# direct methods
.method constructor <init>(Lcom/instagram/feed/d/l;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/feed/d/w;->a:Lcom/instagram/feed/d/l;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/feed/d/k;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "Media.NUMBER_LIKES_CLICKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Media.EXTRA_MEDIA_ID"

    iget-object v2, p0, Lcom/instagram/feed/d/w;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    return-void
.end method
