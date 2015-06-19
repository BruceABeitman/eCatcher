.class public final Lcom/instagram/creation/a/a;
.super Ljava/lang/Object;
.source "CreationConstants.java"
.field private static a:Ljava/lang/Integer;
.method public static declared-synchronized a()I
.registers 2
const-class v1, Lcom/instagram/creation/a/a;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/creation/a/a;->a:Ljava/lang/Integer;
if-nez v0, :cond_17
sget-object v0, Lcom/instagram/l/c;->i:Lcom/instagram/l/b;
invoke-virtual {v0}, Lcom/instagram/l/b;->h()Ljava/lang/String;
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_29
move-result-object v0
:try_start_d
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
sput-object v0, Lcom/instagram/creation/a/a;->a:Ljava/lang/Integer;
:cond_17
:try_start_17
:try_end_17
.catchall {:try_start_d .. :try_end_17} :catchall_29
.catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_17} :catch_1f
:goto_17
sget-object v0, Lcom/instagram/creation/a/a;->a:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_1c
.catchall {:try_start_17 .. :try_end_1c} :catchall_29
move-result v0
monitor-exit v1
return v0
:catch_1f
move-exception v0
const/16 v0, 0x280
:try_start_22
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
sput-object v0, Lcom/instagram/creation/a/a;->a:Ljava/lang/Integer;
:try_end_28
.catchall {:try_start_22 .. :try_end_28} :catchall_29
goto :goto_17
:catchall_29
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized b()V
.registers 2
const-class v0, Lcom/instagram/creation/a/a;
monitor-enter v0
const/4 v1, 0x0
:try_start_4
sput-object v1, Lcom/instagram/creation/a/a;->a:Ljava/lang/Integer;
:try_end_6
.catchall {:try_start_4 .. :try_end_6} :catchall_8
monitor-exit v0
return-void
:catchall_8
move-exception v1
monitor-exit v0
throw v1
.end method