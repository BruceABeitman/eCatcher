.class  Lcom/c/ch;
.super Ljava/lang/Object;
.implements Lcom/c/cl;
.field public a:I
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/c/ch;->a:I
return-void
.end method
.method public a(II)V
.registers 3
return-void
.end method
.method public b(II)V
.registers 4
iget v0, p0, Lcom/c/ch;->a:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/c/ch;->a:I
return-void
.end method
.method public c(II)V
.registers 3
return-void
.end method