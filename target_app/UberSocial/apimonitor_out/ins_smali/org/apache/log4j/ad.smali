.class  Lorg/apache/log4j/ad;
.super Ljava/lang/Object;
.source "SourceFile"
.field  a:Ljava/lang/String;
.field  b:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;Lorg/apache/log4j/ad;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/apache/log4j/ad;->b:Ljava/lang/String;
if-eqz p2, :cond_23
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iget-object v1, p2, Lorg/apache/log4j/ad;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const/16 v1, 0x20
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/ad;->a:Ljava/lang/String;
:goto_22
return-void
:cond_23
iput-object p1, p0, Lorg/apache/log4j/ad;->a:Ljava/lang/String;
goto :goto_22
.end method