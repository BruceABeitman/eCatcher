.class public final Lcom/instagram/m/a;
.super Ljava/lang/Object;
.source "UnauthenticatedCache.java"
.field private static final a:Lcom/instagram/common/r/a;
.field private static final b:Lcom/instagram/common/r/c;
.field private static final c:Lcom/instagram/common/r/a;
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v0
const-string v1, "unauthenticated"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
new-instance v1, Lcom/instagram/common/r/a;
const-string v2, "did_facebook_sso"
invoke-direct {v1, v0, v2}, Lcom/instagram/common/r/a;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
sput-object v1, Lcom/instagram/m/a;->a:Lcom/instagram/common/r/a;
new-instance v1, Lcom/instagram/common/r/c;
const-string v2, "last_log_in_token"
invoke-direct {v1, v0, v2}, Lcom/instagram/common/r/c;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
sput-object v1, Lcom/instagram/m/a;->b:Lcom/instagram/common/r/c;
new-instance v1, Lcom/instagram/common/r/a;
const-string v2, "registration_push_sent"
invoke-direct {v1, v0, v2}, Lcom/instagram/common/r/a;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
sput-object v1, Lcom/instagram/m/a;->c:Lcom/instagram/common/r/a;
return-void
.end method
.method public static declared-synchronized a(Ljava/lang/String;)V
.registers 4
const-class v1, Lcom/instagram/m/a;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/m/a;->b:Lcom/instagram/common/r/c;
invoke-virtual {v0, p0}, Lcom/instagram/common/r/c;->a(Ljava/lang/String;)V
sget-object v0, Lcom/instagram/m/a;->a:Lcom/instagram/common/r/a;
const/4 v2, 0x1
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/instagram/common/r/a;->a(Ljava/lang/Boolean;)V
:try_end_12
.catchall {:try_start_3 .. :try_end_12} :catchall_14
monitor-exit v1
return-void
:catchall_14
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized a()Z
.registers 2
const-class v1, Lcom/instagram/m/a;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/m/a;->a:Lcom/instagram/common/r/a;
invoke-virtual {v0}, Lcom/instagram/common/r/a;->a()Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_f
move-result v0
monitor-exit v1
return v0
:catchall_f
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized b()Ljava/lang/String;
.registers 2
const-class v1, Lcom/instagram/m/a;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/m/a;->b:Lcom/instagram/common/r/c;
invoke-virtual {v0}, Lcom/instagram/common/r/c;->a()Ljava/lang/String;
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
.method public static declared-synchronized b(Ljava/lang/String;)V
.registers 4
const-class v1, Lcom/instagram/m/a;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/m/a;->b:Lcom/instagram/common/r/c;
invoke-virtual {v0, p0}, Lcom/instagram/common/r/c;->a(Ljava/lang/String;)V
sget-object v0, Lcom/instagram/m/a;->a:Lcom/instagram/common/r/a;
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/instagram/common/r/a;->a(Ljava/lang/Boolean;)V
:try_end_12
.catchall {:try_start_3 .. :try_end_12} :catchall_14
monitor-exit v1
return-void
:catchall_14
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized c()Z
.registers 2
const-class v1, Lcom/instagram/m/a;
monitor-enter v1
:try_start_3
invoke-static {}, Lcom/instagram/m/a;->a()Z
move-result v0
if-nez v0, :cond_f
invoke-static {}, Lcom/instagram/m/a;->b()Ljava/lang/String;
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_14
move-result-object v0
if-eqz v0, :cond_12
:cond_f
const/4 v0, 0x1
:goto_10
monitor-exit v1
return v0
:cond_12
const/4 v0, 0x0
goto :goto_10
:catchall_14
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized d()Z
.registers 2
const-class v1, Lcom/instagram/m/a;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/m/a;->c:Lcom/instagram/common/r/a;
invoke-virtual {v0}, Lcom/instagram/common/r/a;->a()Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_f
move-result v0
monitor-exit v1
return v0
:catchall_f
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized e()V
.registers 3
const-class v1, Lcom/instagram/m/a;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/m/a;->c:Lcom/instagram/common/r/a;
const/4 v2, 0x1
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/instagram/common/r/a;->a(Ljava/lang/Boolean;)V
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_f
monitor-exit v1
return-void
:catchall_f
move-exception v0
monitor-exit v1
throw v0
.end method