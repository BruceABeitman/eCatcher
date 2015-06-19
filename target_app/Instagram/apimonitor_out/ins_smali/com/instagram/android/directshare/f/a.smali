.class public Lcom/instagram/android/directshare/f/a;
.super Ljava/lang/Object;
.source "ClearInboxNewCountUtil.java"
.field private static final a:Ljava/lang/Class;
.field private static b:Lcom/instagram/android/directshare/f/a;
.field private c:Lcom/instagram/common/a/a/m;
.field private d:Ljava/util/HashMap;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/android/directshare/f/a;
sput-object v0, Lcom/instagram/android/directshare/f/a;->a:Ljava/lang/Class;
return-void
.end method
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/android/directshare/f/a;->d:Ljava/util/HashMap;
new-instance v0, Lcom/instagram/common/a/a/q;
invoke-direct {v0}, Lcom/instagram/common/a/a/q;-><init>()V
iput-object v0, p0, Lcom/instagram/android/directshare/f/a;->c:Lcom/instagram/common/a/a/m;
return-void
.end method
.method public static a()Lcom/instagram/android/directshare/f/a;
.registers 1
sget-object v0, Lcom/instagram/android/directshare/f/a;->b:Lcom/instagram/android/directshare/f/a;
if-nez v0, :cond_7
invoke-static {}, Lcom/instagram/android/directshare/f/a;->c()V
:cond_7
sget-object v0, Lcom/instagram/android/directshare/f/a;->b:Lcom/instagram/android/directshare/f/a;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/directshare/f/a;)Ljava/util/HashMap;
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/f/a;->d:Ljava/util/HashMap;
return-object v0
.end method
.method private a(J)V
.registers 6
iget-object v0, p0, Lcom/instagram/android/directshare/f/a;->d:Ljava/util/HashMap;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_25
sget-object v0, Lcom/instagram/android/directshare/f/a;->a:Ljava/lang/Class;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
iget-object v0, p0, Lcom/instagram/android/directshare/f/a;->c:Lcom/instagram/common/a/a/m;
new-instance v1, Lcom/instagram/f/a/a/d;
invoke-direct {v1, p1, p2}, Lcom/instagram/f/a/a/d;-><init>(J)V
new-instance v2, Lcom/instagram/android/directshare/f/b;
invoke-direct {v2, p0, p1, p2}, Lcom/instagram/android/directshare/f/b;-><init>(Lcom/instagram/android/directshare/f/a;J)V
invoke-virtual {v1, v2}, Lcom/instagram/f/a/a/d;->a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/common/a/a/m;->a(Lcom/instagram/common/a/a/a;)V
:goto_24
return-void
:cond_25
sget-object v0, Lcom/instagram/android/directshare/f/a;->a:Ljava/lang/Class;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
goto :goto_24
.end method
.method private static declared-synchronized c()V
.registers 2
const-class v1, Lcom/instagram/android/directshare/f/a;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/android/directshare/f/a;->b:Lcom/instagram/android/directshare/f/a;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_11
if-eqz v0, :cond_9
:goto_7
monitor-exit v1
return-void
:try_start_9
:cond_9
new-instance v0, Lcom/instagram/android/directshare/f/a;
invoke-direct {v0}, Lcom/instagram/android/directshare/f/a;-><init>()V
sput-object v0, Lcom/instagram/android/directshare/f/a;->b:Lcom/instagram/android/directshare/f/a;
:try_end_10
.catchall {:try_start_9 .. :try_end_10} :catchall_11
goto :goto_7
:catchall_11
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final b()V
.registers 3
invoke-static {}, Lcom/instagram/common/t/a;->a()Lcom/instagram/common/t/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/t/a;->b()V
invoke-static {}, Lcom/instagram/android/directshare/f/c;->b()I
move-result v0
if-lez v0, :cond_16
sget-object v0, Lcom/instagram/android/directshare/f/a;->a:Ljava/lang/Class;
invoke-static {}, Lcom/instagram/android/directshare/f/c;->a()J
move-result-wide v0
invoke-direct {p0, v0, v1}, Lcom/instagram/android/directshare/f/a;->a(J)V
:cond_16
return-void
.end method