.class  Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
.super Ljava/lang/Object;
.source "CharsetUtil.java"
.implements Ljava/lang/Comparable;
.field private aliases:[Ljava/lang/String;
.field private canonical:Ljava/lang/String;
.field private mime:Ljava/lang/String;
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;
iput-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;
iput-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;
iput-object p1, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;
iput-object p2, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;
iput-object p3, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$200(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$300(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;
return-object v0
.end method
.method public compareTo(Ljava/lang/Object;)I
.registers 6
move-object v0, p1
check-cast v0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
move-object v1, v0
iget-object v2, p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;
iget-object v3, v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v2
return v2
.end method