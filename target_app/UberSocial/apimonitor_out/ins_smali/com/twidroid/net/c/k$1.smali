.class  Lcom/twidroid/net/c/k$1;
.super Lcom/twidroid/net/c/l;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/net/c/k;
.method constructor <init>(Lcom/twidroid/net/c/k;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/net/c/k$1;->a:Lcom/twidroid/net/c/k;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/twidroid/net/c/l;-><init>(Lcom/twidroid/net/c/k;Lcom/twidroid/net/c/k$1;)V
return-void
.end method
.method  a(I)V
.registers 6
iget-object v0, p0, Lcom/twidroid/net/c/k$1;->a:Lcom/twidroid/net/c/k;
iget v1, v0, Lcom/twidroid/net/c/k;->f:I
add-int/lit8 v1, v1, 0x1
iput v1, v0, Lcom/twidroid/net/c/k;->f:I
iget-object v0, p0, Lcom/twidroid/net/c/k$1;->a:Lcom/twidroid/net/c/k;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Integer;
const/4 v2, 0x0
iget-object v3, p0, Lcom/twidroid/net/c/k$1;->a:Lcom/twidroid/net/c/k;
iget v3, v3, Lcom/twidroid/net/c/k;->e:I
add-int/2addr v3, p1
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/twidroid/net/c/k;->a(Lcom/twidroid/net/c/k;[Ljava/lang/Object;)V
return-void
.end method