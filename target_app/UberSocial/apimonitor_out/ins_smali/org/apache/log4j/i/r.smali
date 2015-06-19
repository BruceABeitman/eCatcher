.class public abstract Lorg/apache/log4j/i/r;
.super Lorg/apache/log4j/i/ac;
.source "SourceFile"
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lorg/apache/log4j/i/ac;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
.registers 4
instance-of v0, p1, Lorg/apache/log4j/k/k;
if-eqz v0, :cond_9
check-cast p1, Lorg/apache/log4j/k/k;
invoke-virtual {p0, p1, p2}, Lorg/apache/log4j/i/r;->a(Lorg/apache/log4j/k/k;Ljava/lang/StringBuffer;)V
:cond_9
return-void
.end method
.method public abstract a(Lorg/apache/log4j/k/k;Ljava/lang/StringBuffer;)V
.end method
.method public a()Z
.registers 2
const/4 v0, 0x0
return v0
.end method