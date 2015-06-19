.class public Ljavax/activation/MimetypesFileTypeMap;
.super Ljavax/activation/FileTypeMap;
.source "SourceFile"
.field private static final PROG:I
.field private static defDB:Lcom/sun/activation/registries/MimeTypeFile;
.field private static defaultType:Ljava/lang/String;
.field private DB:[Lcom/sun/activation/registries/MimeTypeFile;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;
const-string v0, "application/octet-stream"
sput-object v0, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 4
invoke-direct {p0}, Ljavax/activation/FileTypeMap;-><init>()V
new-instance v0, Ljava/util/Vector;
const/4 v1, 0x5
invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
const-string v1, "MimetypesFileTypeMap: load HOME"
invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
:try_start_12
const-string v1, "user.home"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_3c
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".mime.types"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Ljavax/activation/MimetypesFileTypeMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;
move-result-object v1
if-eqz v1, :cond_3c
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:try_end_3c
.catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_3c} :catch_b0
:goto_3c
:cond_3c
const-string v1, "MimetypesFileTypeMap: load SYS"
invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
:try_start_41
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "java.home"
invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "lib"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "mime.types"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Ljavax/activation/MimetypesFileTypeMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;
move-result-object v1
if-eqz v1, :cond_75
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:goto_75
:try_end_75
.catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_75} :catch_ae
:cond_75
const-string v1, "MimetypesFileTypeMap: load JAR"
invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
const-string v1, "mime.types"
invoke-direct {p0, v0, v1}, Ljavax/activation/MimetypesFileTypeMap;->loadAllResources(Ljava/util/Vector;Ljava/lang/String;)V
const-string v1, "MimetypesFileTypeMap: load DEF"
invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
const-class v1, Ljavax/activation/MimetypesFileTypeMap;
monitor-enter v1
:try_start_87
sget-object v2, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;
if-nez v2, :cond_93
const-string v2, "/mimetypes.default"
invoke-direct {p0, v2}, Ljavax/activation/MimetypesFileTypeMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;
move-result-object v2
sput-object v2, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;
:cond_93
monitor-exit v1
:try_end_94
.catchall {:try_start_87 .. :try_end_94} :catchall_ab
sget-object v1, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;
if-eqz v1, :cond_9d
sget-object v1, Ljavax/activation/MimetypesFileTypeMap;->defDB:Lcom/sun/activation/registries/MimeTypeFile;
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_9d
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v1
new-array v1, v1, [Lcom/sun/activation/registries/MimeTypeFile;
iput-object v1, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;
iget-object v1, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;
invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
return-void
:catchall_ab
move-exception v0
:try_start_ac
monitor-exit v1
:try_end_ad
.catchall {:try_start_ac .. :try_end_ad} :catchall_ab
throw v0
:catch_ae
move-exception v1
goto :goto_75
:catch_b0
move-exception v1
goto :goto_3c
.end method
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 5
invoke-direct {p0}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V
:try_start_3
iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;
const/4 v1, 0x0
new-instance v2, Lcom/sun/activation/registries/MimeTypeFile;
invoke-direct {v2, p1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/io/InputStream;)V
aput-object v2, v0, v1
:try_end_d
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_e
:goto_d
return-void
:catch_e
move-exception v0
goto :goto_d
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V
iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;
const/4 v1, 0x0
new-instance v2, Lcom/sun/activation/registries/MimeTypeFile;
invoke-direct {v2, p1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/lang/String;)V
aput-object v2, v0, v1
return-void
.end method
.method private loadAllResources(Ljava/util/Vector;Ljava/lang/String;)V
.registers 12
const/4 v2, 0x0
:try_start_1
invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
if-nez v0, :cond_f
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
:cond_f
if-eqz v0, :cond_47
invoke-static {v0, p2}, Ljavax/activation/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;
move-result-object v0
move-object v4, v0
:goto_16
if-eqz v4, :cond_27
invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z
move-result v0
if-eqz v0, :cond_23
const-string v0, "MimetypesFileTypeMap: getResources"
invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
:cond_23
move v3, v2
:goto_24
array-length v0, v4
:try_end_25
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_105
if-lt v3, v0, :cond_4d
:goto_27
:cond_27
if-nez v2, :cond_46
const-string v0, "MimetypesFileTypeMap: !anyLoaded"
invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "/"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Ljavax/activation/MimetypesFileTypeMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;
move-result-object v0
if-eqz v0, :cond_46
invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_46
return-void
:try_start_47
:cond_47
invoke-static {p2}, Ljavax/activation/SecuritySupport;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;
move-result-object v0
move-object v4, v0
goto :goto_16
:cond_4d
aget-object v5, v4, v3
const/4 v1, 0x0
invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z
move-result v0
if-eqz v0, :cond_68
new-instance v0, Ljava/lang/StringBuilder;
const-string v6, "MimetypesFileTypeMap: URL "
invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
:try_end_68
.catch Ljava/lang/Exception; {:try_start_47 .. :try_end_68} :catch_105
:cond_68
:try_start_68
invoke-static {v5}, Ljavax/activation/SecuritySupport;->openStream(Ljava/net/URL;)Ljava/io/InputStream;
:try_end_6b
.catchall {:try_start_68 .. :try_end_6b} :catchall_fe
.catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_b4
.catch Ljava/lang/SecurityException; {:try_start_68 .. :try_end_6b} :catch_d9
move-result-object v1
if-eqz v1, :cond_9a
:try_start_6e
new-instance v0, Lcom/sun/activation/registries/MimeTypeFile;
invoke-direct {v0, v1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/io/InputStream;)V
invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
const/4 v2, 0x1
invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z
move-result v0
if-eqz v0, :cond_13c
new-instance v0, Ljava/lang/StringBuilder;
const-string v6, "MimetypesFileTypeMap: successfully loaded mime types from URL: "
invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
:try_end_8f
.catchall {:try_start_6e .. :try_end_8f} :catchall_fe
.catch Ljava/io/IOException; {:try_start_6e .. :try_end_8f} :catch_135
.catch Ljava/lang/SecurityException; {:try_start_6e .. :try_end_8f} :catch_12f
move v0, v2
:goto_90
if-eqz v1, :cond_95
:try_start_92
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:cond_95
:goto_95
:try_end_95
.catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_122
.catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_125
add-int/lit8 v2, v3, 0x1
move v3, v2
move v2, v0
goto :goto_24
:cond_9a
:try_start_9a
invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z
move-result v0
if-eqz v0, :cond_13c
new-instance v0, Ljava/lang/StringBuilder;
const-string v6, "MimetypesFileTypeMap: not loading mime types from URL: "
invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
:try_end_b2
.catchall {:try_start_9a .. :try_end_b2} :catchall_fe
.catch Ljava/io/IOException; {:try_start_9a .. :try_end_b2} :catch_135
.catch Ljava/lang/SecurityException; {:try_start_9a .. :try_end_b2} :catch_12f
move v0, v2
goto :goto_90
:catch_b4
move-exception v0
move-object v8, v0
move v0, v2
move-object v2, v1
move-object v1, v8
:goto_b9
:try_start_b9
invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z
move-result v6
if-eqz v6, :cond_d1
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "MimetypesFileTypeMap: can\'t load "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v5, v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_d1
.catchall {:try_start_b9 .. :try_end_d1} :catchall_129
:cond_d1
if-eqz v2, :cond_95
:try_start_d3
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:try_end_d6
.catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d7
.catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d6} :catch_125
goto :goto_95
:catch_d7
move-exception v1
goto :goto_95
:catch_d9
move-exception v0
move-object v8, v0
move v0, v2
move-object v2, v1
move-object v1, v8
:goto_de
:try_start_de
invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z
move-result v6
if-eqz v6, :cond_f6
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "MimetypesFileTypeMap: can\'t load "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v5, v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_f6
:try_end_f6
.catchall {:try_start_de .. :try_end_f6} :catchall_129
if-eqz v2, :cond_95
:try_start_f8
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:try_end_fb
.catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fb} :catch_fc
.catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fb} :catch_125
goto :goto_95
:catch_fc
move-exception v1
goto :goto_95
:catchall_fe
move-exception v0
:goto_ff
if-eqz v1, :cond_104
:try_start_101
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:cond_104
:try_end_104
.catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_120
.catch Ljava/lang/Exception; {:try_start_101 .. :try_end_104} :catch_105
:goto_104
:try_start_104
throw v0
:try_end_105
.catch Ljava/lang/Exception; {:try_start_104 .. :try_end_105} :catch_105
:catch_105
move-exception v0
:goto_106
invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z
move-result v1
if-eqz v1, :cond_27
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "MimetypesFileTypeMap: can\'t load "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_27
:catch_120
move-exception v1
goto :goto_104
:catch_122
move-exception v1
goto/16 :goto_95
:catch_125
move-exception v1
move v2, v0
move-object v0, v1
goto :goto_106
:catchall_129
move-exception v1
move-object v8, v1
move-object v1, v2
move v2, v0
move-object v0, v8
goto :goto_ff
:catch_12f
move-exception v0
move-object v8, v0
move v0, v2
move-object v2, v1
move-object v1, v8
goto :goto_de
:catch_135
move-exception v0
move-object v8, v0
move v0, v2
move-object v2, v1
move-object v1, v8
goto/16 :goto_b9
:cond_13c
move v0, v2
goto/16 :goto_90
.end method
.method private loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;
.registers 4
const/4 v1, 0x0
:try_start_1
new-instance v0, Lcom/sun/activation/registries/MimeTypeFile;
invoke-direct {v0, p1}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/lang/String;)V
:goto_6
:try_end_6
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_7
return-object v0
:catch_7
move-exception v0
move-object v0, v1
goto :goto_6
.end method
.method private loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MimeTypeFile;
.registers 7
const/4 v1, 0x0
:try_start_1
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-static {v0, p1}, Ljavax/activation/SecuritySupport;->getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_91
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_4d
.catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_8} :catch_6f
move-result-object v2
if-eqz v2, :cond_2e
:try_start_b
new-instance v0, Lcom/sun/activation/registries/MimeTypeFile;
invoke-direct {v0, v2}, Lcom/sun/activation/registries/MimeTypeFile;-><init>(Ljava/io/InputStream;)V
invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z
move-result v3
if-eqz v3, :cond_28
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "MimetypesFileTypeMap: successfully loaded mime types file: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
:try_end_28
.catchall {:try_start_b .. :try_end_28} :catchall_9f
.catch Ljava/io/IOException; {:try_start_b .. :try_end_28} :catch_a3
.catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_28} :catch_a1
:cond_28
if-eqz v2, :cond_2d
:try_start_2a
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:goto_2d
:cond_2d
:try_end_2d
.catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_99
return-object v0
:try_start_2e
:cond_2e
invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z
move-result v0
if-eqz v0, :cond_46
new-instance v0, Ljava/lang/StringBuilder;
const-string v3, "MimetypesFileTypeMap: not loading mime types file: "
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
:try_end_46
.catchall {:try_start_2e .. :try_end_46} :catchall_9f
.catch Ljava/io/IOException; {:try_start_2e .. :try_end_46} :catch_a3
.catch Ljava/lang/SecurityException; {:try_start_2e .. :try_end_46} :catch_a1
:cond_46
if-eqz v2, :cond_4b
:try_start_48
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:goto_4b
:cond_4b
:try_end_4b
.catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_9d
move-object v0, v1
goto :goto_2d
:catch_4d
move-exception v0
move-object v2, v1
:goto_4f
:try_start_4f
invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z
move-result v3
if-eqz v3, :cond_67
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "MimetypesFileTypeMap: can\'t load "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3, v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_67
.catchall {:try_start_4f .. :try_end_67} :catchall_9f
:cond_67
if-eqz v2, :cond_4b
:try_start_69
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:try_end_6c
.catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d
goto :goto_4b
:catch_6d
move-exception v0
goto :goto_4b
:catch_6f
move-exception v0
move-object v2, v1
:try_start_71
:goto_71
invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z
move-result v3
if-eqz v3, :cond_89
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "MimetypesFileTypeMap: can\'t load "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3, v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_89
.catchall {:try_start_71 .. :try_end_89} :catchall_9f
:cond_89
if-eqz v2, :cond_4b
:try_start_8b
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:try_end_8e
.catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f
goto :goto_4b
:catch_8f
move-exception v0
goto :goto_4b
:catchall_91
move-exception v0
move-object v2, v1
:goto_93
if-eqz v2, :cond_98
:try_start_95
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:cond_98
:try_end_98
.catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_9b
:goto_98
throw v0
:catch_99
move-exception v1
goto :goto_2d
:catch_9b
move-exception v1
goto :goto_98
:catch_9d
move-exception v0
goto :goto_4b
:catchall_9f
move-exception v0
goto :goto_93
:catch_a1
move-exception v0
goto :goto_71
:catch_a3
move-exception v0
goto :goto_4f
.end method
.method public declared-synchronized addMimeTypes(Ljava/lang/String;)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;
const/4 v1, 0x0
aget-object v0, v0, v1
if-nez v0, :cond_12
iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;
const/4 v1, 0x0
new-instance v2, Lcom/sun/activation/registries/MimeTypeFile;
invoke-direct {v2}, Lcom/sun/activation/registries/MimeTypeFile;-><init>()V
aput-object v2, v0, v1
:cond_12
iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;
const/4 v1, 0x0
aget-object v0, v0, v1
invoke-virtual {v0, p1}, Lcom/sun/activation/registries/MimeTypeFile;->appendToRegistry(Ljava/lang/String;)V
:try_end_1a
.catchall {:try_start_1 .. :try_end_1a} :catchall_1c
monitor-exit p0
return-void
:catchall_1c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public getContentType(Ljava/io/File;)Ljava/lang/String;
.registers 3
invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Ljavax/activation/MimetypesFileTypeMap;->getContentType(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public declared-synchronized getContentType(Ljava/lang/String;)Ljava/lang/String;
.registers 5
monitor-enter p0
:try_start_1
const-string v0, "."
invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v0
if-gez v0, :cond_d
sget-object v0, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;
:goto_b
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_3b
monitor-exit p0
return-object v0
:cond_d
add-int/lit8 v0, v0, 0x1
:try_start_f
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_1c
sget-object v0, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;
goto :goto_b
:cond_1c
const/4 v0, 0x0
move v1, v0
:goto_1e
iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;
array-length v0, v0
if-lt v1, v0, :cond_26
sget-object v0, Ljavax/activation/MimetypesFileTypeMap;->defaultType:Ljava/lang/String;
goto :goto_b
:cond_26
iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;
aget-object v0, v0, v1
if-nez v0, :cond_30
:cond_2c
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_1e
:cond_30
iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->DB:[Lcom/sun/activation/registries/MimeTypeFile;
aget-object v0, v0, v1
invoke-virtual {v0, v2}, Lcom/sun/activation/registries/MimeTypeFile;->getMIMETypeString(Ljava/lang/String;)Ljava/lang/String;
:try_end_37
.catchall {:try_start_f .. :try_end_37} :catchall_3b
move-result-object v0
if-eqz v0, :cond_2c
goto :goto_b
:catchall_3b
move-exception v0
monitor-exit p0
throw v0
.end method