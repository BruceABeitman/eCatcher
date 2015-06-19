.class  Lcom/twidroid/activity/SendTweet$64$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/SendTweet$64;
.method constructor <init>(Lcom/twidroid/activity/SendTweet$64;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$64$1;->a:Lcom/twidroid/activity/SendTweet$64;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64$1;->a:Lcom/twidroid/activity/SendTweet$64;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->x(Lcom/twidroid/activity/SendTweet;)V
return-void
.end method