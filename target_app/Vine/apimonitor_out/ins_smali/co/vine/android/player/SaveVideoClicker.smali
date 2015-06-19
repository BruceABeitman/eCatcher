.class public Lco/vine/android/player/SaveVideoClicker;
.super Ljava/lang/Object;
.source "SaveVideoClicker.java"
.field private static LONG_PRESS_SAVE_DIR:Ljava/io/File;
.field private mCount:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lco/vine/android/player/SaveVideoClicker;->LONG_PRESS_SAVE_DIR:Ljava/io/File;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/player/SaveVideoClicker;->mCount:I
return-void
.end method
.method public static setLongPressSaveDir(Ljava/io/File;)V
.registers 1
sput-object p0, Lco/vine/android/player/SaveVideoClicker;->LONG_PRESS_SAVE_DIR:Ljava/io/File;
return-void
.end method
.method public onClick(Lco/vine/android/player/SdkVideoView;)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/player/SaveVideoClicker; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v7, 0x0
sget-object v4, Lco/vine/android/player/SaveVideoClicker;->LONG_PRESS_SAVE_DIR:Ljava/io/File;
if-eqz v4, :cond_71
iget v4, p0, Lco/vine/android/player/SaveVideoClicker;->mCount:I
add-int/lit8 v4, v4, 0x1
iput v4, p0, Lco/vine/android/player/SaveVideoClicker;->mCount:I
iget v4, p0, Lco/vine/android/player/SaveVideoClicker;->mCount:I
const/16 v5, 0x14
if-lt v4, v5, :cond_71
invoke-virtual {p1}, Lco/vine/android/player/SdkVideoView;->getPath()Ljava/lang/String;
move-result-object v3
:try_start_15
new-instance v4, Ljava/io/File;
invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v2
const-string v4, ".mp4"
invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_39
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ".mp4"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
:cond_39
new-instance v0, Ljava/io/File;
sget-object v4, Lco/vine/android/player/SaveVideoClicker;->LONG_PRESS_SAVE_DIR:Ljava/io/File;
invoke-direct {v0, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
new-instance v4, Ljava/io/File;
invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v4, v0}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
invoke-virtual {p1}, Lco/vine/android/player/SdkVideoView;->getContext()Landroid/content/Context;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "File Saved: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
const/4 v6, 0x0
invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v4
invoke-virtual {v4}, Landroid/widget/Toast;->show()V
invoke-virtual {p1}, Lco/vine/android/player/SdkVideoView;->getContext()Landroid/content/Context;
move-result-object v4
const/4 v5, 0x0
invoke-static {v4, v0, v5}, Lco/vine/android/util/MediaUtil;->scanFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
:goto_6f
:try_end_6f
.catch Ljava/io/IOException; {:try_start_15 .. :try_end_6f} :catch_72
iput v7, p0, Lco/vine/android/player/SaveVideoClicker;->mCount:I
:cond_71
const-string v1, " - Lco/vine/android/player/SaveVideoClicker; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_72
move-exception v1
const-string v4, "Failed to save video"
invoke-static {v4, v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_6f
.end method