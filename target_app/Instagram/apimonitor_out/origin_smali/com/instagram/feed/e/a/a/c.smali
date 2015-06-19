.class final Lcom/instagram/feed/e/a/a/c;
.super Ljava/lang/Object;
.source "FeedAYSFBannerRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/common/analytics/e;

.field final synthetic b:Lcom/instagram/user/d/a;

.field final synthetic c:I

.field final synthetic d:Lcom/instagram/feed/e/a;


# direct methods
.method constructor <init>(Lcom/instagram/common/analytics/e;Lcom/instagram/user/d/a;ILcom/instagram/feed/e/a;)V
    .registers 5

    iput-object p1, p0, Lcom/instagram/feed/e/a/a/c;->a:Lcom/instagram/common/analytics/e;

    iput-object p2, p0, Lcom/instagram/feed/e/a/a/c;->b:Lcom/instagram/user/d/a;

    iput p3, p0, Lcom/instagram/feed/e/a/a/c;->c:I

    iput-object p4, p0, Lcom/instagram/feed/e/a/a/c;->d:Lcom/instagram/feed/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/feed/e/a/a/c;->a:Lcom/instagram/common/analytics/e;

    iget-object v1, p0, Lcom/instagram/feed/e/a/a/c;->b:Lcom/instagram/user/d/a;

    iget v2, p0, Lcom/instagram/feed/e/a/a/c;->c:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/user/d/b;->b(Lcom/instagram/common/analytics/e;Lcom/instagram/user/d/a;IZ)V

    iget-object v0, p0, Lcom/instagram/feed/e/a/a/c;->d:Lcom/instagram/feed/e/a;

    sget-object v1, Lcom/instagram/feed/f/d;->c:Lcom/instagram/feed/f/d;

    iget-object v2, p0, Lcom/instagram/feed/e/a/a/c;->b:Lcom/instagram/user/d/a;

    invoke-virtual {v2}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/feed/e/a;->a(Lcom/instagram/feed/f/d;Ljava/lang/String;)V

    return-void
.end method
