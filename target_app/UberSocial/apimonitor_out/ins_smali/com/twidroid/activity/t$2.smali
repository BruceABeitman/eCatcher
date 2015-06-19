.class  Lcom/twidroid/activity/t$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/t;
.method constructor <init>(Lcom/twidroid/activity/t;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/t$2;->a:Lcom/twidroid/activity/t;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/t$2;->a:Lcom/twidroid/activity/t;
iget-object v0, v0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, p0, Lcom/twidroid/activity/t$2;->a:Lcom/twidroid/activity/t;
iget-object v1, v1, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;
const v2, 0x7f0c0218
invoke-virtual {v1, v2}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/twidroid/activity/t$2;->a:Lcom/twidroid/activity/t;
iget-object v0, v0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
iget-object v1, p0, Lcom/twidroid/activity/t$2;->a:Lcom/twidroid/activity/t;
iget-object v1, v1, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->s(Lcom/twidroid/activity/SendTweet;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
iput v1, v0, Lcom/twidroid/ui/widgets/MyEditText;->a:I
iget-object v0, p0, Lcom/twidroid/activity/t$2;->a:Lcom/twidroid/activity/t;
iget-object v0, v0, Lcom/twidroid/activity/t;->c:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->a()V
return-void
.end method