.class public abstract Lcom/bbm/l/c/a;
.super Ljava/lang/Object;
.source "AsyncStickerFetcher.java"
.field protected static final a:Landroid/view/WindowManager;
.field private static b:J
.field private static c:Ljava/lang/String;
.field private static final d:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 2
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
const-string v1, "window"
invoke-virtual {v0, v1}, Lcom/bbm/Alaska;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
sput-object v0, Lcom/bbm/l/c/a;->a:Landroid/view/WindowManager;
const-wide/16 v0, 0x0
sput-wide v0, Lcom/bbm/l/c/a;->b:J
const/4 v0, 0x0
sput-object v0, Lcom/bbm/l/c/a;->c:Ljava/lang/String;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/bbm/l/c/a;->d:Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected static a(Ljava/lang/StringBuilder;)V
.registers 10
const/4 v0, 0x1
const/4 v1, 0x0
sget-object v2, Lcom/bbm/l/c/a;->d:Ljava/lang/Object;
monitor-enter v2
:try_start_5
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v3
sget-wide v5, Lcom/bbm/l/c/a;->b:J
cmp-long v5, v3, v5
if-lez v5, :cond_27
const-wide/32 v5, 0xdbba0
add-long/2addr v3, v5
sput-wide v3, Lcom/bbm/l/c/a;->b:J
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v3
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v4
invoke-virtual {v4}, Lcom/bbm/Alaska;->getApplicationContext()Landroid/content/Context;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/bbm/d/a;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
sput-object v3, Lcom/bbm/l/c/a;->c:Ljava/lang/String;
:cond_27
monitor-exit v2
:try_end_28
.catchall {:try_start_5 .. :try_end_28} :catchall_b7
sget-object v2, Lcom/bbm/l/c/a;->c:Ljava/lang/String;
if-eqz v2, :cond_41
const-string v2, "country="
invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-object v2, Lcom/bbm/l/c/a;->c:Ljava/lang/String;
sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "&"
invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_41
const-string v2, "platform="
invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-boolean v2, Lcom/bbm/ae;->d:Z
if-eqz v2, :cond_ba
const-string v2, "android"
invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_4f
const-string v2, "&"
invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "lang="
invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/Alaska;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v2
iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-object v2, Lcom/bbm/l/c/a;->a:Landroid/view/WindowManager;
invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v2
new-instance v3, Landroid/graphics/Point;
invoke-direct {v3}, Landroid/graphics/Point;-><init>()V
invoke-static {}, Lcom/bbm/util/fb;->d()Z
move-result v4
if-eqz v4, :cond_c1
:try_start_7f
const-class v4, Landroid/view/Display;
const-string v5, "getRealSize"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Class;
const/4 v7, 0x0
const-class v8, Landroid/graphics/Point;
aput-object v8, v6, v7
invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v4
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object v3, v5, v6
invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_98
.catch Ljava/lang/Exception; {:try_start_7f .. :try_end_98} :catch_c0
:goto_98
if-nez v0, :cond_9d
invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
:cond_9d
const-string v0, "&"
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "resolution="
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v0, v3, Landroid/graphics/Point;->x:I
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v0, "x"
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v0, v3, Landroid/graphics/Point;->y:I
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
return-void
:catchall_b7
move-exception v0
monitor-exit v2
throw v0
:cond_ba
const-string v2, "android_beta"
invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_4f
:catch_c0
move-exception v0
:cond_c1
move v0, v1
goto :goto_98
.end method