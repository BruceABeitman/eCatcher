.class public Lcom/twidroid/net/c/y;
.super Lcom/twidroid/net/c/a/e;
.source "SourceFile"
.field final a:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/twidroid/net/c/a/e;-><init>()V
const-string v0, "UploadImage"
iput-object v0, p0, Lcom/twidroid/net/c/y;->a:Ljava/lang/String;
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/net/c/a/b;
invoke-virtual {p0, p1}, Lcom/twidroid/net/c/y;->a([Lcom/twidroid/net/c/a/b;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Lcom/twidroid/net/c/a/b;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
aget-object v0, p1, v0
check-cast v0, Lcom/twidroid/net/c/a/c;
const/4 v0, 0x0
return-object v0
.end method
.method protected a()V
.registers 4
iget-object v0, p0, Lcom/twidroid/net/c/y;->h:Lcom/twidroid/net/c/a/f;
const/4 v1, -0x1
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Lcom/twidroid/net/c/a/f;->b(ILjava/lang/String;)V
return-void
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/twidroid/net/c/y;->a(Ljava/lang/String;)V
return-void
.end method
.method protected a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/net/c/y;->h:Lcom/twidroid/net/c/a/f;
invoke-interface {v0}, Lcom/twidroid/net/c/a/f;->r()V
return-void
.end method
.method protected varargs a([Ljava/lang/Integer;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/net/c/y;->h:Lcom/twidroid/net/c/a/f;
const/4 v1, 0x0
aget-object v1, p1, v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-interface {v0, v1}, Lcom/twidroid/net/c/a/f;->d(I)V
return-void
.end method
.method protected synthetic a_([Ljava/lang/Object;)V
.registers 2
check-cast p1, [Ljava/lang/Integer;
invoke-virtual {p0, p1}, Lcom/twidroid/net/c/y;->a([Ljava/lang/Integer;)V
return-void
.end method
.method protected b()V
.registers 2
iget-object v0, p0, Lcom/twidroid/net/c/y;->h:Lcom/twidroid/net/c/a/f;
invoke-interface {v0}, Lcom/twidroid/net/c/a/f;->r()V
return-void
.end method