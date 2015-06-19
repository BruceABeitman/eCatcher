.class public Lcom/facebook/bo;
.super Lcom/facebook/aw;
.source "SourceFile"
.field static final synthetic j:Z = false
.field private static final k:J = 0x1L
.field private static final l:Ljava/lang/String; = "FacebookSDK.TestSession"
.field private static m:Ljava/util/Map;
.field private static n:Ljava/lang/String;
.field private static o:Ljava/lang/String;
.field private final p:Ljava/lang/String;
.field private final q:Ljava/util/List;
.field private final r:Lcom/facebook/br;
.field private s:Ljava/lang/String;
.field private t:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/bo;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/facebook/bo;->j:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/bv;Ljava/lang/String;Lcom/facebook/br;)V
.registers 8
sget-object v0, Lcom/facebook/bo;->o:Ljava/lang/String;
invoke-direct {p0, p1, v0, p3}, Lcom/facebook/aw;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/bv;)V
const-string v0, "permissions"
invoke-static {p2, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
sget-object v0, Lcom/facebook/bo;->o:Ljava/lang/String;
const-string v1, "testApplicationId"
invoke-static {v0, v1}, Lcom/facebook/b/q;->a(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/facebook/bo;->n:Ljava/lang/String;
const-string v1, "testApplicationSecret"
invoke-static {v0, v1}, Lcom/facebook/b/q;->a(Ljava/lang/String;Ljava/lang/String;)V
iput-object p4, p0, Lcom/facebook/bo;->p:Ljava/lang/String;
iput-object p5, p0, Lcom/facebook/bo;->r:Lcom/facebook/br;
iput-object p2, p0, Lcom/facebook/bo;->q:Ljava/util/List;
return-void
.end method
.method private A()Lcom/facebook/bs;
.registers 9
const/4 v7, 0x1
const/4 v6, 0x0
const/4 v1, 0x0
new-instance v2, Landroid/os/Bundle;
invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
const-string v0, "installed"
const-string v3, "true"
invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "permissions"
invoke-direct {p0}, Lcom/facebook/bo;->B()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "access_token"
invoke-static {}, Lcom/facebook/bo;->x()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/bo;->r:Lcom/facebook/br;
sget-object v3, Lcom/facebook/br;->b:Lcom/facebook/br;
if-ne v0, v3, :cond_3a
const-string v0, "name"
const-string v3, "Shared %s Testuser"
new-array v4, v7, [Ljava/lang/Object;
invoke-direct {p0}, Lcom/facebook/bo;->C()Ljava/lang/String;
move-result-object v5
aput-object v5, v4, v6
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_3a
const-string v0, "%s/accounts/test-users"
new-array v3, v7, [Ljava/lang/Object;
sget-object v4, Lcom/facebook/bo;->o:Ljava/lang/String;
aput-object v4, v3, v6
invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
new-instance v3, Lcom/facebook/ai;
sget-object v4, Lcom/facebook/ad;->b:Lcom/facebook/ad;
invoke-direct {v3, v1, v0, v2, v4}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;)V
invoke-virtual {v3}, Lcom/facebook/ai;->l()Lcom/facebook/as;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/as;->a()Lcom/facebook/w;
move-result-object v3
const-class v4, Lcom/facebook/bs;
invoke-virtual {v0, v4}, Lcom/facebook/as;->a(Ljava/lang/Class;)Lcom/facebook/c/c;
move-result-object v0
check-cast v0, Lcom/facebook/bs;
if-eqz v3, :cond_68
invoke-virtual {v3}, Lcom/facebook/w;->m()Lcom/facebook/t;
move-result-object v0
invoke-virtual {p0, v1, v0}, Lcom/facebook/bo;->a(Lcom/facebook/a;Ljava/lang/Exception;)V
move-object v0, v1
:goto_67
return-object v0
:cond_68
sget-boolean v1, Lcom/facebook/bo;->j:Z
if-nez v1, :cond_74
if-nez v0, :cond_74
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_74
iget-object v1, p0, Lcom/facebook/bo;->r:Lcom/facebook/br;
sget-object v3, Lcom/facebook/br;->b:Lcom/facebook/br;
if-ne v1, v3, :cond_86
const-string v1, "name"
invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/facebook/bs;->a(Ljava/lang/String;)V
invoke-static {v0}, Lcom/facebook/bo;->a(Lcom/facebook/bs;)V
:cond_86
invoke-direct {p0, v0}, Lcom/facebook/bo;->b(Lcom/facebook/bs;)V
goto :goto_67
.end method
.method private B()Ljava/lang/String;
.registers 3
const-string v0, ","
iget-object v1, p0, Lcom/facebook/bo;->q:Ljava/util/List;
invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private C()Ljava/lang/String;
.registers 7
const-wide v4, 0xffffffffL
invoke-direct {p0}, Lcom/facebook/bo;->B()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
int-to-long v0, v0
and-long v2, v0, v4
iget-object v0, p0, Lcom/facebook/bo;->p:Ljava/lang/String;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/facebook/bo;->p:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
int-to-long v0, v0
and-long/2addr v0, v4
:goto_1c
xor-long/2addr v0, v2
invoke-direct {p0, v0, v1}, Lcom/facebook/bo;->a(J)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_22
const-wide/16 v0, 0x0
goto :goto_1c
.end method
.method public static a(Landroid/app/Activity;Ljava/util/List;)Lcom/facebook/bo;
.registers 4
sget-object v0, Lcom/facebook/br;->a:Lcom/facebook/br;
const/4 v1, 0x0
invoke-static {p0, p1, v0, v1}, Lcom/facebook/bo;->a(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/br;Ljava/lang/String;)Lcom/facebook/bo;
move-result-object v0
return-object v0
.end method
.method private static declared-synchronized a(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/br;Ljava/lang/String;)Lcom/facebook/bo;
.registers 11
const-class v6, Lcom/facebook/bo;
monitor-enter v6
:try_start_3
sget-object v0, Lcom/facebook/bo;->o:Ljava/lang/String;
invoke-static {v0}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_13
sget-object v0, Lcom/facebook/bo;->n:Ljava/lang/String;
invoke-static {v0}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1e
:cond_13
new-instance v0, Lcom/facebook/t;
const-string v1, "Must provide app ID and secret"
invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V
throw v0
:catchall_1b
:try_end_1b
.catchall {:try_start_3 .. :try_end_1b} :catchall_1b
move-exception v0
monitor-exit v6
throw v0
:try_start_1e
:cond_1e
invoke-static {p1}, Lcom/facebook/b/p;->a(Ljava/util/Collection;)Z
move-result v0
if-eqz v0, :cond_45
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "email"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "publish_actions"
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v2
:goto_35
new-instance v0, Lcom/facebook/bo;
new-instance v3, Lcom/facebook/bt;
const/4 v1, 0x0
invoke-direct {v3, v1}, Lcom/facebook/bt;-><init>(Lcom/facebook/bo$1;)V
move-object v1, p0
move-object v4, p3
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/bo;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/bv;Ljava/lang/String;Lcom/facebook/br;)V
:try_end_43
.catchall {:try_start_1e .. :try_end_43} :catchall_1b
monitor-exit v6
return-object v0
:cond_45
move-object v2, p1
goto :goto_35
.end method
.method public static a(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)Lcom/facebook/bo;
.registers 4
sget-object v0, Lcom/facebook/br;->b:Lcom/facebook/br;
invoke-static {p0, p1, v0, p2}, Lcom/facebook/bo;->a(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/br;Ljava/lang/String;)Lcom/facebook/bo;
move-result-object v0
return-object v0
.end method
.method private a(J)Ljava/lang/String;
.registers 9
const/4 v0, 0x0
invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v1
new-instance v3, Ljava/lang/StringBuilder;
const-string v2, "Perm"
invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C
move-result-object v4
array-length v5, v4
move v1, v0
move v2, v0
:goto_13
if-ge v1, v5, :cond_28
aget-char v0, v4, v1
if-ne v0, v2, :cond_1c
add-int/lit8 v0, v0, 0xa
int-to-char v0, v0
:cond_1c
add-int/lit8 v2, v0, 0x61
add-int/lit8 v2, v2, -0x30
int-to-char v2, v2
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
move v2, v0
goto :goto_13
:cond_28
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static declared-synchronized a(Lcom/facebook/bs;)V
.registers 4
const-class v1, Lcom/facebook/bo;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/bo;->m:Ljava/util/Map;
invoke-interface {p0}, Lcom/facebook/bs;->a()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_e
monitor-exit v1
return-void
:catchall_e
move-exception v0
monitor-exit v1
throw v0
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;)V
.registers 9
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "access_token"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/facebook/ai;
const/4 v2, 0x0
sget-object v3, Lcom/facebook/ad;->c:Lcom/facebook/ad;
invoke-direct {v1, v2, p1, v0, v3}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;)V
invoke-virtual {v1}, Lcom/facebook/ai;->l()Lcom/facebook/as;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/as;->a()Lcom/facebook/w;
move-result-object v1
invoke-virtual {v0}, Lcom/facebook/as;->b()Lcom/facebook/c/c;
move-result-object v0
if-eqz v1, :cond_3d
const-string v0, "FacebookSDK.TestSession"
const-string v2, "Could not delete test account %s: %s"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
aput-object p1, v3, v4
invoke-virtual {v1}, Lcom/facebook/w;->m()Lcom/facebook/t;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/t;->toString()Ljava/lang/String;
move-result-object v1
aput-object v1, v3, v5
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:goto_3c
:cond_3c
return-void
:cond_3d
const-string v1, "FACEBOOK_NON_JSON_RESULT"
invoke-interface {v0, v1}, Lcom/facebook/c/c;->f(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
if-ne v0, v1, :cond_3c
const-string v0, "FacebookSDK.TestSession"
const-string v1, "Could not delete test account %s: unknown reason"
new-array v2, v5, [Ljava/lang/Object;
aput-object p1, v2, v4
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_3c
.end method
.method private static declared-synchronized a(Ljava/util/Collection;Ljava/util/Collection;)V
.registers 7
const-class v2, Lcom/facebook/bo;
monitor-enter v2
:try_start_3
invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_7
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/bs;
invoke-static {v0}, Lcom/facebook/bo;->a(Lcom/facebook/bs;)V
:try_end_16
.catchall {:try_start_3 .. :try_end_16} :catchall_17
goto :goto_7
:catchall_17
move-exception v0
monitor-exit v2
throw v0
:try_start_1a
:cond_1a
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1e
:cond_1e
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_40
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/bu;
sget-object v1, Lcom/facebook/bo;->m:Ljava/util/Map;
invoke-interface {v0}, Lcom/facebook/bu;->a()Ljava/lang/String;
move-result-object v4
invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/bs;
if-eqz v1, :cond_1e
invoke-interface {v0}, Lcom/facebook/bu;->b()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0}, Lcom/facebook/bs;->a(Ljava/lang/String;)V
:try_end_3f
.catchall {:try_start_1a .. :try_end_3f} :catchall_17
goto :goto_1e
:cond_40
monitor-exit v2
return-void
.end method
.method public static b(Landroid/app/Activity;Ljava/util/List;)Lcom/facebook/bo;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/facebook/bo;->a(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)Lcom/facebook/bo;
move-result-object v0
return-object v0
.end method
.method private b(Lcom/facebook/bs;)V
.registers 5
invoke-interface {p1}, Lcom/facebook/bs;->a()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/bo;->s:Ljava/lang/String;
invoke-interface {p1}, Lcom/facebook/bs;->b()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/facebook/bo;->q:Ljava/util/List;
sget-object v2, Lcom/facebook/c;->f:Lcom/facebook/c;
invoke-static {v0, v1, v2}, Lcom/facebook/a;->a(Ljava/lang/String;Ljava/util/List;Lcom/facebook/c;)Lcom/facebook/a;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/facebook/bo;->a(Lcom/facebook/a;Ljava/lang/Exception;)V
return-void
.end method
.method public static declared-synchronized c(Ljava/lang/String;)V
.registers 4
const-class v1, Lcom/facebook/bo;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/bo;->o:Ljava/lang/String;
if-eqz v0, :cond_1a
sget-object v0, Lcom/facebook/bo;->o:Ljava/lang/String;
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1a
new-instance v0, Lcom/facebook/t;
const-string v2, "Can\'t have more than one test application ID"
invoke-direct {v0, v2}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V
throw v0
:try_end_17
.catchall {:try_start_3 .. :try_end_17} :catchall_17
:catchall_17
move-exception v0
monitor-exit v1
throw v0
:try_start_1a
:cond_1a
sput-object p0, Lcom/facebook/bo;->o:Ljava/lang/String;
:try_end_1c
.catchall {:try_start_1a .. :try_end_1c} :catchall_17
monitor-exit v1
return-void
.end method
.method public static declared-synchronized d(Ljava/lang/String;)V
.registers 4
const-class v1, Lcom/facebook/bo;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/bo;->n:Ljava/lang/String;
if-eqz v0, :cond_1a
sget-object v0, Lcom/facebook/bo;->n:Ljava/lang/String;
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1a
new-instance v0, Lcom/facebook/t;
const-string v2, "Can\'t have more than one test application secret"
invoke-direct {v0, v2}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V
throw v0
:try_end_17
.catchall {:try_start_3 .. :try_end_17} :catchall_17
:catchall_17
move-exception v0
monitor-exit v1
throw v0
:try_start_1a
:cond_1a
sput-object p0, Lcom/facebook/bo;->n:Ljava/lang/String;
:try_end_1c
.catchall {:try_start_1a .. :try_end_1c} :catchall_17
monitor-exit v1
return-void
.end method
.method private static declared-synchronized e(Ljava/lang/String;)Lcom/facebook/bs;
.registers 5
const-class v1, Lcom/facebook/bo;
monitor-enter v1
:try_start_3
invoke-static {}, Lcom/facebook/bo;->y()V
sget-object v0, Lcom/facebook/bo;->m:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_10
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_28
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/bs;
invoke-interface {v0}, Lcom/facebook/bs;->c()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
:try_end_23
.catchall {:try_start_3 .. :try_end_23} :catchall_2a
move-result v3
if-eqz v3, :cond_10
:goto_26
monitor-exit v1
return-object v0
:cond_28
const/4 v0, 0x0
goto :goto_26
:catchall_2a
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized s()Ljava/lang/String;
.registers 2
const-class v0, Lcom/facebook/bo;
monitor-enter v0
:try_start_3
sget-object v1, Lcom/facebook/bo;->o:Ljava/lang/String;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_7
monitor-exit v0
return-object v1
:catchall_7
move-exception v1
monitor-exit v0
throw v1
.end method
.method public static declared-synchronized t()Ljava/lang/String;
.registers 2
const-class v0, Lcom/facebook/bo;
monitor-enter v0
:try_start_3
sget-object v1, Lcom/facebook/bo;->n:Ljava/lang/String;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_7
monitor-exit v0
return-object v1
:catchall_7
move-exception v1
monitor-exit v0
throw v1
.end method
.method static final x()Ljava/lang/String;
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lcom/facebook/bo;->o:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "|"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/facebook/bo;->n:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static declared-synchronized y()V
.registers 6
const-class v1, Lcom/facebook/bo;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/bo;->m:Ljava/util/Map;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_62
if-eqz v0, :cond_9
:goto_7
monitor-exit v1
return-void
:try_start_9
:cond_9
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/facebook/bo;->m:Ljava/util/Map;
const-string v0, "SELECT id,access_token FROM test_account WHERE app_id = %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
sget-object v4, Lcom/facebook/bo;->o:Ljava/lang/String;
aput-object v4, v2, v3
invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
const-string v2, "SELECT uid,name FROM user WHERE uid IN (SELECT id FROM #test_accounts)"
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
:try_end_25
.catchall {:try_start_9 .. :try_end_25} :catchall_62
:try_start_25
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
const-string v5, "test_accounts"
invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "users"
invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_34
.catchall {:try_start_25 .. :try_end_34} :catchall_62
.catch Lorg/json/JSONException; {:try_start_25 .. :try_end_34} :catch_65
:try_start_34
const-string v0, "q"
invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "access_token"
invoke-static {}, Lcom/facebook/bo;->x()Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/facebook/ai;
const/4 v2, 0x0
const-string v4, "fql"
const/4 v5, 0x0
invoke-direct {v0, v2, v4, v3, v5}, Lcom/facebook/ai;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/ad;)V
invoke-virtual {v0}, Lcom/facebook/ai;->l()Lcom/facebook/as;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/as;->a()Lcom/facebook/w;
move-result-object v2
if-eqz v2, :cond_6c
invoke-virtual {v0}, Lcom/facebook/as;->a()Lcom/facebook/w;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/w;->m()Lcom/facebook/t;
move-result-object v0
throw v0
:try_end_62
.catchall {:try_start_34 .. :try_end_62} :catchall_62
:catchall_62
move-exception v0
monitor-exit v1
throw v0
:catch_65
move-exception v0
:try_start_66
new-instance v2, Lcom/facebook/t;
invoke-direct {v2, v0}, Lcom/facebook/t;-><init>(Ljava/lang/Throwable;)V
throw v2
:cond_6c
const-class v2, Lcom/facebook/bp;
invoke-virtual {v0, v2}, Lcom/facebook/as;->a(Ljava/lang/Class;)Lcom/facebook/c/c;
move-result-object v0
check-cast v0, Lcom/facebook/bp;
invoke-interface {v0}, Lcom/facebook/bp;->a()Lcom/facebook/c/h;
move-result-object v2
if-eqz v2, :cond_81
invoke-interface {v2}, Lcom/facebook/c/h;->size()I
move-result v0
const/4 v3, 0x2
if-eq v0, v3, :cond_89
:cond_81
new-instance v0, Lcom/facebook/t;
const-string v2, "Unexpected number of results from FQL query"
invoke-direct {v0, v2}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V
throw v0
:cond_89
const/4 v0, 0x0
invoke-interface {v2, v0}, Lcom/facebook/c/h;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/bq;
invoke-interface {v0}, Lcom/facebook/bq;->a()Lcom/facebook/c/h;
move-result-object v0
const-class v3, Lcom/facebook/bs;
invoke-interface {v0, v3}, Lcom/facebook/c/h;->a(Ljava/lang/Class;)Lcom/facebook/c/h;
move-result-object v3
const/4 v0, 0x1
invoke-interface {v2, v0}, Lcom/facebook/c/h;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/bq;
invoke-interface {v0}, Lcom/facebook/bq;->a()Lcom/facebook/c/h;
move-result-object v0
const-class v2, Lcom/facebook/bu;
invoke-interface {v0, v2}, Lcom/facebook/c/h;->a(Ljava/lang/Class;)Lcom/facebook/c/h;
move-result-object v0
invoke-static {v3, v0}, Lcom/facebook/bo;->a(Ljava/util/Collection;Ljava/util/Collection;)V
:try_end_ae
.catchall {:try_start_66 .. :try_end_ae} :catchall_62
goto/16 :goto_7
.end method
.method private z()V
.registers 2
invoke-direct {p0}, Lcom/facebook/bo;->C()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/bo;->e(Ljava/lang/String;)Lcom/facebook/bs;
move-result-object v0
if-eqz v0, :cond_e
invoke-direct {p0, v0}, Lcom/facebook/bo;->b(Lcom/facebook/bs;)V
:goto_d
return-void
:cond_e
invoke-direct {p0}, Lcom/facebook/bo;->A()Lcom/facebook/bs;
goto :goto_d
.end method
.method  a(Lcom/facebook/ax;)V
.registers 4
iget-object v0, p0, Lcom/facebook/bo;->r:Lcom/facebook/br;
sget-object v1, Lcom/facebook/br;->a:Lcom/facebook/br;
if-ne v0, v1, :cond_a
invoke-direct {p0}, Lcom/facebook/bo;->A()Lcom/facebook/bs;
:goto_9
return-void
:cond_a
invoke-direct {p0}, Lcom/facebook/bo;->z()V
goto :goto_9
.end method
.method  a(Lcom/facebook/bk;Lcom/facebook/bk;Ljava/lang/Exception;)V
.registers 7
iget-object v0, p0, Lcom/facebook/bo;->s:Ljava/lang/String;
invoke-super {p0, p1, p2, p3}, Lcom/facebook/aw;->a(Lcom/facebook/bk;Lcom/facebook/bk;Ljava/lang/Exception;)V
invoke-virtual {p2}, Lcom/facebook/bk;->b()Z
move-result v1
if-eqz v1, :cond_1a
if-eqz v0, :cond_1a
iget-object v1, p0, Lcom/facebook/bo;->r:Lcom/facebook/br;
sget-object v2, Lcom/facebook/br;->a:Lcom/facebook/br;
if-ne v1, v2, :cond_1a
invoke-static {}, Lcom/facebook/bo;->x()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/facebook/bo;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_1a
return-void
.end method
.method  a(Z)V
.registers 10
const-wide/16 v6, 0x0
invoke-virtual {p0}, Lcom/facebook/bo;->p()Lcom/facebook/a;
move-result-object v3
new-instance v0, Lcom/facebook/a;
invoke-virtual {v3}, Lcom/facebook/a;->a()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/util/Date;
invoke-direct {v2}, Ljava/util/Date;-><init>()V
invoke-virtual {v3}, Lcom/facebook/a;->c()Ljava/util/List;
move-result-object v3
sget-object v4, Lcom/facebook/c;->f:Lcom/facebook/c;
new-instance v5, Ljava/util/Date;
invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V
invoke-direct/range {v0 .. v5}, Lcom/facebook/a;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/c;Ljava/util/Date;)V
invoke-virtual {p0, v0}, Lcom/facebook/bo;->a(Lcom/facebook/a;)V
new-instance v0, Ljava/util/Date;
invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V
invoke-virtual {p0, v0}, Lcom/facebook/bo;->a(Ljava/util/Date;)V
return-void
.end method
.method  n()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/bo;->t:Z
invoke-super {p0}, Lcom/facebook/aw;->n()V
return-void
.end method
.method  o()Z
.registers 3
invoke-super {p0}, Lcom/facebook/aw;->o()Z
move-result v0
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/facebook/bo;->t:Z
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 4
invoke-super {p0}, Lcom/facebook/aw;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "{TestSession"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " testUserId:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/facebook/bo;->s:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final u()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/bo;->s:Ljava/lang/String;
return-object v0
.end method
.method  v()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/bo;->t:Z
return v0
.end method
.method  w()V
.registers 2
new-instance v0, Lcom/facebook/bg;
invoke-direct {v0, p0}, Lcom/facebook/bg;-><init>(Lcom/facebook/aw;)V
invoke-virtual {p0, v0}, Lcom/facebook/bo;->a(Lcom/facebook/bg;)V
return-void
.end method