.class Lcom/twidroid/activity/SendTweet$49$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet$49$1$1;->handleMessage(Landroid/os/Message;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/SendTweet$49$1$1;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet$49$1$1;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$49$1$1$1;->a:Lcom/twidroid/activity/SendTweet$49$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$49$1$1$1;->a:Lcom/twidroid/activity/SendTweet$49$1$1;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$49$1$1;->a:Lcom/twidroid/activity/SendTweet$49$1;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$49$1;->b:Lcom/twidroid/activity/SendTweet$49;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$49;->a:Lcom/twidroid/activity/r;

    invoke-static {v0}, Lcom/twidroid/c/f;->a(Lcom/twidroid/activity/r;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/SendTweet$49$1$1$1;->a:Lcom/twidroid/activity/SendTweet$49$1$1;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet$49$1$1;->a:Lcom/twidroid/activity/SendTweet$49$1;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet$49$1;->b:Lcom/twidroid/activity/SendTweet$49;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet$49;->b:Lcom/twidroid/activity/SendTweet;

    iget-object v2, p0, Lcom/twidroid/activity/SendTweet$49$1$1$1;->a:Lcom/twidroid/activity/SendTweet$49$1$1;

    iget-object v2, v2, Lcom/twidroid/activity/SendTweet$49$1$1;->a:Lcom/twidroid/activity/SendTweet$49$1;

    iget-object v2, v2, Lcom/twidroid/activity/SendTweet$49$1;->b:Lcom/twidroid/activity/SendTweet$49;

    iget-object v2, v2, Lcom/twidroid/activity/SendTweet$49;->b:Lcom/twidroid/activity/SendTweet;

    invoke-static {v2}, Lcom/twidroid/activity/SendTweet;->d(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/model/twitter/c;

    move-result-object v2

    iget-object v3, p0, Lcom/twidroid/activity/SendTweet$49$1$1$1;->a:Lcom/twidroid/activity/SendTweet$49$1$1;

    iget-object v3, v3, Lcom/twidroid/activity/SendTweet$49$1$1;->a:Lcom/twidroid/activity/SendTweet$49$1;

    iget-object v3, v3, Lcom/twidroid/activity/SendTweet$49$1;->b:Lcom/twidroid/activity/SendTweet$49;

    iget-object v3, v3, Lcom/twidroid/activity/SendTweet$49;->b:Lcom/twidroid/activity/SendTweet;

    iget-object v3, v3, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v3}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
