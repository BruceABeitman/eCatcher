.class public final Lcom/spotify/mobile/android/applink/AppLinkImpl;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/ford/syncV4/proxy/b/a;
.implements Lcom/spotify/mobile/android/applink/a;
.field final a:Landroid/util/SparseArray;
.field private final b:Lcom/spotify/mobile/android/applink/t;
.field private final c:Ljava/util/List;
.field private final d:Ljava/util/Vector;
.field private final e:Ljava/util/Vector;
.field private f:Lcom/ford/syncV4/proxy/rpc/be;
.field private g:Lcom/ford/syncV4/proxy/rpc/be;
.field private h:Lcom/ford/syncV4/proxy/rpc/be;
.field private i:Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
.field private j:I
.field private k:I
.field private l:I
.field private m:I
.field private n:Lcom/spotify/mobile/android/applink/SessionState;
.field private o:Z
.field private p:Lcom/ford/syncV4/proxy/h;
.field private q:Lcom/spotify/mobile/android/applink/u;
.field private final r:Ljava/util/concurrent/ScheduledExecutorService;
.field private s:Ljava/util/concurrent/ScheduledFuture;
.field private final t:Landroid/util/SparseArray;
.field private final u:Landroid/util/SparseArray;
.field private v:Lcom/spotify/mobile/android/applink/o;
.field private w:Ljava/lang/String;
.field private x:Ljava/lang/String;
.method public constructor <init>(Lcom/spotify/mobile/android/applink/u;Ljava/util/concurrent/ScheduledExecutorService;Lcom/spotify/mobile/android/applink/t;)V
.registers 7
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;->c:Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
iput-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->i:Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
iput v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->j:I
iput v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->k:I
iput v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->l:I
iput v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->m:I
sget-object v0, Lcom/spotify/mobile/android/applink/SessionState;->a:Lcom/spotify/mobile/android/applink/SessionState;
iput-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->n:Lcom/spotify/mobile/android/applink/SessionState;
iput-boolean v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->o:Z
iput-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
iput-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->q:Lcom/spotify/mobile/android/applink/u;
iput-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->s:Ljava/util/concurrent/ScheduledFuture;
invoke-static {p3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/t;
iput-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b:Lcom/spotify/mobile/android/applink/t;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/u;
iput-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->q:Lcom/spotify/mobile/android/applink/u;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;
iput-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->r:Ljava/util/concurrent/ScheduledExecutorService;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->c:Ljava/util/List;
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a:Landroid/util/SparseArray;
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->t:Landroid/util/SparseArray;
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->u:Landroid/util/SparseArray;
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
new-instance v1, Lcom/ford/syncV4/proxy/rpc/be;
invoke-direct {v1}, Lcom/ford/syncV4/proxy/rpc/be;-><init>()V
iput-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->f:Lcom/ford/syncV4/proxy/rpc/be;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->f:Lcom/ford/syncV4/proxy/rpc/be;
sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;->b:Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
invoke-virtual {v1, v2}, Lcom/ford/syncV4/proxy/rpc/be;->a(Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;)V
iget-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->f:Lcom/ford/syncV4/proxy/rpc/be;
sget-object v2, Lcom/spotify/mobile/android/applink/q;->a:Lcom/ford/syncV4/proxy/rpc/v;
invoke-virtual {v1, v2}, Lcom/ford/syncV4/proxy/rpc/be;->a(Lcom/ford/syncV4/proxy/rpc/v;)V
iget-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->f:Lcom/ford/syncV4/proxy/rpc/be;
sget-object v2, Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;->a:Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;
invoke-virtual {v2}, Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;->ordinal()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/ford/syncV4/proxy/rpc/be;->a(Ljava/lang/Integer;)V
new-instance v1, Lcom/ford/syncV4/proxy/rpc/be;
invoke-direct {v1}, Lcom/ford/syncV4/proxy/rpc/be;-><init>()V
iput-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->g:Lcom/ford/syncV4/proxy/rpc/be;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->g:Lcom/ford/syncV4/proxy/rpc/be;
sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;->a:Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
invoke-virtual {v1, v2}, Lcom/ford/syncV4/proxy/rpc/be;->a(Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;)V
iget-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->g:Lcom/ford/syncV4/proxy/rpc/be;
iget-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v2}, Lcom/spotify/mobile/android/applink/t;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/ford/syncV4/proxy/rpc/be;->a(Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->g:Lcom/ford/syncV4/proxy/rpc/be;
sget-object v2, Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;->b:Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;
invoke-virtual {v2}, Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;->ordinal()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/ford/syncV4/proxy/rpc/be;->a(Ljava/lang/Integer;)V
new-instance v1, Lcom/ford/syncV4/proxy/rpc/be;
invoke-direct {v1}, Lcom/ford/syncV4/proxy/rpc/be;-><init>()V
iput-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->h:Lcom/ford/syncV4/proxy/rpc/be;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->h:Lcom/ford/syncV4/proxy/rpc/be;
sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;->a:Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
invoke-virtual {v1, v2}, Lcom/ford/syncV4/proxy/rpc/be;->a(Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;)V
iget-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->h:Lcom/ford/syncV4/proxy/rpc/be;
iget-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v2}, Lcom/spotify/mobile/android/applink/t;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/ford/syncV4/proxy/rpc/be;->a(Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->h:Lcom/ford/syncV4/proxy/rpc/be;
sget-object v2, Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;->c:Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;
invoke-virtual {v2}, Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;->ordinal()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/ford/syncV4/proxy/rpc/be;->a(Ljava/lang/Integer;)V
iget-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->f:Lcom/ford/syncV4/proxy/rpc/be;
invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->g:Lcom/ford/syncV4/proxy/rpc/be;
invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->h:Lcom/ford/syncV4/proxy/rpc/be;
invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
iput-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->d:Ljava/util/Vector;
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
new-instance v1, Lcom/ford/syncV4/proxy/rpc/be;
invoke-direct {v1}, Lcom/ford/syncV4/proxy/rpc/be;-><init>()V
sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;->a:Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;
invoke-virtual {v1, v2}, Lcom/ford/syncV4/proxy/rpc/be;->a(Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;)V
iget-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v2}, Lcom/spotify/mobile/android/applink/t;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/ford/syncV4/proxy/rpc/be;->a(Ljava/lang/String;)V
sget-object v2, Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;->c:Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;
invoke-virtual {v2}, Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;->ordinal()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/ford/syncV4/proxy/rpc/be;->a(Ljava/lang/Integer;)V
const/4 v2, 0x1
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/ford/syncV4/proxy/rpc/be;->a(Ljava/lang/Boolean;)V
invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
iput-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->e:Ljava/util/Vector;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/applink/AppLinkImpl;Lcom/spotify/mobile/android/applink/d;)I
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b(Lcom/spotify/mobile/android/applink/d;)I
move-result v0
return v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/applink/AppLinkImpl;)Lcom/spotify/mobile/android/applink/SessionState;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->n:Lcom/spotify/mobile/android/applink/SessionState;
return-object v0
.end method
.method private static a(Ljava/lang/String;)Ljava/lang/String;
.registers 1
if-nez p0, :cond_4
const-string p0, "(null)"
:cond_4
return-object p0
.end method
.method private a(I)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a:Landroid/util/SparseArray;
invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/d;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a:Landroid/util/SparseArray;
invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
if-eqz v0, :cond_13
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/applink/d;->a(Z)V
:cond_13
return-void
.end method
.method private a(JLcom/ford/syncV4/proxy/rpc/enums/UpdateMode;Lcom/spotify/mobile/android/applink/d;)V
.registers 14
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->f()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
invoke-direct {p0, p4}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b(Lcom/spotify/mobile/android/applink/d;)I
move-result v6
const-wide/16 v0, 0xe10
:try_start_d
div-long v1, p1, v0
const-wide/16 v3, 0x3c
div-long v3, p1, v3
const-wide/16 v7, 0x3c
rem-long/2addr v3, v7
const-wide/16 v7, 0x3c
rem-long v7, p1, v7
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
long-to-int v1, v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
long-to-int v2, v3
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
long-to-int v3, v7
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
move-object v4, p3
invoke-virtual/range {v0 .. v5}, Lcom/ford/syncV4/proxy/h;->a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;Ljava/lang/Integer;)V
:try_end_33
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_d .. :try_end_33} :catch_34
goto :goto_6
:catch_34
move-exception v0
const-string v1, "could not set media clock (set timer)"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, v6}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(I)V
goto :goto_6
.end method
.method private a(Lcom/ford/syncV4/proxy/f;)V
.registers 6
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/f;->d()Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_19
const-string v0, "RPC call failed %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/f;->e()Lcom/ford/syncV4/proxy/rpc/enums/Result;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a:Landroid/util/SparseArray;
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/f;->c()Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/d;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a:Landroid/util/SparseArray;
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/f;->c()Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V
if-eqz v0, :cond_43
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/f;->d()Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/applink/d;->a(Z)V
:cond_43
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/applink/AppLinkImpl;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(I)V
return-void
.end method
.method private b(Lcom/spotify/mobile/android/applink/d;)I
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a:Landroid/util/SparseArray;
iget v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->j:I
invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
iget v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->j:I
add-int/lit8 v1, v0, 0x1
iput v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->j:I
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/applink/AppLinkImpl;)Lcom/ford/syncV4/proxy/rpc/be;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->g:Lcom/ford/syncV4/proxy/rpc/be;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/applink/AppLinkImpl;)Lcom/ford/syncV4/proxy/rpc/be;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->f:Lcom/ford/syncV4/proxy/rpc/be;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/applink/AppLinkImpl;)Ljava/util/Vector;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->d:Ljava/util/Vector;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/applink/AppLinkImpl;)Lcom/ford/syncV4/proxy/h;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
return-object v0
.end method
.method private f()Z
.registers 7
const/16 v5, 0x14
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->n:Lcom/spotify/mobile/android/applink/SessionState;
sget-object v3, Lcom/spotify/mobile/android/applink/SessionState;->b:Lcom/spotify/mobile/android/applink/SessionState;
if-eq v2, v3, :cond_16
const-string v2, "Session state must be started but was: %s"
new-array v1, v1, [Ljava/lang/Object;
iget-object v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->n:Lcom/spotify/mobile/android/applink/SessionState;
aput-object v3, v1, v0
invoke-static {v2, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
:goto_15
return v0
:cond_16
iget-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a:Landroid/util/SparseArray;
invoke-virtual {v2}, Landroid/util/SparseArray;->size()I
move-result v2
if-le v2, v5, :cond_39
const-string v2, "Too many RPC requests %d log limit is %d"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
iget-object v4, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a:Landroid/util/SparseArray;
invoke-virtual {v4}, Landroid/util/SparseArray;->size()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v0
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v1
invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_15
:cond_39
move v0, v1
goto :goto_15
.end method
.method private g()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->n:Lcom/spotify/mobile/android/applink/SessionState;
sget-object v1, Lcom/spotify/mobile/android/applink/SessionState;->b:Lcom/spotify/mobile/android/applink/SessionState;
if-ne v0, v1, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->v:Lcom/spotify/mobile/android/applink/o;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->v:Lcom/spotify/mobile/android/applink/o;
invoke-interface {v0}, Lcom/spotify/mobile/android/applink/o;->a()V
:cond_f
sget-object v0, Lcom/spotify/mobile/android/applink/SessionState;->c:Lcom/spotify/mobile/android/applink/SessionState;
iput-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->n:Lcom/spotify/mobile/android/applink/SessionState;
:cond_13
return-void
.end method
.method private h()V
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
:try_start_2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
invoke-virtual {v0}, Lcom/ford/syncV4/proxy/h;->b()Ljava/lang/String;
move-result-object v0
const-string v1, "Proxy Version: %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_17
:try_end_17
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_2 .. :try_end_17} :catch_18
:goto_17
return-void
:catch_18
move-exception v0
const-string v1, "Can\'t get Proxy Version"
new-array v2, v5, [Ljava/lang/Object;
aput-object v0, v2, v4
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_17
.end method
.method private i()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->f:Lcom/ford/syncV4/proxy/rpc/be;
invoke-virtual {v0}, Lcom/ford/syncV4/proxy/rpc/be;->a()Lcom/ford/syncV4/proxy/rpc/v;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/applink/q;->b:Lcom/ford/syncV4/proxy/rpc/v;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_14
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/b;
invoke-interface {v0}, Lcom/spotify/mobile/android/applink/b;->b()V
goto :goto_14
:cond_24
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_2a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/b;
invoke-interface {v0}, Lcom/spotify/mobile/android/applink/b;->a()V
goto :goto_2a
:cond_3a
return-void
.end method
.method public final a()V
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
const-string v0, "startProxy"
new-array v1, v4, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
if-nez v0, :cond_33
:try_start_d
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->q:Lcom/spotify/mobile/android/applink/u;
const-string v0, "Spotify"
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
const-string v2, "1105659333"
new-instance v3, Lcom/ford/syncV4/proxy/h;
invoke-direct {v3, p0, v0, v1, v2}, Lcom/ford/syncV4/proxy/h;-><init>(Lcom/ford/syncV4/proxy/b/a;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
iput-object v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->h()V
:goto_27
:try_end_27
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_d .. :try_end_27} :catch_28
return-void
:catch_28
move-exception v0
const-string v1, "failed to start proxy"
new-array v2, v5, [Ljava/lang/Object;
aput-object v0, v2, v4
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_27
:cond_33
:try_start_33
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
invoke-virtual {v0}, Lcom/ford/syncV4/proxy/h;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
:try_end_3d
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_33 .. :try_end_3d} :catch_3e
goto :goto_27
:catch_3e
move-exception v0
const-string v0, "Failed to reset proxy"
new-array v1, v4, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_27
.end method
.method public final a(JZLcom/spotify/mobile/android/applink/d;)V
.registers 8
const/4 v2, 0x0
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-nez v0, :cond_1e
if-eqz p3, :cond_1e
iget-boolean v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->o:Z
if-eqz v0, :cond_18
sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->a:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
invoke-direct {p0, p1, p2, v0, v2}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(JLcom/ford/syncV4/proxy/rpc/enums/UpdateMode;Lcom/spotify/mobile/android/applink/d;)V
sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->c:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
invoke-direct {p0, p1, p2, v0, p4}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(JLcom/ford/syncV4/proxy/rpc/enums/UpdateMode;Lcom/spotify/mobile/android/applink/d;)V
:goto_17
return-void
:cond_18
sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->b:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
invoke-direct {p0, p1, p2, v0, v2}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(JLcom/ford/syncV4/proxy/rpc/enums/UpdateMode;Lcom/spotify/mobile/android/applink/d;)V
goto :goto_17
:cond_1e
if-eqz p3, :cond_26
sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->c:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
:goto_22
invoke-direct {p0, p1, p2, v0, p4}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(JLcom/ford/syncV4/proxy/rpc/enums/UpdateMode;Lcom/spotify/mobile/android/applink/d;)V
goto :goto_17
:cond_26
sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->a:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
goto :goto_22
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/ab;)V
.registers 5
const/4 v0, 0x0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v1
const/4 v2, 0x2
aget-object v1, v1, v2
invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v1
new-array v2, v0, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/rpc/ab;->d()Ljava/lang/Integer;
move-result-object v1
if-eqz v1, :cond_1c
const/4 v0, 0x1
:cond_1c
if-eqz v0, :cond_6e
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/rpc/ab;->d()Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
sget-object v1, Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;->a:Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;
invoke-virtual {v1}, Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;->ordinal()I
move-result v1
if-ne v0, v1, :cond_32
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->i()V
:goto_31
:cond_31
return-void
:cond_32
sget-object v1, Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;->c:Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;
invoke-virtual {v1}, Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;->ordinal()I
move-result v1
if-ne v0, v1, :cond_50
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_40
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_31
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/b;
invoke-interface {v0}, Lcom/spotify/mobile/android/applink/b;->f()V
goto :goto_40
:cond_50
sget-object v1, Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;->b:Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;
invoke-virtual {v1}, Lcom/spotify/mobile/android/applink/AppLinkImpl$ButtonId;->ordinal()I
move-result v1
if-ne v0, v1, :cond_31
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_5e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_31
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/b;
invoke-interface {v0}, Lcom/spotify/mobile/android/applink/b;->e()V
goto :goto_5e
:cond_6e
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/rpc/ab;->c()Lcom/ford/syncV4/proxy/rpc/enums/ButtonName;
move-result-object v0
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/ButtonName;->a:Lcom/ford/syncV4/proxy/rpc/enums/ButtonName;
if-ne v0, v1, :cond_7a
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->i()V
goto :goto_31
:cond_7a
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/ButtonName;->b:Lcom/ford/syncV4/proxy/rpc/enums/ButtonName;
if-ne v0, v1, :cond_94
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_84
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_31
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/b;
invoke-interface {v0}, Lcom/spotify/mobile/android/applink/b;->d()V
goto :goto_84
:cond_94
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/ButtonName;->c:Lcom/ford/syncV4/proxy/rpc/enums/ButtonName;
if-ne v0, v1, :cond_31
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_31
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/b;
invoke-interface {v0}, Lcom/spotify/mobile/android/applink/b;->c()V
goto :goto_9e
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/ac;)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->t:Landroid/util/SparseArray;
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/rpc/ac;->c()Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/c;
if-nez v0, :cond_22
const-string v0, "Unexpected command id %d"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/rpc/ac;->c()Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
:goto_21
return-void
:cond_22
iget-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->v:Lcom/spotify/mobile/android/applink/o;
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/rpc/ac;->d()Lcom/ford/syncV4/proxy/rpc/enums/TriggerSource;
move-result-object v2
sget-object v3, Lcom/ford/syncV4/proxy/rpc/enums/TriggerSource;->b:Lcom/ford/syncV4/proxy/rpc/enums/TriggerSource;
invoke-virtual {v2, v3}, Lcom/ford/syncV4/proxy/rpc/enums/TriggerSource;->equals(Ljava/lang/Object;)Z
move-result v2
invoke-interface {v1, v0, v2}, Lcom/spotify/mobile/android/applink/o;->a(Lcom/spotify/mobile/android/applink/c;Z)V
goto :goto_21
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/af;)V
.registers 8
const/4 v1, 0x0
const/4 v0, 0x1
sget-object v2, Lcom/spotify/mobile/android/applink/AppLinkImpl$2;->a:[I
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/rpc/af;->e()Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;
move-result-object v3
invoke-virtual {v3}, Lcom/ford/syncV4/proxy/rpc/enums/SystemContext;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_1a8
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:pswitch_17
sget-object v2, Lcom/spotify/mobile/android/applink/AppLinkImpl$2;->b:[I
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/rpc/af;->c()Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;
move-result-object v3
invoke-virtual {v3}, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_1b2
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:pswitch_2c
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/rpc/af;->f()Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-eqz v2, :cond_ca
:try_start_36
iget-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
invoke-virtual {v2}, Lcom/ford/syncV4/proxy/h;->c()Lcom/ford/syncV4/proxy/rpc/bm;
move-result-object v2
invoke-virtual {v2}, Lcom/ford/syncV4/proxy/rpc/bm;->a()Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
if-ne v2, v0, :cond_10d
move v2, v0
:goto_47
iput-boolean v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->o:Z
const-string v2, "isGen1 %b"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
iget-boolean v5, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->o:Z
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_5a
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_36 .. :try_end_5a} :catch_110
:try_start_5a
:goto_5a
iget-boolean v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->o:Z
if-eqz v2, :cond_11c
const-string v2, "AppLink"
iput-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->w:Ljava/lang/String;
:try_end_62
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_5a .. :try_end_62} :catch_173
:goto_62
:try_start_62
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
invoke-virtual {v3}, Lcom/ford/syncV4/proxy/h;->c()Lcom/ford/syncV4/proxy/rpc/bm;
move-result-object v3
invoke-virtual {v3}, Lcom/ford/syncV4/proxy/rpc/bm;->a()Ljava/lang/Integer;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
invoke-virtual {v3}, Lcom/ford/syncV4/proxy/h;->c()Lcom/ford/syncV4/proxy/rpc/bm;
move-result-object v3
invoke-virtual {v3}, Lcom/ford/syncV4/proxy/rpc/bm;->b()Ljava/lang/Integer;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->x:Ljava/lang/String;
:try_end_97
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_62 .. :try_end_97} :catch_17f
:goto_97
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->h()V
:try_start_9a
iget-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
sget-object v3, Lcom/ford/syncV4/proxy/rpc/enums/ButtonName;->a:Lcom/ford/syncV4/proxy/rpc/enums/ButtonName;
const/4 v4, 0x0
invoke-direct {p0, v4}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b(Lcom/spotify/mobile/android/applink/d;)I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lcom/ford/syncV4/proxy/h;->a(Lcom/ford/syncV4/proxy/rpc/enums/ButtonName;Ljava/lang/Integer;)V
iget-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
sget-object v3, Lcom/ford/syncV4/proxy/rpc/enums/ButtonName;->b:Lcom/ford/syncV4/proxy/rpc/enums/ButtonName;
const/4 v4, 0x0
invoke-direct {p0, v4}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b(Lcom/spotify/mobile/android/applink/d;)I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lcom/ford/syncV4/proxy/h;->a(Lcom/ford/syncV4/proxy/rpc/enums/ButtonName;Ljava/lang/Integer;)V
iget-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
sget-object v3, Lcom/ford/syncV4/proxy/rpc/enums/ButtonName;->c:Lcom/ford/syncV4/proxy/rpc/enums/ButtonName;
const/4 v4, 0x0
invoke-direct {p0, v4}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b(Lcom/spotify/mobile/android/applink/d;)I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lcom/ford/syncV4/proxy/h;->a(Lcom/ford/syncV4/proxy/rpc/enums/ButtonName;Ljava/lang/Integer;)V
:cond_ca
:goto_ca
:try_end_ca
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_9a .. :try_end_ca} :catch_18b
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/rpc/af;->f()Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
iget-object v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->n:Lcom/spotify/mobile/android/applink/SessionState;
sget-object v4, Lcom/spotify/mobile/android/applink/SessionState;->b:Lcom/spotify/mobile/android/applink/SessionState;
if-eq v3, v4, :cond_e5
sget-object v3, Lcom/spotify/mobile/android/applink/SessionState;->b:Lcom/spotify/mobile/android/applink/SessionState;
iput-object v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->n:Lcom/spotify/mobile/android/applink/SessionState;
iget-object v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->v:Lcom/spotify/mobile/android/applink/o;
if-eqz v3, :cond_e5
iget-object v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->v:Lcom/spotify/mobile/android/applink/o;
invoke-interface {v3, v2}, Lcom/spotify/mobile/android/applink/o;->a(Z)V
:goto_e5
:cond_e5
:pswitch_e5
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/rpc/af;->d()Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->i:Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
invoke-virtual {v3, v2}, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_10c
iput-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->i:Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
iget-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->n:Lcom/spotify/mobile/android/applink/SessionState;
sget-object v3, Lcom/spotify/mobile/android/applink/SessionState;->b:Lcom/spotify/mobile/android/applink/SessionState;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/applink/SessionState;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_10c
iget-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->v:Lcom/spotify/mobile/android/applink/o;
if-eqz v2, :cond_10c
iget-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->v:Lcom/spotify/mobile/android/applink/o;
iget-object v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->i:Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
sget-object v4, Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;->a:Lcom/ford/syncV4/proxy/rpc/enums/AudioStreamingState;
if-ne v3, v4, :cond_1a5
:goto_109
invoke-interface {v2, v0}, Lcom/spotify/mobile/android/applink/o;->b(Z)V
:cond_10c
return-void
:cond_10d
move v2, v1
goto/16 :goto_47
:catch_110
move-exception v2
const-string v3, "Failed to get sync msg version"
new-array v4, v0, [Ljava/lang/Object;
aput-object v2, v4, v1
invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
goto/16 :goto_5a
:cond_11c
:try_start_11c
iget-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
invoke-virtual {v2}, Lcom/ford/syncV4/proxy/h;->d()Lcom/ford/syncV4/proxy/rpc/bu;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "AppLink "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/ford/syncV4/proxy/rpc/bu;->c()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v2}, Lcom/ford/syncV4/proxy/rpc/bu;->a()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v2}, Lcom/ford/syncV4/proxy/rpc/bu;->b()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v2}, Lcom/ford/syncV4/proxy/rpc/bu;->d()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->w:Ljava/lang/String;
:try_end_171
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_11c .. :try_end_171} :catch_173
goto/16 :goto_62
:catch_173
move-exception v2
const-string v3, "Could not get VechicleType from AppLink"
new-array v4, v0, [Ljava/lang/Object;
aput-object v2, v4, v1
invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
goto/16 :goto_62
:catch_17f
move-exception v2
const-string v3, "Could not get ProxyVersion from AppLink"
new-array v4, v0, [Ljava/lang/Object;
aput-object v2, v4, v1
invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
goto/16 :goto_97
:catch_18b
move-exception v2
const-string v3, "Failed to subscribe to hard buttons: %s"
new-array v4, v0, [Ljava/lang/Object;
invoke-virtual {v2}, Lcom/ford/syncV4/exception/SyncException;->getMessage()Ljava/lang/String;
move-result-object v2
aput-object v2, v4, v1
invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
goto/16 :goto_ca
:pswitch_19b
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->g()V
goto/16 :goto_e5
:pswitch_1a0
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->g()V
goto/16 :goto_e5
:cond_1a5
move v0, v1
goto/16 :goto_109
:pswitch_data_1a8
.packed-switch 0x1
:pswitch_17
:pswitch_17
:pswitch_17
.end packed-switch
:pswitch_data_1b2
.packed-switch 0x1
:pswitch_2c
:pswitch_e5
:pswitch_19b
:pswitch_1a0
.end packed-switch
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/al;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/an;)V
.registers 7
const/4 v2, 0x1
const/4 v3, 0x0
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/rpc/an;->d()Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_1a
const-string v0, "onPerformInteractionResponse failed %s"
new-array v1, v2, [Ljava/lang/Object;
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/rpc/an;->e()Lcom/ford/syncV4/proxy/rpc/enums/Result;
move-result-object v2
aput-object v2, v1, v3
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
:goto_19
return-void
:cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->u:Landroid/util/SparseArray;
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/rpc/an;->i()Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/c;
if-nez v0, :cond_3a
const-string v0, "Unexpected command id %d"
new-array v1, v2, [Ljava/lang/Object;
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/rpc/an;->i()Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v3
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_19
:cond_3a
iget-object v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->v:Lcom/spotify/mobile/android/applink/o;
invoke-virtual {v0}, Lcom/spotify/mobile/android/applink/c;->d()Lcom/spotify/mobile/android/applink/l;
move-result-object v2
invoke-virtual {p1}, Lcom/ford/syncV4/proxy/rpc/an;->j()Lcom/ford/syncV4/proxy/rpc/enums/TriggerSource;
move-result-object v3
sget-object v4, Lcom/ford/syncV4/proxy/rpc/enums/TriggerSource;->b:Lcom/ford/syncV4/proxy/rpc/enums/TriggerSource;
invoke-virtual {v3, v4}, Lcom/ford/syncV4/proxy/rpc/enums/TriggerSource;->equals(Ljava/lang/Object;)Z
move-result v3
invoke-interface {v1, v2, v0, v3}, Lcom/spotify/mobile/android/applink/o;->a(Lcom/spotify/mobile/android/applink/l;Lcom/spotify/mobile/android/applink/c;Z)V
goto :goto_19
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/ap;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/aq;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/at;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/av;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/aw;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/ax;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/ay;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/b;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/ba;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/bc;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/bd;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/bh;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/bk;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/bl;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/bo;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/bs;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/bt;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/c;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/d;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/f;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/i;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/k;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/l;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/m;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/n;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/q;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/r;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/s;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/t;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/u;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/w;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(Lcom/ford/syncV4/proxy/f;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/applink/b;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/applink/c;Lcom/spotify/mobile/android/applink/d;)V
.registers 12
const/4 v8, 0x1
const/4 v7, 0x0
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->f()Z
move-result v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
invoke-direct {p0, p2}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b(Lcom/spotify/mobile/android/applink/d;)I
move-result v6
:try_start_d
const-string v0, "create command %d %s position %d"
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->k:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/c;->a()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/c;->c()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->t:Landroid/util/SparseArray;
iget v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->k:I
invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
iget v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->k:I
invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/applink/c;->b(I)V
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/c;->a()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_74
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
iget v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->k:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->k:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/c;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/c;->c()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/c;->b()Ljava/util/Vector;
move-result-object v4
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual/range {v0 .. v5}, Lcom/ford/syncV4/proxy/h;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Vector;Ljava/lang/Integer;)V
:try_end_65
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_d .. :try_end_65} :catch_66
goto :goto_8
:catch_66
move-exception v0
const-string v1, "could not add command"
new-array v2, v8, [Ljava/lang/Object;
aput-object v0, v2, v7
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, v6}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(I)V
goto :goto_8
:try_start_74
:cond_74
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
iget v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->k:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->k:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/c;->b()Ljava/util/Vector;
move-result-object v2
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Lcom/ford/syncV4/proxy/h;->a(Ljava/lang/Integer;Ljava/util/Vector;Ljava/lang/Integer;)V
:try_end_8b
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_74 .. :try_end_8b} :catch_66
goto/16 :goto_8
.end method
.method public final a(Lcom/spotify/mobile/android/applink/d;)V
.registers 10
const/4 v7, 0x0
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->f()Z
move-result v0
if-nez v0, :cond_8
:goto_7
return-void
:cond_8
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b(Lcom/spotify/mobile/android/applink/d;)I
move-result v6
:try_start_c
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
const/4 v3, 0x0
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
sget-object v4, Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;->e:Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual/range {v0 .. v5}, Lcom/ford/syncV4/proxy/h;->a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/ford/syncV4/proxy/rpc/enums/UpdateMode;Ljava/lang/Integer;)V
:try_end_26
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_c .. :try_end_26} :catch_27
goto :goto_7
:catch_27
move-exception v0
const-string v1, "could not set media clock (clear timer)"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
aput-object v0, v2, v7
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, v6}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(I)V
goto :goto_7
.end method
.method public final a(Lcom/spotify/mobile/android/applink/l;Lcom/spotify/mobile/android/applink/d;)V
.registers 11
const/4 v7, 0x1
const/4 v6, 0x0
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->f()Z
move-result v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
invoke-direct {p0, p2}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b(Lcom/spotify/mobile/android/applink/d;)I
move-result v1
new-instance v2, Ljava/util/Vector;
invoke-direct {v2}, Ljava/util/Vector;-><init>()V
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/l;->c()Ljava/util/Vector;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
move-result-object v3
:goto_1a
invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_54
invoke-virtual {v2}, Ljava/util/Vector;->size()I
move-result v0
const/16 v4, 0x32
if-ge v0, v4, :cond_54
invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/c;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/applink/c;->a(Lcom/spotify/mobile/android/applink/l;)Lcom/spotify/mobile/android/applink/c;
iget-object v4, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->u:Landroid/util/SparseArray;
iget v5, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->l:I
invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
iget-object v4, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
iget v4, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->l:I
add-int/lit8 v5, v4, 0x1
iput v5, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->l:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v0}, Lcom/spotify/mobile/android/applink/c;->a()Ljava/lang/String;
move-result-object v5
invoke-virtual {v0}, Lcom/spotify/mobile/android/applink/c;->b()Ljava/util/Vector;
move-result-object v0
invoke-static {v4, v5, v0}, Lcom/ford/syncV4/proxy/h;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Vector;)Lcom/ford/syncV4/proxy/rpc/g;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
goto :goto_1a
:try_start_54
:cond_54
const-string v0, "adding interaction menu %d %s"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
iget v5, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->m:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x1
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/l;->a()Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->m:I
invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/applink/l;->a(I)Lcom/spotify/mobile/android/applink/l;
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
iget v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->m:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->m:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v0, v2, v3, v4}, Lcom/ford/syncV4/proxy/h;->a(Ljava/util/Vector;Ljava/lang/Integer;Ljava/lang/Integer;)V
:try_end_84
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_54 .. :try_end_84} :catch_85
goto :goto_8
:catch_85
move-exception v0
const-string v2, "could not set media clock (clear timer)"
new-array v3, v7, [Ljava/lang/Object;
aput-object v0, v3, v6
invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(I)V
goto/16 :goto_8
.end method
.method public final a(Lcom/spotify/mobile/android/applink/l;Z)V
.registers 12
const/4 v8, 0x0
:try_start_1
const-string v0, "show interaction %d"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/l;->d()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/l;->b()Ljava/lang/String;
move-result-object v1
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/l;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/l;->d()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
if-eqz p2, :cond_3e
sget-object v4, Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;->c:Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;
:goto_2a
const/16 v5, 0x4e20
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
iget v6, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->j:I
add-int/lit8 v7, v6, 0x1
iput v7, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->j:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-virtual/range {v0 .. v6}, Lcom/ford/syncV4/proxy/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;Ljava/lang/Integer;Ljava/lang/Integer;)V
:goto_3d
return-void
:cond_3e
sget-object v4, Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;->a:Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;
:try_end_40
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_1 .. :try_end_40} :catch_41
goto :goto_2a
:catch_41
move-exception v0
const-string v1, "Exception when communicating with Applink"
new-array v2, v8, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_3d
.end method
.method public final a(Lcom/spotify/mobile/android/applink/o;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->v:Lcom/spotify/mobile/android/applink/o;
return-void
.end method
.method public final a(Ljava/lang/Exception;)V
.registers 4
move-object v0, p1
check-cast v0, Lcom/ford/syncV4/exception/SyncException;
invoke-virtual {v0}, Lcom/ford/syncV4/exception/SyncException;->a()Lcom/ford/syncV4/exception/SyncExceptionCause;
move-result-object v0
sget-object v1, Lcom/ford/syncV4/exception/SyncExceptionCause;->i:Lcom/ford/syncV4/exception/SyncExceptionCause;
if-eq v0, v1, :cond_20
check-cast p1, Lcom/ford/syncV4/exception/SyncException;
invoke-virtual {p1}, Lcom/ford/syncV4/exception/SyncException;->a()Lcom/ford/syncV4/exception/SyncExceptionCause;
move-result-object v0
sget-object v1, Lcom/ford/syncV4/exception/SyncExceptionCause;->b:Lcom/ford/syncV4/exception/SyncExceptionCause;
if-eq v0, v1, :cond_20
invoke-virtual {p0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b()V
const-string v0, "onproxy closed, disposing"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_20
return-void
.end method
.method public final a(Ljava/lang/String;Lcom/spotify/mobile/android/applink/d;)V
.registers 8
invoke-direct {p0, p2}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b(Lcom/spotify/mobile/android/applink/d;)I
move-result v1
:try_start_4
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, p1, v2}, Lcom/ford/syncV4/proxy/h;->a(Ljava/lang/String;Ljava/lang/Integer;)V
:try_end_d
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_4 .. :try_end_d} :catch_e
:goto_d
return-void
:catch_e
move-exception v0
const-string v2, "Failed on speak"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v0, v3, v4
invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(I)V
goto :goto_d
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/applink/d;)V
.registers 9
invoke-direct {p0, p3}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b(Lcom/spotify/mobile/android/applink/d;)I
move-result v1
:try_start_4
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
iget v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->j:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->j:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/ford/syncV4/proxy/h;->a(Ljava/lang/Integer;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/TextAlignment;->a:Lcom/ford/syncV4/proxy/rpc/enums/TextAlignment;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v0, p1, p2, v2, v3}, Lcom/ford/syncV4/proxy/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ford/syncV4/proxy/rpc/enums/TextAlignment;Ljava/lang/Integer;)V
:try_end_1e
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_4 .. :try_end_1e} :catch_1f
:goto_1e
return-void
:catch_1f
move-exception v0
const-string v2, "Failed to clear screen and set message: %s"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v0, v3, v4
invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(I)V
goto :goto_1e
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;ZZLcom/spotify/mobile/android/applink/d;)V
.registers 13
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->f()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
new-instance v0, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;
move-object v1, p0
move-object v2, p5
move v3, p4
move v4, p3
move-object v5, p1
move-object v6, p2
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/applink/AppLinkImpl$1;-><init>(Lcom/spotify/mobile/android/applink/AppLinkImpl;Lcom/spotify/mobile/android/applink/d;ZZLjava/lang/String;Ljava/lang/String;)V
const-wide/16 v1, 0xfa
iget-object v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->s:Ljava/util/concurrent/ScheduledFuture;
if-eqz v3, :cond_34
iget-object v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->s:Ljava/util/concurrent/ScheduledFuture;
invoke-interface {v3}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z
move-result v3
if-nez v3, :cond_2e
const-wide/16 v1, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->s:Ljava/util/concurrent/ScheduledFuture;
sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J
move-result-wide v3
invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J
move-result-wide v1
:cond_2e
iget-object v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->s:Ljava/util/concurrent/ScheduledFuture;
const/4 v4, 0x0
invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
:cond_34
iget-object v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->r:Ljava/util/concurrent/ScheduledExecutorService;
sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-interface {v3, v0, v1, v2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->s:Ljava/util/concurrent/ScheduledFuture;
goto :goto_6
.end method
.method public final a(Landroid/bluetooth/BluetoothAdapter;)Z
.registers 6
const/4 v1, 0x0
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
move-result v0
if-eqz v0, :cond_14
invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
move-result v0
if-eqz v0, :cond_16
:cond_14
move v0, v1
:goto_15
return v0
:cond_16
invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->size()I
move-result v2
if-lez v2, :cond_4a
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_24
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_48
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/bluetooth/BluetoothDevice;
invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_24
invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
const-string v3, "SYNC"
invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_24
const/4 v0, 0x1
goto :goto_15
:cond_48
move v0, v1
goto :goto_15
:cond_4a
const-string v0, "A No Paired devices with the name sync"
new-array v2, v1, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
move v0, v1
goto :goto_15
.end method
.method public final b()V
.registers 3
const-string v0, "disposeSyncProxy"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->n:Lcom/spotify/mobile/android/applink/SessionState;
sget-object v1, Lcom/spotify/mobile/android/applink/SessionState;->b:Lcom/spotify/mobile/android/applink/SessionState;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/applink/SessionState;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1f
sget-object v0, Lcom/spotify/mobile/android/applink/SessionState;->a:Lcom/spotify/mobile/android/applink/SessionState;
iput-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->n:Lcom/spotify/mobile/android/applink/SessionState;
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->v:Lcom/spotify/mobile/android/applink/o;
invoke-interface {v0}, Lcom/spotify/mobile/android/applink/o;->a()V
:cond_1f
return-void
.end method
.method public final b(Lcom/spotify/mobile/android/applink/b;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public final b(Lcom/spotify/mobile/android/applink/c;Lcom/spotify/mobile/android/applink/d;)V
.registers 11
const/4 v7, 0x1
const/4 v6, 0x0
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->f()Z
move-result v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
invoke-direct {p0, p2}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b(Lcom/spotify/mobile/android/applink/d;)I
move-result v1
:try_start_d
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/c;->e()I
move-result v0
const-string v2, "hide command %d %s position %d"
const/4 v3, 0x3
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x1
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/c;->a()Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x2
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/c;->c()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->t:Landroid/util/SparseArray;
invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V
iget-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lcom/ford/syncV4/proxy/h;->a(Ljava/lang/Integer;Ljava/lang/Integer;)V
:try_end_44
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_d .. :try_end_44} :catch_45
goto :goto_8
:catch_45
move-exception v0
const-string v2, "could not delete command"
new-array v3, v7, [Ljava/lang/Object;
aput-object v0, v3, v6
invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(I)V
goto :goto_8
.end method
.method public final b(Ljava/lang/String;Lcom/spotify/mobile/android/applink/d;)V
.registers 10
const/4 v6, 0x1
const/4 v5, 0x0
invoke-direct {p0, p2}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b(Lcom/spotify/mobile/android/applink/d;)I
move-result v1
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->e:Ljava/util/Vector;
const-string v2, "Displaying text %s"
new-array v3, v6, [Ljava/lang/Object;
aput-object p1, v3, v5
invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:try_start_11
iget-object v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
const/16 v3, 0x2710
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v2, p1, v3, v0, v4}, Lcom/ford/syncV4/proxy/h;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Vector;Ljava/lang/Integer;)V
:try_end_20
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_11 .. :try_end_20} :catch_21
:goto_20
return-void
:catch_21
move-exception v0
const-string v2, "Failed on display scrollable"
new-array v3, v6, [Ljava/lang/Object;
aput-object v0, v3, v5
invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(I)V
goto :goto_20
.end method
.method public final c(Lcom/spotify/mobile/android/applink/c;Lcom/spotify/mobile/android/applink/d;)V
.registers 12
const/4 v8, 0x1
const/4 v7, 0x0
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->f()Z
move-result v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
invoke-direct {p0, p2}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->b(Lcom/spotify/mobile/android/applink/d;)I
move-result v6
:try_start_d
const-string v0, "show command %d %s position %d"
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget v3, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->k:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/c;->a()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/c;->c()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->t:Landroid/util/SparseArray;
iget v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->k:I
invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
iget v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->k:I
invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/applink/c;->b(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->p:Lcom/ford/syncV4/proxy/h;
iget v1, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->k:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->k:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/c;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/c;->c()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/c;->b()Ljava/util/Vector;
move-result-object v4
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual/range {v0 .. v5}, Lcom/ford/syncV4/proxy/h;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Vector;Ljava/lang/Integer;)V
:try_end_5f
.catch Lcom/ford/syncV4/exception/SyncException; {:try_start_d .. :try_end_5f} :catch_60
goto :goto_8
:catch_60
move-exception v0
const-string v1, "could not set media clock (clear timer)"
new-array v2, v8, [Ljava/lang/Object;
aput-object v0, v2, v7
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0, v6}, Lcom/spotify/mobile/android/applink/AppLinkImpl;->a(I)V
goto :goto_8
.end method
.method public final c()Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->n:Lcom/spotify/mobile/android/applink/SessionState;
sget-object v1, Lcom/spotify/mobile/android/applink/SessionState;->b:Lcom/spotify/mobile/android/applink/SessionState;
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->w:Ljava/lang/String;
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/AppLinkImpl;->x:Ljava/lang/String;
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method