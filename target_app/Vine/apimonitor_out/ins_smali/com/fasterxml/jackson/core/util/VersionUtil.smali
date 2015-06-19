.class public Lcom/fasterxml/jackson/core/util/VersionUtil;
.super Ljava/lang/Object;
.source "VersionUtil.java"
.field private static final VERSION_SEPARATOR:Ljava/util/regex/Pattern;
.field private final _version:Lcom/fasterxml/jackson/core/Version;
.method static constructor <clinit>()V
.registers 1
const-string v0, "[-_./;:]"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/core/util/VersionUtil;->VERSION_SEPARATOR:Ljava/util/regex/Pattern;
return-void
.end method
.method protected constructor <init>()V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
:try_start_4
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-static {v1}, Lcom/fasterxml/jackson/core/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/core/Version;
:try_end_b
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_15
move-result-object v0
:goto_c
if-nez v0, :cond_12
invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;
move-result-object v0
:cond_12
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/VersionUtil;->_version:Lcom/fasterxml/jackson/core/Version;
return-void
:catch_15
move-exception v1
sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "ERROR: Failed to load Version information from "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto :goto_c
.end method
.method private static final _close(Ljava/io/Closeable;)V
.registers 2
:try_start_0
invoke-interface {p0}, Ljava/io/Closeable;->close()V
:goto_3
:try_end_3
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
goto :goto_3
.end method
.method private static doReadVersion(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/Version;
.registers 6
const/4 v0, 0x0
new-instance v3, Ljava/io/BufferedReader;
invoke-direct {v3, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:try_start_6
invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
:try_end_9
.catchall {:try_start_6 .. :try_end_9} :catchall_31
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_2a
move-result-object v2
if-eqz v2, :cond_3b
:try_start_c
invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
:try_end_f
.catchall {:try_start_c .. :try_end_f} :catchall_31
.catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_36
move-result-object v1
if-eqz v1, :cond_16
:try_start_12
invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
:try_end_15
.catchall {:try_start_12 .. :try_end_15} :catchall_31
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_39
move-result-object v0
:cond_16
:goto_16
invoke-static {v3}, Lcom/fasterxml/jackson/core/util/VersionUtil;->_close(Ljava/io/Closeable;)V
:goto_19
if-eqz v1, :cond_1f
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
:cond_1f
if-eqz v0, :cond_25
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
:cond_25
invoke-static {v2, v1, v0}, Lcom/fasterxml/jackson/core/util/VersionUtil;->parseVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/core/Version;
move-result-object v0
return-object v0
:catch_2a
move-exception v1
move-object v1, v0
move-object v2, v0
:goto_2d
invoke-static {v3}, Lcom/fasterxml/jackson/core/util/VersionUtil;->_close(Ljava/io/Closeable;)V
goto :goto_19
:catchall_31
move-exception v0
invoke-static {v3}, Lcom/fasterxml/jackson/core/util/VersionUtil;->_close(Ljava/io/Closeable;)V
throw v0
:catch_36
move-exception v1
move-object v1, v0
goto :goto_2d
:catch_39
move-exception v4
goto :goto_2d
:cond_3b
move-object v1, v0
goto :goto_16
.end method
.method public static mavenVersionFor(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/core/Version;
.registers 8
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "META-INF/maven/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\\."
const-string v2, "/"
invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/pom.properties"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v1
if-eqz v1, :cond_57
:try_start_31
new-instance v0, Ljava/util/Properties;
invoke-direct {v0}, Ljava/util/Properties;-><init>()V
invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
const-string v2, "version"
invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "artifactId"
invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v4, "groupId"
invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0, v3}, Lcom/fasterxml/jackson/core/util/VersionUtil;->parseVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/core/Version;
:try_end_4e
.catchall {:try_start_31 .. :try_end_4e} :catchall_5c
.catch Ljava/io/IOException; {:try_start_31 .. :try_end_4e} :catch_53
move-result-object v0
invoke-static {v1}, Lcom/fasterxml/jackson/core/util/VersionUtil;->_close(Ljava/io/Closeable;)V
:goto_52
return-object v0
:catch_53
move-exception v0
invoke-static {v1}, Lcom/fasterxml/jackson/core/util/VersionUtil;->_close(Ljava/io/Closeable;)V
:cond_57
invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;
move-result-object v0
goto :goto_52
:catchall_5c
move-exception v0
invoke-static {v1}, Lcom/fasterxml/jackson/core/util/VersionUtil;->_close(Ljava/io/Closeable;)V
throw v0
.end method
.method public static packageVersionFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/core/Version;
.registers 5
:try_start_0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".PackageVersion"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v2
invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_49
move-result-object v1
:try_start_24
invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/core/Versioned;
invoke-interface {v0}, Lcom/fasterxml/jackson/core/Versioned;->version()Lcom/fasterxml/jackson/core/Version;
:try_end_2d
.catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_2f
move-result-object v0
:goto_2e
return-object v0
:catch_2f
move-exception v0
:try_start_30
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Failed to get Versioned out of "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:catch_49
:try_end_49
.catch Ljava/lang/Exception; {:try_start_30 .. :try_end_49} :catch_49
move-exception v0
const/4 v0, 0x0
goto :goto_2e
.end method
.method public static parseVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/core/Version;
.registers 12
const/4 v4, 0x0
const/4 v8, 0x3
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v3, 0x0
if-eqz p0, :cond_3e
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_3e
sget-object v1, Lcom/fasterxml/jackson/core/util/VersionUtil;->VERSION_SEPARATOR:Ljava/util/regex/Pattern;
invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;
move-result-object v5
new-instance v0, Lcom/fasterxml/jackson/core/Version;
aget-object v1, v5, v3
invoke-static {v1}, Lcom/fasterxml/jackson/core/util/VersionUtil;->parseVersionPart(Ljava/lang/String;)I
move-result v1
array-length v2, v5
if-le v2, v6, :cond_3c
aget-object v2, v5, v6
invoke-static {v2}, Lcom/fasterxml/jackson/core/util/VersionUtil;->parseVersionPart(Ljava/lang/String;)I
move-result v2
:goto_28
array-length v6, v5
if-le v6, v7, :cond_31
aget-object v3, v5, v7
invoke-static {v3}, Lcom/fasterxml/jackson/core/util/VersionUtil;->parseVersionPart(Ljava/lang/String;)I
move-result v3
:cond_31
array-length v6, v5
if-le v6, v8, :cond_36
aget-object v4, v5, v8
:cond_36
move-object v5, p1
move-object v6, p2
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/core/Version;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:goto_3b
return-object v0
:cond_3c
move v2, v3
goto :goto_28
:cond_3e
move-object v0, v4
goto :goto_3b
.end method
.method protected static parseVersionPart(Ljava/lang/String;)I
.registers 6
const/4 v0, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
move v1, v0
:goto_6
if-ge v0, v2, :cond_14
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x39
if-gt v3, v4, :cond_14
const/16 v4, 0x30
if-ge v3, v4, :cond_15
:cond_14
return v1
:cond_15
mul-int/lit8 v1, v1, 0xa
add-int/lit8 v3, v3, -0x30
add-int/2addr v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_6
.end method
.method public static final throwInternal()V
.registers 2
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Internal error: this code path should never get executed"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static versionFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/core/Version;
.registers 4
invoke-static {p0}, Lcom/fasterxml/jackson/core/util/VersionUtil;->packageVersionFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/core/Version;
move-result-object v0
if-eqz v0, :cond_7
:goto_6
return-object v0
:cond_7
const-string v0, "VERSION.txt"
invoke-virtual {p0, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v1
if-nez v1, :cond_14
invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;
move-result-object v0
goto :goto_6
:cond_14
:try_start_14
new-instance v0, Ljava/io/InputStreamReader;
const-string v2, "UTF-8"
invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
invoke-static {v0}, Lcom/fasterxml/jackson/core/util/VersionUtil;->doReadVersion(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/Version;
:try_end_1e
.catchall {:try_start_14 .. :try_end_1e} :catchall_2c
.catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_1e} :catch_23
move-result-object v0
invoke-static {v1}, Lcom/fasterxml/jackson/core/util/VersionUtil;->_close(Ljava/io/Closeable;)V
goto :goto_6
:catch_23
move-exception v0
:try_start_24
invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;
:try_end_27
.catchall {:try_start_24 .. :try_end_27} :catchall_2c
move-result-object v0
invoke-static {v1}, Lcom/fasterxml/jackson/core/util/VersionUtil;->_close(Ljava/io/Closeable;)V
goto :goto_6
:catchall_2c
move-exception v0
invoke-static {v1}, Lcom/fasterxml/jackson/core/util/VersionUtil;->_close(Ljava/io/Closeable;)V
throw v0
.end method
.method public version()Lcom/fasterxml/jackson/core/Version;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/VersionUtil;->_version:Lcom/fasterxml/jackson/core/Version;
return-object v0
.end method