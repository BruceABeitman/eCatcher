.class public final Lcom/tencent/utils/ApkExternalInfoTool;
.super Ljava/lang/Object;
.source "ProGuard"
.field public static final CHANNELID:Ljava/lang/String; = "channelNo"
.field private static final a:Lcom/tencent/utils/ZipLong;
.field private static final b:Lcom/tencent/utils/ZipShort;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/tencent/utils/ZipLong;
const-wide/32 v1, 0x6054b50
invoke-direct {v0, v1, v2}, Lcom/tencent/utils/ZipLong;-><init>(J)V
sput-object v0, Lcom/tencent/utils/ApkExternalInfoTool;->a:Lcom/tencent/utils/ZipLong;
new-instance v0, Lcom/tencent/utils/ZipShort;
const v1, 0x96fb
invoke-direct {v0, v1}, Lcom/tencent/utils/ZipShort;-><init>(I)V
sput-object v0, Lcom/tencent/utils/ApkExternalInfoTool;->b:Lcom/tencent/utils/ZipShort;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic a()Lcom/tencent/utils/ZipShort;
.registers 1
sget-object v0, Lcom/tencent/utils/ApkExternalInfoTool;->b:Lcom/tencent/utils/ZipShort;
return-object v0
.end method
.method private static a(Ljava/io/RandomAccessFile;)[B
.registers 10
const/4 v8, 0x2
const/4 v0, 0x1
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J
move-result-wide v2
const-wide/16 v4, 0x16
sub-long v3, v2, v4
invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V
sget-object v2, Lcom/tencent/utils/ApkExternalInfoTool;->a:Lcom/tencent/utils/ZipLong;
invoke-virtual {v2}, Lcom/tencent/utils/ZipLong;->getBytes()[B
move-result-object v5
invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I
move-result v2
:goto_18
const/4 v6, -0x1
if-eq v2, v6, :cond_6f
aget-byte v6, v5, v1
if-ne v2, v6, :cond_43
invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I
move-result v2
aget-byte v6, v5, v0
if-ne v2, v6, :cond_43
invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I
move-result v2
aget-byte v6, v5, v8
if-ne v2, v6, :cond_43
invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I
move-result v2
const/4 v6, 0x3
aget-byte v6, v5, v6
if-ne v2, v6, :cond_43
:goto_38
if-nez v0, :cond_4e
new-instance v0, Ljava/util/zip/ZipException;
const-string/jumbo v1, "archive is not a ZIP archive"
invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V
throw v0
:cond_43
const-wide/16 v6, 0x1
sub-long/2addr v3, v6
invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I
move-result v2
goto :goto_18
:cond_4e
const-wide/16 v0, 0x10
add-long/2addr v0, v3
const-wide/16 v2, 0x4
add-long/2addr v0, v2
invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V
new-array v0, v8, [B
invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V
new-instance v1, Lcom/tencent/utils/ZipShort;
invoke-direct {v1, v0}, Lcom/tencent/utils/ZipShort;-><init>([B)V
invoke-virtual {v1}, Lcom/tencent/utils/ZipShort;->getValue()I
move-result v0
if-nez v0, :cond_69
const/4 v0, 0x0
:goto_68
return-object v0
:cond_69
new-array v0, v0, [B
invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I
goto :goto_68
:cond_6f
move v0, v1
goto :goto_38
.end method
.method public static read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/4 v0, 0x0
:try_start_1
new-instance v1, Ljava/io/RandomAccessFile;
const-string/jumbo v2, "r"
invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_2a
:try_start_9
invoke-static {v1}, Lcom/tencent/utils/ApkExternalInfoTool;->a(Ljava/io/RandomAccessFile;)[B
:try_end_c
.catchall {:try_start_9 .. :try_end_c} :catchall_34
move-result-object v2
if-nez v2, :cond_15
if-eqz v1, :cond_14
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
:cond_14
:goto_14
return-object v0
:cond_15
:try_start_15
new-instance v0, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;
const/4 v3, 0x0
invoke-direct {v0, v3}, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;-><init>(Lcom/tencent/utils/ApkExternalInfoTool$1;)V
invoke-virtual {v0, v2}, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;->a([B)V
iget-object v0, v0, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;->a:Ljava/util/Properties;
invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
:try_end_23
.catchall {:try_start_15 .. :try_end_23} :catchall_34
move-result-object v0
if-eqz v1, :cond_14
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
goto :goto_14
:catchall_2a
move-exception v1
move-object v4, v1
move-object v1, v0
move-object v0, v4
:goto_2e
if-eqz v1, :cond_33
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
:cond_33
throw v0
:catchall_34
move-exception v0
goto :goto_2e
.end method
.method public static readChannelId(Ljava/io/File;)Ljava/lang/String;
.registers 2
const-string/jumbo v0, "channelNo"
invoke-static {p0, v0}, Lcom/tencent/utils/ApkExternalInfoTool;->read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static updateExternalInfo(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
.registers 10
const/4 v2, 0x0
:try_start_1
new-instance v1, Ljava/io/RandomAccessFile;
const-string/jumbo v0, "rw"
invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_46
:try_start_9
invoke-static {v1}, Lcom/tencent/utils/ApkExternalInfoTool;->a(Ljava/io/RandomAccessFile;)[B
move-result-object v0
new-instance v2, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;
const/4 v3, 0x0
invoke-direct {v2, v3}, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;-><init>(Lcom/tencent/utils/ApkExternalInfoTool$1;)V
invoke-virtual {v2, v0}, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;->a([B)V
iget-object v3, v2, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;->a:Ljava/util/Properties;
invoke-virtual {v3, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
if-nez v0, :cond_44
const/4 v0, 0x0
:goto_1e
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J
move-result-wide v3
int-to-long v5, v0
sub-long/2addr v3, v5
const-wide/16 v5, 0x2
sub-long/2addr v3, v5
invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-virtual {v2}, Lcom/tencent/utils/ApkExternalInfoTool$ApkExternalInfo;->a()[B
move-result-object v0
new-instance v2, Lcom/tencent/utils/ZipShort;
array-length v3, v0
invoke-direct {v2, v3}, Lcom/tencent/utils/ZipShort;-><init>(I)V
invoke-virtual {v2}, Lcom/tencent/utils/ZipShort;->getBytes()[B
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V
invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V
:try_end_3e
.catchall {:try_start_9 .. :try_end_3e} :catchall_4e
if-eqz v1, :cond_43
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
:cond_43
return-void
:cond_44
:try_start_44
array-length v0, v0
:try_end_45
.catchall {:try_start_44 .. :try_end_45} :catchall_4e
goto :goto_1e
:catchall_46
move-exception v0
move-object v1, v2
:goto_48
if-eqz v1, :cond_4d
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
:cond_4d
throw v0
:catchall_4e
move-exception v0
goto :goto_48
.end method