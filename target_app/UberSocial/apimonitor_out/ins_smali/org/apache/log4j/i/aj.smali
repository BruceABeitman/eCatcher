.class public Lorg/apache/log4j/i/aj;
.super Lorg/apache/log4j/i/r;
.source "SourceFile"
.field private static final a:Lorg/apache/log4j/i/aj;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lorg/apache/log4j/i/aj;
invoke-direct {v0}, Lorg/apache/log4j/i/aj;-><init>()V
sput-object v0, Lorg/apache/log4j/i/aj;->a:Lorg/apache/log4j/i/aj;
return-void
.end method
.method private constructor <init>()V
.registers 3
const-string v0, "Thread"
const-string v1, "thread"
invoke-direct {p0, v0, v1}, Lorg/apache/log4j/i/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static a([Ljava/lang/String;)Lorg/apache/log4j/i/aj;
.registers 2
sget-object v0, Lorg/apache/log4j/i/aj;->a:Lorg/apache/log4j/i/aj;
return-object v0
.end method
.method public a(Lorg/apache/log4j/k/k;Ljava/lang/StringBuffer;)V
.registers 4
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->j()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
return-void
.end method