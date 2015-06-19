.class public final Lcom/bbm/util/bj;
.super Ljava/lang/Object;
.source "FileUtil.java"
.field private static a:Ljava/util/EnumMap;
.field private static b:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/EnumMap;
const-class v1, Lcom/bbm/util/bk;
invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V
sput-object v0, Lcom/bbm/util/bj;->a:Ljava/util/EnumMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
return-void
.end method
.method public static a(Ljava/lang/String;)I
.registers 5
invoke-static {p0}, Lcom/google/b/d/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/bj;->g(Ljava/lang/String;)Lcom/bbm/util/bk;
move-result-object v0
sget-object v1, Lcom/bbm/util/bj;->a:Ljava/util/EnumMap;
invoke-virtual {v1}, Ljava/util/EnumMap;->isEmpty()Z
move-result v1
if-eqz v1, :cond_9c
sget-object v1, Lcom/bbm/util/bj;->a:Ljava/util/EnumMap;
sget-object v2, Lcom/bbm/util/bk;->c:Lcom/bbm/util/bk;
const v3, 0x7f020117
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/bbm/util/bj;->a:Ljava/util/EnumMap;
sget-object v2, Lcom/bbm/util/bk;->e:Lcom/bbm/util/bk;
const v3, 0x7f02011e
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/bbm/util/bj;->a:Ljava/util/EnumMap;
sget-object v2, Lcom/bbm/util/bk;->f:Lcom/bbm/util/bk;
const v3, 0x7f020113
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/bbm/util/bj;->a:Ljava/util/EnumMap;
sget-object v2, Lcom/bbm/util/bk;->g:Lcom/bbm/util/bk;
const v3, 0x7f020121
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/bbm/util/bj;->a:Ljava/util/EnumMap;
sget-object v2, Lcom/bbm/util/bk;->h:Lcom/bbm/util/bk;
const v3, 0x7f02011b
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/bbm/util/bj;->a:Ljava/util/EnumMap;
sget-object v2, Lcom/bbm/util/bk;->i:Lcom/bbm/util/bk;
const v3, 0x7f020118
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/bbm/util/bj;->a:Ljava/util/EnumMap;
sget-object v2, Lcom/bbm/util/bk;->l:Lcom/bbm/util/bk;
const v3, 0x7f020111
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/bbm/util/bj;->a:Ljava/util/EnumMap;
sget-object v2, Lcom/bbm/util/bk;->k:Lcom/bbm/util/bk;
const v3, 0x7f02011c
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/bbm/util/bj;->a:Ljava/util/EnumMap;
sget-object v2, Lcom/bbm/util/bk;->d:Lcom/bbm/util/bk;
const v3, 0x7f02011f
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Lcom/bbm/util/bj;->a:Ljava/util/EnumMap;
sget-object v2, Lcom/bbm/util/bk;->b:Lcom/bbm/util/bk;
const v3, 0x7f020119
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
:cond_9c
sget-object v1, Lcom/bbm/util/bj;->a:Ljava/util/EnumMap;
invoke-virtual {v1, v0}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_b1
sget-object v1, Lcom/bbm/util/bj;->a:Ljava/util/EnumMap;
invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
:goto_b0
return v0
:cond_b1
const v0, 0x7f020114
goto :goto_b0
.end method
.method public static a(Landroid/content/Context;J)Ljava/lang/String;
.registers 11
const/4 v3, 0x1
const/4 v7, 0x0
new-instance v0, Ljava/text/DecimalFormat;
const-string v1, "0.00"
invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V
const-wide/32 v1, 0x40000000
cmp-long v1, p1, v1
if-ltz v1, :cond_24
const v1, 0x7f0e033a
new-array v2, v3, [Ljava/lang/Object;
long-to-double v3, p1
const-wide/high16 v5, 0x41d0
div-double/2addr v3, v5
invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
move-result-object v0
aput-object v0, v2, v7
invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_23
return-object v0
:cond_24
const-wide/32 v1, 0x100000
cmp-long v1, p1, v1
if-ltz v1, :cond_3f
const v1, 0x7f0e033c
new-array v2, v3, [Ljava/lang/Object;
long-to-double v3, p1
const-wide/high16 v5, 0x4130
div-double/2addr v3, v5
invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
move-result-object v0
aput-object v0, v2, v7
invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_23
:cond_3f
const-wide/16 v1, 0x400
cmp-long v1, p1, v1
if-ltz v1, :cond_59
const v1, 0x7f0e033b
new-array v2, v3, [Ljava/lang/Object;
long-to-double v3, p1
const-wide/high16 v5, 0x4090
div-double/2addr v3, v5
invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
move-result-object v0
aput-object v0, v2, v7
invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_23
:cond_59
const v0, 0x7f0e0339
new-array v1, v3, [Ljava/lang/Object;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v1, v7
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_23
.end method
.method public static a(Ljava/io/File;Ljava/io/File;)V
.registers 10
new-instance v6, Ljava/io/FileInputStream;
invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
new-instance v7, Ljava/io/FileOutputStream;
invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v0
invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
move-result-object v0
invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
move-result-object v5
const-wide/16 v1, 0x0
invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J
move-result-wide v3
invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/File;
invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v0, v1}, Lcom/bbm/util/bj;->a(Ljava/io/File;Ljava/io/File;)V
return-void
.end method
.method public static b(Ljava/lang/String;)Z
.registers 3
invoke-static {p0}, Lcom/google/b/d/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/bj;->g(Ljava/lang/String;)Lcom/bbm/util/bk;
move-result-object v0
sget-object v1, Lcom/bbm/util/bk;->k:Lcom/bbm/util/bk;
if-ne v0, v1, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public static c(Ljava/lang/String;)Z
.registers 3
invoke-static {p0}, Lcom/google/b/d/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/bj;->g(Ljava/lang/String;)Lcom/bbm/util/bk;
move-result-object v0
sget-object v1, Lcom/bbm/util/bk;->b:Lcom/bbm/util/bk;
if-ne v0, v1, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public static d(Ljava/lang/String;)Z
.registers 3
invoke-static {p0}, Lcom/google/b/d/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/bj;->g(Ljava/lang/String;)Lcom/bbm/util/bk;
move-result-object v0
sget-object v1, Lcom/bbm/util/bk;->d:Lcom/bbm/util/bk;
if-ne v0, v1, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public static e(Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
const/16 v2, 0x2e
invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_15
const-string v0, ""
:goto_14
return-object v0
:cond_15
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
add-int/lit8 v1, v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
goto :goto_14
.end method
.method public static f(Ljava/lang/String;)[B
.registers 11
const/4 v2, 0x1
const/4 v3, 0x0
new-array v0, v3, [B
invoke-static {p0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_31
:try_start_a
new-instance v4, Ljava/io/File;
invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v5, Ljava/io/FileInputStream;
invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_start_14
:try_end_14
.catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_14} :catch_44
invoke-virtual {v4}, Ljava/io/File;->length()J
move-result-wide v6
const-wide/32 v8, 0x400000
cmp-long v1, v6, v8
if-gez v1, :cond_32
move v1, v2
:goto_20
const-string v6, "Trying to read a file larger then 4mb into memory"
invoke-static {v1, v6}, Lcom/bbm/util/fb;->a(ZLjava/lang/Object;)Z
invoke-virtual {v4}, Ljava/io/File;->length()J
move-result-wide v6
long-to-int v1, v6
invoke-static {v5, v1}, Lcom/bbm/util/ca;->a(Ljava/io/InputStream;I)[B
:try_end_2d
.catchall {:try_start_14 .. :try_end_2d} :catchall_5f
.catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_2d} :catch_34
.catch Ljava/io/IOException; {:try_start_14 .. :try_end_2d} :catch_4f
move-result-object v0
:try_start_2e
invoke-static {v5}, Lcom/bbm/util/ca;->a(Ljava/io/Closeable;)V
:goto_31
:cond_31
:try_end_31
.catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_31} :catch_44
return-object v0
:cond_32
move v1, v3
goto :goto_20
:catch_34
move-exception v1
:try_start_35
const-string v4, "OOM filePathToByteArray couldn\'t read from path %s"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
aput-object p0, v6, v7
invoke-static {v1, v4, v6}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_40
.catchall {:try_start_35 .. :try_end_40} :catchall_5f
:try_start_40
invoke-static {v5}, Lcom/bbm/util/ca;->a(Ljava/io/Closeable;)V
:try_end_43
.catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_43} :catch_44
goto :goto_31
:catch_44
move-exception v1
const-string v4, "filePathToByteArray couldn\'t open path %s"
new-array v2, v2, [Ljava/lang/Object;
aput-object p0, v2, v3
invoke-static {v1, v4, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_31
:catch_4f
move-exception v1
:try_start_50
const-string v4, "filePathToByteArray couldn\'t read from path %s"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
aput-object p0, v6, v7
invoke-static {v1, v4, v6}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_5b
.catchall {:try_start_50 .. :try_end_5b} :catchall_5f
:try_start_5b
invoke-static {v5}, Lcom/bbm/util/ca;->a(Ljava/io/Closeable;)V
goto :goto_31
:catchall_5f
move-exception v1
invoke-static {v5}, Lcom/bbm/util/ca;->a(Ljava/io/Closeable;)V
throw v1
:try_end_64
.catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_64} :catch_44
.end method
.method private static g(Ljava/lang/String;)Lcom/bbm/util/bk;
.registers 4
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
move-result v0
if-eqz v0, :cond_1d3
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "doc"
sget-object v2, Lcom/bbm/util/bk;->f:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "docx"
sget-object v2, Lcom/bbm/util/bk;->f:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "dot"
sget-object v2, Lcom/bbm/util/bk;->f:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "rtf"
sget-object v2, Lcom/bbm/util/bk;->f:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "xls"
sget-object v2, Lcom/bbm/util/bk;->g:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "xlsx"
sget-object v2, Lcom/bbm/util/bk;->g:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "xlb"
sget-object v2, Lcom/bbm/util/bk;->g:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "xlt"
sget-object v2, Lcom/bbm/util/bk;->g:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "ppt"
sget-object v2, Lcom/bbm/util/bk;->h:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "pps"
sget-object v2, Lcom/bbm/util/bk;->h:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "pptx"
sget-object v2, Lcom/bbm/util/bk;->h:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "ppsx"
sget-object v2, Lcom/bbm/util/bk;->h:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "pdf"
sget-object v2, Lcom/bbm/util/bk;->i:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "bmp"
sget-object v2, Lcom/bbm/util/bk;->b:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "gif"
sget-object v2, Lcom/bbm/util/bk;->b:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "jpeg"
sget-object v2, Lcom/bbm/util/bk;->b:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "jpg"
sget-object v2, Lcom/bbm/util/bk;->b:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "png"
sget-object v2, Lcom/bbm/util/bk;->b:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "svg"
sget-object v2, Lcom/bbm/util/bk;->b:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "svgz"
sget-object v2, Lcom/bbm/util/bk;->b:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "tif"
sget-object v2, Lcom/bbm/util/bk;->b:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "tiff"
sget-object v2, Lcom/bbm/util/bk;->b:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "amr"
sget-object v2, Lcom/bbm/util/bk;->d:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "mid"
sget-object v2, Lcom/bbm/util/bk;->c:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "midi"
sget-object v2, Lcom/bbm/util/bk;->c:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "m3u"
sget-object v2, Lcom/bbm/util/bk;->c:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "wma"
sget-object v2, Lcom/bbm/util/bk;->c:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "wav"
sget-object v2, Lcom/bbm/util/bk;->c:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "mp3"
sget-object v2, Lcom/bbm/util/bk;->c:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "ogg"
sget-object v2, Lcom/bbm/util/bk;->c:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "3gp"
sget-object v2, Lcom/bbm/util/bk;->e:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "3gpp"
sget-object v2, Lcom/bbm/util/bk;->e:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "3g2"
sget-object v2, Lcom/bbm/util/bk;->e:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "3gpp2"
sget-object v2, Lcom/bbm/util/bk;->e:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "mp4"
sget-object v2, Lcom/bbm/util/bk;->e:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "mpg"
sget-object v2, Lcom/bbm/util/bk;->e:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "mpeg"
sget-object v2, Lcom/bbm/util/bk;->e:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "qt"
sget-object v2, Lcom/bbm/util/bk;->e:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "mov"
sget-object v2, Lcom/bbm/util/bk;->e:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "wmv"
sget-object v2, Lcom/bbm/util/bk;->e:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "avi"
sget-object v2, Lcom/bbm/util/bk;->e:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "html"
sget-object v2, Lcom/bbm/util/bk;->j:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "xhtml"
sget-object v2, Lcom/bbm/util/bk;->j:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "txt"
sget-object v2, Lcom/bbm/util/bk;->j:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "xml"
sget-object v2, Lcom/bbm/util/bk;->j:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "wpd"
sget-object v2, Lcom/bbm/util/bk;->j:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "vcf"
sget-object v2, Lcom/bbm/util/bk;->k:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "vcs"
sget-object v2, Lcom/bbm/util/bk;->l:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "dcf"
sget-object v2, Lcom/bbm/util/bk;->m:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "dm"
sget-object v2, Lcom/bbm/util/bk;->m:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
const-string v1, "dr"
sget-object v2, Lcom/bbm/util/bk;->m:Lcom/bbm/util/bk;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1d3
sget-object v0, Lcom/bbm/util/bj;->b:Ljava/util/Map;
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/bk;
return-object v0
.end method