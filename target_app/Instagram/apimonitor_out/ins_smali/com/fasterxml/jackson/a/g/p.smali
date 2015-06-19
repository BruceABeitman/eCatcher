.class public final Lcom/fasterxml/jackson/a/g/p;
.super Ljava/lang/Object;
.source "VersionUtil.java"
.field private static final a:Ljava/util/regex/Pattern;
.method static constructor <clinit>()V
.registers 1
const-string v0, "[-_./;:]"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/a/g/p;->a:Ljava/util/regex/Pattern;
return-void
.end method
.method private static a(Ljava/lang/String;)I
.registers 7
const/4 v0, 0x0
invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
move v1, v0
:goto_a
if-ge v0, v3, :cond_20
invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x39
if-gt v4, v5, :cond_20
const/16 v5, 0x30
if-lt v4, v5, :cond_20
mul-int/lit8 v1, v1, 0xa
add-int/lit8 v4, v4, -0x30
add-int/2addr v1, v4
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_20
return v1
.end method
.method private static a(Ljava/io/Reader;)Lcom/fasterxml/jackson/a/w;
.registers 7
const/4 v1, 0x0
new-instance v3, Ljava/io/BufferedReader;
invoke-direct {v3, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:try_start_6
invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
:try_end_9
.catchall {:try_start_6 .. :try_end_9} :catchall_41
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_32
move-result-object v2
if-eqz v2, :cond_4d
:try_start_c
invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
:try_end_f
.catchall {:try_start_c .. :try_end_f} :catchall_41
.catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_48
move-result-object v0
if-eqz v0, :cond_16
:try_start_12
invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
:try_end_15
.catchall {:try_start_12 .. :try_end_15} :catchall_41
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_4b
move-result-object v1
:cond_16
:try_start_16
:goto_16
invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
:try_end_19
.catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_2d
move-object v5, v1
move-object v1, v0
move-object v0, v5
:goto_1c
if-eqz v1, :cond_22
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
:cond_22
if-eqz v0, :cond_28
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
:cond_28
invoke-static {v2, v1, v0}, Lcom/fasterxml/jackson/a/g/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/a/w;
move-result-object v0
return-object v0
:catch_2d
move-exception v3
move-object v5, v1
move-object v1, v0
move-object v0, v5
goto :goto_1c
:catch_32
move-exception v0
move-object v0, v1
move-object v2, v1
:goto_35
:try_start_35
invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
:try_end_38
.catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_3c
move-object v5, v1
move-object v1, v0
move-object v0, v5
goto :goto_1c
:catch_3c
move-exception v3
move-object v5, v1
move-object v1, v0
move-object v0, v5
goto :goto_1c
:catchall_41
move-exception v0
:try_start_42
invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
:try_end_45
.catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46
:goto_45
throw v0
:catch_46
move-exception v1
goto :goto_45
:catch_48
move-exception v0
move-object v0, v1
goto :goto_35
:catch_4b
move-exception v4
goto :goto_35
:cond_4d
move-object v0, v1
goto :goto_16
.end method
.method public static a(Ljava/lang/Class;)Lcom/fasterxml/jackson/a/w;
.registers 4
invoke-static {p0}, Lcom/fasterxml/jackson/a/g/p;->b(Ljava/lang/Class;)Lcom/fasterxml/jackson/a/w;
move-result-object v0
if-eqz v0, :cond_7
:goto_6
return-object v0
:cond_7
const-string v0, "VERSION.txt"
invoke-virtual {p0, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v1
if-nez v1, :cond_14
invoke-static {}, Lcom/fasterxml/jackson/a/w;->a()Lcom/fasterxml/jackson/a/w;
move-result-object v0
goto :goto_6
:cond_14
:try_start_14
new-instance v2, Ljava/io/InputStreamReader;
const-string v0, "UTF-8"
invoke-direct {v2, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
:try_start_1b
:try_end_1b
.catchall {:try_start_14 .. :try_end_1b} :catchall_42
.catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_1b} :catch_32
invoke-static {v2}, Lcom/fasterxml/jackson/a/g/p;->a(Ljava/io/Reader;)Lcom/fasterxml/jackson/a/w;
:try_end_1e
.catchall {:try_start_1b .. :try_end_1e} :catchall_2d
move-result-object v0
:try_start_1f
invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
:try_end_22
.catchall {:try_start_1f .. :try_end_22} :catchall_42
.catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_4e
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1f .. :try_end_22} :catch_32
:goto_22
:try_start_22
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:try_end_25
.catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26
goto :goto_6
:catch_26
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catchall_2d
move-exception v0
:try_start_2e
invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
:goto_31
:try_start_31
:try_end_31
.catchall {:try_start_2e .. :try_end_31} :catchall_42
.catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_50
.catch Ljava/io/UnsupportedEncodingException; {:try_start_2e .. :try_end_31} :catch_32
throw v0
:try_end_32
.catchall {:try_start_31 .. :try_end_32} :catchall_42
.catch Ljava/io/UnsupportedEncodingException; {:try_start_31 .. :try_end_32} :catch_32
:catch_32
move-exception v0
:try_start_33
invoke-static {}, Lcom/fasterxml/jackson/a/w;->a()Lcom/fasterxml/jackson/a/w;
:try_end_36
.catchall {:try_start_33 .. :try_end_36} :catchall_42
move-result-object v0
:try_start_37
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:try_end_3a
.catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b
goto :goto_6
:catch_3b
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catchall_42
move-exception v0
:try_start_43
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:try_end_46
.catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47
throw v0
:catch_47
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_4e
move-exception v2
goto :goto_22
:catch_50
move-exception v2
goto :goto_31
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/a/w;
.registers 11
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v3, 0x1
const/4 v4, 0x0
const/4 v0, 0x0
if-nez p0, :cond_8
:goto_7
:cond_7
return-object v4
:cond_8
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-eqz v2, :cond_7
sget-object v2, Lcom/fasterxml/jackson/a/g/p;->a:Ljava/util/regex/Pattern;
invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;
move-result-object v5
aget-object v1, v5, v0
invoke-static {v1}, Lcom/fasterxml/jackson/a/g/p;->a(Ljava/lang/String;)I
move-result v1
array-length v2, v5
if-le v2, v3, :cond_3e
aget-object v2, v5, v3
invoke-static {v2}, Lcom/fasterxml/jackson/a/g/p;->a(Ljava/lang/String;)I
move-result v2
:goto_27
array-length v3, v5
if-le v3, v6, :cond_40
aget-object v0, v5, v6
invoke-static {v0}, Lcom/fasterxml/jackson/a/g/p;->a(Ljava/lang/String;)I
move-result v3
:goto_30
array-length v0, v5
if-le v0, v7, :cond_35
aget-object v4, v5, v7
:cond_35
new-instance v0, Lcom/fasterxml/jackson/a/w;
move-object v5, p1
move-object v6, p2
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/a/w;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
move-object v4, v0
goto :goto_7
:cond_3e
move v2, v0
goto :goto_27
:cond_40
move v3, v0
goto :goto_30
.end method
.method public static final a()V
.registers 2
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Internal error: this code path should never get executed"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private static b(Ljava/lang/Class;)Lcom/fasterxml/jackson/a/w;
.registers 6
const/4 v0, 0x0
:try_start_1
invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v1, ".PackageVersion"
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v3
invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
:try_end_20
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_86
move-result-object v1
if-nez v1, :cond_24
:goto_23
return-object v0
:cond_24
:try_start_24
invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
:try_end_27
.catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_27} :catch_55
.catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_57
move-result-object v0
instance-of v2, v0, Lcom/fasterxml/jackson/a/x;
if-nez v2, :cond_7f
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Bad version class "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": does not implement "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-class v2, Lcom/fasterxml/jackson/a/x;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:catch_55
move-exception v0
throw v0
:catch_57
move-exception v0
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Failed to instantiate "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " to find version information, problem: "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:cond_7f
check-cast v0, Lcom/fasterxml/jackson/a/x;
invoke-interface {v0}, Lcom/fasterxml/jackson/a/x;->version()Lcom/fasterxml/jackson/a/w;
move-result-object v0
goto :goto_23
:catch_86
move-exception v1
goto :goto_23
.end method