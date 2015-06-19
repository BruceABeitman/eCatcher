.class public Lorg/apache/commons/io/output/NullWriter;
.super Ljava/io/Writer;
.source "NullWriter.java"
.field public static final NULL_WRITER:Lorg/apache/commons/io/output/NullWriter;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lorg/apache/commons/io/output/NullWriter;
invoke-direct {v0}, Lorg/apache/commons/io/output/NullWriter;-><init>()V
sput-object v0, Lorg/apache/commons/io/output/NullWriter;->NULL_WRITER:Lorg/apache/commons/io/output/NullWriter;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/io/Writer;-><init>()V
return-void
.end method
.method public append(C)Ljava/io/Writer;
.registers 2
return-object p0
.end method
.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
.registers 2
return-object p0
.end method
.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
.registers 4
return-object p0
.end method
.method public bridge synthetic append(C)Ljava/lang/Appendable;
.registers 3
invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/NullWriter;->append(C)Ljava/io/Writer;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
.registers 3
invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/NullWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/NullWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
move-result-object v0
return-object v0
.end method
.method public close()V
.registers 1
return-void
.end method
.method public flush()V
.registers 1
return-void
.end method
.method public write(I)V
.registers 2
return-void
.end method
.method public write(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public write(Ljava/lang/String;II)V
.registers 4
return-void
.end method
.method public write([C)V
.registers 2
return-void
.end method
.method public write([CII)V
.registers 4
return-void
.end method