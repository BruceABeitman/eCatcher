.class final Lcom/instagram/android/feed/a/e;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/l;

.field final synthetic b:Lcom/instagram/android/feed/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a;Lcom/instagram/feed/d/l;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/feed/a/e;->b:Lcom/instagram/android/feed/a/a;

    iput-object p2, p0, Lcom/instagram/android/feed/a/e;->a:Lcom/instagram/feed/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/feed/a/e;->b:Lcom/instagram/android/feed/a/a;

    iget-object v1, p0, Lcom/instagram/android/feed/a/e;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    sget v1, Lcom/facebook/av;->row_feed_video_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/MediaActionsView;

    invoke-virtual {v0}, Lcom/instagram/android/widget/MediaActionsView;->a()V

    :cond_19
    return-void
.end method
