.class public Lorg/apache/commons/io/input/XmlStreamReader;
.super Ljava/io/Reader;
.source "XmlStreamReader.java"
.field private static final BOMS:[Lorg/apache/commons/io/ByteOrderMark; = null
.field private static final BUFFER_SIZE:I = 0x1000
.field private static final CHARSET_PATTERN:Ljava/util/regex/Pattern; = null
.field private static final EBCDIC:Ljava/lang/String; = "CP1047"
.field public static final ENCODING_PATTERN:Ljava/util/regex/Pattern; = null
.field private static final HTTP_EX_1:Ljava/lang/String; = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL"
.field private static final HTTP_EX_2:Ljava/lang/String; = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch"
.field private static final HTTP_EX_3:Ljava/lang/String; = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Invalid MIME"
.field private static final RAW_EX_1:Ljava/lang/String; = "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"
.field private static final RAW_EX_2:Ljava/lang/String; = "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM"
.field private static final US_ASCII:Ljava/lang/String; = "US-ASCII"
.field private static final UTF_16:Ljava/lang/String; = "UTF-16"
.field private static final UTF_16BE:Ljava/lang/String; = "UTF-16BE"
.field private static final UTF_16LE:Ljava/lang/String; = "UTF-16LE"
.field private static final UTF_32:Ljava/lang/String; = "UTF-32"
.field private static final UTF_32BE:Ljava/lang/String; = "UTF-32BE"
.field private static final UTF_32LE:Ljava/lang/String; = "UTF-32LE"
.field private static final UTF_8:Ljava/lang/String; = "UTF-8"
.field private static final XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;
.field private final defaultEncoding:Ljava/lang/String;
.field private final encoding:Ljava/lang/String;
.field private final reader:Ljava/io/Reader;
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x3
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v5, 0x0
const/4 v4, 0x4
const/4 v0, 0x5
new-array v0, v0, [Lorg/apache/commons/io/ByteOrderMark;
sget-object v1, Lorg/apache/commons/io/ByteOrderMark;->UTF_8:Lorg/apache/commons/io/ByteOrderMark;
aput-object v1, v0, v5
sget-object v1, Lorg/apache/commons/io/ByteOrderMark;->UTF_16BE:Lorg/apache/commons/io/ByteOrderMark;
aput-object v1, v0, v6
sget-object v1, Lorg/apache/commons/io/ByteOrderMark;->UTF_16LE:Lorg/apache/commons/io/ByteOrderMark;
aput-object v1, v0, v7
sget-object v1, Lorg/apache/commons/io/ByteOrderMark;->UTF_32BE:Lorg/apache/commons/io/ByteOrderMark;
aput-object v1, v0, v8
sget-object v1, Lorg/apache/commons/io/ByteOrderMark;->UTF_32LE:Lorg/apache/commons/io/ByteOrderMark;
aput-object v1, v0, v4
sput-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->BOMS:[Lorg/apache/commons/io/ByteOrderMark;
const/4 v0, 0x6
new-array v0, v0, [Lorg/apache/commons/io/ByteOrderMark;
new-instance v1, Lorg/apache/commons/io/ByteOrderMark;
const-string v2, "UTF-8"
new-array v3, v4, [I
fill-array-data v3, :array_90
invoke-direct {v1, v2, v3}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V
aput-object v1, v0, v5
new-instance v1, Lorg/apache/commons/io/ByteOrderMark;
const-string v2, "UTF-16BE"
new-array v3, v4, [I
fill-array-data v3, :array_9c
invoke-direct {v1, v2, v3}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V
aput-object v1, v0, v6
new-instance v1, Lorg/apache/commons/io/ByteOrderMark;
const-string v2, "UTF-16LE"
new-array v3, v4, [I
fill-array-data v3, :array_a8
invoke-direct {v1, v2, v3}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V
aput-object v1, v0, v7
new-instance v1, Lorg/apache/commons/io/ByteOrderMark;
const-string v2, "UTF-32BE"
const/16 v3, 0x10
new-array v3, v3, [I
fill-array-data v3, :array_b4
invoke-direct {v1, v2, v3}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V
aput-object v1, v0, v8
new-instance v1, Lorg/apache/commons/io/ByteOrderMark;
const-string v2, "UTF-32LE"
const/16 v3, 0x10
new-array v3, v3, [I
fill-array-data v3, :array_d8
invoke-direct {v1, v2, v3}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V
aput-object v1, v0, v4
const/4 v1, 0x5
new-instance v2, Lorg/apache/commons/io/ByteOrderMark;
const-string v3, "CP1047"
new-array v4, v4, [I
fill-array-data v4, :array_fc
invoke-direct {v2, v3, v4}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V
aput-object v2, v0, v1
sput-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;
const-string v0, "charset=[\"\']?([.[^; \"\']]*)[\"\']?"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->CHARSET_PATTERN:Ljava/util/regex/Pattern;
const-string v0, "<\\?xml.*encoding[\\s]*=[\\s]*((?:\".[^\"]*\")|(?:\'.[^\']*\'))"
const/16 v1, 0x8
invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;
return-void
nop
:array_a8
.array-data 0x4
0x3ct 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x3ft 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
:array_fc
.array-data 0x4
0x4ct 0x0t 0x0t 0x0t
0x6ft 0x0t 0x0t 0x0t
0xa7t 0x0t 0x0t 0x0t
0x94t 0x0t 0x0t 0x0t
.end array-data
:array_b4
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x3ct 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x3ft 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x78t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x6dt 0x0t 0x0t 0x0t
.end array-data
:array_d8
.array-data 0x4
0x3ct 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x3ft 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x78t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x6dt 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
:array_9c
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x3ct 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x3ft 0x0t 0x0t 0x0t
.end array-data
:array_90
.array-data 0x4
0x3ct 0x0t 0x0t 0x0t
0x3ft 0x0t 0x0t 0x0t
0x78t 0x0t 0x0t 0x0t
0x6dt 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>(Ljava/io/File;)V
.registers 3
new-instance v0, Ljava/io/FileInputStream;
invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-direct {p0, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;Z)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;)V
.registers 10
invoke-direct {p0}, Ljava/io/Reader;-><init>()V
iput-object p4, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;
new-instance v0, Lorg/apache/commons/io/input/BOMInputStream;
new-instance v2, Ljava/io/BufferedInputStream;
const/16 v3, 0x1000
invoke-direct {v2, p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
const/4 v3, 0x0
sget-object v4, Lorg/apache/commons/io/input/XmlStreamReader;->BOMS:[Lorg/apache/commons/io/ByteOrderMark;
invoke-direct {v0, v2, v3, v4}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V
new-instance v1, Lorg/apache/commons/io/input/BOMInputStream;
const/4 v2, 0x1
sget-object v3, Lorg/apache/commons/io/input/XmlStreamReader;->XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;
invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V
invoke-direct {p0, v0, v1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReader;->doHttpStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;
new-instance v2, Ljava/io/InputStreamReader;
iget-object v3, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;
invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
iput-object v2, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Z)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;ZLjava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;ZLjava/lang/String;)V
.registers 9
invoke-direct {p0}, Ljava/io/Reader;-><init>()V
iput-object p3, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;
new-instance v0, Lorg/apache/commons/io/input/BOMInputStream;
new-instance v2, Ljava/io/BufferedInputStream;
const/16 v3, 0x1000
invoke-direct {v2, p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
const/4 v3, 0x0
sget-object v4, Lorg/apache/commons/io/input/XmlStreamReader;->BOMS:[Lorg/apache/commons/io/ByteOrderMark;
invoke-direct {v0, v2, v3, v4}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V
new-instance v1, Lorg/apache/commons/io/input/BOMInputStream;
const/4 v2, 0x1
sget-object v3, Lorg/apache/commons/io/input/XmlStreamReader;->XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;
invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V
invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/io/input/XmlStreamReader;->doRawStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Z)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;
new-instance v2, Ljava/io/InputStreamReader;
iget-object v3, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;
invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
iput-object v2, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;
return-void
.end method
.method public constructor <init>(Ljava/net/URL;)V
.registers 4
invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/net/URLConnection;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/net/URLConnection;Ljava/lang/String;)V
.registers 11
invoke-direct {p0}, Ljava/io/Reader;-><init>()V
iput-object p2, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;
const/4 v3, 0x1
invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v2
new-instance v0, Lorg/apache/commons/io/input/BOMInputStream;
new-instance v5, Ljava/io/BufferedInputStream;
const/16 v6, 0x1000
invoke-direct {v5, v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
const/4 v6, 0x0
sget-object v7, Lorg/apache/commons/io/input/XmlStreamReader;->BOMS:[Lorg/apache/commons/io/ByteOrderMark;
invoke-direct {v0, v5, v6, v7}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V
new-instance v4, Lorg/apache/commons/io/input/BOMInputStream;
const/4 v5, 0x1
sget-object v6, Lorg/apache/commons/io/input/XmlStreamReader;->XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;
invoke-direct {v4, v0, v5, v6}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V
instance-of v5, p1, Ljava/net/HttpURLConnection;
if-nez v5, :cond_2b
if-eqz v1, :cond_3b
:cond_2b
invoke-direct {p0, v0, v4, v1, v3}, Lorg/apache/commons/io/input/XmlStreamReader;->doHttpStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v5
iput-object v5, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;
:goto_31
new-instance v5, Ljava/io/InputStreamReader;
iget-object v6, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;
invoke-direct {v5, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
iput-object v5, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;
return-void
:cond_3b
invoke-direct {p0, v0, v4, v3}, Lorg/apache/commons/io/input/XmlStreamReader;->doRawStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Z)Ljava/lang/String;
move-result-object v5
iput-object v5, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;
goto :goto_31
.end method
.method private doHttpStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Ljava/lang/String;Z)Ljava/lang/String;
.registers 12
invoke-virtual {p1}, Lorg/apache/commons/io/input/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;
move-result-object v2
invoke-virtual {p2}, Lorg/apache/commons/io/input/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;
move-result-object v3
invoke-static {p2, v3}, Lorg/apache/commons/io/input/XmlStreamReader;->getXmlProlog(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
move-object v0, p0
move-object v1, p3
move v5, p4
:try_start_f
invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/io/input/XmlStreamReader;->calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
:try_end_12
.catch Lorg/apache/commons/io/input/XmlStreamReaderException; {:try_start_f .. :try_end_12} :catch_14
move-result-object v0
:goto_13
return-object v0
:catch_14
move-exception v6
if-eqz p4, :cond_1c
invoke-direct {p0, p3, v6}, Lorg/apache/commons/io/input/XmlStreamReader;->doLenientDetection(Ljava/lang/String;Lorg/apache/commons/io/input/XmlStreamReaderException;)Ljava/lang/String;
move-result-object v0
goto :goto_13
:cond_1c
throw v6
.end method
.method private doLenientDetection(Ljava/lang/String;Lorg/apache/commons/io/input/XmlStreamReaderException;)Ljava/lang/String;
.registers 11
if-eqz p1, :cond_3d
const-string v0, "text/html"
invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3d
const-string v0, "text/html"
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object p1
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "text/xml"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p1
:try_start_27
invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getBomEncoding()Ljava/lang/String;
move-result-object v2
invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getXmlGuessEncoding()Ljava/lang/String;
move-result-object v3
invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getXmlEncoding()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x1
move-object v0, p0
move-object v1, p1
invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/io/input/XmlStreamReader;->calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
:try_end_39
.catch Lorg/apache/commons/io/input/XmlStreamReaderException; {:try_start_27 .. :try_end_39} :catch_3b
move-result-object v6
:cond_3a
:goto_3a
return-object v6
:catch_3b
move-exception v7
move-object p2, v7
:cond_3d
invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getXmlEncoding()Ljava/lang/String;
move-result-object v6
if-nez v6, :cond_47
invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getContentTypeEncoding()Ljava/lang/String;
move-result-object v6
:cond_47
if-nez v6, :cond_3a
iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;
if-nez v0, :cond_50
const-string v6, "UTF-8"
:goto_4f
goto :goto_3a
:cond_50
iget-object v6, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;
goto :goto_4f
.end method
.method private doRawStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Z)Ljava/lang/String;
.registers 9
invoke-virtual {p1}, Lorg/apache/commons/io/input/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Lorg/apache/commons/io/input/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;
move-result-object v3
invoke-static {p2, v3}, Lorg/apache/commons/io/input/XmlStreamReader;->getXmlProlog(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
:try_start_c
invoke-virtual {p0, v0, v3, v2}, Lorg/apache/commons/io/input/XmlStreamReader;->calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_f
.catch Lorg/apache/commons/io/input/XmlStreamReaderException; {:try_start_c .. :try_end_f} :catch_11
move-result-object v4
:goto_10
return-object v4
:catch_11
move-exception v1
if-eqz p3, :cond_1a
const/4 v4, 0x0
invoke-direct {p0, v4, v1}, Lorg/apache/commons/io/input/XmlStreamReader;->doLenientDetection(Ljava/lang/String;Lorg/apache/commons/io/input/XmlStreamReaderException;)Ljava/lang/String;
move-result-object v4
goto :goto_10
:cond_1a
throw v1
.end method
.method static getContentTypeEncoding(Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/4 v4, 0x0
const/4 v0, 0x0
if-eqz p0, :cond_2c
const-string v5, ";"
invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
const/4 v5, -0x1
if-le v1, v5, :cond_2c
add-int/lit8 v5, v1, 0x1
invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
sget-object v5, Lorg/apache/commons/io/input/XmlStreamReader;->CHARSET_PATTERN:Ljava/util/regex/Pattern;
invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v2
invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z
move-result v5
if-eqz v5, :cond_2d
const/4 v5, 0x1
invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v0
:goto_24
if-eqz v0, :cond_2f
sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
:goto_2c
:cond_2c
return-object v0
:cond_2d
move-object v0, v4
goto :goto_24
:cond_2f
move-object v0, v4
goto :goto_2c
.end method
.method static getContentTypeMime(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/4 v1, 0x0
if-eqz p0, :cond_14
const-string v2, ";"
invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
if-ltz v0, :cond_15
const/4 v2, 0x0
invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
:goto_10
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
:cond_14
return-object v1
:cond_15
move-object v1, p0
goto :goto_10
.end method
.method private static getXmlProlog(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
.registers 18
const/4 v5, 0x0
if-eqz p1, :cond_b1
const/16 v13, 0x1000
new-array v2, v13, [B
const/16 v13, 0x1000
move-object/from16 v0, p0
invoke-virtual {v0, v13}, Ljava/io/InputStream;->mark(I)V
const/4 v10, 0x0
const/16 v9, 0x1000
move-object/from16 v0, p0
invoke-virtual {v0, v2, v10, v9}, Ljava/io/InputStream;->read([BII)I
move-result v4
const/4 v6, -0x1
const/4 v12, 0x0
:goto_19
const/4 v13, -0x1
if-eq v4, v13, :cond_3a
const/4 v13, -0x1
if-ne v6, v13, :cond_3a
const/16 v13, 0x1000
if-ge v10, v13, :cond_3a
add-int/2addr v10, v4
sub-int/2addr v9, v4
move-object/from16 v0, p0
invoke-virtual {v0, v2, v10, v9}, Ljava/io/InputStream;->read([BII)I
move-result v4
new-instance v12, Ljava/lang/String;
const/4 v13, 0x0
move-object/from16 v0, p1
invoke-direct {v12, v2, v13, v10, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
const/16 v13, 0x3e
invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I
move-result v6
goto :goto_19
:cond_3a
const/4 v13, -0x1
if-ne v6, v13, :cond_67
const/4 v13, -0x1
if-ne v4, v13, :cond_48
new-instance v13, Ljava/io/IOException;
const-string v14, "Unexpected end of XML stream"
invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v13
:cond_48
new-instance v13, Ljava/io/IOException;
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "XML prolog or ROOT element not found on first "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v14
const-string v15, " bytes"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v13
:cond_67
move v3, v10
if-lez v3, :cond_b1
invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V
new-instance v1, Ljava/io/BufferedReader;
new-instance v13, Ljava/io/StringReader;
const/4 v14, 0x0
add-int/lit8 v15, v6, 0x1
invoke-virtual {v12, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v14
invoke-direct {v13, v14}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
invoke-direct {v1, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
new-instance v11, Ljava/lang/StringBuffer;
invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v7
:goto_87
if-eqz v7, :cond_91
invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v7
goto :goto_87
:cond_91
sget-object v13, Lorg/apache/commons/io/input/XmlStreamReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;
invoke-virtual {v13, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v8
invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z
move-result v13
if-eqz v13, :cond_b1
const/4 v13, 0x1
invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v5
const/4 v13, 0x1
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v14
add-int/lit8 v14, v14, -0x1
invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
:cond_b1
return-object v5
.end method
.method static isAppXml(Ljava/lang/String;)Z
.registers 2
if-eqz p0, :cond_2c
const-string v0, "application/xml"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_2a
const-string v0, "application/xml-dtd"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_2a
const-string v0, "application/xml-external-parsed-entity"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_2a
const-string v0, "application/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2c
const-string v0, "+xml"
invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2c
:cond_2a
const/4 v0, 0x1
:goto_2b
return v0
:cond_2c
const/4 v0, 0x0
goto :goto_2b
.end method
.method static isTextXml(Ljava/lang/String;)Z
.registers 2
if-eqz p0, :cond_24
const-string v0, "text/xml"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_22
const-string v0, "text/xml-external-parsed-entity"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_22
const-string v0, "text/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_24
const-string v0, "+xml"
invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_24
:cond_22
const/4 v0, 0x1
:goto_23
return v0
:cond_24
const/4 v0, 0x0
goto :goto_23
.end method
.method  calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.registers 15
if-eqz p5, :cond_6
if-eqz p4, :cond_6
move-object v3, p4
:goto_5
:cond_5
return-object v3
:cond_6
invoke-static {p1}, Lorg/apache/commons/io/input/XmlStreamReader;->getContentTypeMime(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {p1}, Lorg/apache/commons/io/input/XmlStreamReader;->getContentTypeEncoding(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v2}, Lorg/apache/commons/io/input/XmlStreamReader;->isAppXml(Ljava/lang/String;)Z
move-result v7
invoke-static {v2}, Lorg/apache/commons/io/input/XmlStreamReader;->isTextXml(Ljava/lang/String;)Z
move-result v8
if-nez v7, :cond_3b
if-nez v8, :cond_3b
const-string v0, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Invalid MIME"
const/4 v4, 0x5
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object v2, v4, v5
const/4 v5, 0x1
aput-object v3, v4, v5
const/4 v5, 0x2
aput-object p2, v4, v5
const/4 v5, 0x3
aput-object p3, v4, v5
const/4 v5, 0x4
aput-object p4, v4, v5
invoke-static {v0, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
new-instance v0, Lorg/apache/commons/io/input/XmlStreamReaderException;
move-object v4, p2
move-object v5, p3
move-object v6, p4
invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v0
:cond_3b
if-nez v3, :cond_4f
if-eqz v7, :cond_44
invoke-virtual {p0, p2, p3, p4}, Lorg/apache/commons/io/input/XmlStreamReader;->calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
goto :goto_5
:cond_44
iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;
if-nez v0, :cond_4c
const-string v0, "US-ASCII"
:goto_4a
move-object v3, v0
goto :goto_5
:cond_4c
iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;
goto :goto_4a
:cond_4f
const-string v0, "UTF-16BE"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_5f
const-string v0, "UTF-16LE"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_82
:cond_5f
if-eqz p2, :cond_5
const-string v0, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL"
const/4 v4, 0x5
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object v2, v4, v5
const/4 v5, 0x1
aput-object v3, v4, v5
const/4 v5, 0x2
aput-object p2, v4, v5
const/4 v5, 0x3
aput-object p3, v4, v5
const/4 v5, 0x4
aput-object p4, v4, v5
invoke-static {v0, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
new-instance v0, Lorg/apache/commons/io/input/XmlStreamReaderException;
move-object v4, p2
move-object v5, p3
move-object v6, p4
invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v0
:cond_82
const-string v0, "UTF-16"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b8
if-eqz p2, :cond_97
const-string v0, "UTF-16"
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_97
move-object v3, p2
goto/16 :goto_5
:cond_97
const-string v0, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch"
const/4 v4, 0x5
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object v2, v4, v5
const/4 v5, 0x1
aput-object v3, v4, v5
const/4 v5, 0x2
aput-object p2, v4, v5
const/4 v5, 0x3
aput-object p3, v4, v5
const/4 v5, 0x4
aput-object p4, v4, v5
invoke-static {v0, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
new-instance v0, Lorg/apache/commons/io/input/XmlStreamReaderException;
move-object v4, p2
move-object v5, p3
move-object v6, p4
invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v0
:cond_b8
const-string v0, "UTF-32BE"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_c8
const-string v0, "UTF-32LE"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_eb
:cond_c8
if-eqz p2, :cond_5
const-string v0, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL"
const/4 v4, 0x5
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object v2, v4, v5
const/4 v5, 0x1
aput-object v3, v4, v5
const/4 v5, 0x2
aput-object p2, v4, v5
const/4 v5, 0x3
aput-object p3, v4, v5
const/4 v5, 0x4
aput-object p4, v4, v5
invoke-static {v0, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
new-instance v0, Lorg/apache/commons/io/input/XmlStreamReaderException;
move-object v4, p2
move-object v5, p3
move-object v6, p4
invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v0
:cond_eb
const-string v0, "UTF-32"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
if-eqz p2, :cond_100
const-string v0, "UTF-32"
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_100
move-object v3, p2
goto/16 :goto_5
:cond_100
const-string v0, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch"
const/4 v4, 0x5
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object v2, v4, v5
const/4 v5, 0x1
aput-object v3, v4, v5
const/4 v5, 0x2
aput-object p2, v4, v5
const/4 v5, 0x3
aput-object p3, v4, v5
const/4 v5, 0x4
aput-object p4, v4, v5
invoke-static {v0, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
new-instance v0, Lorg/apache/commons/io/input/XmlStreamReaderException;
move-object v4, p2
move-object v5, p3
move-object v6, p4
invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v0
.end method
.method  calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 10
const/4 v2, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
if-nez p1, :cond_31
if-eqz p2, :cond_a
if-nez p3, :cond_15
:cond_a
iget-object v1, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;
if-nez v1, :cond_12
const-string v1, "UTF-8"
:goto_10
move-object p1, v1
:cond_11
:goto_11
return-object p1
:cond_12
iget-object v1, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;
goto :goto_10
:cond_15
const-string v1, "UTF-16"
invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2f
const-string v1, "UTF-16BE"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_2d
const-string v1, "UTF-16LE"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2f
:cond_2d
move-object p1, p2
goto :goto_11
:cond_2f
move-object p1, p3
goto :goto_11
:cond_31
const-string v1, "UTF-8"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_75
if-eqz p2, :cond_57
const-string v1, "UTF-8"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_57
const-string v1, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"
new-array v2, v2, [Ljava/lang/Object;
aput-object p1, v2, v3
aput-object p2, v2, v4
aput-object p3, v2, v5
invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;
invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v1
:cond_57
if-eqz p3, :cond_11
const-string v1, "UTF-8"
invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_11
const-string v1, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"
new-array v2, v2, [Ljava/lang/Object;
aput-object p1, v2, v3
aput-object p2, v2, v4
aput-object p3, v2, v5
invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;
invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v1
:cond_75
const-string v1, "UTF-16BE"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_85
const-string v1, "UTF-16LE"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_c5
:cond_85
if-eqz p2, :cond_a1
invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_a1
const-string v1, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"
new-array v2, v2, [Ljava/lang/Object;
aput-object p1, v2, v3
aput-object p2, v2, v4
aput-object p3, v2, v5
invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;
invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v1
:cond_a1
if-eqz p3, :cond_11
const-string v1, "UTF-16"
invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_11
invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_11
const-string v1, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"
new-array v2, v2, [Ljava/lang/Object;
aput-object p1, v2, v3
aput-object p2, v2, v4
aput-object p3, v2, v5
invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;
invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v1
:cond_c5
const-string v1, "UTF-32BE"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_d5
const-string v1, "UTF-32LE"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_115
:cond_d5
if-eqz p2, :cond_f1
invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_f1
const-string v1, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"
new-array v2, v2, [Ljava/lang/Object;
aput-object p1, v2, v3
aput-object p2, v2, v4
aput-object p3, v2, v5
invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;
invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v1
:cond_f1
if-eqz p3, :cond_11
const-string v1, "UTF-32"
invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_11
invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_11
const-string v1, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"
new-array v2, v2, [Ljava/lang/Object;
aput-object p1, v2, v3
aput-object p2, v2, v4
aput-object p3, v2, v5
invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;
invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v1
:cond_115
const-string v1, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM"
new-array v2, v2, [Ljava/lang/Object;
aput-object p1, v2, v3
aput-object p2, v2, v4
aput-object p3, v2, v5
invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lorg/apache/commons/io/input/XmlStreamReaderException;
invoke-direct {v1, v0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v1
.end method
.method public close()V
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;
invoke-virtual {v0}, Ljava/io/Reader;->close()V
return-void
.end method
.method public getDefaultEncoding()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;
return-object v0
.end method
.method public getEncoding()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;
return-object v0
.end method
.method public read([CII)I
.registers 5
iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I
move-result v0
return v0
.end method