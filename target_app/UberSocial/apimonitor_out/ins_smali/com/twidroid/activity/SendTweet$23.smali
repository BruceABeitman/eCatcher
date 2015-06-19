.class  Lcom/twidroid/activity/SendTweet$23;
.super Landroid/os/Handler;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$23;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 6
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$23;->a:Lcom/twidroid/activity/SendTweet;
iget v1, p1, Landroid/os/Message;->what:I
iput v1, v0, Lcom/twidroid/activity/SendTweet;->aa:I
:try_start_6
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$23;->a:Lcom/twidroid/activity/SendTweet;
iget v0, v0, Lcom/twidroid/activity/SendTweet;->aa:I
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$23;->a:Lcom/twidroid/activity/SendTweet;
iget v1, v1, Lcom/twidroid/activity/SendTweet;->Y:I
if-lt v0, v1, :cond_11
:goto_10
return-void
:cond_11
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$23;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->aj:Lcom/twidroid/net/a/b/c;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$23;->a:Lcom/twidroid/activity/SendTweet;
iget v1, v1, Lcom/twidroid/activity/SendTweet;->aa:I
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/b/c;->a(I)V
:try_end_1c
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1c} :catch_1d
goto :goto_10
:catch_1d
move-exception v0
const-string v1, "com.twidroid.SendTweet"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "TwidroydClient.onCreate mProgressHandler Exception: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_10
.end method