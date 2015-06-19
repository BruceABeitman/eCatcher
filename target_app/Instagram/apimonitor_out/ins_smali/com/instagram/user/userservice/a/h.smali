.class public final Lcom/instagram/user/userservice/a/h;
.super Ljava/lang/Object;
.source "UserAutoCompleteStore.java"
.field private static final a:Lcom/instagram/user/userservice/d;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/instagram/user/userservice/d;
invoke-direct {v0}, Lcom/instagram/user/userservice/d;-><init>()V
sput-object v0, Lcom/instagram/user/userservice/a/h;->a:Lcom/instagram/user/userservice/d;
return-void
.end method
.method public static declared-synchronized a()V
.registers 2
const-class v1, Lcom/instagram/user/userservice/a/h;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/user/userservice/a/h;->a:Lcom/instagram/user/userservice/d;
invoke-virtual {v0}, Lcom/instagram/user/userservice/d;->a()V
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_a
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized a(Lcom/instagram/user/c/a;)V
.registers 3
const-class v1, Lcom/instagram/user/userservice/a/h;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/user/userservice/a/h;->a:Lcom/instagram/user/userservice/d;
invoke-virtual {v0, p0}, Lcom/instagram/user/userservice/d;->a(Lcom/instagram/user/c/a;)V
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_a
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized a(Ljava/lang/CharSequence;Ljava/util/Set;Lcom/android/internal/util/Predicate;)V
.registers 5
const-class v1, Lcom/instagram/user/userservice/a/h;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/user/userservice/a/h;->a:Lcom/instagram/user/userservice/d;
invoke-virtual {v0, p0, p1, p2}, Lcom/instagram/user/userservice/d;->a(Ljava/lang/CharSequence;Ljava/util/Set;Lcom/android/internal/util/Predicate;)V
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_a
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized b(Lcom/instagram/user/c/a;)V
.registers 3
const-class v1, Lcom/instagram/user/userservice/a/h;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/user/userservice/a/h;->a:Lcom/instagram/user/userservice/d;
invoke-virtual {v0, p0}, Lcom/instagram/user/userservice/d;->b(Lcom/instagram/user/c/a;)V
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_a
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method