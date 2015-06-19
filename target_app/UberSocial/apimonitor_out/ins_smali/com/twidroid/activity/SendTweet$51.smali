.class  Lcom/twidroid/activity/SendTweet$51;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/r;
.field final synthetic b:Landroid/os/Handler$Callback;
.field final synthetic c:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/r;Landroid/os/Handler$Callback;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$51;->c:Lcom/twidroid/activity/SendTweet;
iput-object p2, p0, Lcom/twidroid/activity/SendTweet$51;->a:Lcom/twidroid/activity/r;
iput-object p3, p0, Lcom/twidroid/activity/SendTweet$51;->b:Landroid/os/Handler$Callback;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 9
const/4 v6, 0x0
const/4 v4, 0x1
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$51;->c:Lcom/twidroid/activity/SendTweet;
invoke-virtual {v0}, Lcom/twidroid/activity/SendTweet;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03002e
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
iget-object v7, p0, Lcom/twidroid/activity/SendTweet$51;->c:Lcom/twidroid/activity/SendTweet;
new-instance v0, Lcom/twidroid/c/f;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$51;->c:Lcom/twidroid/activity/SendTweet;
iget-object v3, p0, Lcom/twidroid/activity/SendTweet$51;->a:Lcom/twidroid/activity/r;
move v5, v4
invoke-direct/range {v0 .. v6}, Lcom/twidroid/c/f;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/twidroid/activity/r;ZZZ)V
invoke-static {v7, v0}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/c/f;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$51;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->q(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/c/f;
move-result-object v0
const/4 v1, -0x1
invoke-virtual {v0, v1}, Lcom/twidroid/c/f;->setWidth(I)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$51;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/d/a;->c(Landroid/app/Activity;)[I
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$51;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->q(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/c/f;
move-result-object v1
aget v0, v0, v4
iget-object v2, p0, Lcom/twidroid/activity/SendTweet$51;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v2}, Lcom/twidroid/d/a;->b(Landroid/app/Activity;)I
move-result v2
sub-int/2addr v0, v2
invoke-virtual {v1, v0}, Lcom/twidroid/c/f;->setHeight(I)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$51;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->q(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/c/f;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/SendTweet$51$1;
invoke-direct {v1, p0}, Lcom/twidroid/activity/SendTweet$51$1;-><init>(Lcom/twidroid/activity/SendTweet$51;)V
invoke-virtual {v0, v1}, Lcom/twidroid/c/f;->a(Landroid/os/Handler$Callback;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$51;->c:Lcom/twidroid/activity/SendTweet;
invoke-virtual {v0}, Lcom/twidroid/activity/SendTweet;->isFinishing()Z
move-result v0
if-nez v0, :cond_79
:try_start_57
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$51;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->q(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/c/f;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$51;->c:Lcom/twidroid/activity/SendTweet;
invoke-virtual {v1}, Lcom/twidroid/activity/SendTweet;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v1
const v2, 0x1020002
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
const/4 v2, 0x1
const/4 v3, 0x0
iget-object v4, p0, Lcom/twidroid/activity/SendTweet$51;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v4}, Lcom/twidroid/d/a;->b(Landroid/app/Activity;)I
move-result v4
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twidroid/c/f;->showAtLocation(Landroid/view/View;III)V
:cond_79
:try_end_79
.catch Ljava/lang/Exception; {:try_start_57 .. :try_end_79} :catch_7a
:goto_79
return-void
:catch_7a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_79
.end method