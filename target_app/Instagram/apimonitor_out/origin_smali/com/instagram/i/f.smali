.class final Lcom/instagram/i/f;
.super Lcom/instagram/feed/d/k;
.source "NewsfeedStoryUtil.java"


# instance fields
.field final synthetic a:Lcom/instagram/i/a/a/a;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instagram/i/a/a/a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/i/f;->a:Lcom/instagram/i/a/a/a;

    iput-object p2, p0, Lcom/instagram/i/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/instagram/feed/d/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/i/f;->a:Lcom/instagram/i/a/a/a;

    iget-object v1, p0, Lcom/instagram/i/f;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/i/a/a/a;->f(Ljava/lang/String;)V

    return-void
.end method
