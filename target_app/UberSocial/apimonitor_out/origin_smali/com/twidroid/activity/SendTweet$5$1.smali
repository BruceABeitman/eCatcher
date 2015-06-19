.class Lcom/twidroid/activity/SendTweet$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet$5;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/SendTweet$5;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet$5;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$5$1;->a:Lcom/twidroid/activity/SendTweet$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$5$1;->a:Lcom/twidroid/activity/SendTweet$5;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$5;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->k(Lcom/twidroid/activity/SendTweet;)V

    return-void
.end method
