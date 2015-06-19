.class public Lcom/igexin/push/d/i;
.super Ljava/lang/Object;
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:J
.field private e:J
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/igexin/push/d/i;->b:Ljava/lang/String;
return-object v0
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lcom/igexin/push/d/i;->d:J
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/d/i;->a:Ljava/lang/String;
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/igexin/push/d/i;->c:Ljava/lang/String;
return-object v0
.end method
.method public b(J)V
.registers 3
iput-wide p1, p0, Lcom/igexin/push/d/i;->e:J
return-void
.end method
.method public b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/d/i;->b:Ljava/lang/String;
return-void
.end method
.method public c()J
.registers 3
iget-wide v0, p0, Lcom/igexin/push/d/i;->d:J
return-wide v0
.end method
.method public c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/d/i;->c:Ljava/lang/String;
return-void
.end method