.class public final Lorg/apache/log4j/i/k;
.super Lorg/apache/log4j/i/ac;
.source "SourceFile"
.field private static final a:Lorg/apache/log4j/i/k;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lorg/apache/log4j/i/k;
invoke-direct {v0}, Lorg/apache/log4j/i/k;-><init>()V
sput-object v0, Lorg/apache/log4j/i/k;->a:Lorg/apache/log4j/i/k;
return-void
.end method
.method private constructor <init>()V
.registers 3
const-string v0, "Integer"
const-string v1, "integer"
invoke-direct {p0, v0, v1}, Lorg/apache/log4j/i/ac;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static a([Ljava/lang/String;)Lorg/apache/log4j/i/k;
.registers 2
sget-object v0, Lorg/apache/log4j/i/k;->a:Lorg/apache/log4j/i/k;
return-object v0
.end method
.method public a(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
.registers 5
instance-of v0, p1, Ljava/lang/Integer;
if-eqz v0, :cond_b
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_b
instance-of v0, p1, Ljava/util/Date;
if-eqz v0, :cond_1c
check-cast p1, Ljava/util/Date;
invoke-virtual {p1}, Ljava/util/Date;->getTime()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_1c
return-void
.end method