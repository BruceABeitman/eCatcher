.class  Lcom/twidroid/activity/SendTweet$50;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Handler$Callback;
.field final synthetic a:Landroid/widget/ImageView;
.field final synthetic b:Lcom/twidroid/activity/r;
.field final synthetic c:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;Landroid/widget/ImageView;Lcom/twidroid/activity/r;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$50;->c:Lcom/twidroid/activity/SendTweet;
iput-object p2, p0, Lcom/twidroid/activity/SendTweet$50;->a:Landroid/widget/ImageView;
iput-object p3, p0, Lcom/twidroid/activity/SendTweet$50;->b:Lcom/twidroid/activity/r;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)Z
.registers 7
const/4 v4, 0x1
iget v0, p1, Landroid/os/Message;->arg2:I
if-ne v0, v4, :cond_d
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$50;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$50;->a:Landroid/widget/ImageView;
invoke-static {v0, v1}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Landroid/view/View;)V
:goto_c
return v4
:cond_d
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$50;->b:Lcom/twidroid/activity/r;
invoke-static {v0}, Lcom/twidroid/c/f;->a(Lcom/twidroid/activity/r;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$50;->b:Lcom/twidroid/activity/r;
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/twidroid/activity/r;->a(Lcom/twidroid/activity/r;Z)Z
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$50;->c:Lcom/twidroid/activity/SendTweet;
iget-object v2, p0, Lcom/twidroid/activity/SendTweet$50;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v2}, Lcom/twidroid/activity/SendTweet;->d(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/model/twitter/c;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/activity/SendTweet$50;->c:Lcom/twidroid/activity/SendTweet;
iget-object v3, v3, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v3}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v0, v3, v4}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/lang/String;Z)V
goto :goto_c
.end method