.class public Lcom/igexin/download/h;
.super Ljava/lang/Object;
.field public static a:Ljava/util/Random;
.field private static final b:Ljava/util/regex/Pattern;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Ljava/util/Random;
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v1
invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V
sput-object v0, Lcom/igexin/download/h;->a:Ljava/util/Random;
const-string/jumbo v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/igexin/download/h;->b:Ljava/util/regex/Pattern;
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/igexin/download/a;
.registers 24
move-object/from16 v0, p1
move-object/from16 v1, p2
move-object/from16 v2, p3
move-object/from16 v3, p4
move/from16 v4, p6
invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/download/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
move-result-object v6
const/16 v5, 0x2e
invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I
move-result v7
if-gez v7, :cond_d0
const/4 v5, 0x1
move-object/from16 v0, p5
invoke-static {v0, v5}, Lcom/igexin/download/h;->a(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v5
move-object v7, v6
:goto_1e
if-eqz v5, :cond_59
const-string/jumbo v6, ".bin"
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_59
const-string/jumbo v6, "?"
move-object/from16 v0, p1
invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v6
if-ltz v6, :cond_3b
const/4 v8, 0x0
move-object/from16 v0, p1
invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p1
:cond_3b
const-string/jumbo v6, "."
move-object/from16 v0, p1
invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v6
const-string/jumbo v8, "/"
move-object/from16 v0, p1
invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v8
if-ltz v6, :cond_59
if-ltz v8, :cond_59
if-le v6, v8, :cond_59
move-object/from16 v0, p1
invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v5
:cond_59
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v6
const-string/jumbo v8, "mounted"
invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_118
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v6
invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v8
new-instance v9, Ljava/io/File;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
sget-object v10, Lcom/igexin/download/SdkDownLoader;->b:Ljava/lang/String;
invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z
move-result v6
if-nez v6, :cond_f0
sget-object v6, Lcom/igexin/download/SdkDownLoader;->b:Ljava/lang/String;
const-string/jumbo v10, "/"
invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v10
const/4 v6, 0x0
:goto_96
array-length v11, v10
if-ge v6, v11, :cond_e0
aget-object v11, v10, v6
if-eqz v11, :cond_cd
aget-object v11, v10, v6
invoke-virtual {v11}, Ljava/lang/String;->length()I
move-result v11
if-lez v11, :cond_cd
new-instance v11, Ljava/io/File;
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
const-string/jumbo v13, "/"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
aget-object v13, v10, v6
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v11}, Ljava/io/File;->exists()Z
move-result v12
if-nez v12, :cond_cd
invoke-virtual {v11}, Ljava/io/File;->mkdir()Z
:cond_cd
add-int/lit8 v6, v6, 0x1
goto :goto_96
:cond_d0
move-object/from16 v0, p5
move/from16 v1, p6
invoke-static {v0, v1, v6, v7}, Lcom/igexin/download/h;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;
move-result-object v5
const/4 v8, 0x0
invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v6
move-object v7, v6
goto/16 :goto_1e
:cond_e0
invoke-virtual {v9}, Ljava/io/File;->mkdir()Z
move-result v6
if-nez v6, :cond_f0
new-instance v5, Lcom/igexin/download/a;
const/4 v6, 0x0
const/4 v7, 0x0
const/16 v8, 0x1ec
invoke-direct {v5, v6, v7, v8}, Lcom/igexin/download/a;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V
:goto_ef
return-object v5
:cond_f0
new-instance v6, Landroid/os/StatFs;
invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v8
invoke-direct {v6, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I
move-result v8
int-to-long v10, v8
invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I
move-result v6
int-to-long v12, v6
const-wide/16 v14, 0x4
sub-long/2addr v12, v14
mul-long/2addr v10, v12
move/from16 v0, p7
int-to-long v12, v0
cmp-long v6, v10, v12
if-gez v6, :cond_122
new-instance v5, Lcom/igexin/download/a;
const/4 v6, 0x0
const/4 v7, 0x0
const/16 v8, 0x1ec
invoke-direct {v5, v6, v7, v8}, Lcom/igexin/download/a;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V
goto :goto_ef
:cond_118
new-instance v5, Lcom/igexin/download/a;
const/4 v6, 0x0
const/4 v7, 0x0
const/16 v8, 0x1ec
invoke-direct {v5, v6, v7, v8}, Lcom/igexin/download/a;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V
goto :goto_ef
:cond_122
const-string/jumbo v6, "recovery"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v6
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
move/from16 v0, p6
invoke-static {v0, v7, v5, v6}, Lcom/igexin/download/h;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v6
if-eqz v6, :cond_169
new-instance v5, Lcom/igexin/download/a;
new-instance v7, Ljava/io/FileOutputStream;
invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
const/4 v8, 0x0
invoke-direct {v5, v6, v7, v8}, Lcom/igexin/download/a;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V
goto :goto_ef
:cond_169
new-instance v5, Lcom/igexin/download/a;
const/4 v6, 0x0
const/4 v7, 0x0
const/16 v8, 0x1ec
invoke-direct {v5, v6, v7, v8}, Lcom/igexin/download/a;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V
goto/16 :goto_ef
.end method
.method private static a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.registers 10
const/4 v1, 0x1
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/io/File;
invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v2
if-nez v2, :cond_28
if-eqz p3, :cond_27
if-eq p0, v1, :cond_28
const/4 v2, 0x2
if-eq p0, v2, :cond_28
const/4 v2, 0x3
if-eq p0, v2, :cond_28
:goto_27
:cond_27
return-object v0
:cond_28
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, "-"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
move v3, v1
:goto_3d
const v0, 0x3b9aca00
if-ge v3, v0, :cond_7b
const/4 v0, 0x0
move v2, v1
move v1, v0
:goto_45
const/16 v0, 0x9
if-ge v1, v0, :cond_76
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v5, Ljava/io/File;
invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v5}, Ljava/io/File;->exists()Z
move-result v5
if-eqz v5, :cond_27
sget-object v0, Lcom/igexin/download/h;->a:Ljava/util/Random;
invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I
move-result v0
add-int/lit8 v0, v0, 0x1
add-int/2addr v2, v0
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_45
:cond_76
mul-int/lit8 v0, v3, 0xa
move v3, v0
move v1, v2
goto :goto_3d
:cond_7b
const/4 v0, 0x0
goto :goto_27
.end method
.method private static a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;
.registers 7
const/4 v0, 0x0
if-eqz p0, :cond_26
const/16 v1, 0x2e
invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I
move-result v1
invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;
move-result-object v2
add-int/lit8 v1, v1, 0x1
invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_1f
invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_26
:cond_1f
const/4 v0, 0x0
invoke-static {p0, v0}, Lcom/igexin/download/h;->a(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_26
:cond_26
if-nez v0, :cond_2c
invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:cond_2c
return-object v0
.end method
.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.registers 10
const/16 v4, 0x3f
const/16 v3, 0x2f
const/4 v1, 0x0
if-nez v1, :cond_24
if-eqz p1, :cond_24
const-string/jumbo v0, "/"
invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_24
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_24
invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I
move-result v0
add-int/lit8 v0, v0, 0x1
if-lez v0, :cond_88
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
:goto_24
:cond_24
if-nez v1, :cond_3a
if-eqz p2, :cond_3a
invoke-static {p2}, Lcom/igexin/download/h;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_3a
invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I
move-result v0
add-int/lit8 v0, v0, 0x1
if-lez v0, :cond_3a
invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
:cond_3a
if-nez v1, :cond_8a
if-eqz p3, :cond_8a
invoke-static {p3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_8a
const-string/jumbo v2, "/"
invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_8a
invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I
move-result v2
if-gez v2, :cond_8a
invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I
move-result v1
add-int/lit8 v1, v1, 0x1
if-lez v1, :cond_5f
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:goto_5f
:cond_5f
if-nez v0, :cond_82
invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_82
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_82
invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I
move-result v2
if-gez v2, :cond_82
invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I
move-result v2
add-int/lit8 v2, v2, 0x1
if-lez v2, :cond_82
invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:cond_82
if-nez v0, :cond_87
const-string/jumbo v0, "downloadfile"
:cond_87
return-object v0
:cond_88
move-object v1, p1
goto :goto_24
:cond_8a
move-object v0, v1
goto :goto_5f
.end method
.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
.registers 5
const/4 v0, 0x0
if-eqz p0, :cond_21
invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_21
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_21
if-nez v0, :cond_3e
if-eqz p0, :cond_45
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "text/"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_45
const-string/jumbo v1, "text/html"
invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3f
const-string/jumbo v0, ".html"
:cond_3e
:goto_3e
return-object v0
:cond_3f
if-eqz p1, :cond_3e
const-string/jumbo v0, ".txt"
goto :goto_3e
:cond_45
if-eqz p1, :cond_3e
const-string/jumbo v0, ".bin"
goto :goto_3e
.end method
.method private static a(Lcom/igexin/download/i;)V
.registers 3
:goto_0
invoke-virtual {p0}, Lcom/igexin/download/i;->a()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_28
invoke-virtual {p0}, Lcom/igexin/download/i;->b()V
invoke-static {p0}, Lcom/igexin/download/h;->a(Lcom/igexin/download/i;)V
invoke-virtual {p0}, Lcom/igexin/download/i;->a()I
move-result v0
const/4 v1, 0x2
if-eq v0, v1, :cond_1d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "syntax error, unmatched parenthese"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1d
invoke-virtual {p0}, Lcom/igexin/download/i;->b()V
:goto_20
invoke-virtual {p0}, Lcom/igexin/download/i;->a()I
move-result v0
const/4 v1, 0x3
if-eq v0, v1, :cond_2c
return-void
:cond_28
invoke-static {p0}, Lcom/igexin/download/h;->b(Lcom/igexin/download/i;)V
goto :goto_20
:cond_2c
invoke-virtual {p0}, Lcom/igexin/download/i;->b()V
goto :goto_0
.end method
.method public static a(Ljava/lang/String;Ljava/util/Set;)V
.registers 4
if-nez p0, :cond_3
:cond_2
return-void
:cond_3
:try_start_3
new-instance v0, Lcom/igexin/download/i;
invoke-direct {v0, p0, p1}, Lcom/igexin/download/i;-><init>(Ljava/lang/String;Ljava/util/Set;)V
invoke-static {v0}, Lcom/igexin/download/h;->a(Lcom/igexin/download/i;)V
invoke-virtual {v0}, Lcom/igexin/download/i;->a()I
move-result v0
const/16 v1, 0x9
if-eq v0, v1, :cond_2
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "syntax error"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_1c
.catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_1c} :catch_1c
:catch_1c
move-exception v0
throw v0
.end method
.method public static a(Landroid/content/Context;)Z
.registers 6
const/4 v1, 0x0
const-string/jumbo v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
if-nez v0, :cond_d
:cond_c
:goto_c
return v1
:cond_d
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
move-result-object v2
if-eqz v2, :cond_c
move v0, v1
:goto_14
array-length v3, v2
if-ge v0, v3, :cond_c
aget-object v3, v2, v0
invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
move-result-object v3
sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
if-ne v3, v4, :cond_23
const/4 v1, 0x1
goto :goto_c
:cond_23
add-int/lit8 v0, v0, 0x1
goto :goto_14
.end method
.method public static final a(Landroid/content/Context;J)Z
.registers 13
const-wide/16 v8, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
:try_start_4
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
const/4 v2, 0x0
const-string/jumbo v3, "( status = \'200\' AND destination = \'2\' )"
const/4 v4, 0x0
const-string/jumbo v5, "lastmod"
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_15
.catchall {:try_start_4 .. :try_end_15} :catchall_6f
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_7a
move-result-object v0
if-nez v0, :cond_1c
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:goto_1b
return v6
:try_start_1c
:cond_1c
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
:try_end_1f
.catchall {:try_start_1c .. :try_end_1f} :catchall_76
.catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_7e
move-wide v1, v8
:try_start_20
:goto_20
invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z
move-result v3
if-nez v3, :cond_6b
cmp-long v3, v1, p1
if-gez v3, :cond_6b
new-instance v3, Ljava/io/File;
const-string/jumbo v4, "_data"
invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v4
invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->length()J
move-result-wide v4
add-long/2addr v1, v4
invoke-virtual {v3}, Ljava/io/File;->delete()Z
const-string/jumbo v3, "_id"
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v5
sget-object v7, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v3
const/4 v4, 0x0
const/4 v7, 0x0
invoke-virtual {v5, v3, v4, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
:try_end_5f
.catchall {:try_start_20 .. :try_end_5f} :catchall_76
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_5f} :catch_60
goto :goto_20
:catch_60
move-exception v3
:goto_61
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:goto_64
cmp-long v0, v1, v8
if-lez v0, :cond_74
const/4 v0, 0x1
:goto_69
move v6, v0
goto :goto_1b
:cond_6b
invoke-interface {v0}, Landroid/database/Cursor;->close()V
goto :goto_64
:catchall_6f
move-exception v0
:goto_70
invoke-interface {v7}, Landroid/database/Cursor;->close()V
throw v0
:cond_74
move v0, v6
goto :goto_69
:catchall_76
move-exception v1
move-object v7, v0
move-object v0, v1
goto :goto_70
:catch_7a
move-exception v0
move-object v0, v7
move-wide v1, v8
goto :goto_61
:catch_7e
move-exception v1
move-wide v1, v8
goto :goto_61
.end method
.method public static a(Ljava/lang/String;)Z
.registers 5
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v0
invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_36
new-instance v1, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "/libs/tmp"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
:cond_36
const/4 v0, 0x1
:goto_37
return v0
:cond_38
const/4 v0, 0x0
goto :goto_37
.end method
.method private static b(Ljava/lang/String;)Ljava/lang/String;
.registers 3
:try_start_0
sget-object v0, Lcom/igexin/download/h;->b:Ljava/util/regex/Pattern;
invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v1
if-eqz v1, :cond_13
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
:try_end_10
.catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_10} :catch_12
move-result-object v0
:goto_11
return-object v0
:catch_12
move-exception v0
:cond_13
const/4 v0, 0x0
goto :goto_11
.end method
.method private static b(Lcom/igexin/download/i;)V
.registers 3
invoke-virtual {p0}, Lcom/igexin/download/i;->a()I
move-result v0
const/4 v1, 0x4
if-eq v0, v1, :cond_10
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "syntax error, expected column name"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
invoke-virtual {p0}, Lcom/igexin/download/i;->b()V
invoke-virtual {p0}, Lcom/igexin/download/i;->a()I
move-result v0
const/4 v1, 0x5
if-ne v0, v1, :cond_31
invoke-virtual {p0}, Lcom/igexin/download/i;->b()V
invoke-virtual {p0}, Lcom/igexin/download/i;->a()I
move-result v0
const/4 v1, 0x6
if-eq v0, v1, :cond_2d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "syntax error, expected quoted string"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2d
invoke-virtual {p0}, Lcom/igexin/download/i;->b()V
:goto_30
return-void
:cond_31
invoke-virtual {p0}, Lcom/igexin/download/i;->a()I
move-result v0
const/4 v1, 0x7
if-ne v0, v1, :cond_50
invoke-virtual {p0}, Lcom/igexin/download/i;->b()V
invoke-virtual {p0}, Lcom/igexin/download/i;->a()I
move-result v0
const/16 v1, 0x8
if-eq v0, v1, :cond_4c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "syntax error, expected NULL"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4c
invoke-virtual {p0}, Lcom/igexin/download/i;->b()V
goto :goto_30
:cond_50
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "syntax error after column name"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static b(Landroid/content/Context;)Z
.registers 3
const/4 v1, 0x1
const-string/jumbo v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
if-nez v0, :cond_e
:cond_c
const/4 v0, 0x0
:goto_d
return v0
:cond_e
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_c
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
move-result v0
if-ne v0, v1, :cond_c
move v0, v1
goto :goto_d
.end method
.method public static c(Landroid/content/Context;)Z
.registers 2
const-string/jumbo v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
if-nez v0, :cond_d
:cond_b
const/4 v0, 0x0
:goto_c
return v0
:cond_d
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
move-result v0
if-nez v0, :cond_b
const-string/jumbo v0, "phone"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
if-eqz v0, :cond_b
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z
move-result v0
if-eqz v0, :cond_b
const/4 v0, 0x1
goto :goto_c
.end method