.class final Lcom/instagram/android/feed/a/c;
.super Ljava/lang/Object;
.source "FeedAdapter.java"
.implements Lcom/instagram/android/feed/a/a/d;
.field final synthetic a:I
.field final synthetic b:Lcom/instagram/android/feed/a/a;
.method constructor <init>(Lcom/instagram/android/feed/a/a;I)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/feed/a/c;->b:Lcom/instagram/android/feed/a/a;
iput p2, p0, Lcom/instagram/android/feed/a/c;->a:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/instagram/feed/d/l;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/c;->b:Lcom/instagram/android/feed/a/a;
iget-object v0, v0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->aj()Lcom/instagram/feed/c/a;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/feed/c/a;->a(Lcom/instagram/feed/d/l;)V
return-void
.end method
.method public final a(Lcom/instagram/feed/d/l;I)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/feed/a/c;->b:Lcom/instagram/android/feed/a/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->c()Lcom/instagram/android/fragment/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->n_()Z
move-result v0
if-eqz v0, :cond_30
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->Z()Z
move-result v0
if-eqz v0, :cond_30
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/k/b/a;->D()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_30
invoke-static {}, Lcom/instagram/common/u/c/a;->a()Ljava/util/concurrent/Executor;
move-result-object v0
new-instance v1, Lcom/instagram/android/feed/a/d;
invoke-direct {v1, p0, p1}, Lcom/instagram/android/feed/a/d;-><init>(Lcom/instagram/android/feed/a/c;Lcom/instagram/feed/d/l;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
:cond_30
iget-object v0, p0, Lcom/instagram/android/feed/a/c;->b:Lcom/instagram/android/feed/a/a;
iget-object v0, v0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->aj()Lcom/instagram/feed/c/a;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/instagram/feed/c/a;->a(Lcom/instagram/feed/d/l;I)V
iget v0, p0, Lcom/instagram/android/feed/a/c;->a:I
sget v1, Lcom/instagram/android/feed/a/h;->a:I
if-ne v0, v1, :cond_54
invoke-static {p1}, Lcom/instagram/feed/c/g;->a(Lcom/instagram/feed/d/l;)Z
move-result v0
if-eqz v0, :cond_54
invoke-static {}, Lcom/instagram/feed/c/g;->a()Lcom/instagram/feed/c/g;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/a/c;->b:Lcom/instagram/android/feed/a/a;
invoke-virtual {v1}, Lcom/instagram/android/feed/a/a;->c()Lcom/instagram/android/fragment/a;
move-result-object v1
invoke-virtual {v0, p1, p2, v1}, Lcom/instagram/feed/c/g;->a(Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V
:cond_54
return-void
.end method
.method public final b(Lcom/instagram/feed/d/l;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/c;->b:Lcom/instagram/android/feed/a/a;
iget-object v0, v0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->aj()Lcom/instagram/feed/c/a;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/feed/c/a;->b(Lcom/instagram/feed/d/l;)V
return-void
.end method
.method public final b(Lcom/instagram/feed/d/l;I)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/feed/a/c;->b:Lcom/instagram/android/feed/a/a;
iget-object v0, v0, Lcom/instagram/android/feed/a/a;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->aj()Lcom/instagram/feed/c/a;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/instagram/feed/c/a;->b(Lcom/instagram/feed/d/l;I)V
return-void
.end method