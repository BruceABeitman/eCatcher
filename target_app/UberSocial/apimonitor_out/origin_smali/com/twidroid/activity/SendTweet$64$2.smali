.class Lcom/twidroid/activity/SendTweet$64$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet$64;->b(Lcom/twidroid/net/c/a;Landroid/location/Address;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/SendTweet$64;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet$64;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$64$2;->a:Lcom/twidroid/activity/SendTweet$64;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64$2;->a:Lcom/twidroid/activity/SendTweet$64;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->x(Lcom/twidroid/activity/SendTweet;)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64$2;->a:Lcom/twidroid/activity/SendTweet$64;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->y(Lcom/twidroid/activity/SendTweet;)V

    return-void
.end method
