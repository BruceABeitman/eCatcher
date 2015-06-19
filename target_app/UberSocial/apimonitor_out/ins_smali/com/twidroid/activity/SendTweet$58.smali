.class  Lcom/twidroid/activity/SendTweet$58;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$58;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$58;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->requestFocus()Z
:goto_7
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
const-string v0, "com.twidroid.SendTweet"
const-string v1, "Switched on/off very fast? View was not visible any more"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_7
.end method