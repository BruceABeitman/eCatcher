.class  Lcom/twidroid/activity/SendTweet$43$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/SendTweet$43;
.method constructor <init>(Lcom/twidroid/activity/SendTweet$43;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$43$1;->a:Lcom/twidroid/activity/SendTweet$43;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$43$1;->a:Lcom/twidroid/activity/SendTweet$43;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$43;->a:Lcom/twidroid/activity/SendTweet;
const v1, 0x7f09016c
invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$43$1;->a:Lcom/twidroid/activity/SendTweet$43;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$43;->a:Lcom/twidroid/activity/SendTweet;
const v1, 0x7f09016d
invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
return-void
.end method