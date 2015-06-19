.class final Lcom/instagram/android/feed/a/a/l;
.super Ljava/lang/Object;
.source "FeedVideoPlayer.java"
.implements Lcom/instagram/android/m/a/f;
.field final synthetic a:Lcom/instagram/android/feed/a/a/j;
.method constructor <init>(Lcom/instagram/android/feed/a/a/j;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/a/a/l;->a:Lcom/instagram/android/feed/a/a/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/instagram/android/m/a/c;)V
.registers 7
iget-object v0, p0, Lcom/instagram/android/feed/a/a/l;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->d(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/android/feed/a/b/ac;
move-result-object v0
if-eqz v0, :cond_80
iget-object v0, p0, Lcom/instagram/android/feed/a/a/l;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->a(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/feed/d/l;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/a/a/l;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/j;->b(Lcom/instagram/android/feed/a/a/j;)I
move-result v1
iget-object v2, p0, Lcom/instagram/android/feed/a/a/l;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v2}, Lcom/instagram/android/feed/a/a/j;->e(Lcom/instagram/android/feed/a/a/j;)Z
move-result v2
iget-object v3, p0, Lcom/instagram/android/feed/a/a/l;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v3}, Lcom/instagram/android/feed/a/a/j;->c(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/feed/g/a;
move-result-object v3
iget-object v4, p0, Lcom/instagram/android/feed/a/a/l;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v4}, Lcom/instagram/android/feed/a/a/j;->f(Lcom/instagram/android/feed/a/a/j;)Ljava/lang/String;
move-result-object v4
invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/feed/d/l;IZLcom/instagram/feed/g/a;Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/l;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->e(Lcom/instagram/android/feed/a/a/j;)Z
move-result v0
if-eqz v0, :cond_81
const/high16 v0, 0x3f80
:goto_33
invoke-virtual {p1, v0, v0}, Lcom/instagram/android/m/a/c;->a(FF)V
invoke-virtual {p1}, Lcom/instagram/android/m/a/c;->d()V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/l;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->d(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/android/feed/a/b/ac;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->a()Lcom/instagram/feed/widget/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/a/a/l;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/j;->g(Lcom/instagram/android/feed/a/a/j;)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/feed/widget/a;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/l;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->d(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/android/feed/a/b/ac;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;
move-result-object v1
iget-object v0, p0, Lcom/instagram/android/feed/a/a/l;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->e(Lcom/instagram/android/feed/a/a/j;)Z
move-result v0
if-eqz v0, :cond_83
sget v0, Lcom/instagram/android/widget/o;->a:I
:goto_60
invoke-virtual {v1, v0}, Lcom/instagram/android/widget/MediaActionsView;->a(I)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/l;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->h(Lcom/instagram/android/feed/a/a/j;)Z
move-result v0
if-eqz v0, :cond_80
iget-object v0, p0, Lcom/instagram/android/feed/a/a/l;->a:Lcom/instagram/android/feed/a/a/j;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/android/feed/a/a/j;->a(Lcom/instagram/android/feed/a/a/j;Z)Z
iget-object v0, p0, Lcom/instagram/android/feed/a/a/l;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->i(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/android/feed/a/a/p;
move-result-object v0
const/4 v1, 0x3
invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I
move-result v2
int-to-long v2, v2
invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/android/feed/a/a/p;->sendEmptyMessageDelayed(IJ)Z
:cond_80
return-void
:cond_81
const/4 v0, 0x0
goto :goto_33
:cond_83
sget v0, Lcom/instagram/android/widget/o;->f:I
goto :goto_60
.end method