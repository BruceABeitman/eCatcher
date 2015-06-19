.class  Lcom/mologiq/analytics/j;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:I
.field private b:Ljava/lang/String;
.field private c:I
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/mologiq/analytics/j;->a:I
return v0
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/mologiq/analytics/j;->a:I
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/j;->b:Ljava/lang/String;
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/j;->b:Ljava/lang/String;
return-object v0
.end method
.method public b(I)V
.registers 2
iput p1, p0, Lcom/mologiq/analytics/j;->c:I
return-void
.end method
.method public c()I
.registers 2
iget v0, p0, Lcom/mologiq/analytics/j;->c:I
return v0
.end method