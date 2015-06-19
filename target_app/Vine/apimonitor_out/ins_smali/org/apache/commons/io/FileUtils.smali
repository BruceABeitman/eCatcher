.class public Lorg/apache/commons/io/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"
.field public static final EMPTY_FILE_ARRAY:[Ljava/io/File; = null
.field private static final FILE_COPY_BUFFER_SIZE:J = 0x1e00000L
.field public static final ONE_EB:J = 0x1000000000000000L
.field public static final ONE_EB_BI:Ljava/math/BigInteger; = null
.field public static final ONE_GB:J = 0x40000000L
.field public static final ONE_GB_BI:Ljava/math/BigInteger; = null
.field public static final ONE_KB:J = 0x400L
.field public static final ONE_KB_BI:Ljava/math/BigInteger; = null
.field public static final ONE_MB:J = 0x100000L
.field public static final ONE_MB_BI:Ljava/math/BigInteger; = null
.field public static final ONE_PB:J = 0x4000000000000L
.field public static final ONE_PB_BI:Ljava/math/BigInteger; = null
.field public static final ONE_TB:J = 0x10000000000L
.field public static final ONE_TB_BI:Ljava/math/BigInteger;
.field public static final ONE_YB:Ljava/math/BigInteger;
.field public static final ONE_ZB:Ljava/math/BigInteger;
.field private static final UTF8:Ljava/nio/charset/Charset;
.method static constructor <clinit>()V
.registers 4
const-wide/16 v2, 0x400
invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;
sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;
sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;
invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v0
sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_MB_BI:Ljava/math/BigInteger;
sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;
sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_MB_BI:Ljava/math/BigInteger;
invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v0
sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_GB_BI:Ljava/math/BigInteger;
sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;
sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_GB_BI:Ljava/math/BigInteger;
invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v0
sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_TB_BI:Ljava/math/BigInteger;
sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;
sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_TB_BI:Ljava/math/BigInteger;
invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v0
sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_PB_BI:Ljava/math/BigInteger;
sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;
sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_PB_BI:Ljava/math/BigInteger;
invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v0
sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_EB_BI:Ljava/math/BigInteger;
invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
const-wide/high16 v1, 0x1000
invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v0
sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_ZB:Ljava/math/BigInteger;
sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;
sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_ZB:Ljava/math/BigInteger;
invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v0
sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_YB:Ljava/math/BigInteger;
const/4 v0, 0x0
new-array v0, v0, [Ljava/io/File;
sput-object v0, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;
const-string v0, "UTF-8"
invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
sput-object v0, Lorg/apache/commons/io/FileUtils;->UTF8:Ljava/nio/charset/Charset;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static byteCountToDisplaySize(J)Ljava/lang/String;
.registers 3
invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->byteCountToDisplaySize(Ljava/math/BigInteger;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static byteCountToDisplaySize(Ljava/math/BigInteger;)Ljava/lang/String;
.registers 4
sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_EB_BI:Ljava/math/BigInteger;
invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v1
sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;
invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I
move-result v1
if-lez v1, :cond_2c
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lorg/apache/commons/io/FileUtils;->ONE_EB_BI:Ljava/math/BigInteger;
invoke-virtual {p0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " EB"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_2b
return-object v0
:cond_2c
sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_PB_BI:Ljava/math/BigInteger;
invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v1
sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;
invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I
move-result v1
if-lez v1, :cond_58
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lorg/apache/commons/io/FileUtils;->ONE_PB_BI:Ljava/math/BigInteger;
invoke-virtual {p0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " PB"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_2b
:cond_58
sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_TB_BI:Ljava/math/BigInteger;
invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v1
sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;
invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I
move-result v1
if-lez v1, :cond_84
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lorg/apache/commons/io/FileUtils;->ONE_TB_BI:Ljava/math/BigInteger;
invoke-virtual {p0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " TB"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_2b
:cond_84
sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_GB_BI:Ljava/math/BigInteger;
invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v1
sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;
invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I
move-result v1
if-lez v1, :cond_b1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lorg/apache/commons/io/FileUtils;->ONE_GB_BI:Ljava/math/BigInteger;
invoke-virtual {p0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " GB"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_2b
:cond_b1
sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_MB_BI:Ljava/math/BigInteger;
invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v1
sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;
invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I
move-result v1
if-lez v1, :cond_de
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lorg/apache/commons/io/FileUtils;->ONE_MB_BI:Ljava/math/BigInteger;
invoke-virtual {p0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " MB"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_2b
:cond_de
sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;
invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v1
sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;
invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I
move-result v1
if-lez v1, :cond_10b
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;
invoke-virtual {p0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " KB"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_2b
:cond_10b
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " bytes"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_2b
.end method
.method private static checkDirectory(Ljava/io/File;)V
.registers 4
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_1f
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " does not exist"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1f
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-nez v0, :cond_3e
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is not a directory"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3e
return-void
.end method
.method public static checksum(Ljava/io/File;Ljava/util/zip/Checksum;)Ljava/util/zip/Checksum;
.registers 6
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v2
if-eqz v2, :cond_e
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "Checksums can\'t be computed on directories"
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_e
const/4 v0, 0x0
:try_start_f
new-instance v1, Ljava/util/zip/CheckedInputStream;
new-instance v2, Ljava/io/FileInputStream;
invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-direct {v1, v2, p1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
:try_end_19
.catchall {:try_start_f .. :try_end_19} :catchall_25
:try_start_19
new-instance v2, Lorg/apache/commons/io/output/NullOutputStream;
invoke-direct {v2}, Lorg/apache/commons/io/output/NullOutputStream;-><init>()V
invoke-static {v1, v2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
:try_end_21
.catchall {:try_start_19 .. :try_end_21} :catchall_2a
invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
return-object p1
:catchall_25
move-exception v2
:goto_26
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
throw v2
:catchall_2a
move-exception v2
move-object v0, v1
goto :goto_26
.end method
.method public static checksumCRC32(Ljava/io/File;)J
.registers 4
new-instance v0, Ljava/util/zip/CRC32;
invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V
invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->checksum(Ljava/io/File;Ljava/util/zip/Checksum;)Ljava/util/zip/Checksum;
invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J
move-result-wide v1
return-wide v1
.end method
.method public static cleanDirectory(Ljava/io/File;)V
.registers 12
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v8
if-nez v8, :cond_1f
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, " does not exist"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
new-instance v8, Ljava/lang/IllegalArgumentException;
invoke-direct {v8, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v8
:cond_1f
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v8
if-nez v8, :cond_3e
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, " is not a directory"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
new-instance v8, Ljava/lang/IllegalArgumentException;
invoke-direct {v8, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v8
:cond_3e
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v3
if-nez v3, :cond_5d
new-instance v8, Ljava/io/IOException;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "Failed to list contents of "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v8
:cond_5d
const/4 v1, 0x0
move-object v0, v3
array-length v6, v0
const/4 v4, 0x0
:goto_61
if-ge v4, v6, :cond_6e
aget-object v2, v0, v4
:try_start_65
invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->forceDelete(Ljava/io/File;)V
:try_end_68
.catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_6b
:goto_68
add-int/lit8 v4, v4, 0x1
goto :goto_61
:catch_6b
move-exception v5
move-object v1, v5
goto :goto_68
:cond_6e
if-eqz v1, :cond_71
throw v1
:cond_71
return-void
.end method
.method private static cleanDirectoryOnExit(Ljava/io/File;)V
.registers 12
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v8
if-nez v8, :cond_1f
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, " does not exist"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
new-instance v8, Ljava/lang/IllegalArgumentException;
invoke-direct {v8, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v8
:cond_1f
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v8
if-nez v8, :cond_3e
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, " is not a directory"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
new-instance v8, Ljava/lang/IllegalArgumentException;
invoke-direct {v8, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v8
:cond_3e
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v3
if-nez v3, :cond_5d
new-instance v8, Ljava/io/IOException;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "Failed to list contents of "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v8
:cond_5d
const/4 v1, 0x0
move-object v0, v3
array-length v6, v0
const/4 v4, 0x0
:goto_61
if-ge v4, v6, :cond_6e
aget-object v2, v0, v4
:try_start_65
invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->forceDeleteOnExit(Ljava/io/File;)V
:try_end_68
.catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_6b
:goto_68
add-int/lit8 v4, v4, 0x1
goto :goto_61
:catch_6b
move-exception v5
move-object v1, v5
goto :goto_68
:cond_6e
if-eqz v1, :cond_71
throw v1
:cond_71
return-void
.end method
.method public static contentEquals(Ljava/io/File;Ljava/io/File;)Z
.registers 13
const/4 v6, 0x1
const/4 v5, 0x0
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v0
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v7
if-eq v0, v7, :cond_d
:goto_c
:cond_c
return v5
:cond_d
if-nez v0, :cond_11
move v5, v6
goto :goto_c
:cond_11
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v7
if-nez v7, :cond_1d
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v7
if-eqz v7, :cond_25
:cond_1d
new-instance v5, Ljava/io/IOException;
const-string v6, "Can\'t compare directories, only files"
invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v5
:cond_25
invoke-virtual {p0}, Ljava/io/File;->length()J
move-result-wide v7
invoke-virtual {p1}, Ljava/io/File;->length()J
move-result-wide v9
cmp-long v7, v7, v9
if-nez v7, :cond_c
invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
move-result-object v5
invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
move-result-object v7
invoke-virtual {v5, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_41
move v5, v6
goto :goto_c
:cond_41
const/4 v1, 0x0
const/4 v3, 0x0
:try_start_43
new-instance v2, Ljava/io/FileInputStream;
invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_end_48
.catchall {:try_start_43 .. :try_end_48} :catchall_58
:try_start_48
new-instance v4, Ljava/io/FileInputStream;
invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_start_4d
:try_end_4d
.catchall {:try_start_48 .. :try_end_4d} :catchall_60
invoke-static {v2, v4}, Lorg/apache/commons/io/IOUtils;->contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z
:try_end_50
.catchall {:try_start_4d .. :try_end_50} :catchall_63
move-result v5
invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
goto :goto_c
:catchall_58
move-exception v5
:goto_59
invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
throw v5
:catchall_60
move-exception v5
move-object v1, v2
goto :goto_59
:catchall_63
move-exception v5
move-object v3, v4
move-object v1, v2
goto :goto_59
.end method
.method public static contentEqualsIgnoreEOL(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
.registers 11
const/4 v5, 0x1
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v0
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v6
if-eq v0, v6, :cond_d
const/4 v5, 0x0
:cond_c
:goto_c
return v5
:cond_d
if-eqz v0, :cond_c
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v6
if-nez v6, :cond_1b
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v6
if-eqz v6, :cond_23
:cond_1b
new-instance v5, Ljava/io/IOException;
const-string v6, "Can\'t compare directories, only files"
invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v5
:cond_23
invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
move-result-object v6
invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_c
const/4 v1, 0x0
const/4 v3, 0x0
if-nez p2, :cond_56
:try_start_35
new-instance v2, Ljava/io/InputStreamReader;
new-instance v5, Ljava/io/FileInputStream;
invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-direct {v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
:try_end_3f
.catchall {:try_start_35 .. :try_end_3f} :catchall_6d
:try_start_3f
new-instance v4, Ljava/io/InputStreamReader;
new-instance v5, Ljava/io/FileInputStream;
invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
:try_end_49
.catchall {:try_start_3f .. :try_end_49} :catchall_75
move-object v3, v4
move-object v1, v2
:try_start_4b
:goto_4b
invoke-static {v1, v3}, Lorg/apache/commons/io/IOUtils;->contentEqualsIgnoreEOL(Ljava/io/Reader;Ljava/io/Reader;)Z
:try_end_4e
.catchall {:try_start_4b .. :try_end_4e} :catchall_6d
move-result v5
invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V
invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V
goto :goto_c
:try_start_56
:cond_56
new-instance v2, Ljava/io/InputStreamReader;
new-instance v5, Ljava/io/FileInputStream;
invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-direct {v2, v5, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
:try_start_60
:try_end_60
.catchall {:try_start_56 .. :try_end_60} :catchall_6d
new-instance v4, Ljava/io/InputStreamReader;
new-instance v5, Ljava/io/FileInputStream;
invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-direct {v4, v5, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
:try_end_6a
.catchall {:try_start_60 .. :try_end_6a} :catchall_75
move-object v3, v4
move-object v1, v2
goto :goto_4b
:catchall_6d
move-exception v5
:goto_6e
invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V
invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V
throw v5
:catchall_75
move-exception v5
move-object v1, v2
goto :goto_6e
.end method
.method public static convertFileCollectionToFileArray(Ljava/util/Collection;)[Ljava/io/File;
.registers 2
invoke-interface {p0}, Ljava/util/Collection;->size()I
move-result v0
new-array v0, v0, [Ljava/io/File;
invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/io/File;
return-object v0
.end method
.method public static copyDirectory(Ljava/io/File;Ljava/io/File;)V
.registers 3
const/4 v0, 0x1
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Z)V
return-void
.end method
.method public static copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)V
.registers 4
const/4 v0, 0x1
invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V
return-void
.end method
.method public static copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V
.registers 14
if-nez p0, :cond_a
new-instance v7, Ljava/lang/NullPointerException;
const-string v8, "Source must not be null"
invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v7
:cond_a
if-nez p1, :cond_14
new-instance v7, Ljava/lang/NullPointerException;
const-string v8, "Destination must not be null"
invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v7
:cond_14
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v7
if-nez v7, :cond_39
new-instance v7, Ljava/io/FileNotFoundException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Source \'"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\' does not exist"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v7
:cond_39
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v7
if-nez v7, :cond_5e
new-instance v7, Ljava/io/IOException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Source \'"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\' exists but is not a directory"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v7
:cond_5e
invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
move-result-object v7
invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_95
new-instance v7, Ljava/io/IOException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Source \'"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\' and destination \'"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\' are the same"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v7
:cond_95
const/4 v2, 0x0
invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
move-result-object v7
invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_d4
if-nez p2, :cond_cf
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v6
:goto_aa
if-eqz v6, :cond_d4
array-length v7, v6
if-lez v7, :cond_d4
new-instance v2, Ljava/util/ArrayList;
array-length v7, v6
invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V
move-object v0, v6
array-length v4, v0
const/4 v3, 0x0
:goto_b8
if-ge v3, v4, :cond_d4
aget-object v5, v0, v3
new-instance v1, Ljava/io/File;
invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v7
invoke-direct {v1, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
move-result-object v7
invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v3, v3, 0x1
goto :goto_b8
:cond_cf
invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
move-result-object v6
goto :goto_aa
:cond_d4
invoke-static {p0, p1, p2, p3, v2}, Lorg/apache/commons/io/FileUtils;->doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List;)V
return-void
.end method
.method public static copyDirectory(Ljava/io/File;Ljava/io/File;Z)V
.registers 4
const/4 v0, 0x0
invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V
return-void
.end method
.method public static copyDirectoryToDirectory(Ljava/io/File;Ljava/io/File;)V
.registers 5
if-nez p0, :cond_a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Source must not be null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_35
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-nez v0, :cond_35
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Source \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' is not a directory"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_35
if-nez p1, :cond_3f
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Destination must not be null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3f
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_6a
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v0
if-nez v0, :cond_6a
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Destination \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' is not a directory"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6a
new-instance v0, Ljava/io/File;
invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
const/4 v1, 0x1
invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Z)V
return-void
.end method
.method public static copyFile(Ljava/io/File;Ljava/io/OutputStream;)J
.registers 5
new-instance v0, Ljava/io/FileInputStream;
invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_start_5
invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
:try_end_8
.catchall {:try_start_5 .. :try_end_8} :catchall_d
move-result-wide v1
invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
return-wide v1
:catchall_d
move-exception v1
invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
throw v1
.end method
.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
.registers 3
const/4 v0, 0x1
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z)V
return-void
.end method
.method public static copyFile(Ljava/io/File;Ljava/io/File;Z)V
.registers 7
if-nez p0, :cond_a
new-instance v1, Ljava/lang/NullPointerException;
const-string v2, "Source must not be null"
invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v1
:cond_a
if-nez p1, :cond_14
new-instance v1, Ljava/lang/NullPointerException;
const-string v2, "Destination must not be null"
invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v1
:cond_14
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_39
new-instance v1, Ljava/io/FileNotFoundException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Source \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' does not exist"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v1
:cond_39
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v1
if-eqz v1, :cond_5e
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Source \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' exists but is a directory"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_5e
invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_95
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Source \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' and destination \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' are the same"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_95
invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v0
if-eqz v0, :cond_c6
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
move-result v1
if-nez v1, :cond_c6
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v1
if-nez v1, :cond_c6
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Destination \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' directory cannot be created"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_c6
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_f1
invoke-virtual {p1}, Ljava/io/File;->canWrite()Z
move-result v1
if-nez v1, :cond_f1
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Destination \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' exists but is read-only"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_f1
invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->doCopyFile(Ljava/io/File;Ljava/io/File;Z)V
return-void
.end method
.method public static copyFileToDirectory(Ljava/io/File;Ljava/io/File;)V
.registers 3
const/4 v0, 0x1
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FileUtils;->copyFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V
return-void
.end method
.method public static copyFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V
.registers 7
if-nez p1, :cond_a
new-instance v1, Ljava/lang/NullPointerException;
const-string v2, "Destination must not be null"
invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v1
:cond_a
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_35
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v1
if-nez v1, :cond_35
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Destination \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' is not a directory"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_35
new-instance v0, Ljava/io/File;
invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-static {p0, v0, p2}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z)V
return-void
.end method
.method public static copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
.registers 4
:try_start_0
invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
:try_end_3
.catchall {:try_start_0 .. :try_end_3} :catchall_16
move-result-object v0
:try_start_4
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
:try_end_a
.catchall {:try_start_4 .. :try_end_a} :catchall_11
:try_start_a
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
:try_end_d
.catchall {:try_start_a .. :try_end_d} :catchall_16
invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
return-void
:catchall_11
move-exception v1
:try_start_12
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
throw v1
:try_end_16
.catchall {:try_start_12 .. :try_end_16} :catchall_16
:catchall_16
move-exception v1
invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
throw v1
.end method
.method public static copyURLToFile(Ljava/net/URL;Ljava/io/File;)V
.registers 3
invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
move-result-object v0
invoke-static {v0, p1}, Lorg/apache/commons/io/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
return-void
.end method
.method public static copyURLToFile(Ljava/net/URL;Ljava/io/File;II)V
.registers 6
invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V
invoke-virtual {v0, p3}, Ljava/net/URLConnection;->setReadTimeout(I)V
invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v1
invoke-static {v1, p1}, Lorg/apache/commons/io/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
return-void
.end method
.method static decodeUrl(Ljava/lang/String;)Ljava/lang/String;
.registers 11
const/16 v9, 0x25
move-object v2, p0
if-eqz p0, :cond_9b
invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I
move-result v7
if-ltz v7, :cond_9b
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v5
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v1
const/4 v3, 0x0
:cond_19
:goto_19
if-ge v3, v5, :cond_97
invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C
move-result v7
if-ne v7, v9, :cond_71
:cond_21
add-int/lit8 v7, v3, 0x1
add-int/lit8 v8, v3, 0x3
:try_start_25
invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v7
const/16 v8, 0x10
invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
move-result v7
int-to-byte v6, v7
invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
add-int/lit8 v3, v3, 0x3
if-ge v3, v5, :cond_3d
invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C
:try_end_3a
.catchall {:try_start_25 .. :try_end_3a} :catchall_7c
.catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_3a} :catch_57
move-result v7
if-eq v7, v9, :cond_21
:cond_3d
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I
move-result v7
if-lez v7, :cond_19
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
sget-object v7, Lorg/apache/commons/io/FileUtils;->UTF8:Ljava/nio/charset/Charset;
invoke-virtual {v7, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
move-result-object v7
invoke-virtual {v7}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
goto :goto_19
:catch_57
move-exception v7
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I
move-result v7
if-lez v7, :cond_71
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
sget-object v7, Lorg/apache/commons/io/FileUtils;->UTF8:Ljava/nio/charset/Charset;
invoke-virtual {v7, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
move-result-object v7
invoke-virtual {v7}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
:cond_71
add-int/lit8 v4, v3, 0x1
invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C
move-result v7
invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move v3, v4
goto :goto_19
:catchall_7c
move-exception v7
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I
move-result v8
if-lez v8, :cond_96
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
sget-object v8, Lorg/apache/commons/io/FileUtils;->UTF8:Ljava/nio/charset/Charset;
invoke-virtual {v8, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
move-result-object v8
invoke-virtual {v8}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
:cond_96
throw v7
:cond_97
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
:cond_9b
return-object v2
.end method
.method public static deleteDirectory(Ljava/io/File;)V
.registers 4
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_7
:cond_6
return-void
:cond_7
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->isSymlink(Ljava/io/File;)Z
move-result v1
if-nez v1, :cond_10
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->cleanDirectory(Ljava/io/File;)V
:cond_10
invoke-virtual {p0}, Ljava/io/File;->delete()Z
move-result v1
if-nez v1, :cond_6
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unable to delete directory "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/io/IOException;
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method private static deleteDirectoryOnExit(Ljava/io/File;)V
.registers 2
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->isSymlink(Ljava/io/File;)Z
move-result v0
if-nez v0, :cond_6
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->cleanDirectoryOnExit(Ljava/io/File;)V
goto :goto_6
.end method
.method public static deleteQuietly(Ljava/io/File;)Z
.registers 4
const/4 v1, 0x0
if-nez p0, :cond_4
:goto_3
return v1
:try_start_4
:cond_4
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v2
if-eqz v2, :cond_d
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->cleanDirectory(Ljava/io/File;)V
:cond_d
:try_start_d
:goto_d
:try_end_d
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_14
invoke-virtual {p0}, Ljava/io/File;->delete()Z
:try_end_10
.catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_12
move-result v1
goto :goto_3
:catch_12
move-exception v0
goto :goto_3
:catch_14
move-exception v2
goto :goto_d
.end method
.method public static directoryContains(Ljava/io/File;Ljava/io/File;)Z
.registers 7
const/4 v2, 0x0
if-nez p0, :cond_b
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "Directory must not be null"
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_b
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v3
if-nez v3, :cond_2a
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Not a directory: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_2a
if-nez p1, :cond_2d
:goto_2c
:cond_2c
return v2
:cond_2d
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_2c
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_2c
invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lorg/apache/commons/io/FilenameUtils;->directoryContains(Ljava/lang/String;Ljava/lang/String;)Z
move-result v2
goto :goto_2c
.end method
.method private static doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List;)V
.registers 14
if-nez p2, :cond_21
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v5
:goto_6
if-nez v5, :cond_26
new-instance v6, Ljava/io/IOException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Failed to list contents of "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v6
:cond_21
invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
move-result-object v5
goto :goto_6
:cond_26
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v6
if-eqz v6, :cond_51
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v6
if-nez v6, :cond_7c
new-instance v6, Ljava/io/IOException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Destination \'"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, "\' exists but is not a directory"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v6
:cond_51
invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
move-result v6
if-nez v6, :cond_7c
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v6
if-nez v6, :cond_7c
new-instance v6, Ljava/io/IOException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Destination \'"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, "\' directory cannot be created"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v6
:cond_7c
invoke-virtual {p1}, Ljava/io/File;->canWrite()Z
move-result v6
if-nez v6, :cond_a1
new-instance v6, Ljava/io/IOException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Destination \'"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, "\' cannot be written to"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v6
:cond_a1
move-object v0, v5
array-length v3, v0
const/4 v2, 0x0
:goto_a4
if-ge v2, v3, :cond_cd
aget-object v4, v0, v2
new-instance v1, Ljava/io/File;
invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v6
invoke-direct {v1, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
if-eqz p4, :cond_bd
invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
move-result-object v6
invoke-interface {p4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_c6
:cond_bd
invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z
move-result v6
if-eqz v6, :cond_c9
invoke-static {v4, v1, p2, p3, p4}, Lorg/apache/commons/io/FileUtils;->doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List;)V
:goto_c6
:cond_c6
add-int/lit8 v2, v2, 0x1
goto :goto_a4
:cond_c9
invoke-static {v4, v1, p3}, Lorg/apache/commons/io/FileUtils;->doCopyFile(Ljava/io/File;Ljava/io/File;Z)V
goto :goto_c6
:cond_cd
if-eqz p3, :cond_d6
invoke-virtual {p0}, Ljava/io/File;->lastModified()J
move-result-wide v6
invoke-virtual {p1, v6, v7}, Ljava/io/File;->setLastModified(J)Z
:cond_d6
return-void
.end method
.method private static doCopyFile(Ljava/io/File;Ljava/io/File;Z)V
.registers 20
invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z
move-result v13
if-eqz v13, :cond_2d
invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z
move-result v13
if-eqz v13, :cond_2d
new-instance v13, Ljava/io/IOException;
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "Destination \'"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p1
invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v14
const-string v15, "\' exists but is a directory"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v13
:cond_2d
const/4 v7, 0x0
const/4 v9, 0x0
const/4 v2, 0x0
const/4 v1, 0x0
:try_start_31
new-instance v8, Ljava/io/FileInputStream;
move-object/from16 v0, p0
invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_start_38
:try_end_38
.catchall {:try_start_31 .. :try_end_38} :catchall_ad
new-instance v10, Ljava/io/FileOutputStream;
move-object/from16 v0, p1
invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_3f
.catchall {:try_start_38 .. :try_end_3f} :catchall_c7
:try_start_3f
invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
move-result-object v2
invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
move-result-object v1
invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J
move-result-wide v11
const-wide/16 v3, 0x0
const-wide/16 v5, 0x0
:goto_4f
cmp-long v13, v3, v11
if-gez v13, :cond_68
sub-long v13, v11, v3
const-wide/32 v15, 0x1e00000
cmp-long v13, v13, v15
if-lez v13, :cond_65
const-wide/32 v5, 0x1e00000
:goto_5f
invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
:try_end_62
.catchall {:try_start_3f .. :try_end_62} :catchall_ca
move-result-wide v13
add-long/2addr v3, v13
goto :goto_4f
:cond_65
sub-long v5, v11, v3
goto :goto_5f
:cond_68
invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J
move-result-wide v13
invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J
move-result-wide v15
cmp-long v13, v13, v15
if-eqz v13, :cond_bb
new-instance v13, Ljava/io/IOException;
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "Failed to copy full contents from \'"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p0
invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v14
const-string v15, "\' to \'"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p1
invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v14
const-string v15, "\'"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v13
:catchall_ad
move-exception v13
:goto_ae
invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
throw v13
:cond_bb
if-eqz p2, :cond_c6
invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J
move-result-wide v13
move-object/from16 v0, p1
invoke-virtual {v0, v13, v14}, Ljava/io/File;->setLastModified(J)Z
:cond_c6
return-void
:catchall_c7
move-exception v13
move-object v7, v8
goto :goto_ae
:catchall_ca
move-exception v13
move-object v9, v10
move-object v7, v8
goto :goto_ae
.end method
.method public static forceDelete(Ljava/io/File;)V
.registers 6
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v2
if-eqz v2, :cond_a
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
:cond_9
return-void
:cond_a
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v0
invoke-virtual {p0}, Ljava/io/File;->delete()Z
move-result v2
if-nez v2, :cond_9
if-nez v0, :cond_2f
new-instance v2, Ljava/io/FileNotFoundException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "File does not exist: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v2
:cond_2f
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Unable to delete file: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/io/IOException;
invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public static forceDeleteOnExit(Ljava/io/File;)V
.registers 2
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-eqz v0, :cond_a
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteDirectoryOnExit(Ljava/io/File;)V
:goto_9
return-void
:cond_a
invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V
goto :goto_9
.end method
.method public static forceMkdir(Ljava/io/File;)V
.registers 4
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_31
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v1
if-nez v1, :cond_56
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "File "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " exists and is "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "not a directory. Unable to create directory."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/io/IOException;
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_31
invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
move-result v1
if-nez v1, :cond_56
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v1
if-nez v1, :cond_56
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unable to create directory "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/io/IOException;
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_56
return-void
.end method
.method public static varargs getFile(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
.registers 10
if-nez p0, :cond_a
new-instance v6, Ljava/lang/NullPointerException;
const-string v7, "directorydirectory must not be null"
invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v6
:cond_a
if-nez p1, :cond_14
new-instance v6, Ljava/lang/NullPointerException;
const-string v7, "names must not be null"
invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v6
:cond_14
move-object v1, p0
move-object v0, p1
array-length v4, v0
const/4 v3, 0x0
move-object v2, v1
:goto_19
if-ge v3, v4, :cond_26
aget-object v5, v0, v3
new-instance v1, Ljava/io/File;
invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
add-int/lit8 v3, v3, 0x1
move-object v2, v1
goto :goto_19
:cond_26
return-object v2
.end method
.method public static varargs getFile([Ljava/lang/String;)Ljava/io/File;
.registers 9
if-nez p0, :cond_a
new-instance v6, Ljava/lang/NullPointerException;
const-string v7, "names must not be null"
invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v6
:cond_a
const/4 v1, 0x0
move-object v0, p0
array-length v4, v0
const/4 v3, 0x0
move-object v2, v1
:goto_f
if-ge v3, v4, :cond_24
aget-object v5, v0, v3
if-nez v2, :cond_1e
new-instance v1, Ljava/io/File;
invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:goto_1a
add-int/lit8 v3, v3, 0x1
move-object v2, v1
goto :goto_f
:cond_1e
new-instance v1, Ljava/io/File;
invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
goto :goto_1a
:cond_24
return-object v2
.end method
.method public static getTempDirectory()Ljava/io/File;
.registers 2
new-instance v0, Ljava/io/File;
invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
return-object v0
.end method
.method public static getTempDirectoryPath()Ljava/lang/String;
.registers 1
const-string v0, "java.io.tmpdir"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getUserDirectory()Ljava/io/File;
.registers 2
new-instance v0, Ljava/io/File;
invoke-static {}, Lorg/apache/commons/io/FileUtils;->getUserDirectoryPath()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
return-object v0
.end method
.method public static getUserDirectoryPath()Ljava/lang/String;
.registers 1
const-string v0, "user.home"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static innerListFiles(Ljava/util/Collection;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V
.registers 10
invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
move-result-object v2
if-eqz v2, :cond_22
move-object v0, v2
array-length v4, v0
const/4 v3, 0x0
:goto_9
if-ge v3, v4, :cond_22
aget-object v1, v0, v3
invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
move-result v5
if-eqz v5, :cond_1e
if-eqz p3, :cond_18
invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_18
invoke-static {p0, v1, p2, p3}, Lorg/apache/commons/io/FileUtils;->innerListFiles(Ljava/util/Collection;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V
:goto_1b
add-int/lit8 v3, v3, 0x1
goto :goto_9
:cond_1e
invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
goto :goto_1b
:cond_22
return-void
.end method
.method public static isFileNewer(Ljava/io/File;J)Z
.registers 6
const/4 v0, 0x0
if-nez p0, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "No specified file"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_12
:cond_11
:goto_11
return v0
:cond_12
invoke-virtual {p0}, Ljava/io/File;->lastModified()J
move-result-wide v1
cmp-long v1, v1, p1
if-lez v1, :cond_11
const/4 v0, 0x1
goto :goto_11
.end method
.method public static isFileNewer(Ljava/io/File;Ljava/io/File;)Z
.registers 5
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "No specified reference file"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_2f
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "The reference file \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' doesn\'t exist"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2f
invoke-virtual {p1}, Ljava/io/File;->lastModified()J
move-result-wide v0
invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z
move-result v0
return v0
.end method
.method public static isFileNewer(Ljava/io/File;Ljava/util/Date;)Z
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "No specified date"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p1}, Ljava/util/Date;->getTime()J
move-result-wide v0
invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z
move-result v0
return v0
.end method
.method public static isFileOlder(Ljava/io/File;J)Z
.registers 6
const/4 v0, 0x0
if-nez p0, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "No specified file"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_12
:cond_11
:goto_11
return v0
:cond_12
invoke-virtual {p0}, Ljava/io/File;->lastModified()J
move-result-wide v1
cmp-long v1, v1, p1
if-gez v1, :cond_11
const/4 v0, 0x1
goto :goto_11
.end method
.method public static isFileOlder(Ljava/io/File;Ljava/io/File;)Z
.registers 5
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "No specified reference file"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_2f
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "The reference file \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' doesn\'t exist"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2f
invoke-virtual {p1}, Ljava/io/File;->lastModified()J
move-result-wide v0
invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->isFileOlder(Ljava/io/File;J)Z
move-result v0
return v0
.end method
.method public static isFileOlder(Ljava/io/File;Ljava/util/Date;)Z
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "No specified date"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p1}, Ljava/util/Date;->getTime()J
move-result-wide v0
invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->isFileOlder(Ljava/io/File;J)Z
move-result v0
return v0
.end method
.method public static isSymlink(Ljava/io/File;)Z
.registers 6
const/4 v2, 0x0
if-nez p0, :cond_b
new-instance v2, Ljava/lang/NullPointerException;
const-string v3, "File must not be null"
invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v2
:cond_b
invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z
move-result v3
if-eqz v3, :cond_12
:cond_11
:goto_11
return v2
:cond_12
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;
move-result-object v3
if-nez v3, :cond_2a
move-object v1, p0
:goto_1a
invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
move-result-object v3
invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_11
const/4 v2, 0x1
goto :goto_11
:cond_2a
invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v3
invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
move-result-object v0
new-instance v1, Ljava/io/File;
invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
goto :goto_1a
.end method
.method public static iterateFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator;
.registers 4
invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public static iterateFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Iterator;
.registers 4
invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public static iterateFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator;
.registers 4
invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->listFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public static lineIterator(Ljava/io/File;)Lorg/apache/commons/io/LineIterator;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->lineIterator(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;
move-result-object v0
return-object v0
.end method
.method public static lineIterator(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;
.registers 5
const/4 v1, 0x0
:try_start_1
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
move-result-object v1
invoke-static {v1, p1}, Lorg/apache/commons/io/IOUtils;->lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;
:try_end_8
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_a
.catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_8} :catch_f
move-result-object v2
return-object v2
:catch_a
move-exception v0
invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
throw v0
:catch_f
move-exception v0
invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
throw v0
.end method
.method public static listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;
.registers 9
const/4 v5, 0x0
invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->validateListFilesParameters(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;)V
invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->setUpEffectiveFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
move-result-object v1
invoke-static {p2}, Lorg/apache/commons/io/FileUtils;->setUpEffectiveDirFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
move-result-object v0
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
const/4 v3, 0x2
new-array v3, v3, [Lorg/apache/commons/io/filefilter/IOFileFilter;
aput-object v1, v3, v5
const/4 v4, 0x1
aput-object v0, v3, v4
invoke-static {v3}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->or([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
move-result-object v3
invoke-static {v2, p0, v3, v5}, Lorg/apache/commons/io/FileUtils;->innerListFiles(Ljava/util/Collection;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V
return-object v2
.end method
.method public static listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection;
.registers 6
if-nez p1, :cond_d
sget-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;
:goto_4
if-eqz p2, :cond_17
sget-object v2, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;
:goto_8
invoke-static {p0, v0, v2}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;
move-result-object v2
return-object v2
:cond_d
invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->toSuffixes([Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
new-instance v0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;
invoke-direct {v0, v1}, Lorg/apache/commons/io/filefilter/SuffixFileFilter;-><init>([Ljava/lang/String;)V
goto :goto_4
:cond_17
sget-object v2, Lorg/apache/commons/io/filefilter/FalseFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;
goto :goto_8
.end method
.method public static listFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;
.registers 9
const/4 v5, 0x1
invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->validateListFilesParameters(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;)V
invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->setUpEffectiveFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
move-result-object v1
invoke-static {p2}, Lorg/apache/commons/io/FileUtils;->setUpEffectiveDirFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
move-result-object v0
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v3
if-eqz v3, :cond_1a
invoke-interface {v2, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_1a
const/4 v3, 0x2
new-array v3, v3, [Lorg/apache/commons/io/filefilter/IOFileFilter;
const/4 v4, 0x0
aput-object v1, v3, v4
aput-object v0, v3, v5
invoke-static {v3}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->or([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
move-result-object v3
invoke-static {v2, p0, v3, v5}, Lorg/apache/commons/io/FileUtils;->innerListFiles(Ljava/util/Collection;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V
return-object v2
.end method
.method public static moveDirectory(Ljava/io/File;Ljava/io/File;)V
.registers 6
if-nez p0, :cond_a
new-instance v1, Ljava/lang/NullPointerException;
const-string v2, "Source must not be null"
invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v1
:cond_a
if-nez p1, :cond_14
new-instance v1, Ljava/lang/NullPointerException;
const-string v2, "Destination must not be null"
invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v1
:cond_14
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_39
new-instance v1, Ljava/io/FileNotFoundException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Source \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' does not exist"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v1
:cond_39
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v1
if-nez v1, :cond_5e
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Source \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' is not a directory"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_5e
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_83
new-instance v1, Lorg/apache/commons/io/FileExistsException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Destination \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' already exists"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lorg/apache/commons/io/FileExistsException;-><init>(Ljava/lang/String;)V
throw v1
:cond_83
invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
move-result v0
if-nez v0, :cond_ef
invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_ba
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Cannot move directory: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " to a subdirectory of itself: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_ba
invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_ef
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Failed to delete original directory \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' after copy to \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_ef
return-void
.end method
.method public static moveDirectoryToDirectory(Ljava/io/File;Ljava/io/File;Z)V
.registers 6
if-nez p0, :cond_a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Source must not be null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p1, :cond_14
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Destination directory must not be null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_1f
if-eqz p2, :cond_1f
invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
:cond_1f
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_4e
new-instance v0, Ljava/io/FileNotFoundException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Destination directory \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' does not exist [createDestDir="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4e
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v0
if-nez v0, :cond_73
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Destination \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' is not a directory"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_73
new-instance v0, Ljava/io/File;
invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->moveDirectory(Ljava/io/File;Ljava/io/File;)V
return-void
.end method
.method public static moveFile(Ljava/io/File;Ljava/io/File;)V
.registers 6
if-nez p0, :cond_a
new-instance v1, Ljava/lang/NullPointerException;
const-string v2, "Source must not be null"
invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v1
:cond_a
if-nez p1, :cond_14
new-instance v1, Ljava/lang/NullPointerException;
const-string v2, "Destination must not be null"
invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v1
:cond_14
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_39
new-instance v1, Ljava/io/FileNotFoundException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Source \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' does not exist"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v1
:cond_39
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v1
if-eqz v1, :cond_5e
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Source \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' is a directory"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_5e
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_83
new-instance v1, Lorg/apache/commons/io/FileExistsException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Destination \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' already exists"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lorg/apache/commons/io/FileExistsException;-><init>(Ljava/lang/String;)V
throw v1
:cond_83
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v1
if-eqz v1, :cond_a8
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Destination \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' is a directory"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_a8
invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
move-result v0
if-nez v0, :cond_e3
invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
invoke-virtual {p0}, Ljava/io/File;->delete()Z
move-result v1
if-nez v1, :cond_e3
invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Failed to delete original file \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' after copy to \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_e3
return-void
.end method
.method public static moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V
.registers 6
if-nez p0, :cond_a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Source must not be null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p1, :cond_14
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Destination directory must not be null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_1f
if-eqz p2, :cond_1f
invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
:cond_1f
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_4e
new-instance v0, Ljava/io/FileNotFoundException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Destination directory \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' does not exist [createDestDir="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4e
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v0
if-nez v0, :cond_73
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Destination \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' is not a directory"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_73
new-instance v0, Ljava/io/File;
invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V
return-void
.end method
.method public static moveToDirectory(Ljava/io/File;Ljava/io/File;Z)V
.registers 6
if-nez p0, :cond_a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Source must not be null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p1, :cond_14
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Destination must not be null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_39
new-instance v0, Ljava/io/FileNotFoundException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Source \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' does not exist"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:cond_39
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-eqz v0, :cond_43
invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->moveDirectoryToDirectory(Ljava/io/File;Ljava/io/File;Z)V
:goto_42
return-void
:cond_43
invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V
goto :goto_42
.end method
.method public static openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
.registers 4
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_50
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-eqz v0, :cond_2b
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "File \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' exists but is a directory"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2b
invoke-virtual {p0}, Ljava/io/File;->canRead()Z
move-result v0
if-nez v0, :cond_6f
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "File \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' cannot be read"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_50
new-instance v0, Ljava/io/FileNotFoundException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "File \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' does not exist"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6f
new-instance v0, Ljava/io/FileInputStream;
invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
return-object v0
.end method
.method public static openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;
move-result-object v0
return-object v0
.end method
.method public static openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;
.registers 6
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_50
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v1
if-eqz v1, :cond_2b
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "File \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' exists but is a directory"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_2b
invoke-virtual {p0}, Ljava/io/File;->canWrite()Z
move-result v1
if-nez v1, :cond_81
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "File \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' cannot be written to"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_50
invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v0
if-eqz v0, :cond_81
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
move-result v1
if-nez v1, :cond_81
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v1
if-nez v1, :cond_81
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Directory \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' could not be created"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_81
new-instance v1, Ljava/io/FileOutputStream;
invoke-direct {v1, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
return-object v1
.end method
.method public static readFileToByteArray(Ljava/io/File;)[B
.registers 4
const/4 v0, 0x0
:try_start_1
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
move-result-object v0
invoke-virtual {p0}, Ljava/io/File;->length()J
move-result-wide v1
invoke-static {v0, v1, v2}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;J)[B
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_11
move-result-object v1
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
return-object v1
:catchall_11
move-exception v1
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
throw v1
.end method
.method public static readFileToString(Ljava/io/File;)Ljava/lang/String;
.registers 2
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
.registers 4
const/4 v0, 0x0
:try_start_1
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
move-result-object v0
invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
move-result-object v1
invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_11
move-result-object v1
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
return-object v1
:catchall_11
move-exception v1
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
throw v1
.end method
.method public static readLines(Ljava/io/File;)Ljava/util/List;
.registers 2
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static readLines(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
.registers 3
invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;
.registers 4
const/4 v0, 0x0
:try_start_1
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
move-result-object v0
invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
move-result-object v1
invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List;
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_11
move-result-object v1
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
return-object v1
:catchall_11
move-exception v1
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
throw v1
.end method
.method private static setUpEffectiveDirFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
.registers 4
if-nez p0, :cond_5
sget-object v0, Lorg/apache/commons/io/filefilter/FalseFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;
:goto_4
return-object v0
:cond_5
const/4 v0, 0x2
new-array v0, v0, [Lorg/apache/commons/io/filefilter/IOFileFilter;
const/4 v1, 0x0
aput-object p0, v0, v1
const/4 v1, 0x1
sget-object v2, Lorg/apache/commons/io/filefilter/DirectoryFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;
aput-object v2, v0, v1
invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->and([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
move-result-object v0
goto :goto_4
.end method
.method private static setUpEffectiveFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
.registers 4
const/4 v0, 0x2
new-array v0, v0, [Lorg/apache/commons/io/filefilter/IOFileFilter;
const/4 v1, 0x0
aput-object p0, v0, v1
const/4 v1, 0x1
sget-object v2, Lorg/apache/commons/io/filefilter/DirectoryFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;
invoke-static {v2}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->notFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->and([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
move-result-object v0
return-object v0
.end method
.method public static sizeOf(Ljava/io/File;)J
.registers 4
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_1f
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " does not exist"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/IllegalArgumentException;
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_1f
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v1
if-eqz v1, :cond_2a
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J
move-result-wide v1
:goto_29
return-wide v1
:cond_2a
invoke-virtual {p0}, Ljava/io/File;->length()J
move-result-wide v1
goto :goto_29
.end method
.method public static sizeOfAsBigInteger(Ljava/io/File;)Ljava/math/BigInteger;
.registers 4
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_1f
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " does not exist"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/IllegalArgumentException;
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_1f
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v1
if-eqz v1, :cond_2a
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectoryAsBigInteger(Ljava/io/File;)Ljava/math/BigInteger;
move-result-object v1
:goto_29
return-object v1
:cond_2a
invoke-virtual {p0}, Ljava/io/File;->length()J
move-result-wide v1
invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v1
goto :goto_29
.end method
.method public static sizeOfDirectory(Ljava/io/File;)J
.registers 12
const-wide/16 v7, 0x0
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->checkDirectory(Ljava/io/File;)V
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v2
if-nez v2, :cond_d
move-wide v5, v7
:cond_c
return-wide v5
:cond_d
const-wide/16 v5, 0x0
move-object v0, v2
array-length v4, v0
const/4 v3, 0x0
:goto_12
if-ge v3, v4, :cond_c
aget-object v1, v0, v3
:try_start_16
invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->isSymlink(Ljava/io/File;)Z
move-result v9
if-nez v9, :cond_25
invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->sizeOf(Ljava/io/File;)J
:try_end_1f
.catch Ljava/io/IOException; {:try_start_16 .. :try_end_1f} :catch_28
move-result-wide v9
add-long/2addr v5, v9
cmp-long v9, v5, v7
if-ltz v9, :cond_c
:goto_25
:cond_25
add-int/lit8 v3, v3, 0x1
goto :goto_12
:catch_28
move-exception v9
goto :goto_25
.end method
.method public static sizeOfDirectoryAsBigInteger(Ljava/io/File;)Ljava/math/BigInteger;
.registers 9
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->checkDirectory(Ljava/io/File;)V
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v2
if-nez v2, :cond_c
sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;
:cond_b
return-object v5
:cond_c
sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;
move-object v0, v2
array-length v4, v0
const/4 v3, 0x0
:goto_11
if-ge v3, v4, :cond_b
aget-object v1, v0, v3
:try_start_15
invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->isSymlink(Ljava/io/File;)Z
move-result v6
if-nez v6, :cond_27
invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->sizeOf(Ljava/io/File;)J
move-result-wide v6
invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;
:try_end_26
.catch Ljava/io/IOException; {:try_start_15 .. :try_end_26} :catch_2a
move-result-object v5
:goto_27
:cond_27
add-int/lit8 v3, v3, 0x1
goto :goto_11
:catch_2a
move-exception v6
goto :goto_27
.end method
.method public static toFile(Ljava/net/URL;)Ljava/io/File;
.registers 5
if-eqz p0, :cond_e
const-string v1, "file"
invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_10
:cond_e
const/4 v1, 0x0
:goto_f
return-object v1
:cond_10
invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;
move-result-object v1
const/16 v2, 0x2f
sget-char v3, Ljava/io/File;->separatorChar:C
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->decodeUrl(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
goto :goto_f
.end method
.method public static toFiles([Ljava/net/URL;)[Ljava/io/File;
.registers 7
if-eqz p0, :cond_5
array-length v3, p0
if-nez v3, :cond_8
:cond_5
sget-object v0, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;
:cond_7
return-object v0
:cond_8
array-length v3, p0
new-array v0, v3, [Ljava/io/File;
const/4 v1, 0x0
:goto_c
array-length v3, p0
if-ge v1, v3, :cond_7
aget-object v2, p0, v1
if-eqz v2, :cond_3e
invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;
move-result-object v3
const-string v4, "file"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_38
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "URL could not be converted to a File: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_38
invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->toFile(Ljava/net/URL;)Ljava/io/File;
move-result-object v3
aput-object v3, v0, v1
:cond_3e
add-int/lit8 v1, v1, 0x1
goto :goto_c
.end method
.method private static toSuffixes([Ljava/lang/String;)[Ljava/lang/String;
.registers 5
array-length v2, p0
new-array v1, v2, [Ljava/lang/String;
const/4 v0, 0x0
:goto_4
array-length v2, p0
if-ge v0, v2, :cond_21
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
aget-object v3, p0, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_21
return-object v1
.end method
.method public static toURLs([Ljava/io/File;)[Ljava/net/URL;
.registers 4
array-length v2, p0
new-array v1, v2, [Ljava/net/URL;
const/4 v0, 0x0
:goto_4
array-length v2, v1
if-ge v0, v2, :cond_16
aget-object v2, p0, v0
invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;
move-result-object v2
invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;
move-result-object v2
aput-object v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_16
return-object v1
.end method
.method public static touch(Ljava/io/File;)V
.registers 6
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v2
if-nez v2, :cond_d
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
move-result-object v0
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
:cond_d
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {p0, v2, v3}, Ljava/io/File;->setLastModified(J)Z
move-result v1
if-nez v1, :cond_30
new-instance v2, Ljava/io/IOException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Unable to set the last modification time for "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v2
:cond_30
return-void
.end method
.method private static validateListFilesParameters(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;)V
.registers 4
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Parameter \'directory\' is not a directory"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
if-nez p1, :cond_18
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Parameter \'fileFilter\' is null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
return-void
.end method
.method public static waitFor(Ljava/io/File;I)Z
.registers 9
const/4 v3, 0x0
const/4 v1, 0x0
:goto_2
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v5
if-nez v5, :cond_20
add-int/lit8 v2, v1, 0x1
const/16 v5, 0xa
if-lt v1, v5, :cond_22
const/4 v1, 0x0
add-int/lit8 v4, v3, 0x1
if-le v3, p1, :cond_16
const/4 v5, 0x0
move v3, v4
:goto_15
return v5
:cond_16
move v3, v4
:goto_17
const-wide/16 v5, 0x64
:try_start_19
invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
:try_end_1c
.catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_1d
.catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1f
goto :goto_2
:catch_1d
move-exception v5
goto :goto_2
:catch_1f
move-exception v0
:cond_20
const/4 v5, 0x1
goto :goto_15
:cond_22
move v1, v2
goto :goto_17
.end method
.method public static write(Ljava/io/File;Ljava/lang/CharSequence;)V
.registers 4
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
const/4 v1, 0x0
invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V
return-void
.end method
.method public static write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;Z)V
return-void
.end method
.method public static write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;Z)V
.registers 5
invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V
return-void
.end method
.method public static write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V
.registers 4
const/4 v0, 0x0
invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V
return-void
.end method
.method public static write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V
.registers 5
if-nez p1, :cond_7
const/4 v0, 0x0
:goto_3
invoke-static {p0, v0, p2, p3}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
return-void
:cond_7
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method
.method public static write(Ljava/io/File;Ljava/lang/CharSequence;Z)V
.registers 4
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V
return-void
.end method
.method public static writeByteArrayToFile(Ljava/io/File;[B)V
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FileUtils;->writeByteArrayToFile(Ljava/io/File;[BZ)V
return-void
.end method
.method public static writeByteArrayToFile(Ljava/io/File;[BZ)V
.registers 5
const/4 v0, 0x0
:try_start_1
invoke-static {p0, p2}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_f
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
return-void
:catchall_f
move-exception v1
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
throw v1
.end method
.method public static writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;)V
.registers 5
const/4 v0, 0x0
const/4 v1, 0x0
invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
return-void
.end method
.method public static writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
return-void
.end method
.method public static writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
.registers 8
const/4 v1, 0x0
:try_start_1
invoke-static {p0, p4}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;
move-result-object v1
new-instance v0, Ljava/io/BufferedOutputStream;
invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-static {p2, p3, v0, p1}, Lorg/apache/commons/io/IOUtils;->writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_13
.catchall {:try_start_1 .. :try_end_13} :catchall_17
invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
return-void
:catchall_17
move-exception v2
invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
throw v2
.end method
.method public static writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Z)V
.registers 5
const/4 v0, 0x0
invoke-static {p0, p1, p2, v0, p3}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
return-void
.end method
.method public static writeLines(Ljava/io/File;Ljava/util/Collection;)V
.registers 4
const/4 v1, 0x0
const/4 v0, 0x0
invoke-static {p0, v1, p1, v1, v0}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
return-void
.end method
.method public static writeLines(Ljava/io/File;Ljava/util/Collection;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
const/4 v1, 0x0
invoke-static {p0, v0, p1, p2, v1}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
return-void
.end method
.method public static writeLines(Ljava/io/File;Ljava/util/Collection;Ljava/lang/String;Z)V
.registers 5
const/4 v0, 0x0
invoke-static {p0, v0, p1, p2, p3}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
return-void
.end method
.method public static writeLines(Ljava/io/File;Ljava/util/Collection;Z)V
.registers 4
const/4 v0, 0x0
invoke-static {p0, v0, p1, v0, p2}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
return-void
.end method
.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
.registers 4
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
const/4 v1, 0x0
invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
return-void
.end method
.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
return-void
.end method
.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
.registers 5
invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
return-void
.end method
.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V
.registers 4
const/4 v0, 0x0
invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
return-void
.end method
.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
.registers 6
const/4 v0, 0x0
:try_start_1
invoke-static {p0, p3}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;
move-result-object v0
invoke-static {p1, v0, p2}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_f
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
return-void
:catchall_f
move-exception v1
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
throw v1
.end method
.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Z)V
.registers 4
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
return-void
.end method