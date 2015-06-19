.class  Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;
.super Ljava/lang/Object;
.source "ProGuard"
.field  a:Ljava/util/Properties;
.field  b:[B
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Properties;
invoke-direct {v0}, Ljava/util/Properties;-><init>()V
iput-object v0, p0, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;->a:Ljava/util/Properties;
return-void
.end method
.method synthetic constructor <init>(Lcom/tencent/utils/ApkExternalInfoTool$1;)V
.registers 2
invoke-direct {p0}, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;-><init>()V
return-void
.end method
.method  a([B)V
.registers 8
const/4 v5, 0x2
if-nez p1, :cond_4
:cond_3
:goto_3
return-void
:cond_4
invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-static {}, Lcom/tencent/utils/ApkExternalInfoTool;->a()Lcom/tencent/utils/ZipShort;
move-result-object v1
invoke-virtual {v1}, Lcom/tencent/utils/ZipShort;->getBytes()[B
move-result-object v1
array-length v1, v1
new-array v2, v1, [B
invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
invoke-static {}, Lcom/tencent/utils/ApkExternalInfoTool;->a()Lcom/tencent/utils/ZipShort;
move-result-object v3
new-instance v4, Lcom/tencent/utils/ZipShort;
invoke-direct {v4, v2}, Lcom/tencent/utils/ZipShort;-><init>([B)V
invoke-virtual {v3, v4}, Lcom/tencent/utils/ZipShort;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4a
new-instance v0, Ljava/net/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "unknow protocl ["
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4a
array-length v2, p1
sub-int/2addr v2, v1
if-le v2, v5, :cond_3
new-array v2, v5, [B
invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
new-instance v3, Lcom/tencent/utils/ZipShort;
invoke-direct {v3, v2}, Lcom/tencent/utils/ZipShort;-><init>([B)V
invoke-virtual {v3}, Lcom/tencent/utils/ZipShort;->getValue()I
move-result v2
array-length v3, p1
sub-int/2addr v3, v1
add-int/lit8 v3, v3, -0x2
if-lt v3, v2, :cond_3
new-array v3, v2, [B
invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
iget-object v4, p0, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;->a:Ljava/util/Properties;
new-instance v5, Ljava/io/ByteArrayInputStream;
invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
invoke-virtual {v4, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
array-length v3, p1
sub-int v1, v3, v1
sub-int/2addr v1, v2
add-int/lit8 v1, v1, -0x2
if-lez v1, :cond_3
new-array v1, v1, [B
iput-object v1, p0, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;->b:[B
iget-object v1, p0, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;->b:[B
invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
goto :goto_3
.end method
.method  a()[B
.registers 6
new-instance v2, Ljava/io/ByteArrayOutputStream;
invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
invoke-static {}, Lcom/tencent/utils/ApkExternalInfoTool;->a()Lcom/tencent/utils/ZipShort;
move-result-object v0
invoke-virtual {v0}, Lcom/tencent/utils/ZipShort;->getBytes()[B
move-result-object v0
invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
const-string/jumbo v0, ""
iget-object v1, p0, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;->a:Ljava/util/Properties;
invoke-virtual {v1}, Ljava/util/Properties;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
move-object v1, v0
:goto_1e
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_55
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v4, "="
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v4, p0, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;->a:Ljava/util/Properties;
check-cast v0, Ljava/lang/String;
invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v1, v0
goto :goto_1e
:cond_55
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v0
new-instance v1, Lcom/tencent/utils/ZipShort;
array-length v3, v0
invoke-direct {v1, v3}, Lcom/tencent/utils/ZipShort;-><init>(I)V
invoke-virtual {v1}, Lcom/tencent/utils/ZipShort;->getBytes()[B
move-result-object v1
invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v0, p0, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;->b:[B
if-eqz v0, :cond_72
iget-object v0, p0, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;->b:[B
invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
:cond_72
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "ApkExternalInfo [p="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;->a:Ljava/util/Properties;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", otherData="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;->b:[B
invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method