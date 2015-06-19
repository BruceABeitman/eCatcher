.class  Lcom/twidroid/TwidroidClient$12;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/TwidroidClient;
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/TwidroidClient$12;->a:Lcom/twidroid/TwidroidClient;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/TwidroidClient$12;->a([Ljava/lang/Void;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
.registers 7
iget-object v0, p0, Lcom/twidroid/TwidroidClient$12;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->b(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->r()Lcom/ubermedia/model/twitter/e;
move-result-object v0
invoke-virtual {v0}, Lcom/ubermedia/model/twitter/e;->b()J
move-result-wide v1
const-wide/16 v3, 0x0
cmp-long v1, v1, v3
if-lez v1, :cond_3f
iget-object v1, p0, Lcom/twidroid/TwidroidClient$12;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v1}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;
move-result-object v1
invoke-virtual {v0}, Lcom/ubermedia/model/twitter/e;->b()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Lcom/twidroid/d/v;->b(J)V
iget-object v1, p0, Lcom/twidroid/TwidroidClient$12;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v1}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;
move-result-object v1
invoke-virtual {v0}, Lcom/ubermedia/model/twitter/e;->c()I
move-result v2
invoke-virtual {v1, v2}, Lcom/twidroid/d/v;->b(I)V
iget-object v1, p0, Lcom/twidroid/TwidroidClient$12;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v1}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;
move-result-object v1
invoke-virtual {v0}, Lcom/ubermedia/model/twitter/e;->a()I
move-result v0
invoke-virtual {v1, v0}, Lcom/twidroid/d/v;->a(I)V
:cond_3f
const/4 v0, 0x0
return-object v0
.end method