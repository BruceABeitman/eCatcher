.class  Lcom/twidroid/activity/SendTweet$34;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$34;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 6
const-string v0, "com.twidroid.SendTweet"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "facebook button changed to: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p2, :cond_20
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$34;->a:Lcom/twidroid/activity/SendTweet;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/activity/SendTweet;->b(Lcom/twidroid/activity/SendTweet;Z)V
:cond_20
return-void
.end method