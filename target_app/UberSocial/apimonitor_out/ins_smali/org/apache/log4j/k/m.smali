.class public final Lorg/apache/log4j/k/m;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/log4j/k/j;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/lang/String;)Lorg/apache/log4j/aa;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public a(Ljava/lang/String;Lorg/apache/log4j/k/i;)Lorg/apache/log4j/aa;
.registers 4
new-instance v0, Lorg/apache/log4j/k/l;
invoke-direct {v0, p0, p1}, Lorg/apache/log4j/k/l;-><init>(Lorg/apache/log4j/k/m;Ljava/lang/String;)V
return-object v0
.end method
.method public a(Lorg/apache/log4j/g;)V
.registers 2
return-void
.end method
.method public a(Lorg/apache/log4j/g;Lorg/apache/log4j/a;)V
.registers 3
return-void
.end method
.method public a(Lorg/apache/log4j/k/g;)V
.registers 2
return-void
.end method
.method public a(Lorg/apache/log4j/v;)V
.registers 2
return-void
.end method
.method public a(I)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public b()Lorg/apache/log4j/v;
.registers 2
sget-object v0, Lorg/apache/log4j/v;->b:Lorg/apache/log4j/v;
return-object v0
.end method
.method public b(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public c()Ljava/util/Enumeration;
.registers 2
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public c(Ljava/lang/String;)Lorg/apache/log4j/aa;
.registers 3
new-instance v0, Lorg/apache/log4j/k/l;
invoke-direct {v0, p0, p1}, Lorg/apache/log4j/k/l;-><init>(Lorg/apache/log4j/k/m;Ljava/lang/String;)V
return-object v0
.end method
.method public d()Ljava/util/Enumeration;
.registers 2
invoke-virtual {p0}, Lorg/apache/log4j/k/m;->c()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public f()Lorg/apache/log4j/aa;
.registers 3
new-instance v0, Lorg/apache/log4j/k/l;
const-string v1, "root"
invoke-direct {v0, p0, v1}, Lorg/apache/log4j/k/l;-><init>(Lorg/apache/log4j/k/m;Ljava/lang/String;)V
return-object v0
.end method
.method public g()V
.registers 1
return-void
.end method
.method public i()V
.registers 1
return-void
.end method