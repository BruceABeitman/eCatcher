.class public Lorg/apache/commons/io/FileSystemUtils;
.super Ljava/lang/Object;
.source "FileSystemUtils.java"
.field private static final INIT_PROBLEM:I = -0x1
.field private static final INSTANCE:Lorg/apache/commons/io/FileSystemUtils; = null
.field private static final OS:I = 0x0
.field private static final OTHER:I = 0x0
.field private static final POSIX_UNIX:I = 0x3
.field private static final UNIX:I = 0x2
.field private static final WINDOWS:I = 0x1
.method static constructor <clinit>()V
.registers 5
const/4 v4, -0x1
new-instance v3, Lorg/apache/commons/io/FileSystemUtils;
invoke-direct {v3}, Lorg/apache/commons/io/FileSystemUtils;-><init>()V
sput-object v3, Lorg/apache/commons/io/FileSystemUtils;->INSTANCE:Lorg/apache/commons/io/FileSystemUtils;
const/4 v1, 0x0
:try_start_9
const-string v3, "os.name"
invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_1f
new-instance v3, Ljava/io/IOException;
const-string v4, "os.name not found"
invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v3
:catch_19
:try_end_19
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_19
move-exception v3
move-object v0, v3
const/4 v1, -0x1
:goto_1c
sput v1, Lorg/apache/commons/io/FileSystemUtils;->OS:I
return-void
:try_start_1f
:cond_1f
invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
const-string v3, "windows"
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-eq v3, v4, :cond_2d
const/4 v1, 0x1
goto :goto_1c
:cond_2d
const-string v3, "linux"
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-ne v3, v4, :cond_7d
const-string v3, "sun os"
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-ne v3, v4, :cond_7d
const-string v3, "sunos"
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-ne v3, v4, :cond_7d
const-string v3, "solaris"
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-ne v3, v4, :cond_7d
const-string v3, "mpe/ix"
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-ne v3, v4, :cond_7d
const-string v3, "freebsd"
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-ne v3, v4, :cond_7d
const-string v3, "irix"
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-ne v3, v4, :cond_7d
const-string v3, "digital unix"
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-ne v3, v4, :cond_7d
const-string v3, "unix"
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-ne v3, v4, :cond_7d
const-string v3, "mac os x"
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-eq v3, v4, :cond_7f
:cond_7d
const/4 v1, 0x2
goto :goto_1c
:cond_7f
const-string v3, "hp-ux"
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-ne v3, v4, :cond_8f
const-string v3, "aix"
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
:try_end_8c
.catch Ljava/lang/Exception; {:try_start_1f .. :try_end_8c} :catch_19
move-result v3
if-eq v3, v4, :cond_91
:cond_8f
const/4 v1, 0x3
goto :goto_1c
:cond_91
const/4 v1, 0x0
goto :goto_1c
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static freeSpace(Ljava/lang/String;)J
.registers 4
sget-object v0, Lorg/apache/commons/io/FileSystemUtils;->INSTANCE:Lorg/apache/commons/io/FileSystemUtils;
sget v1, Lorg/apache/commons/io/FileSystemUtils;->OS:I
const/4 v2, 0x0
invoke-virtual {v0, p0, v1, v2}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceOS(Ljava/lang/String;IZ)J
move-result-wide v0
return-wide v0
.end method
.method public static freeSpaceKb(Ljava/lang/String;)J
.registers 4
sget-object v0, Lorg/apache/commons/io/FileSystemUtils;->INSTANCE:Lorg/apache/commons/io/FileSystemUtils;
sget v1, Lorg/apache/commons/io/FileSystemUtils;->OS:I
const/4 v2, 0x1
invoke-virtual {v0, p0, v1, v2}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceOS(Ljava/lang/String;IZ)J
move-result-wide v0
return-wide v0
.end method
.method  freeSpaceOS(Ljava/lang/String;IZ)J
.registers 8
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Path must not be empty"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
packed-switch p2, :pswitch_data_38
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Exception caught when determining operating system"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_15
if-eqz p3, :cond_1f
invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceWindows(Ljava/lang/String;)J
move-result-wide v0
const-wide/16 v2, 0x400
div-long/2addr v0, v2
:goto_1e
return-wide v0
:cond_1f
invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceWindows(Ljava/lang/String;)J
move-result-wide v0
goto :goto_1e
:pswitch_24
const/4 v0, 0x0
invoke-virtual {p0, p1, p3, v0}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceUnix(Ljava/lang/String;ZZ)J
move-result-wide v0
goto :goto_1e
:pswitch_2a
const/4 v0, 0x1
invoke-virtual {p0, p1, p3, v0}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceUnix(Ljava/lang/String;ZZ)J
move-result-wide v0
goto :goto_1e
:pswitch_30
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Unsupported operating system"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_data_38
.packed-switch 0x0
:pswitch_30
:pswitch_15
:pswitch_24
:pswitch_2a
.end packed-switch
.end method
.method  freeSpaceUnix(Ljava/lang/String;ZZ)J
.registers 14
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v7
if-nez v7, :cond_e
new-instance v7, Ljava/lang/IllegalArgumentException;
const-string v8, "Path must not be empty"
invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v7
:cond_e
invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
const-string v1, "-"
if-eqz p2, :cond_29
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, "k"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:cond_29
if-eqz p3, :cond_3e
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, "P"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:cond_3e
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v7
const/4 v8, 0x1
if-le v7, v8, :cond_83
const/4 v7, 0x3
new-array v7, v7, [Ljava/lang/String;
const/4 v8, 0x0
const-string v9, "df"
aput-object v9, v7, v8
const/4 v8, 0x1
aput-object v1, v7, v8
const/4 v8, 0x2
aput-object p1, v7, v8
move-object v0, v7
:goto_54
const/4 v7, 0x3
invoke-virtual {p0, v0, v7}, Lorg/apache/commons/io/FileSystemUtils;->performCommand([Ljava/lang/String;I)Ljava/util/List;
move-result-object v5
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v7
const/4 v8, 0x2
if-ge v7, v8, :cond_90
new-instance v7, Ljava/io/IOException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Command line \'df\' did not return info as expected for path \'"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\'- response was "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v7
:cond_83
const/4 v7, 0x2
new-array v7, v7, [Ljava/lang/String;
const/4 v8, 0x0
const-string v9, "df"
aput-object v9, v7, v8
const/4 v8, 0x1
aput-object p1, v7, v8
move-object v0, v7
goto :goto_54
:cond_90
const/4 v7, 0x1
invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
new-instance v6, Ljava/util/StringTokenizer;
const-string v7, " "
invoke-direct {v6, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I
move-result v7
const/4 v8, 0x4
if-ge v7, v8, :cond_ef
invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I
move-result v7
const/4 v8, 0x1
if-ne v7, v8, :cond_d0
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v7
const/4 v8, 0x3
if-lt v7, v8, :cond_d0
const/4 v7, 0x2
invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
new-instance v6, Ljava/util/StringTokenizer;
const-string v7, " "
invoke-direct {v6, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:goto_c1
invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2, p1}, Lorg/apache/commons/io/FileSystemUtils;->parseBytes(Ljava/lang/String;Ljava/lang/String;)J
move-result-wide v7
return-wide v7
:cond_d0
new-instance v7, Ljava/io/IOException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Command line \'df\' did not return data as expected for path \'"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\'- check path is valid"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v7
:cond_ef
invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
goto :goto_c1
.end method
.method  freeSpaceWindows(Ljava/lang/String;)J
.registers 11
const/4 v8, 0x0
const/4 v7, 0x2
const/4 v6, 0x1
invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v4
if-le v4, v7, :cond_19
invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x3a
if-ne v4, v5, :cond_19
invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p1
:cond_19
const/4 v4, 0x3
new-array v0, v4, [Ljava/lang/String;
const-string v4, "cmd.exe"
aput-object v4, v0, v8
const-string v4, "/C"
aput-object v4, v0, v6
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "dir /-c "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
aput-object v4, v0, v7
const v4, 0x7fffffff
invoke-virtual {p0, v0, v4}, Lorg/apache/commons/io/FileSystemUtils;->performCommand([Ljava/lang/String;I)Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v4
sub-int v1, v4, v6
:goto_46
if-ltz v1, :cond_5c
invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v4
if-lez v4, :cond_59
invoke-virtual {p0, v2, p1}, Lorg/apache/commons/io/FileSystemUtils;->parseDir(Ljava/lang/String;Ljava/lang/String;)J
move-result-wide v4
return-wide v4
:cond_59
add-int/lit8 v1, v1, -0x1
goto :goto_46
:cond_5c
new-instance v4, Ljava/io/IOException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Command line \'dir /-c\' did not return any info for path \'"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "\'"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v4
.end method
.method  openProcess([Ljava/lang/String;)Ljava/lang/Process;
.registers 3
invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
move-result-object v0
return-object v0
.end method
.method  parseBytes(Ljava/lang/String;Ljava/lang/String;)J
.registers 10
const-string v6, "\'- check path is valid"
:try_start_2
invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
const-wide/16 v3, 0x0
cmp-long v3, v0, v3
if-gez v3, :cond_4c
new-instance v3, Ljava/io/IOException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Command line \'df\' did not find free space in response for path \'"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\'- check path is valid"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v3
:catch_2b
:try_end_2b
.catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2b} :catch_2b
move-exception v3
move-object v2, v3
new-instance v3, Ljava/io/IOException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Command line \'df\' did not return numeric data as expected for path \'"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\'- check path is valid"
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v3
:cond_4c
return-wide v0
.end method
.method  parseDir(Ljava/lang/String;Ljava/lang/String;)J
.registers 14
const/16 v10, 0x2e
const/16 v9, 0x2c
const/4 v2, 0x0
const/4 v1, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v7
const/4 v8, 0x1
sub-int v4, v7, v8
:goto_d
if-ltz v4, :cond_1b
invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z
move-result v7
if-eqz v7, :cond_4e
add-int/lit8 v1, v4, 0x1
:goto_1b
:cond_1b
if-ltz v4, :cond_2d
invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z
move-result v7
if-nez v7, :cond_51
if-eq v3, v9, :cond_51
if-eq v3, v10, :cond_51
add-int/lit8 v2, v4, 0x1
:cond_2d
if-gez v4, :cond_54
new-instance v7, Ljava/io/IOException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Command line \'dir /-c\' did not return valid info for path \'"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\'"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v7
:cond_4e
add-int/lit8 v4, v4, -0x1
goto :goto_d
:cond_51
add-int/lit8 v4, v4, -0x1
goto :goto_1b
:cond_54
new-instance v0, Ljava/lang/StringBuffer;
invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v7
invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
const/4 v5, 0x0
:goto_5e
invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I
move-result v7
if-ge v5, v7, :cond_79
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v7
if-eq v7, v9, :cond_70
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v7
if-ne v7, v10, :cond_76
:cond_70
add-int/lit8 v6, v5, -0x1
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
move v5, v6
:cond_76
add-int/lit8 v5, v5, 0x1
goto :goto_5e
:cond_79
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {p0, v7, p2}, Lorg/apache/commons/io/FileSystemUtils;->parseBytes(Ljava/lang/String;Ljava/lang/String;)J
move-result-wide v7
return-wide v7
.end method
.method  performCommand([Ljava/lang/String;I)Ljava/util/List;
.registers 15
const-string v9, "\' for command "
new-instance v6, Ljava/util/ArrayList;
const/16 v9, 0x14
invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V
const/4 v8, 0x0
const/4 v2, 0x0
const/4 v7, 0x0
const/4 v0, 0x0
const/4 v3, 0x0
:try_start_e
invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileSystemUtils;->openProcess([Ljava/lang/String;)Ljava/lang/Process;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
move-result-object v2
invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;
move-result-object v7
invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;
move-result-object v0
new-instance v4, Ljava/io/BufferedReader;
new-instance v9, Ljava/io/InputStreamReader;
invoke-direct {v9, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:try_start_28
:try_end_28
.catchall {:try_start_e .. :try_end_28} :catchall_a6
.catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_28} :catch_f1
invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v5
:goto_2c
if-eqz v5, :cond_44
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v9
if-ge v9, p2, :cond_44
invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v5
invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v5
goto :goto_2c
:cond_44
invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I
invoke-virtual {v8}, Ljava/lang/Process;->exitValue()I
move-result v9
if-eqz v9, :cond_b9
new-instance v9, Ljava/io/IOException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Command line returned OS error code \'"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v8}, Ljava/lang/Process;->exitValue()I
move-result v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, "\' for command "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v9
:try_end_78
.catchall {:try_start_28 .. :try_end_78} :catchall_dc
.catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_78} :catch_78
:catch_78
move-exception v9
move-object v1, v9
move-object v3, v4
:goto_7b
:try_start_7b
new-instance v9, Ljava/io/IOException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Command line threw an InterruptedException \'"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, "\' for command "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v9
:try_end_a6
.catchall {:try_start_7b .. :try_end_a6} :catchall_a6
:catchall_a6
move-exception v9
:goto_a7
invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V
if-eqz v8, :cond_b8
invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
:cond_b8
throw v9
:try_start_b9
:cond_b9
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v9
if-nez v9, :cond_df
new-instance v9, Ljava/io/IOException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Command line did not return any info for command "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v9
:catchall_dc
:try_end_dc
.catchall {:try_start_b9 .. :try_end_dc} :catchall_dc
.catch Ljava/lang/InterruptedException; {:try_start_b9 .. :try_end_dc} :catch_78
move-exception v9
move-object v3, v4
goto :goto_a7
:cond_df
invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V
if-eqz v8, :cond_f0
invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
:cond_f0
return-object v6
:catch_f1
move-exception v9
move-object v1, v9
goto :goto_7b
.end method