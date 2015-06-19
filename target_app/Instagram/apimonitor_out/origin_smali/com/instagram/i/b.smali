.class final Lcom/instagram/i/b;
.super Lcom/instagram/feed/d/k;
.source "NewsfeedStoryUtil.java"


# instance fields
.field final synthetic a:Lcom/instagram/i/a/a/a;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instagram/i/a/a/a;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/i/b;->a:Lcom/instagram/i/a/a/a;

    iput-object p2, p0, Lcom/instagram/i/b;->b:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/feed/d/k;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/i/b;->a:Lcom/instagram/i/a/a/a;

    iget-object v1, p0, Lcom/instagram/i/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/instagram/i/a/a/a;->a(Ljava/lang/String;)V

    return-void
.end method
