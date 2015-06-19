.class  Lcom/twidroid/activity/SendTweet$61;
.super Lcom/twidroid/net/c/o;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$61;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Lcom/twidroid/net/c/o;-><init>()V
return-void
.end method
.method public a(Lcom/twidroid/net/c/n;)V
.registers 6
const/4 v3, 0x1
if-eqz p1, :cond_11
iget-object v0, p1, Lcom/twidroid/net/c/n;->d:Ljava/lang/String;
if-eqz v0, :cond_11
iget-object v0, p1, Lcom/twidroid/net/c/n;->d:Ljava/lang/String;
const-string v1, "0"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1d
:cond_11
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$61;->a:Lcom/twidroid/activity/SendTweet;
const-string v1, "Can not shrink Tweet."
invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:goto_1c
return-void
:cond_1d
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$61;->a:Lcom/twidroid/activity/SendTweet;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Tweet shrinked by "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p1, Lcom/twidroid/net/c/n;->d:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " characters."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_1c
.end method
.method public b(Lcom/twidroid/net/c/n;)V
.registers 5
new-instance v0, Lcom/twidroid/net/c/s;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$61;->a:Lcom/twidroid/activity/SendTweet;
const v2, 0x7f0c00fd
invoke-direct {v0, v1, v2}, Lcom/twidroid/net/c/s;-><init>(Landroid/content/Context;I)V
invoke-virtual {v0}, Lcom/twidroid/net/c/s;->show()V
return-void
.end method