.class public Lcom/admarvel/android/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field  a:I
.field  b:I
.field  c:Ljava/util/HashMap;
.field  d:J
.field  e:J
.field  f:F
.field  g:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()J
.registers 3
iget-wide v0, p0, Lcom/admarvel/android/b/a/a;->d:J
return-wide v0
.end method
.method public a(F)V
.registers 2
iput p1, p0, Lcom/admarvel/android/b/a/a;->f:F
return-void
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/admarvel/android/b/a/a;->g:I
return-void
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lcom/admarvel/android/b/a/a;->d:J
return-void
.end method
.method public a(Ljava/util/HashMap;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/b/a/a;->c:Ljava/util/HashMap;
return-void
.end method
.method public b()J
.registers 3
iget-wide v0, p0, Lcom/admarvel/android/b/a/a;->e:J
return-wide v0
.end method
.method public b(I)V
.registers 2
iput p1, p0, Lcom/admarvel/android/b/a/a;->a:I
return-void
.end method
.method public b(J)V
.registers 3
iput-wide p1, p0, Lcom/admarvel/android/b/a/a;->e:J
return-void
.end method
.method public c()F
.registers 2
iget v0, p0, Lcom/admarvel/android/b/a/a;->f:F
return v0
.end method
.method public c(I)V
.registers 2
iput p1, p0, Lcom/admarvel/android/b/a/a;->b:I
return-void
.end method
.method public d()I
.registers 2
iget v0, p0, Lcom/admarvel/android/b/a/a;->g:I
return v0
.end method
.method public e()Ljava/util/HashMap;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/b/a/a;->c:Ljava/util/HashMap;
return-object v0
.end method
.method public f()I
.registers 2
iget v0, p0, Lcom/admarvel/android/b/a/a;->a:I
return v0
.end method
.method public g()I
.registers 2
iget v0, p0, Lcom/admarvel/android/b/a/a;->b:I
return v0
.end method