.class final Lcom/instagram/feed/e/a/a/b;
.super Ljava/lang/Object;
.source "FeedAYSFBannerRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/e/a;


# direct methods
.method constructor <init>(Lcom/instagram/feed/e/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/feed/e/a/a/b;->a:Lcom/instagram/feed/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/feed/e/a/a/b;->a:Lcom/instagram/feed/e/a;

    sget-object v1, Lcom/instagram/feed/f/d;->c:Lcom/instagram/feed/f/d;

    invoke-interface {v0, v1}, Lcom/instagram/feed/e/a;->b(Lcom/instagram/feed/f/d;)V

    return-void
.end method
