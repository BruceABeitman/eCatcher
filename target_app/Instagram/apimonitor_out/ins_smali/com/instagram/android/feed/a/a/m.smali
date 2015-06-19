.class final Lcom/instagram/android/feed/a/a/m;
.super Ljava/lang/Object;
.source "FeedVideoPlayer.java"
.implements Lcom/instagram/android/m/a/d;
.field final synthetic a:Lcom/instagram/android/feed/a/a/j;
.method constructor <init>(Lcom/instagram/android/feed/a/a/j;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/a/a/m;->a:Lcom/instagram/android/feed/a/a/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 10
iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->i(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/android/feed/a/a/p;
move-result-object v0
const/4 v1, 0x4
const-wide/16 v2, 0x3e8
invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/android/feed/a/a/p;->sendEmptyMessageDelayed(IJ)Z
iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->a(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/feed/d/l;
move-result-object v0
if-eqz v0, :cond_7e
iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->a(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/feed/d/l;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/a/a/m;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/j;->b(Lcom/instagram/android/feed/a/a/j;)I
move-result v1
iget-object v2, p0, Lcom/instagram/android/feed/a/a/m;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v2}, Lcom/instagram/android/feed/a/a/j;->j(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/android/m/a/c;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/android/m/a/c;->m()I
move-result v2
iget-object v3, p0, Lcom/instagram/android/feed/a/a/m;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v3}, Lcom/instagram/android/feed/a/a/j;->j(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/android/m/a/c;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/android/m/a/c;->n()I
move-result v3
iget-object v4, p0, Lcom/instagram/android/feed/a/a/m;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v4}, Lcom/instagram/android/feed/a/a/j;->c(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/feed/g/a;
move-result-object v4
invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/feed/d/l;IIILcom/instagram/feed/g/a;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/m;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/j;->a(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/feed/d/l;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/a/a/m;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v1}, Lcom/instagram/android/feed/a/a/j;->j(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/android/m/a/c;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/m/a/c;->m()I
move-result v1
iget-object v2, p0, Lcom/instagram/android/feed/a/a/m;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v2}, Lcom/instagram/android/feed/a/a/j;->j(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/android/m/a/c;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/android/m/a/c;->n()I
move-result v2
iget-object v3, p0, Lcom/instagram/android/feed/a/a/m;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v3}, Lcom/instagram/android/feed/a/a/j;->j(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/android/m/a/c;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/android/m/a/c;->m()I
move-result v3
iget-object v4, p0, Lcom/instagram/android/feed/a/a/m;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v4}, Lcom/instagram/android/feed/a/a/j;->b(Lcom/instagram/android/feed/a/a/j;)I
move-result v4
iget-object v5, p0, Lcom/instagram/android/feed/a/a/m;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v5}, Lcom/instagram/android/feed/a/a/j;->e(Lcom/instagram/android/feed/a/a/j;)Z
move-result v5
iget-object v6, p0, Lcom/instagram/android/feed/a/a/m;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v6}, Lcom/instagram/android/feed/a/a/j;->c(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/feed/g/a;
move-result-object v6
iget-object v7, p0, Lcom/instagram/android/feed/a/a/m;->a:Lcom/instagram/android/feed/a/a/j;
invoke-static {v7}, Lcom/instagram/android/feed/a/a/j;->f(Lcom/instagram/android/feed/a/a/j;)Ljava/lang/String;
move-result-object v7
const-string v8, "finished"
invoke-static/range {v0 .. v8}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/feed/d/l;IIIIZLcom/instagram/feed/g/a;Ljava/lang/String;Ljava/lang/String;)V
:cond_7e
return-void
.end method