.class public final Lcom/spotify/mobile/android/devtools/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Lcom/spotify/mobile/android/devtools/MethodTraceScope;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/spotify/mobile/android/devtools/a;->a:Lcom/spotify/mobile/android/devtools/MethodTraceScope;
return-void
.end method
.method public static declared-synchronized a(Lcom/spotify/mobile/android/devtools/MethodTraceScope;)V
.registers 5
const-class v1, Lcom/spotify/mobile/android/devtools/a;
monitor-enter v1
:try_start_3
invoke-virtual {p0}, Lcom/spotify/mobile/android/devtools/MethodTraceScope;->a()Z
move-result v0
if-eqz v0, :cond_64
sget-object v0, Lcom/spotify/mobile/android/devtools/a;->a:Lcom/spotify/mobile/android/devtools/MethodTraceScope;
if-eqz v0, :cond_30
sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Terminating trace "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v3, Lcom/spotify/mobile/android/devtools/a;->a:Lcom/spotify/mobile/android/devtools/MethodTraceScope;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ", starting "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
:cond_30
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "/sdcard/"
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/devtools/MethodTraceScope;->name()Ljava/lang/String;
move-result-object v2
sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "."
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Lcom/spotify/mobile/android/util/an;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ".trace"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/high16 v2, 0x100
invoke-static {v0, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V
sput-object p0, Lcom/spotify/mobile/android/devtools/a;->a:Lcom/spotify/mobile/android/devtools/MethodTraceScope;
:cond_64
:try_end_64
.catchall {:try_start_3 .. :try_end_64} :catchall_66
monitor-exit v1
return-void
:catchall_66
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized b(Lcom/spotify/mobile/android/devtools/MethodTraceScope;)V
.registers 3
const-class v1, Lcom/spotify/mobile/android/devtools/a;
monitor-enter v1
:try_start_3
invoke-virtual {p0}, Lcom/spotify/mobile/android/devtools/MethodTraceScope;->a()Z
move-result v0
if-eqz v0, :cond_13
sget-object v0, Lcom/spotify/mobile/android/devtools/a;->a:Lcom/spotify/mobile/android/devtools/MethodTraceScope;
if-ne v0, p0, :cond_13
invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
const/4 v0, 0x0
sput-object v0, Lcom/spotify/mobile/android/devtools/a;->a:Lcom/spotify/mobile/android/devtools/MethodTraceScope;
:cond_13
:try_end_13
.catchall {:try_start_3 .. :try_end_13} :catchall_15
monitor-exit v1
return-void
:catchall_15
move-exception v0
monitor-exit v1
throw v0
.end method