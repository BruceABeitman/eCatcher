.class public Lcom/facebook/bo;
.super Ljava/lang/Object;
.source "Session.java"
.implements Ljava/io/Serializable;
.field public static final a:Ljava/lang/String;
.field private static final b:Ljava/lang/Object;
.field private static c:Lcom/facebook/bo;
.field private static volatile d:Landroid/content/Context;
.field private static final e:Ljava/util/Set;
.field private f:Ljava/lang/String;
.field private g:Lcom/facebook/ch;
.field private h:Lcom/facebook/a;
.field private i:Ljava/util/Date;
.field private j:Lcom/facebook/bu;
.field private k:Lcom/facebook/c;
.field private volatile l:Landroid/os/Bundle;
.field private final m:Ljava/util/List;
.field private n:Landroid/os/Handler;
.field private o:Lcom/facebook/by;
.field private final p:Ljava/lang/Object;
.field private q:Lcom/facebook/cm;
.field private volatile r:Lcom/facebook/cd;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/bo;
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/bo;->a:Ljava/lang/String;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/facebook/bo;->b:Ljava/lang/Object;
new-instance v0, Lcom/facebook/bp;
invoke-direct {v0}, Lcom/facebook/bp;-><init>()V
sput-object v0, Lcom/facebook/bo;->e:Ljava/util/Set;
return-void
.end method
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/cm;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/bo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/cm;B)V
return-void
.end method
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/cm;B)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Date;
const-wide/16 v1, 0x0
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
iput-object v0, p0, Lcom/facebook/bo;->i:Ljava/util/Date;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;
if-eqz p1, :cond_1b
if-nez p2, :cond_1b
invoke-static {p1}, Lcom/facebook/g/t;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object p2
:cond_1b
const-string v0, "applicationId"
invoke-static {p2, v0}, Lcom/facebook/g/u;->a(Ljava/lang/Object;Ljava/lang/String;)V
invoke-static {p1}, Lcom/facebook/bo;->c(Landroid/content/Context;)V
if-nez p3, :cond_2c
new-instance p3, Lcom/facebook/cl;
sget-object v0, Lcom/facebook/bo;->d:Landroid/content/Context;
invoke-direct {p3, v0}, Lcom/facebook/cl;-><init>(Landroid/content/Context;)V
:cond_2c
iput-object p2, p0, Lcom/facebook/bo;->f:Ljava/lang/String;
iput-object p3, p0, Lcom/facebook/bo;->q:Lcom/facebook/cm;
sget-object v0, Lcom/facebook/ch;->a:Lcom/facebook/ch;
iput-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/bo;->j:Lcom/facebook/bu;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/bo;->m:Ljava/util/List;
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/facebook/bo;->n:Landroid/os/Handler;
invoke-virtual {p3}, Lcom/facebook/cm;->a()Landroid/os/Bundle;
move-result-object v0
invoke-static {v0}, Lcom/facebook/cm;->b(Landroid/os/Bundle;)Z
move-result v1
if-eqz v1, :cond_69
const-string v1, "com.facebook.TokenCachingStrategy.ExpirationDate"
invoke-static {v0, v1}, Lcom/facebook/cm;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
move-result-object v1
new-instance v2, Ljava/util/Date;
invoke-direct {v2}, Ljava/util/Date;-><init>()V
if-eqz v1, :cond_66
invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z
move-result v1
if-eqz v1, :cond_74
:cond_66
invoke-virtual {p3}, Lcom/facebook/cm;->b()V
:cond_69
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/facebook/a;->a(Ljava/util/List;)Lcom/facebook/a;
move-result-object v0
iput-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
:goto_73
return-void
:cond_74
invoke-static {v0}, Lcom/facebook/a;->a(Landroid/os/Bundle;)Lcom/facebook/a;
move-result-object v0
iput-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
sget-object v0, Lcom/facebook/ch;->b:Lcom/facebook/ch;
iput-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
goto :goto_73
.end method
.method public static a(Landroid/content/Context;)Lcom/facebook/bo;
.registers 2
invoke-static {p0}, Lcom/facebook/bo;->b(Landroid/content/Context;)Lcom/facebook/bo;
move-result-object v0
return-object v0
.end method
.method private a(ILcom/facebook/s;)V
.registers 6
const/4 v1, 0x0
const/4 v0, -0x1
if-ne p1, v0, :cond_1d
iget v0, p2, Lcom/facebook/s;->a:I
sget v2, Lcom/facebook/t;->a:I
if-ne v0, v2, :cond_14
iget-object v0, p2, Lcom/facebook/s;->b:Lcom/facebook/a;
move-object v2, v0
move-object v0, v1
:goto_e
iput-object v1, p0, Lcom/facebook/bo;->k:Lcom/facebook/c;
invoke-direct {p0, v2, v0}, Lcom/facebook/bo;->a(Lcom/facebook/a;Ljava/lang/Exception;)V
return-void
:cond_14
new-instance v0, Lcom/facebook/x;
iget-object v2, p2, Lcom/facebook/s;->c:Ljava/lang/String;
invoke-direct {v0, v2}, Lcom/facebook/x;-><init>(Ljava/lang/String;)V
move-object v2, v1
goto :goto_e
:cond_1d
if-nez p1, :cond_28
new-instance v0, Lcom/facebook/ab;
iget-object v2, p2, Lcom/facebook/s;->c:Ljava/lang/String;
invoke-direct {v0, v2}, Lcom/facebook/ab;-><init>(Ljava/lang/String;)V
move-object v2, v1
goto :goto_e
:cond_28
move-object v0, v1
move-object v2, v1
goto :goto_e
.end method
.method static synthetic a(Landroid/os/Handler;Ljava/lang/Runnable;)V
.registers 2
invoke-static {p0, p1}, Lcom/facebook/bo;->b(Landroid/os/Handler;Ljava/lang/Runnable;)V
return-void
.end method
.method private a(Lcom/facebook/a;)V
.registers 4
if-eqz p1, :cond_f
iget-object v0, p0, Lcom/facebook/bo;->q:Lcom/facebook/cm;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/facebook/bo;->q:Lcom/facebook/cm;
invoke-virtual {p1}, Lcom/facebook/a;->f()Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/facebook/cm;->a(Landroid/os/Bundle;)V
:cond_f
return-void
.end method
.method private a(Lcom/facebook/a;Ljava/lang/Exception;)V
.registers 6
if-eqz p1, :cond_10
invoke-virtual {p1}, Lcom/facebook/a;->g()Z
move-result v0
if-eqz v0, :cond_10
const/4 p1, 0x0
new-instance p2, Lcom/facebook/z;
const-string v0, "Invalid access token."
invoke-direct {p2, v0}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V
:cond_10
iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_13
sget-object v0, Lcom/facebook/bt;->a:[I
iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
invoke-virtual {v2}, Lcom/facebook/ch;->ordinal()I
move-result v2
aget v0, v0, v2
packed-switch v0, :pswitch_data_2e
:goto_20
:pswitch_20
monitor-exit v1
return-void
:pswitch_22
invoke-direct {p0, p1, p2}, Lcom/facebook/bo;->b(Lcom/facebook/a;Ljava/lang/Exception;)V
:try_end_25
.catchall {:try_start_13 .. :try_end_25} :catchall_26
goto :goto_20
:catchall_26
move-exception v0
monitor-exit v1
throw v0
:pswitch_29
:try_start_29
invoke-direct {p0, p1, p2}, Lcom/facebook/bo;->c(Lcom/facebook/a;Ljava/lang/Exception;)V
:try_end_2c
.catchall {:try_start_29 .. :try_end_2c} :catchall_26
goto :goto_20
nop
:pswitch_data_2e
.packed-switch 0x2
:pswitch_22
:pswitch_20
:pswitch_29
:pswitch_29
.end packed-switch
.end method
.method public static final a(Lcom/facebook/bo;)V
.registers 3
sget-object v1, Lcom/facebook/bo;->b:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/bo;->c:Lcom/facebook/bo;
if-eq p0, v0, :cond_29
sget-object v0, Lcom/facebook/bo;->c:Lcom/facebook/bo;
if-eqz v0, :cond_e
invoke-direct {v0}, Lcom/facebook/bo;->m()V
:cond_e
sput-object p0, Lcom/facebook/bo;->c:Lcom/facebook/bo;
if-eqz v0, :cond_17
const-string v0, "com.facebook.sdk.ACTIVE_SESSION_UNSET"
invoke-static {v0}, Lcom/facebook/bo;->b(Ljava/lang/String;)V
:cond_17
if-eqz p0, :cond_29
const-string v0, "com.facebook.sdk.ACTIVE_SESSION_SET"
invoke-static {v0}, Lcom/facebook/bo;->b(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/facebook/bo;->a()Z
move-result v0
if-eqz v0, :cond_29
const-string v0, "com.facebook.sdk.ACTIVE_SESSION_OPENED"
invoke-static {v0}, Lcom/facebook/bo;->b(Ljava/lang/String;)V
:cond_29
monitor-exit v1
:try_end_2a
.catchall {:try_start_3 .. :try_end_2a} :catchall_2b
return-void
:catchall_2b
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic a(Lcom/facebook/bo;ILcom/facebook/s;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/facebook/bo;->a(ILcom/facebook/s;)V
return-void
.end method
.method private a(Lcom/facebook/bu;)V
.registers 7
iget-object v0, p0, Lcom/facebook/bo;->f:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/facebook/bu;->a(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/facebook/bo;->p()V
invoke-static {p1}, Lcom/facebook/bo;->c(Lcom/facebook/bu;)Z
move-result v0
if-nez v0, :cond_18
invoke-static {p1}, Lcom/facebook/bu;->a(Lcom/facebook/bu;)Z
move-result v1
if-eqz v1, :cond_18
invoke-direct {p0, p1}, Lcom/facebook/bo;->e(Lcom/facebook/bu;)Z
move-result v0
:cond_18
if-nez v0, :cond_3d
iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_1d
iget-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
sget-object v2, Lcom/facebook/bt;->a:[I
iget-object v3, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
invoke-virtual {v3}, Lcom/facebook/ch;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_44
sget-object v2, Lcom/facebook/ch;->f:Lcom/facebook/ch;
iput-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
new-instance v3, Lcom/facebook/z;
const-string v4, "Log in attempt failed."
invoke-direct {v3, v4}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0, v2, v3}, Lcom/facebook/bo;->a(Lcom/facebook/ch;Lcom/facebook/ch;Ljava/lang/Exception;)V
monitor-exit v1
:goto_3d
:cond_3d
return-void
:pswitch_3e
monitor-exit v1
:try_end_3f
.catchall {:try_start_1d .. :try_end_3f} :catchall_40
goto :goto_3d
:catchall_40
move-exception v0
monitor-exit v1
throw v0
nop
:pswitch_data_44
.packed-switch 0x6
:pswitch_3e
:pswitch_3e
.end packed-switch
.end method
.method private static a(Lcom/facebook/bu;Lcom/facebook/g/p;)V
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
if-eqz p0, :cond_e
invoke-virtual {p0}, Lcom/facebook/bu;->d()Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/facebook/g/t;->a(Ljava/util/Collection;)Z
move-result v0
if-eqz v0, :cond_1e
:cond_e
sget-object v0, Lcom/facebook/g/p;->b:Lcom/facebook/g/p;
invoke-virtual {v0, p1}, Lcom/facebook/g/p;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_64
new-instance v0, Lcom/facebook/z;
const-string v1, "Cannot request publish or manage authorization with no permissions."
invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V
throw v0
:cond_1e
invoke-virtual {p0}, Lcom/facebook/bu;->d()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_26
:cond_26
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_64
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/facebook/bo;->a(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_50
sget-object v2, Lcom/facebook/g/p;->a:Lcom/facebook/g/p;
invoke-virtual {v2, p1}, Lcom/facebook/g/p;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_26
new-instance v1, Lcom/facebook/z;
const-string v2, "Cannot pass a publish or manage permission (%s) to a request for read authorization"
new-array v3, v5, [Ljava/lang/Object;
aput-object v0, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V
throw v1
:cond_50
sget-object v2, Lcom/facebook/g/p;->b:Lcom/facebook/g/p;
invoke-virtual {v2, p1}, Lcom/facebook/g/p;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_26
sget-object v2, Lcom/facebook/bo;->a:Ljava/lang/String;
const-string v2, "Should not pass a read permission (%s) to a request for publish or manage authorization"
new-array v3, v5, [Ljava/lang/Object;
aput-object v0, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
goto :goto_26
:cond_64
return-void
.end method
.method private a(Lcom/facebook/ca;Lcom/facebook/g/p;)V
.registers 8
invoke-static {p1, p2}, Lcom/facebook/bo;->a(Lcom/facebook/bu;Lcom/facebook/g/p;)V
invoke-static {p1}, Lcom/facebook/bo;->b(Lcom/facebook/bu;)V
iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_9
iget-object v0, p0, Lcom/facebook/bo;->j:Lcom/facebook/bu;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
new-instance v3, Ljava/lang/UnsupportedOperationException;
const-string v4, "Session: an attempt was made to open a session that has a pending request."
invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0, v2, v3}, Lcom/facebook/bo;->a(Lcom/facebook/ch;Lcom/facebook/ch;Ljava/lang/Exception;)V
monitor-exit v1
:cond_1c
:goto_1c
return-void
:cond_1d
iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
sget-object v0, Lcom/facebook/bt;->a:[I
iget-object v3, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
invoke-virtual {v3}, Lcom/facebook/ch;->ordinal()I
move-result v3
aget v0, v0, v3
packed-switch v0, :pswitch_data_88
:pswitch_2c
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v2, "Session: an attempt was made to open an already opened session."
invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_34
:try_end_34
.catchall {:try_start_9 .. :try_end_34} :catchall_34
move-exception v0
monitor-exit v1
throw v0
:try_start_37
:pswitch_37
sget-object v0, Lcom/facebook/ch;->c:Lcom/facebook/ch;
iput-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
if-nez p1, :cond_45
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v2, "openRequest cannot be null when opening a new Session"
invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_45
iput-object p1, p0, Lcom/facebook/bo;->j:Lcom/facebook/bu;
:goto_47
if-eqz p1, :cond_50
invoke-virtual {p1}, Lcom/facebook/ca;->a()Lcom/facebook/cc;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/facebook/bo;->a(Lcom/facebook/cc;)V
:cond_50
const/4 v3, 0x0
invoke-direct {p0, v2, v0, v3}, Lcom/facebook/bo;->a(Lcom/facebook/ch;Lcom/facebook/ch;Ljava/lang/Exception;)V
monitor-exit v1
:try_end_55
.catchall {:try_start_37 .. :try_end_55} :catchall_34
sget-object v1, Lcom/facebook/ch;->c:Lcom/facebook/ch;
if-ne v0, v1, :cond_1c
invoke-direct {p0, p1}, Lcom/facebook/bo;->a(Lcom/facebook/bu;)V
goto :goto_1c
:pswitch_5d
if-eqz p1, :cond_79
:try_start_5f
invoke-virtual {p1}, Lcom/facebook/ca;->d()Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/facebook/g/t;->a(Ljava/util/Collection;)Z
move-result v0
if-nez v0, :cond_79
invoke-virtual {p1}, Lcom/facebook/ca;->d()Ljava/util/List;
move-result-object v0
invoke-virtual {p0}, Lcom/facebook/bo;->e()Ljava/util/List;
move-result-object v3
invoke-static {v0, v3}, Lcom/facebook/g/t;->a(Ljava/util/Collection;Ljava/util/Collection;)Z
move-result v0
if-nez v0, :cond_79
iput-object p1, p0, Lcom/facebook/bo;->j:Lcom/facebook/bu;
:cond_79
iget-object v0, p0, Lcom/facebook/bo;->j:Lcom/facebook/bu;
if-nez v0, :cond_82
sget-object v0, Lcom/facebook/ch;->d:Lcom/facebook/ch;
iput-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
goto :goto_47
:cond_82
sget-object v0, Lcom/facebook/ch;->c:Lcom/facebook/ch;
iput-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
:try_end_86
.catchall {:try_start_5f .. :try_end_86} :catchall_34
goto :goto_47
nop
:pswitch_data_88
.packed-switch 0x1
:pswitch_37
:pswitch_2c
:pswitch_5d
.end packed-switch
.end method
.method private a(Lcom/facebook/ch;Lcom/facebook/ch;Ljava/lang/Exception;)V
.registers 7
if-ne p1, p2, :cond_9
sget-object v0, Lcom/facebook/ch;->e:Lcom/facebook/ch;
if-eq p1, v0, :cond_9
if-nez p3, :cond_9
:goto_8
:cond_8
return-void
:cond_9
invoke-virtual {p2}, Lcom/facebook/ch;->b()Z
move-result v0
if-eqz v0, :cond_19
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/facebook/a;->a(Ljava/util/List;)Lcom/facebook/a;
move-result-object v0
iput-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
:cond_19
iget-object v1, p0, Lcom/facebook/bo;->m:Ljava/util/List;
monitor-enter v1
:try_start_1c
new-instance v0, Lcom/facebook/br;
invoke-direct {v0, p0, p2, p3}, Lcom/facebook/br;-><init>(Lcom/facebook/bo;Lcom/facebook/ch;Ljava/lang/Exception;)V
iget-object v2, p0, Lcom/facebook/bo;->n:Landroid/os/Handler;
invoke-static {v2, v0}, Lcom/facebook/bo;->b(Landroid/os/Handler;Ljava/lang/Runnable;)V
monitor-exit v1
:try_end_27
.catchall {:try_start_1c .. :try_end_27} :catchall_41
sget-object v0, Lcom/facebook/bo;->c:Lcom/facebook/bo;
if-ne p0, v0, :cond_8
invoke-virtual {p1}, Lcom/facebook/ch;->a()Z
move-result v0
invoke-virtual {p2}, Lcom/facebook/ch;->a()Z
move-result v1
if-eq v0, v1, :cond_8
invoke-virtual {p2}, Lcom/facebook/ch;->a()Z
move-result v0
if-eqz v0, :cond_44
const-string v0, "com.facebook.sdk.ACTIVE_SESSION_OPENED"
invoke-static {v0}, Lcom/facebook/bo;->b(Ljava/lang/String;)V
goto :goto_8
:catchall_41
move-exception v0
monitor-exit v1
throw v0
:cond_44
const-string v0, "com.facebook.sdk.ACTIVE_SESSION_CLOSED"
invoke-static {v0}, Lcom/facebook/bo;->b(Ljava/lang/String;)V
goto :goto_8
.end method
.method private static a(Landroid/content/Intent;)Z
.registers 3
const/4 v0, 0x0
invoke-static {}, Lcom/facebook/bo;->h()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
move-result-object v1
if-nez v1, :cond_10
:goto_f
return v0
:cond_10
const/4 v0, 0x1
goto :goto_f
.end method
.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 3
if-nez p0, :cond_8
if-nez p1, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
:cond_8
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method static a(Ljava/lang/String;)Z
.registers 2
if-eqz p0, :cond_1c
const-string v0, "publish"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1a
const-string v0, "manage"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1a
sget-object v0, Lcom/facebook/bo;->e:Ljava/util/Set;
invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
:cond_1a
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method
.method private static b(Landroid/content/Context;)Lcom/facebook/bo;
.registers 5
const/4 v1, 0x0
new-instance v0, Lcom/facebook/bz;
invoke-direct {v0, p0}, Lcom/facebook/bz;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/facebook/bz;->a()Lcom/facebook/bo;
move-result-object v0
sget-object v2, Lcom/facebook/ch;->b:Lcom/facebook/ch;
invoke-virtual {v0}, Lcom/facebook/bo;->b()Lcom/facebook/ch;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/facebook/ch;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1d
invoke-static {v0}, Lcom/facebook/bo;->a(Lcom/facebook/bo;)V
invoke-virtual {v0, v1}, Lcom/facebook/bo;->a(Lcom/facebook/ca;)V
:goto_1c
return-object v0
:cond_1d
move-object v0, v1
goto :goto_1c
.end method
.method static synthetic b(Lcom/facebook/bo;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/bo;->m:Ljava/util/List;
return-object v0
.end method
.method private static b(Landroid/os/Handler;Ljava/lang/Runnable;)V
.registers 3
if-eqz p0, :cond_6
invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_5
return-void
:cond_6
invoke-static {}, Lcom/facebook/cj;->a()Ljava/util/concurrent/Executor;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
goto :goto_5
.end method
.method private b(Lcom/facebook/a;Ljava/lang/Exception;)V
.registers 5
iget-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
if-eqz p1, :cond_16
iput-object p1, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
invoke-direct {p0, p1}, Lcom/facebook/bo;->a(Lcom/facebook/a;)V
sget-object v1, Lcom/facebook/ch;->d:Lcom/facebook/ch;
iput-object v1, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
:goto_d
:cond_d
const/4 v1, 0x0
iput-object v1, p0, Lcom/facebook/bo;->j:Lcom/facebook/bu;
iget-object v1, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
invoke-direct {p0, v0, v1, p2}, Lcom/facebook/bo;->a(Lcom/facebook/ch;Lcom/facebook/ch;Ljava/lang/Exception;)V
return-void
:cond_16
if-eqz p2, :cond_d
sget-object v1, Lcom/facebook/ch;->f:Lcom/facebook/ch;
iput-object v1, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
goto :goto_d
.end method
.method private static b(Lcom/facebook/bu;)V
.registers 6
if-eqz p0, :cond_3b
invoke-static {p0}, Lcom/facebook/bu;->a(Lcom/facebook/bu;)Z
move-result v0
if-nez v0, :cond_3b
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
invoke-static {}, Lcom/facebook/bo;->h()Landroid/content/Context;
move-result-object v1
const-class v2, Lcom/facebook/al;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
invoke-static {v0}, Lcom/facebook/bo;->a(Landroid/content/Intent;)Z
move-result v0
if-nez v0, :cond_3b
new-instance v0, Lcom/facebook/z;
const-string v1, "Cannot use SessionLoginBehavior %s when %s is not declared as an activity in AndroidManifest.xml"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/facebook/bu;->b()Lcom/facebook/cg;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
const-class v4, Lcom/facebook/al;
invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V
throw v0
:cond_3b
return-void
.end method
.method private static b(Ljava/lang/String;)V
.registers 3
new-instance v0, Landroid/content/Intent;
invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/facebook/bo;->h()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z
return-void
.end method
.method static synthetic c(Lcom/facebook/bo;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/facebook/bo;->n:Landroid/os/Handler;
return-object v0
.end method
.method private static c(Landroid/content/Context;)V
.registers 2
if-eqz p0, :cond_f
sget-object v0, Lcom/facebook/bo;->d:Landroid/content/Context;
if-nez v0, :cond_f
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
if-eqz v0, :cond_d
move-object p0, v0
:cond_d
sput-object p0, Lcom/facebook/bo;->d:Landroid/content/Context;
:cond_f
return-void
.end method
.method private c(Lcom/facebook/a;Ljava/lang/Exception;)V
.registers 5
iget-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
if-eqz p1, :cond_d
iput-object p1, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
invoke-direct {p0, p1}, Lcom/facebook/bo;->a(Lcom/facebook/a;)V
sget-object v1, Lcom/facebook/ch;->e:Lcom/facebook/ch;
iput-object v1, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
:cond_d
const/4 v1, 0x0
iput-object v1, p0, Lcom/facebook/bo;->j:Lcom/facebook/bu;
iget-object v1, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
invoke-direct {p0, v0, v1, p2}, Lcom/facebook/bo;->a(Lcom/facebook/ch;Lcom/facebook/ch;Ljava/lang/Exception;)V
return-void
.end method
.method private static c(Lcom/facebook/bu;)Z
.registers 5
const/4 v0, 0x0
invoke-static {p0}, Lcom/facebook/bo;->d(Lcom/facebook/bu;)Landroid/content/Intent;
move-result-object v1
invoke-static {v1}, Lcom/facebook/bo;->a(Landroid/content/Intent;)Z
move-result v2
if-nez v2, :cond_c
:goto_b
return v0
:cond_c
:try_start_c
invoke-virtual {p0}, Lcom/facebook/bu;->e()Lcom/facebook/cb;
move-result-object v2
invoke-virtual {p0}, Lcom/facebook/bu;->c()I
move-result v3
invoke-interface {v2, v1, v3}, Lcom/facebook/cb;->a(Landroid/content/Intent;I)V
:try_end_17
.catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_17} :catch_19
const/4 v0, 0x1
goto :goto_b
:catch_19
move-exception v1
goto :goto_b
.end method
.method private static d(Lcom/facebook/bu;)Landroid/content/Intent;
.registers 4
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
invoke-static {}, Lcom/facebook/bo;->h()Landroid/content/Context;
move-result-object v1
const-class v2, Lcom/facebook/al;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
invoke-virtual {p0}, Lcom/facebook/bu;->b()Lcom/facebook/cg;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/cg;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0}, Lcom/facebook/bu;->f()Lcom/facebook/k;
move-result-object v1
invoke-static {v1}, Lcom/facebook/al;->a(Lcom/facebook/k;)Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
return-object v0
.end method
.method static synthetic d(Lcom/facebook/bo;)Lcom/facebook/cd;
.registers 2
iget-object v0, p0, Lcom/facebook/bo;->r:Lcom/facebook/cd;
return-object v0
.end method
.method static synthetic e(Lcom/facebook/bo;)Lcom/facebook/cd;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/bo;->r:Lcom/facebook/cd;
return-object v0
.end method
.method private e(Lcom/facebook/bu;)Z
.registers 4
new-instance v0, Lcom/facebook/c;
invoke-direct {v0}, Lcom/facebook/c;-><init>()V
iput-object v0, p0, Lcom/facebook/bo;->k:Lcom/facebook/c;
iget-object v0, p0, Lcom/facebook/bo;->k:Lcom/facebook/c;
new-instance v1, Lcom/facebook/bq;
invoke-direct {v1, p0}, Lcom/facebook/bq;-><init>(Lcom/facebook/bo;)V
invoke-virtual {v0, v1}, Lcom/facebook/c;->a(Lcom/facebook/r;)V
iget-object v0, p0, Lcom/facebook/bo;->k:Lcom/facebook/c;
invoke-static {}, Lcom/facebook/bo;->h()Landroid/content/Context;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/facebook/c;->a(Landroid/content/Context;)V
iget-object v0, p0, Lcom/facebook/bo;->k:Lcom/facebook/c;
invoke-virtual {p1}, Lcom/facebook/bu;->f()Lcom/facebook/k;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/facebook/c;->a(Lcom/facebook/k;)V
const/4 v0, 0x1
return v0
.end method
.method static synthetic f(Lcom/facebook/bo;)Lcom/facebook/by;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/bo;->o:Lcom/facebook/by;
return-object v0
.end method
.method public static final g()Lcom/facebook/bo;
.registers 2
sget-object v1, Lcom/facebook/bo;->b:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/bo;->c:Lcom/facebook/bo;
monitor-exit v1
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_7
return-object v0
:catchall_7
move-exception v0
monitor-exit v1
throw v0
.end method
.method static h()Landroid/content/Context;
.registers 1
sget-object v0, Lcom/facebook/bo;->d:Landroid/content/Context;
return-object v0
.end method
.method static synthetic k()Landroid/content/Context;
.registers 1
sget-object v0, Lcom/facebook/bo;->d:Landroid/content/Context;
return-object v0
.end method
.method private l()Ljava/util/Date;
.registers 3
iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_8
monitor-exit v1
return-object v0
:cond_a
iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
invoke-virtual {v0}, Lcom/facebook/a;->b()Ljava/util/Date;
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_11
move-result-object v0
goto :goto_8
:catchall_11
move-exception v0
monitor-exit v1
throw v0
.end method
.method private m()V
.registers 6
iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
sget-object v2, Lcom/facebook/bt;->a:[I
iget-object v3, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
invoke-virtual {v3}, Lcom/facebook/ch;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_34
:goto_12
monitor-exit v1
return-void
:pswitch_14
sget-object v2, Lcom/facebook/ch;->f:Lcom/facebook/ch;
iput-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
new-instance v3, Lcom/facebook/z;
const-string v4, "Log in attempt aborted."
invoke-direct {v3, v4}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0, v2, v3}, Lcom/facebook/bo;->a(Lcom/facebook/ch;Lcom/facebook/ch;Ljava/lang/Exception;)V
:try_end_24
.catchall {:try_start_3 .. :try_end_24} :catchall_25
goto :goto_12
:catchall_25
move-exception v0
monitor-exit v1
throw v0
:pswitch_28
:try_start_28
sget-object v2, Lcom/facebook/ch;->g:Lcom/facebook/ch;
iput-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
const/4 v3, 0x0
invoke-direct {p0, v0, v2, v3}, Lcom/facebook/bo;->a(Lcom/facebook/ch;Lcom/facebook/ch;Ljava/lang/Exception;)V
:try_end_32
.catchall {:try_start_28 .. :try_end_32} :catchall_25
goto :goto_12
nop
:pswitch_data_34
.packed-switch 0x1
:pswitch_14
:pswitch_14
:pswitch_28
:pswitch_28
:pswitch_28
.end packed-switch
.end method
.method private n()V
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_4
iget-object v2, p0, Lcom/facebook/bo;->r:Lcom/facebook/cd;
if-nez v2, :cond_f
new-instance v0, Lcom/facebook/cd;
invoke-direct {v0, p0}, Lcom/facebook/cd;-><init>(Lcom/facebook/bo;)V
iput-object v0, p0, Lcom/facebook/bo;->r:Lcom/facebook/cd;
:cond_f
monitor-exit v1
:try_end_10
.catchall {:try_start_4 .. :try_end_10} :catchall_16
if-eqz v0, :cond_15
invoke-virtual {v0}, Lcom/facebook/cd;->a()V
:cond_15
return-void
:catchall_16
move-exception v0
monitor-exit v1
throw v0
.end method
.method private o()Z
.registers 7
const/4 v0, 0x0
iget-object v1, p0, Lcom/facebook/bo;->r:Lcom/facebook/cd;
if-eqz v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
new-instance v1, Ljava/util/Date;
invoke-direct {v1}, Ljava/util/Date;-><init>()V
iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
invoke-virtual {v2}, Lcom/facebook/ch;->a()Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
invoke-virtual {v2}, Lcom/facebook/a;->d()Lcom/facebook/b;
move-result-object v2
invoke-virtual {v2}, Lcom/facebook/b;->a()Z
move-result v2
if-eqz v2, :cond_5
invoke-virtual {v1}, Ljava/util/Date;->getTime()J
move-result-wide v2
iget-object v4, p0, Lcom/facebook/bo;->i:Ljava/util/Date;
invoke-virtual {v4}, Ljava/util/Date;->getTime()J
move-result-wide v4
sub-long/2addr v2, v4
const-wide/32 v4, 0x36ee80
cmp-long v2, v2, v4
if-lez v2, :cond_5
invoke-virtual {v1}, Ljava/util/Date;->getTime()J
move-result-wide v1
iget-object v3, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
invoke-virtual {v3}, Lcom/facebook/a;->e()Ljava/util/Date;
move-result-object v3
invoke-virtual {v3}, Ljava/util/Date;->getTime()J
move-result-wide v3
sub-long/2addr v1, v3
const-wide/32 v3, 0x5265c00
cmp-long v1, v1, v3
if-lez v1, :cond_5
const/4 v0, 0x1
goto :goto_5
.end method
.method private p()V
.registers 4
const/4 v0, 0x0
monitor-enter p0
:try_start_2
iget-object v1, p0, Lcom/facebook/bo;->o:Lcom/facebook/by;
if-nez v1, :cond_19
invoke-static {}, Lcom/facebook/cj;->b()Z
move-result v1
if-eqz v1, :cond_19
iget-object v1, p0, Lcom/facebook/bo;->f:Ljava/lang/String;
if-eqz v1, :cond_19
new-instance v0, Lcom/facebook/by;
sget-object v2, Lcom/facebook/bo;->d:Landroid/content/Context;
invoke-direct {v0, p0, v1, v2}, Lcom/facebook/by;-><init>(Lcom/facebook/bo;Ljava/lang/String;Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/bo;->o:Lcom/facebook/by;
:cond_19
monitor-exit p0
:try_end_1a
.catchall {:try_start_2 .. :try_end_1a} :catchall_23
if-eqz v0, :cond_22
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/facebook/by;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:cond_22
return-void
:catchall_23
move-exception v0
monitor-exit p0
throw v0
.end method
.method final a(Landroid/os/Bundle;)V
.registers 6
iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
sget-object v2, Lcom/facebook/bt;->a:[I
iget-object v3, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
invoke-virtual {v3}, Lcom/facebook/ch;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_48
sget-object v0, Lcom/facebook/bo;->a:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "refreshToken ignored in state "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
monitor-exit v1
:goto_21
return-void
:pswitch_22
sget-object v2, Lcom/facebook/ch;->e:Lcom/facebook/ch;
iput-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
const/4 v3, 0x0
invoke-direct {p0, v0, v2, v3}, Lcom/facebook/bo;->a(Lcom/facebook/ch;Lcom/facebook/ch;Ljava/lang/Exception;)V
:pswitch_2c
iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
invoke-static {v0, p1}, Lcom/facebook/a;->a(Lcom/facebook/a;Landroid/os/Bundle;)Lcom/facebook/a;
move-result-object v0
iput-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
iget-object v0, p0, Lcom/facebook/bo;->q:Lcom/facebook/cm;
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/facebook/bo;->q:Lcom/facebook/cm;
iget-object v2, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
invoke-virtual {v2}, Lcom/facebook/a;->f()Landroid/os/Bundle;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/facebook/cm;->a(Landroid/os/Bundle;)V
:cond_43
monitor-exit v1
:try_end_44
.catchall {:try_start_3 .. :try_end_44} :catchall_45
goto :goto_21
:catchall_45
move-exception v0
monitor-exit v1
throw v0
:pswitch_data_48
.packed-switch 0x4
:pswitch_22
:pswitch_2c
.end packed-switch
.end method
.method public final a(Lcom/facebook/ca;)V
.registers 3
sget-object v0, Lcom/facebook/g/p;->a:Lcom/facebook/g/p;
invoke-direct {p0, p1, v0}, Lcom/facebook/bo;->a(Lcom/facebook/ca;Lcom/facebook/g/p;)V
return-void
.end method
.method public final a(Lcom/facebook/cc;)V
.registers 4
iget-object v1, p0, Lcom/facebook/bo;->m:Ljava/util/List;
monitor-enter v1
if-eqz p1, :cond_12
:try_start_5
iget-object v0, p0, Lcom/facebook/bo;->m:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_12
iget-object v0, p0, Lcom/facebook/bo;->m:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_12
monitor-exit v1
:try_end_13
.catchall {:try_start_5 .. :try_end_13} :catchall_14
return-void
:catchall_14
move-exception v0
monitor-exit v1
throw v0
.end method
.method final a(Ljava/util/Date;)V
.registers 2
iput-object p1, p0, Lcom/facebook/bo;->i:Ljava/util/Date;
return-void
.end method
.method public final a()Z
.registers 3
iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
invoke-virtual {v0}, Lcom/facebook/ch;->a()Z
move-result v0
monitor-exit v1
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_b
return v0
:catchall_b
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final b()Lcom/facebook/ch;
.registers 3
iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
monitor-exit v1
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_7
return-object v0
:catchall_7
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final b(Lcom/facebook/ca;)V
.registers 3
sget-object v0, Lcom/facebook/g/p;->b:Lcom/facebook/g/p;
invoke-direct {p0, p1, v0}, Lcom/facebook/bo;->a(Lcom/facebook/ca;Lcom/facebook/g/p;)V
return-void
.end method
.method public final b(Lcom/facebook/cc;)V
.registers 4
iget-object v1, p0, Lcom/facebook/bo;->m:Ljava/util/List;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/bo;->m:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_a
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/bo;->f:Ljava/lang/String;
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 3
iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_8
monitor-exit v1
return-object v0
:cond_a
iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
invoke-virtual {v0}, Lcom/facebook/a;->a()Ljava/lang/String;
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_11
move-result-object v0
goto :goto_8
:catchall_11
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final e()Ljava/util/List;
.registers 3
iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_8
monitor-exit v1
return-object v0
:cond_a
iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
invoke-virtual {v0}, Lcom/facebook/a;->c()Ljava/util/List;
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_11
move-result-object v0
goto :goto_8
:catchall_11
move-exception v0
monitor-exit v1
throw v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
instance-of v1, p1, Lcom/facebook/bo;
if-nez v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
check-cast p1, Lcom/facebook/bo;
iget-object v1, p1, Lcom/facebook/bo;->f:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/bo;->f:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/facebook/bo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
iget-object v1, p1, Lcom/facebook/bo;->l:Landroid/os/Bundle;
iget-object v2, p0, Lcom/facebook/bo;->l:Landroid/os/Bundle;
invoke-static {v1, v2}, Lcom/facebook/bo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
iget-object v1, p1, Lcom/facebook/bo;->g:Lcom/facebook/ch;
iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
invoke-static {v1, v2}, Lcom/facebook/bo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
invoke-direct {p1}, Lcom/facebook/bo;->l()Ljava/util/Date;
move-result-object v1
invoke-direct {p0}, Lcom/facebook/bo;->l()Ljava/util/Date;
move-result-object v2
invoke-static {v1, v2}, Lcom/facebook/bo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
const/4 v0, 0x1
goto :goto_5
.end method
.method public final f()V
.registers 2
iget-object v0, p0, Lcom/facebook/bo;->q:Lcom/facebook/cm;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/facebook/bo;->q:Lcom/facebook/cm;
invoke-virtual {v0}, Lcom/facebook/cm;->b()V
:cond_9
sget-object v0, Lcom/facebook/bo;->d:Landroid/content/Context;
invoke-static {v0}, Lcom/facebook/g/t;->b(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/facebook/bo;->m()V
return-void
.end method
.method public hashCode()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method final i()V
.registers 2
invoke-direct {p0}, Lcom/facebook/bo;->o()Z
move-result v0
if-eqz v0, :cond_9
invoke-direct {p0}, Lcom/facebook/bo;->n()V
:cond_9
return-void
.end method
.method final j()Lcom/facebook/a;
.registers 2
iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "{Session state:"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", token:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
if-nez v0, :cond_38
const-string v0, "null"
:goto_19
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", appId:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v0, p0, Lcom/facebook/bo;->f:Ljava/lang/String;
if-nez v0, :cond_3b
const-string v0, "null"
:goto_29
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_38
iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;
goto :goto_19
:cond_3b
iget-object v0, p0, Lcom/facebook/bo;->f:Ljava/lang/String;
goto :goto_29
.end method