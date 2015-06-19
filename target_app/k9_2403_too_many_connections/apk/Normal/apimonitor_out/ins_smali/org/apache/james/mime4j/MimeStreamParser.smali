.class public Lorg/apache/james/mime4j/MimeStreamParser;
.super Ljava/lang/Object;
.source "MimeStreamParser.java"
.field private static fieldChars:Ljava/util/BitSet;
.field private static final log:Lorg/apache/commons/logging/Log;
.field private bodyDescriptors:Ljava/util/LinkedList;
.field private handler:Lorg/apache/james/mime4j/ContentHandler;
.field private raw:Z
.field private rootStream:Lorg/apache/james/mime4j/RootInputStream;
.method static constructor <clinit>()V
.registers 2
const-class v1, Lorg/apache/james/mime4j/MimeStreamParser;
invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
move-result-object v1
sput-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/commons/logging/Log;
const/4 v1, 0x0
sput-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;
new-instance v1, Ljava/util/BitSet;
invoke-direct {v1}, Ljava/util/BitSet;-><init>()V
sput-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;
const/16 v0, 0x21
:goto_14
const/16 v1, 0x39
if-gt v0, v1, :cond_20
sget-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;
invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_14
:cond_20
const/16 v0, 0x3b
:goto_22
const/16 v1, 0x7e
if-gt v0, v1, :cond_2e
sget-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;
invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_22
:cond_2e
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;
iput-object v1, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->raw:Z
return-void
.end method
.method private parseBodyPart(Ljava/io/InputStream;)V
.registers 4
iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->raw:Z
if-eqz v0, :cond_f
iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;
new-instance v1, Lorg/apache/james/mime4j/CloseShieldInputStream;
invoke-direct {v1, p1}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V
invoke-interface {v0, v1}, Lorg/apache/james/mime4j/ContentHandler;->raw(Ljava/io/InputStream;)V
:goto_e
return-void
:cond_f
iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;
invoke-interface {v0}, Lorg/apache/james/mime4j/ContentHandler;->startBodyPart()V
invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parseEntity(Ljava/io/InputStream;)V
iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;
invoke-interface {v0}, Lorg/apache/james/mime4j/ContentHandler;->endBodyPart()V
goto :goto_e
.end method
.method private parseEntity(Ljava/io/InputStream;)V
.registers 8
invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parseHeader(Ljava/io/InputStream;)Lorg/apache/james/mime4j/BodyDescriptor;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isMultipart()Z
move-result v3
if-eqz v3, :cond_99
iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;
invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;
invoke-interface {v3, v0}, Lorg/apache/james/mime4j/ContentHandler;->startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V
new-instance v2, Lorg/apache/james/mime4j/MimeBoundaryInputStream;
invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->getBoundary()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, p1, v3}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;
new-instance v4, Lorg/apache/james/mime4j/CloseShieldInputStream;
invoke-direct {v4, v2}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V
invoke-interface {v3, v4}, Lorg/apache/james/mime4j/ContentHandler;->preamble(Ljava/io/InputStream;)V
invoke-virtual {v2}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->consume()V
:cond_2a
invoke-virtual {v2}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->hasMoreParts()Z
move-result v3
if-eqz v3, :cond_7d
new-instance v2, Lorg/apache/james/mime4j/MimeBoundaryInputStream;
invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->getBoundary()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, p1, v3}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/MimeStreamParser;->parseBodyPart(Ljava/io/InputStream;)V
invoke-virtual {v2}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->consume()V
invoke-virtual {v2}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parentEOF()Z
move-result v3
if-eqz v3, :cond_2a
sget-object v3, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/commons/logging/Log;
invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z
move-result v3
if-eqz v3, :cond_7d
sget-object v3, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/commons/logging/Log;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Line "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;
invoke-virtual {v5}, Lorg/apache/james/mime4j/RootInputStream;->getLineNumber()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ": Body part ended prematurely. "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "Higher level boundary detected or "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "EOF reached."
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
:cond_7d
iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;
new-instance v4, Lorg/apache/james/mime4j/CloseShieldInputStream;
invoke-direct {v4, p1}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V
invoke-interface {v3, v4}, Lorg/apache/james/mime4j/ContentHandler;->epilogue(Ljava/io/InputStream;)V
iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;
invoke-interface {v3}, Lorg/apache/james/mime4j/ContentHandler;->endMultipart()V
iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;
invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
:cond_91
:goto_91
invoke-virtual {p1}, Ljava/io/InputStream;->read()I
move-result v3
const/4 v4, -0x1
if-ne v3, v4, :cond_91
return-void
:cond_99
invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isMessage()Z
move-result v3
if-eqz v3, :cond_de
invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isBase64Encoded()Z
move-result v3
if-eqz v3, :cond_c5
sget-object v3, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/commons/logging/Log;
const-string v4, "base64 encoded message/rfc822 detected"
invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;
new-instance v3, Lorg/apache/james/mime4j/decoder/Base64InputStream;
invoke-direct {v3, p1}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V
invoke-direct {v1, v3}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V
move-object p1, v1
:goto_b7
:cond_b7
iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;
invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parseMessage(Ljava/io/InputStream;)V
iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;
invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
goto :goto_91
:cond_c5
invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isQuotedPrintableEncoded()Z
move-result v3
if-eqz v3, :cond_b7
sget-object v3, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/commons/logging/Log;
const-string v4, "quoted-printable encoded message/rfc822 detected"
invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;
new-instance v3, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
invoke-direct {v3, p1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V
invoke-direct {v1, v3}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V
move-object p1, v1
goto :goto_b7
:cond_de
iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;
new-instance v4, Lorg/apache/james/mime4j/CloseShieldInputStream;
invoke-direct {v4, p1}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V
invoke-interface {v3, v0, v4}, Lorg/apache/james/mime4j/ContentHandler;->body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
goto :goto_91
.end method
.method private parseHeader(Ljava/io/InputStream;)Lorg/apache/james/mime4j/BodyDescriptor;
.registers 19
new-instance v1, Lorg/apache/james/mime4j/BodyDescriptor;
move-object/from16 v0, p0
iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;
move-object v14, v0
invoke-virtual {v14}, Ljava/util/LinkedList;->isEmpty()Z
move-result v14
if-eqz v14, :cond_96
const/4 v14, 0x0
:goto_e
invoke-direct {v1, v14}, Lorg/apache/james/mime4j/BodyDescriptor;-><init>(Lorg/apache/james/mime4j/BodyDescriptor;)V
move-object/from16 v0, p0
iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;
move-object v14, v0
invoke-interface {v14}, Lorg/apache/james/mime4j/ContentHandler;->startHeader()V
move-object/from16 v0, p0
iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;
move-object v14, v0
invoke-virtual {v14}, Lorg/apache/james/mime4j/RootInputStream;->getLineNumber()I
move-result v7
new-instance v10, Ljava/lang/StringBuffer;
invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V
const/4 v2, 0x0
const/4 v9, 0x0
:goto_29
invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I
move-result v2
const/4 v14, -0x1
if-eq v2, v14, :cond_43
const/16 v14, 0xa
if-ne v2, v14, :cond_a4
const/16 v14, 0xa
if-eq v9, v14, :cond_3a
if-nez v9, :cond_a4
:cond_3a
invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I
move-result v14
const/4 v15, 0x1
sub-int/2addr v14, v15
invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
:cond_43
const/4 v14, -0x1
if-ne v2, v14, :cond_7c
sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/commons/logging/Log;
invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z
move-result v14
if-eqz v14, :cond_7c
sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/commons/logging/Log;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "Line "
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
move-object/from16 v0, p0
iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Lorg/apache/james/mime4j/RootInputStream;->getLineNumber()I
move-result v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, ": Unexpected end of headers detected. "
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "Boundary detected in header or EOF reached."
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
:cond_7c
const/4 v11, 0x0
const/4 v8, 0x0
move v12, v7
:goto_7f
invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I
move-result v14
if-ge v8, v14, :cond_169
:goto_85
invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I
move-result v14
if-ge v8, v14, :cond_b0
invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v14
const/16 v15, 0xd
if-eq v14, v15, :cond_b0
add-int/lit8 v8, v8, 0x1
goto :goto_85
:cond_96
move-object/from16 v0, p0
iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;
move-object v14, v0
invoke-virtual {v14}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lorg/apache/james/mime4j/BodyDescriptor;
move-object v14, v2
goto/16 :goto_e
:cond_a4
int-to-char v14, v2
invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/16 v14, 0xd
if-ne v2, v14, :cond_ae
:goto_ac
goto/16 :goto_29
:cond_ae
move v9, v2
goto :goto_ac
:cond_b0
invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I
move-result v14
const/4 v15, 0x1
sub-int/2addr v14, v15
if-ge v8, v14, :cond_c5
add-int/lit8 v14, v8, 0x1
invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v14
const/16 v15, 0xa
if-eq v14, v15, :cond_c5
add-int/lit8 v8, v8, 0x1
goto :goto_7f
:cond_c5
invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I
move-result v14
const/4 v15, 0x2
sub-int/2addr v14, v15
if-ge v8, v14, :cond_db
sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;
add-int/lit8 v15, v8, 0x2
invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v15
invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z
move-result v14
if-eqz v14, :cond_160
:cond_db
invoke-virtual {v10, v11, v8}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
move-result-object v3
add-int/lit8 v11, v8, 0x2
const/16 v14, 0x3a
invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(I)I
move-result v6
const/4 v13, 0x0
const/4 v14, -0x1
if-eq v6, v14, :cond_129
sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;
const/4 v15, 0x0
invoke-virtual {v3, v15}, Ljava/lang/String;->charAt(I)C
move-result v15
invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z
move-result v14
if-eqz v14, :cond_129
const/4 v13, 0x1
const/4 v14, 0x0
invoke-virtual {v3, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x0
:goto_103
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v14
if-ge v5, v14, :cond_116
sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;
invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C
move-result v15
invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z
move-result v14
if-nez v14, :cond_166
const/4 v13, 0x0
:cond_116
if-eqz v13, :cond_129
move-object/from16 v0, p0
iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;
move-object v14, v0
invoke-interface {v14, v3}, Lorg/apache/james/mime4j/ContentHandler;->field(Ljava/lang/String;)V
add-int/lit8 v14, v6, 0x1
invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v14
invoke-virtual {v1, v4, v14}, Lorg/apache/james/mime4j/BodyDescriptor;->addField(Ljava/lang/String;Ljava/lang/String;)V
:cond_129
if-nez v13, :cond_15f
sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/commons/logging/Log;
invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z
move-result v14
if-eqz v14, :cond_15f
sget-object v14, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/commons/logging/Log;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "Line "
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, ": Ignoring invalid field: \'"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, "\'"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
:cond_15f
move v12, v7
:cond_160
add-int/lit8 v8, v8, 0x2
add-int/lit8 v7, v7, 0x1
goto/16 :goto_7f
:cond_166
add-int/lit8 v5, v5, 0x1
goto :goto_103
:cond_169
move-object/from16 v0, p0
iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;
move-object v14, v0
invoke-interface {v14}, Lorg/apache/james/mime4j/ContentHandler;->endHeader()V
return-object v1
.end method
.method private parseMessage(Ljava/io/InputStream;)V
.registers 4
iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->raw:Z
if-eqz v0, :cond_f
iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;
new-instance v1, Lorg/apache/james/mime4j/CloseShieldInputStream;
invoke-direct {v1, p1}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V
invoke-interface {v0, v1}, Lorg/apache/james/mime4j/ContentHandler;->raw(Ljava/io/InputStream;)V
:goto_e
return-void
:cond_f
iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;
invoke-interface {v0}, Lorg/apache/james/mime4j/ContentHandler;->startMessage()V
invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parseEntity(Ljava/io/InputStream;)V
iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;
invoke-interface {v0}, Lorg/apache/james/mime4j/ContentHandler;->endMessage()V
goto :goto_e
.end method
.method public isRaw()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->raw:Z
return v0
.end method
.method public parse(Ljava/io/InputStream;)V
.registers 3
new-instance v0, Lorg/apache/james/mime4j/RootInputStream;
invoke-direct {v0, p1}, Lorg/apache/james/mime4j/RootInputStream;-><init>(Ljava/io/InputStream;)V
iput-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;
iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/MimeStreamParser;->parseMessage(Ljava/io/InputStream;)V
return-void
.end method
.method public setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V
.registers 2
iput-object p1, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;
return-void
.end method
.method public setRaw(Z)V
.registers 2
iput-boolean p1, p0, Lorg/apache/james/mime4j/MimeStreamParser;->raw:Z
return-void
.end method
.method public stop()V
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;
invoke-virtual {v0}, Lorg/apache/james/mime4j/RootInputStream;->truncate()V
return-void
.end method