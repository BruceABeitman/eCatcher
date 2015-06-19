.class  Lcom/twidroid/activity/SendTweet$64;
.super Lcom/twidroid/net/c/c;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Lcom/twidroid/net/c/c;-><init>()V
return-void
.end method
.method public a(Lcom/twidroid/net/c/a;Landroid/location/Address;)V
.registers 6
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;
invoke-virtual {p2}, Landroid/location/Address;->getLongitude()D
move-result-wide v1
iput-wide v1, v0, Lcom/twidroid/activity/SendTweet;->S:D
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;
invoke-virtual {p2}, Landroid/location/Address;->getLatitude()D
move-result-wide v1
iput-wide v1, v0, Lcom/twidroid/activity/SendTweet;->T:D
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;
const-wide/16 v1, 0x0
iput-wide v1, v0, Lcom/twidroid/activity/SendTweet;->ac:J
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/twidroid/activity/SendTweet;->Q:Z
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/activity/SendTweet$64$1;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$64$1;-><init>(Lcom/twidroid/activity/SendTweet$64;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public a(Lcom/twidroid/net/c/a;Ljava/lang/CharSequence;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/activity/SendTweet$64$3;
invoke-direct {v1, p0, p2}, Lcom/twidroid/activity/SendTweet$64$3;-><init>(Lcom/twidroid/activity/SendTweet$64;Ljava/lang/CharSequence;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public b(Lcom/twidroid/net/c/a;Landroid/location/Address;)V
.registers 6
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;
invoke-virtual {p2}, Landroid/location/Address;->getLongitude()D
move-result-wide v1
iput-wide v1, v0, Lcom/twidroid/activity/SendTweet;->S:D
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;
invoke-virtual {p2}, Landroid/location/Address;->getLatitude()D
move-result-wide v1
iput-wide v1, v0, Lcom/twidroid/activity/SendTweet;->T:D
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;
const-wide/16 v1, 0x0
iput-wide v1, v0, Lcom/twidroid/activity/SendTweet;->ac:J
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/twidroid/activity/SendTweet;->Q:Z
const-string v0, "com.twidroid.SendTweet"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "::onLocationFix "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Landroid/location/Address;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/activity/SendTweet$64$2;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$64$2;-><init>(Lcom/twidroid/activity/SendTweet$64;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method