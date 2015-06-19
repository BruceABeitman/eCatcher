.class public Lorg/apache/commons/io/input/XmlStreamReaderException;
.super Ljava/io/IOException;
.source "XmlStreamReaderException.java"
.field private static final serialVersionUID:J = 0x1L
.field private final bomEncoding:Ljava/lang/String;
.field private final contentTypeEncoding:Ljava/lang/String;
.field private final contentTypeMime:Ljava/lang/String;
.field private final xmlEncoding:Ljava/lang/String;
.field private final xmlGuessEncoding:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 12
const/4 v2, 0x0
move-object v0, p0
move-object v1, p1
move-object v3, v2
move-object v4, p2
move-object v5, p3
move-object v6, p4
invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
iput-object p2, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->contentTypeMime:Ljava/lang/String;
iput-object p3, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->contentTypeEncoding:Ljava/lang/String;
iput-object p4, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->bomEncoding:Ljava/lang/String;
iput-object p5, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->xmlGuessEncoding:Ljava/lang/String;
iput-object p6, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->xmlEncoding:Ljava/lang/String;
return-void
.end method
.method public getBomEncoding()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->bomEncoding:Ljava/lang/String;
return-object v0
.end method
.method public getContentTypeEncoding()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->contentTypeEncoding:Ljava/lang/String;
return-object v0
.end method
.method public getContentTypeMime()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->contentTypeMime:Ljava/lang/String;
return-object v0
.end method
.method public getXmlEncoding()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->xmlEncoding:Ljava/lang/String;
return-object v0
.end method
.method public getXmlGuessEncoding()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->xmlGuessEncoding:Ljava/lang/String;
return-object v0
.end method