.class public final Lorg/apache/log4j/i/j;
.super Lorg/apache/log4j/i/r;
.source "SourceFile"
.field private static final a:Lorg/apache/log4j/i/j;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lorg/apache/log4j/i/j;
invoke-direct {v0}, Lorg/apache/log4j/i/j;-><init>()V
sput-object v0, Lorg/apache/log4j/i/j;->a:Lorg/apache/log4j/i/j;
return-void
.end method
.method private constructor <init>()V
.registers 3
const-string v0, "Full Location"
const-string v1, "fullLocation"
invoke-direct {p0, v0, v1}, Lorg/apache/log4j/i/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static a([Ljava/lang/String;)Lorg/apache/log4j/i/j;
.registers 2
sget-object v0, Lorg/apache/log4j/i/j;->a:Lorg/apache/log4j/i/j;
return-object v0
.end method
.method public a(Lorg/apache/log4j/k/k;Ljava/lang/StringBuffer;)V
.registers 4
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->a()Lorg/apache/log4j/k/h;
move-result-object v0
if-eqz v0, :cond_b
iget-object v0, v0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;
invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_b
return-void
.end method