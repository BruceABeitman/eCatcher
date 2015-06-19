.class  Lcom/mologiq/analytics/s;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/mologiq/analytics/r;
.field private b:I
.field private c:I
.field private d:Ljava/util/List;
.method constructor <init>(Lcom/mologiq/analytics/r;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/s;->a:Lcom/mologiq/analytics/r;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/mologiq/analytics/s;->b:I
return v0
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/mologiq/analytics/s;->b:I
return-void
.end method
.method public a(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/s;->d:Ljava/util/List;
return-void
.end method
.method public b()I
.registers 2
iget v0, p0, Lcom/mologiq/analytics/s;->c:I
return v0
.end method
.method public b(I)V
.registers 2
iput p1, p0, Lcom/mologiq/analytics/s;->c:I
return-void
.end method
.method public c()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/s;->d:Ljava/util/List;
return-object v0
.end method