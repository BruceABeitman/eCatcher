.class public Lcom/facebook/a/c/h;
.super Ljava/lang/Object;
.source "ProcFileReader.java"
.field private static final a:Ljava/lang/Class;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/a/c/h;
sput-object v0, Lcom/facebook/a/c/h;->a:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()I
.registers 8
const/4 v7, 0x3
const/4 v0, 0x0
const/4 v1, 0x3
:try_start_3
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
const-string v3, "/proc/%s/fd"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
const-string v3, "/proc/self/fd"
aput-object v3, v1, v2
const/4 v2, 0x2
const-string v3, "/proc/%s/fd"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-static {}, Landroid/os/Process;->myTid()I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
:goto_38
if-ge v0, v7, :cond_4c
new-instance v2, Ljava/io/File;
aget-object v3, v1, v0
invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_49
array-length v0, v2
:try_end_48
.catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_48} :catch_4e
:goto_48
return v0
:cond_49
add-int/lit8 v0, v0, 0x1
goto :goto_38
:cond_4c
const/4 v0, -0x1
goto :goto_48
:catch_4e
move-exception v0
sget-object v1, Lcom/facebook/a/c/h;->a:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, -0x2
goto :goto_48
.end method
.method public static b()Lcom/facebook/a/c/i;
.registers 5
const/4 v0, 0x0
:try_start_1
new-instance v2, Ljava/util/Scanner;
new-instance v1, Ljava/io/File;
const-string v3, "/proc/self/limits"
invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
:try_start_d
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_3d
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_2d
.catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_d} :catch_35
const-string v1, "Max open files"
const/16 v3, 0x1388
invoke-virtual {v2, v1, v3}, Ljava/util/Scanner;->findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;
:try_end_14
.catchall {:try_start_d .. :try_end_14} :catchall_46
.catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_4a
.catch Ljava/util/NoSuchElementException; {:try_start_d .. :try_end_14} :catch_48
move-result-object v1
if-nez v1, :cond_1b
invoke-virtual {v2}, Ljava/util/Scanner;->close()V
:goto_1a
:cond_1a
return-object v0
:try_start_1b
:cond_1b
new-instance v1, Lcom/facebook/a/c/i;
invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v3, v4}, Lcom/facebook/a/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:try_end_28
.catchall {:try_start_1b .. :try_end_28} :catchall_46
.catch Ljava/io/IOException; {:try_start_1b .. :try_end_28} :catch_4a
.catch Ljava/util/NoSuchElementException; {:try_start_1b .. :try_end_28} :catch_48
invoke-virtual {v2}, Ljava/util/Scanner;->close()V
move-object v0, v1
goto :goto_1a
:catch_2d
move-exception v1
move-object v1, v0
:goto_2f
if-eqz v1, :cond_1a
invoke-virtual {v1}, Ljava/util/Scanner;->close()V
goto :goto_1a
:catch_35
move-exception v1
move-object v2, v0
:goto_37
if-eqz v2, :cond_1a
invoke-virtual {v2}, Ljava/util/Scanner;->close()V
goto :goto_1a
:catchall_3d
move-exception v1
move-object v2, v0
move-object v0, v1
:goto_40
if-eqz v2, :cond_45
invoke-virtual {v2}, Ljava/util/Scanner;->close()V
:cond_45
throw v0
:catchall_46
move-exception v0
goto :goto_40
:catch_48
move-exception v1
goto :goto_37
:catch_4a
move-exception v1
move-object v1, v2
goto :goto_2f
.end method