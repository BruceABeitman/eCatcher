.class public final Lcom/spotify/mobile/android/util/bb;
.super Lcom/spotify/mobile/android/util/s;
.source "SourceFile"
.field private a:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/util/s;-><init>()V
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iput-object p1, p0, Lcom/spotify/mobile/android/util/bb;->a:Landroid/content/Context;
return-void
.end method
.method private static d()J
.registers 2
:try_start_0
new-instance v0, Lcom/spotify/mobile/android/util/db;
invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/db;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/db;->d()J
:try_end_10
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_12
move-result-wide v0
:goto_11
return-wide v0
:catch_12
move-exception v0
const-wide/16 v0, -0x1
goto :goto_11
.end method
.method public final a()Ljava/lang/String;
.registers 4
invoke-static {}, Lcom/spotify/mobile/android/util/bb;->d()J
move-result-wide v0
iget-object v2, p0, Lcom/spotify/mobile/android/util/bb;->a:Landroid/content/Context;
invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Free internal storage by StatFs: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0xa
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method