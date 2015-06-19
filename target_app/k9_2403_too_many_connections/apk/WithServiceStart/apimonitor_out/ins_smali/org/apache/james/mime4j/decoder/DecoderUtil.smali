.class public Lorg/apache/james/mime4j/decoder/DecoderUtil;
.super Ljava/lang/Object;
.source "DecoderUtil.java"
.field private static log:Lorg/apache/commons/logging/Log;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;
invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
move-result-object v0
sput-object v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/String;
invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBase64(Ljava/lang/String;)[B
move-result-object v1
invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
return-object v0
.end method
.method public static decodeBase64(Ljava/lang/String;)[B
.registers 7
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
:try_start_5
const-string v5, "US-ASCII"
invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v2
new-instance v4, Lorg/apache/james/mime4j/decoder/Base64InputStream;
new-instance v5, Ljava/io/ByteArrayInputStream;
invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
invoke-direct {v4, v5}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V
const/4 v0, 0x0
:goto_16
invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->read()I
move-result v0
const/4 v5, -0x1
if-eq v0, v5, :cond_28
invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
:try_end_20
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_20} :catch_21
goto :goto_16
:catch_21
move-exception v5
move-object v3, v5
sget-object v5, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;
invoke-interface {v5, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V
:cond_28
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v5
return-object v5
.end method
.method public static decodeBaseQuotedPrintable(Ljava/lang/String;)[B
.registers 7
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
:try_start_5
const-string v5, "US-ASCII"
invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v2
new-instance v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
new-instance v5, Ljava/io/ByteArrayInputStream;
invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
invoke-direct {v4, v5}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V
const/4 v0, 0x0
:goto_16
invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->read()I
move-result v0
const/4 v5, -0x1
if-eq v0, v5, :cond_28
invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
:try_end_20
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_20} :catch_21
goto :goto_16
:catch_21
move-exception v5
move-object v3, v5
sget-object v5, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;
invoke-interface {v5, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V
:cond_28
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v5
return-object v5
.end method
.method private static decodeEncodedWord(Ljava/lang/String;II)Ljava/lang/String;
.registers 16
const/16 v9, 0x3f
const/4 v8, 0x2
const/4 v10, 0x0
const-string v12, "\' in encoded word \'"
const-string v11, "\'"
add-int/lit8 v7, p1, 0x2
invoke-virtual {p0, v9, v7}, Ljava/lang/String;->indexOf(II)I
move-result v5
sub-int v7, p2, v8
if-ne v5, v7, :cond_14
move-object v7, v10
:goto_13
return-object v7
:cond_14
add-int/lit8 v7, v5, 0x1
invoke-virtual {p0, v9, v7}, Ljava/lang/String;->indexOf(II)I
move-result v6
sub-int v7, p2, v8
if-ne v6, v7, :cond_20
move-object v7, v10
goto :goto_13
:cond_20
add-int/lit8 v7, p1, 0x2
invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
add-int/lit8 v7, v5, 0x1
invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
add-int/lit8 v7, v6, 0x1
sub-int v8, p2, v8
invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-static {v4}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_76
sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;
invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z
move-result v7
if-eqz v7, :cond_74
sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "MIME charset \'"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\' in encoded word \'"
invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\' doesn\'t have a "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "corresponding Java charset"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
:cond_74
move-object v7, v10
goto :goto_13
:cond_76
invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isDecodingSupported(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_bd
sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;
invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z
move-result v7
if-eqz v7, :cond_ba
sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Current JDK doesn\'t support decoding of charset \'"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\' (MIME charset \'"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\' in encoded word \'"
invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\')"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
:cond_ba
move-object v7, v10
goto/16 :goto_13
:cond_bd
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v7
if-nez v7, :cond_f0
sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;
invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z
move-result v7
if-eqz v7, :cond_ed
sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Missing encoded text in encoded word: \'"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\'"
invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
:cond_ed
move-object v7, v10
goto/16 :goto_13
:cond_f0
:try_start_f0
const-string v7, "Q"
invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_fe
invoke-static {v2, v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
goto/16 :goto_13
:cond_fe
const-string v7, "B"
invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_10c
invoke-static {v2, v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
goto/16 :goto_13
:cond_10c
sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;
invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z
move-result v7
if-eqz v7, :cond_136
sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Warning: Unknown encoding in encoded word \'"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\'"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
:cond_136
:try_end_136
.catch Ljava/io/UnsupportedEncodingException; {:try_start_f0 .. :try_end_136} :catch_139
.catch Ljava/lang/RuntimeException; {:try_start_f0 .. :try_end_136} :catch_168
move-object v7, v10
goto/16 :goto_13
:catch_139
move-exception v7
move-object v1, v7
sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;
invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z
move-result v7
if-eqz v7, :cond_165
sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Unsupported encoding in encoded word \'"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\'"
invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-interface {v7, v8, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
:cond_165
move-object v7, v10
goto/16 :goto_13
:catch_168
move-exception v7
move-object v1, v7
sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;
invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z
move-result v7
if-eqz v7, :cond_194
sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Could not decode encoded word \'"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\'"
invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-interface {v7, v8, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
:cond_194
move-object v7, v10
goto/16 :goto_13
.end method
.method public static decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;
.registers 15
const/16 v12, 0x3f
const/4 v11, -0x1
const-string v13, "=?"
const-string v10, "=?"
invoke-virtual {p0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v10
if-ne v10, v11, :cond_f
move-object v10, p0
:goto_e
return-object v10
:cond_f
const/4 v4, 0x0
const/4 v5, 0x0
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
:goto_16
const-string v10, "=?"
invoke-virtual {p0, v13, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v0
add-int/lit8 v3, v0, 0x2
if-eq v0, v11, :cond_30
add-int/lit8 v10, v3, 0x2
invoke-virtual {p0, v12, v10}, Ljava/lang/String;->indexOf(II)I
move-result v6
add-int/lit8 v10, v6, 0x1
invoke-virtual {p0, v12, v10}, Ljava/lang/String;->indexOf(II)I
move-result v7
if-eq v7, v11, :cond_30
add-int/lit8 v3, v7, 0x1
:cond_30
if-ne v0, v11, :cond_39
move v2, v11
:goto_33
if-ne v2, v11, :cond_4d
if-nez v4, :cond_41
move-object v10, p0
goto :goto_e
:cond_39
const-string v10, "?="
invoke-virtual {p0, v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v10
move v2, v10
goto :goto_33
:cond_41
invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v10
invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
goto :goto_e
:cond_4d
add-int/lit8 v2, v2, 0x2
invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v9
invoke-static {p0, v0, v2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWord(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_69
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v10
invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_63
move v4, v2
if-eqz v1, :cond_78
const/4 v10, 0x1
move v5, v10
:goto_68
goto :goto_16
:cond_69
if-eqz v5, :cond_71
invoke-static {v9}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(Ljava/lang/String;)Z
move-result v10
if-nez v10, :cond_74
:cond_71
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_74
invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_63
:cond_78
const/4 v10, 0x0
move v5, v10
goto :goto_68
.end method
.method public static decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 7
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const/4 v1, 0x0
:goto_6
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
if-ge v1, v3, :cond_20
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v3, 0x5f
if-ne v0, v3, :cond_1c
const-string v3, "=20"
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_19
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_1c
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_19
:cond_20
new-instance v3, Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBaseQuotedPrintable(Ljava/lang/String;)[B
move-result-object v4
invoke-direct {v3, v4, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
return-object v3
.end method