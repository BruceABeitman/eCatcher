.class  Lcom/twidroid/activity/t$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/t;
.method constructor <init>(Lcom/twidroid/activity/t;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/t$1;->a:Lcom/twidroid/activity/t;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/t$1;->a:Lcom/twidroid/activity/t;
iget-object v0, v0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
iget-object v1, p0, Lcom/twidroid/activity/t$1;->a:Lcom/twidroid/activity/t;
iget-object v1, v1, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->s(Lcom/twidroid/activity/SendTweet;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
iput v1, v0, Lcom/twidroid/ui/widgets/MyEditText;->a:I
iget-object v0, p0, Lcom/twidroid/activity/t$1;->a:Lcom/twidroid/activity/t;
iget-object v0, v0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->a()V
return-void
.end method