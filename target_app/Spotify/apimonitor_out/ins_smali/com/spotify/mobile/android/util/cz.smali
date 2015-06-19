.class public final Lcom/spotify/mobile/android/util/cz;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/util/Set;
.field private final b:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/HashSet;
const/16 v1, 0x40
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V
sput-object v0, Lcom/spotify/mobile/android/util/cz;->a:Ljava/util/Set;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/util/cz;->b:Ljava/lang/String;
return-void
.end method
.method public static declared-synchronized a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
.registers 4
const-class v1, Lcom/spotify/mobile/android/util/cz;
monitor-enter v1
:try_start_3
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/spotify/mobile/android/util/cz;->a:Ljava/util/Set;
invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_19
new-instance v0, Ljava/lang/AssertionError;
const-string v2, "Requesting same string for a key previously defined somewhere else"
invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
:catchall_16
:try_end_16
.catchall {:try_start_3 .. :try_end_16} :catchall_16
move-exception v0
monitor-exit v1
throw v0
:cond_19
:try_start_19
sget-object v0, Lcom/spotify/mobile/android/util/cz;->a:Ljava/util/Set;
invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/spotify/mobile/android/util/cz;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/cz;-><init>(Ljava/lang/String;)V
:try_end_23
.catchall {:try_start_19 .. :try_end_23} :catchall_16
monitor-exit v1
return-object v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/cz;->b:Ljava/lang/String;
return-object v0
.end method