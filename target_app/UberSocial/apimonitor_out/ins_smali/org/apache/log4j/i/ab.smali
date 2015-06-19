.class public abstract Lorg/apache/log4j/i/ab;
.super Lorg/apache/log4j/i/r;
.source "SourceFile"
.field private final a:Lorg/apache/log4j/i/v;
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.registers 5
invoke-direct {p0, p1, p2}, Lorg/apache/log4j/i/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p3, :cond_12
array-length v0, p3
if-lez v0, :cond_12
const/4 v0, 0x0
aget-object v0, p3, v0
invoke-static {v0}, Lorg/apache/log4j/i/v;->a(Ljava/lang/String;)Lorg/apache/log4j/i/v;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/i/ab;->a:Lorg/apache/log4j/i/v;
:goto_11
return-void
:cond_12
invoke-static {}, Lorg/apache/log4j/i/v;->a()Lorg/apache/log4j/i/v;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/i/ab;->a:Lorg/apache/log4j/i/v;
goto :goto_11
.end method
.method protected final a(ILjava/lang/StringBuffer;)V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/i/ab;->a:Lorg/apache/log4j/i/v;
invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/i/v;->a(ILjava/lang/StringBuffer;)V
return-void
.end method