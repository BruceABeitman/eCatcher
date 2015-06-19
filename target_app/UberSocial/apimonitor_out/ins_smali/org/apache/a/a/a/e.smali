.class public final Lorg/apache/a/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "Content-Type"
.field public static final b:Ljava/lang/String; = "Content-Transfer-Encoding"
.field public static final c:Ljava/lang/String; = "Content-Disposition"
.field public static final d:Ljava/lang/String; = "8bit"
.field public static final e:Ljava/lang/String; = "binary"
.field public static final f:Ljava/nio/charset/Charset;
.method static constructor <clinit>()V
.registers 1
const-string v0, "US-ASCII"
invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
sput-object v0, Lorg/apache/a/a/a/e;->f:Ljava/nio/charset/Charset;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method