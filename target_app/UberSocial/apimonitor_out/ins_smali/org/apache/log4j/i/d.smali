.class public final Lorg/apache/log4j/i/d;
.super Lorg/apache/log4j/i/ab;
.source "SourceFile"
.method private constructor <init>([Ljava/lang/String;)V
.registers 4
const-string v0, "Class Name"
const-string v1, "class name"
invoke-direct {p0, v0, v1, p1}, Lorg/apache/log4j/i/ab;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
return-void
.end method
.method public static a([Ljava/lang/String;)Lorg/apache/log4j/i/d;
.registers 2
new-instance v0, Lorg/apache/log4j/i/d;
invoke-direct {v0, p0}, Lorg/apache/log4j/i/d;-><init>([Ljava/lang/String;)V
return-object v0
.end method
.method public a(Lorg/apache/log4j/k/k;Ljava/lang/StringBuffer;)V
.registers 5
invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I
move-result v0
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->a()Lorg/apache/log4j/k/h;
move-result-object v1
if-nez v1, :cond_13
const-string v1, "?"
invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_f
invoke-virtual {p0, v0, p2}, Lorg/apache/log4j/i/d;->a(ILjava/lang/StringBuffer;)V
return-void
:cond_13
invoke-virtual {v1}, Lorg/apache/log4j/k/h;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_f
.end method