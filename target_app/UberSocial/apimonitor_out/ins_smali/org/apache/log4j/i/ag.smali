.class public Lorg/apache/log4j/i/ag;
.super Lorg/apache/log4j/i/r;
.source "SourceFile"
.field private a:Lorg/apache/log4j/i/ah;
.method public constructor <init>()V
.registers 5
const-string v0, "Time"
const-string v1, "time"
invoke-direct {p0, v0, v1}, Lorg/apache/log4j/i/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lorg/apache/log4j/i/ah;
const-wide/16 v1, 0x0
const-string v3, ""
invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/i/ah;-><init>(JLjava/lang/String;)V
iput-object v0, p0, Lorg/apache/log4j/i/ag;->a:Lorg/apache/log4j/i/ah;
return-void
.end method
.method public static a([Ljava/lang/String;)Lorg/apache/log4j/i/ag;
.registers 2
new-instance v0, Lorg/apache/log4j/i/ag;
invoke-direct {v0}, Lorg/apache/log4j/i/ag;-><init>()V
return-object v0
.end method
.method public a(Lorg/apache/log4j/k/k;Ljava/lang/StringBuffer;)V
.registers 7
iget-wide v0, p1, Lorg/apache/log4j/k/k;->d:J
iget-object v2, p0, Lorg/apache/log4j/i/ag;->a:Lorg/apache/log4j/i/ah;
invoke-virtual {v2, v0, v1, p2}, Lorg/apache/log4j/i/ah;->a(JLjava/lang/StringBuffer;)Z
move-result v2
if-nez v2, :cond_1e
invoke-static {}, Lorg/apache/log4j/k/k;->i()J
move-result-wide v2
sub-long v2, v0, v2
invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v3, Lorg/apache/log4j/i/ah;
invoke-direct {v3, v0, v1, v2}, Lorg/apache/log4j/i/ah;-><init>(JLjava/lang/String;)V
iput-object v3, p0, Lorg/apache/log4j/i/ag;->a:Lorg/apache/log4j/i/ah;
:cond_1e
return-void
.end method