.class public final Lorg/apache/b/a/f/h;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Cloneable;
.field private a:Z
.field private b:Z
.field private c:I
.field private d:I
.field private e:J
.method public constructor <init>()V
.registers 3
const/16 v1, 0x3e8
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lorg/apache/b/a/f/h;->a:Z
iput-boolean v0, p0, Lorg/apache/b/a/f/h;->b:Z
iput v1, p0, Lorg/apache/b/a/f/h;->c:I
iput v1, p0, Lorg/apache/b/a/f/h;->d:I
const-wide/16 v0, -0x1
iput-wide v0, p0, Lorg/apache/b/a/f/h;->e:J
return-void
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lorg/apache/b/a/f/h;->c:I
return-void
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lorg/apache/b/a/f/h;->e:J
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lorg/apache/b/a/f/h;->a:Z
return-void
.end method
.method public a()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/b/a/f/h;->a:Z
return v0
.end method
.method public b(I)V
.registers 2
iput p1, p0, Lorg/apache/b/a/f/h;->d:I
return-void
.end method
.method public b(Z)V
.registers 2
iput-boolean p1, p0, Lorg/apache/b/a/f/h;->b:Z
return-void
.end method
.method public b()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/b/a/f/h;->b:Z
return v0
.end method
.method public c()I
.registers 2
iget v0, p0, Lorg/apache/b/a/f/h;->c:I
return v0
.end method
.method public clone()Ljava/lang/Object;
.registers 2
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public d()I
.registers 2
iget v0, p0, Lorg/apache/b/a/f/h;->d:I
return v0
.end method
.method public e()J
.registers 3
iget-wide v0, p0, Lorg/apache/b/a/f/h;->e:J
return-wide v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Lorg/apache/b/a/g/b;
const/16 v1, 0x80
invoke-direct {v0, v1}, Lorg/apache/b/a/g/b;-><init>(I)V
const-string v1, "[max body descriptor: "
invoke-virtual {v0, v1}, Lorg/apache/b/a/g/b;->a(Ljava/lang/String;)V
iget-boolean v1, p0, Lorg/apache/b/a/f/h;->a:Z
invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/b/a/g/b;->a(Ljava/lang/String;)V
const-string v1, "][strict parsing: "
invoke-virtual {v0, v1}, Lorg/apache/b/a/g/b;->a(Ljava/lang/String;)V
iget-boolean v1, p0, Lorg/apache/b/a/f/h;->b:Z
invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/b/a/g/b;->a(Ljava/lang/String;)V
const-string v1, "][max header length: "
invoke-virtual {v0, v1}, Lorg/apache/b/a/g/b;->a(Ljava/lang/String;)V
iget v1, p0, Lorg/apache/b/a/f/h;->c:I
invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/b/a/g/b;->a(Ljava/lang/String;)V
const-string v1, "]"
invoke-virtual {v0, v1}, Lorg/apache/b/a/g/b;->a(Ljava/lang/String;)V
invoke-virtual {v0}, Lorg/apache/b/a/g/b;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method