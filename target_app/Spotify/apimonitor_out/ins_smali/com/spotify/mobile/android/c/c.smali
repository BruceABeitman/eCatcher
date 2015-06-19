.class public final Lcom/spotify/mobile/android/c/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Lcom/spotify/mobile/android/c/b;
.field private static b:Lcom/spotify/mobile/android/c/b;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/c/b;
invoke-direct {v0}, Lcom/spotify/mobile/android/c/b;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/c/c;->a:Lcom/spotify/mobile/android/c/b;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static declared-synchronized a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
.registers 3
const-class v1, Lcom/spotify/mobile/android/c/c;
monitor-enter v1
:try_start_3
const-class v0, Lcom/spotify/mobile/android/c/c;
invoke-static {v0, p0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_b
move-result-object v0
monitor-exit v1
return-object v0
:catchall_b
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
.registers 4
const-class v1, Lcom/spotify/mobile/android/c/c;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/spotify/mobile/android/c/c;->b:Lcom/spotify/mobile/android/c/b;
if-eqz v0, :cond_11
sget-object v0, Lcom/spotify/mobile/android/c/c;->b:Lcom/spotify/mobile/android/c/b;
invoke-virtual {v0, p0, p1}, Lcom/spotify/mobile/android/c/b;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_18
move-result-object v0
if-eqz v0, :cond_11
:goto_f
monitor-exit v1
return-object v0
:cond_11
:try_start_11
sget-object v0, Lcom/spotify/mobile/android/c/c;->a:Lcom/spotify/mobile/android/c/b;
invoke-virtual {v0, p0, p1}, Lcom/spotify/mobile/android/c/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
:try_end_16
.catchall {:try_start_11 .. :try_end_16} :catchall_18
move-result-object v0
goto :goto_f
:catchall_18
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized a(Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
.registers 4
const-class v1, Lcom/spotify/mobile/android/c/c;
monitor-enter v1
:try_start_3
const-class v0, Lcom/spotify/mobile/android/c/c;
invoke-static {v0, p0, p1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_a
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
.registers 5
const-class v1, Lcom/spotify/mobile/android/c/c;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/spotify/mobile/android/c/c;->a:Lcom/spotify/mobile/android/c/b;
invoke-virtual {v0, p0, p1, p2}, Lcom/spotify/mobile/android/c/b;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_a
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized b(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
.registers 3
const-class v1, Lcom/spotify/mobile/android/c/c;
monitor-enter v1
:try_start_3
const-class v0, Lcom/spotify/mobile/android/c/c;
invoke-static {v0, p0}, Lcom/spotify/mobile/android/c/c;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_b
move-result-object v0
monitor-exit v1
return-object v0
:catchall_b
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static declared-synchronized b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
.registers 4
const-class v1, Lcom/spotify/mobile/android/c/c;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/spotify/mobile/android/c/c;->b:Lcom/spotify/mobile/android/c/b;
if-eqz v0, :cond_11
sget-object v0, Lcom/spotify/mobile/android/c/c;->b:Lcom/spotify/mobile/android/c/b;
invoke-virtual {v0, p0, p1}, Lcom/spotify/mobile/android/c/b;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_18
move-result-object v0
if-eqz v0, :cond_11
:goto_f
monitor-exit v1
return-object v0
:cond_11
:try_start_11
sget-object v0, Lcom/spotify/mobile/android/c/c;->a:Lcom/spotify/mobile/android/c/b;
invoke-virtual {v0, p0, p1}, Lcom/spotify/mobile/android/c/b;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
:try_end_16
.catchall {:try_start_11 .. :try_end_16} :catchall_18
move-result-object v0
goto :goto_f
:catchall_18
move-exception v0
monitor-exit v1
throw v0
.end method