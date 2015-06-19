.class  Lcom/google/android/gms/tagmanager/eo;
.super Lcom/google/android/gms/tagmanager/bv;
.field private final a:Lcom/google/android/gms/internal/je;
.field private final b:Lcom/google/android/gms/tagmanager/es;
.field private final c:Landroid/os/Looper;
.field private final d:Lcom/google/android/gms/tagmanager/cf;
.field private final e:I
.field private final f:Landroid/content/Context;
.field private final g:Lcom/google/android/gms/tagmanager/m;
.field private final h:Ljava/lang/String;
.field private i:Lcom/google/android/gms/tagmanager/eu;
.field private volatile j:Lcom/google/android/gms/tagmanager/el;
.field private volatile k:Z
.field private l:Lcom/google/android/gms/internal/cp;
.field private m:J
.field private n:Ljava/lang/String;
.field private o:Lcom/google/android/gms/tagmanager/et;
.field private p:Lcom/google/android/gms/tagmanager/ep;
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/m;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/eu;Lcom/google/android/gms/tagmanager/et;Lcom/google/android/gms/internal/je;Lcom/google/android/gms/tagmanager/cf;)V
.registers 12
if-nez p3, :cond_42
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v0
:goto_6
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/bv;-><init>(Landroid/os/Looper;)V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/eo;->f:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/eo;->g:Lcom/google/android/gms/tagmanager/m;
if-nez p3, :cond_13
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object p3
:cond_13
iput-object p3, p0, Lcom/google/android/gms/tagmanager/eo;->c:Landroid/os/Looper;
iput-object p4, p0, Lcom/google/android/gms/tagmanager/eo;->h:Ljava/lang/String;
iput p5, p0, Lcom/google/android/gms/tagmanager/eo;->e:I
iput-object p6, p0, Lcom/google/android/gms/tagmanager/eo;->i:Lcom/google/android/gms/tagmanager/eu;
iput-object p7, p0, Lcom/google/android/gms/tagmanager/eo;->o:Lcom/google/android/gms/tagmanager/et;
new-instance v0, Lcom/google/android/gms/tagmanager/es;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/tagmanager/es;-><init>(Lcom/google/android/gms/tagmanager/eo;Lcom/google/android/gms/tagmanager/eo$1;)V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->b:Lcom/google/android/gms/tagmanager/es;
new-instance v0, Lcom/google/android/gms/internal/cp;
invoke-direct {v0}, Lcom/google/android/gms/internal/cp;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->l:Lcom/google/android/gms/internal/cp;
iput-object p8, p0, Lcom/google/android/gms/tagmanager/eo;->a:Lcom/google/android/gms/internal/je;
iput-object p9, p0, Lcom/google/android/gms/tagmanager/eo;->d:Lcom/google/android/gms/tagmanager/cf;
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/eo;->h()Z
move-result v0
if-eqz v0, :cond_41
invoke-static {}, Lcom/google/android/gms/tagmanager/cc;->a()Lcom/google/android/gms/tagmanager/cc;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cc;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/eo;->a(Ljava/lang/String;)V
:cond_41
return-void
:cond_42
move-object v0, p3
goto :goto_6
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/m;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/ex;)V
.registers 20
new-instance v12, Lcom/google/android/gms/tagmanager/cr;
move-object/from16 v0, p4
invoke-direct {v12, p1, v0}, Lcom/google/android/gms/tagmanager/cr;-><init>(Landroid/content/Context;Ljava/lang/String;)V
new-instance v10, Lcom/google/android/gms/tagmanager/co;
move-object/from16 v0, p4
move-object/from16 v1, p6
invoke-direct {v10, p1, v0, v1}, Lcom/google/android/gms/tagmanager/co;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/ex;)V
invoke-static {}, Lcom/google/android/gms/internal/jg;->b()Lcom/google/android/gms/internal/je;
move-result-object v11
new-instance v2, Lcom/google/android/gms/tagmanager/ax;
const/16 v3, 0x1e
const-wide/32 v4, 0xdbba0
const-wide/16 v6, 0x1388
const-string v8, "refreshing"
invoke-static {}, Lcom/google/android/gms/internal/jg;->b()Lcom/google/android/gms/internal/je;
move-result-object v9
invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/tagmanager/ax;-><init>(IJJLjava/lang/String;Lcom/google/android/gms/internal/je;)V
move-object v3, p0
move-object v4, p1
move-object v5, p2
move-object/from16 v6, p3
move-object/from16 v7, p4
move/from16 v8, p5
move-object v9, v12
move-object v12, v2
invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/tagmanager/eo;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/m;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/eu;Lcom/google/android/gms/tagmanager/et;Lcom/google/android/gms/internal/je;Lcom/google/android/gms/tagmanager/cf;)V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/tagmanager/eo;)Lcom/google/android/gms/internal/je;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->a:Lcom/google/android/gms/internal/je;
return-object v0
.end method
.method private declared-synchronized a(J)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->o:Lcom/google/android/gms/tagmanager/et;
if-nez v0, :cond_c
const-string v0, "Refresh requested, but no network load scheduler."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->b(Ljava/lang/String;)V
:goto_a
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_16
monitor-exit p0
return-void
:cond_c
:try_start_c
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->o:Lcom/google/android/gms/tagmanager/et;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/eo;->l:Lcom/google/android/gms/internal/cp;
iget-object v1, v1, Lcom/google/android/gms/internal/cp;->c:Ljava/lang/String;
invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/tagmanager/et;->a(JLjava/lang/String;)V
:try_end_15
.catchall {:try_start_c .. :try_end_15} :catchall_16
goto :goto_a
:catchall_16
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized a(Lcom/google/android/gms/internal/cp;)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->i:Lcom/google/android/gms/tagmanager/eu;
if-eqz v0, :cond_1c
new-instance v0, Lcom/google/android/gms/internal/rr;
invoke-direct {v0}, Lcom/google/android/gms/internal/rr;-><init>()V
iget-wide v1, p0, Lcom/google/android/gms/tagmanager/eo;->m:J
iput-wide v1, v0, Lcom/google/android/gms/internal/rr;->a:J
new-instance v1, Lcom/google/android/gms/internal/cl;
invoke-direct {v1}, Lcom/google/android/gms/internal/cl;-><init>()V
iput-object v1, v0, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/cl;
iput-object p1, v0, Lcom/google/android/gms/internal/rr;->c:Lcom/google/android/gms/internal/cp;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/eo;->i:Lcom/google/android/gms/tagmanager/eu;
invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/eu;->a(Lcom/google/android/gms/internal/rr;)V
:cond_1c
:try_end_1c
.catchall {:try_start_1 .. :try_end_1c} :catchall_1e
monitor-exit p0
return-void
:catchall_1e
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized a(Lcom/google/android/gms/internal/cp;JZ)V
.registers 13
const-wide/32 v6, 0x2932e00
monitor-enter p0
if-eqz p4, :cond_c
:try_start_6
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/eo;->k:Z
:try_end_8
.catchall {:try_start_6 .. :try_end_8} :catchall_6a
if-eqz v0, :cond_c
:cond_a
:goto_a
monitor-exit p0
return-void
:cond_c
:try_start_c
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/eo;->b()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->j:Lcom/google/android/gms/tagmanager/el;
if-nez v0, :cond_16
:cond_16
iput-object p1, p0, Lcom/google/android/gms/tagmanager/eo;->l:Lcom/google/android/gms/internal/cp;
iput-wide p2, p0, Lcom/google/android/gms/tagmanager/eo;->m:J
const-wide/16 v0, 0x0
const-wide/32 v2, 0x2932e00
iget-wide v4, p0, Lcom/google/android/gms/tagmanager/eo;->m:J
add-long/2addr v4, v6
iget-object v6, p0, Lcom/google/android/gms/tagmanager/eo;->a:Lcom/google/android/gms/internal/je;
invoke-interface {v6}, Lcom/google/android/gms/internal/je;->a()J
move-result-wide v6
sub-long/2addr v4, v6
invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J
move-result-wide v2
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
move-result-wide v0
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/eo;->a(J)V
new-instance v0, Lcom/google/android/gms/tagmanager/a;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/eo;->f:Landroid/content/Context;
iget-object v2, p0, Lcom/google/android/gms/tagmanager/eo;->g:Lcom/google/android/gms/tagmanager/m;
invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/m;->a()Lcom/google/android/gms/tagmanager/h;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/tagmanager/eo;->h:Ljava/lang/String;
move-wide v4, p2
move-object v6, p1
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/h;Ljava/lang/String;JLcom/google/android/gms/internal/cp;)V
iget-object v1, p0, Lcom/google/android/gms/tagmanager/eo;->j:Lcom/google/android/gms/tagmanager/el;
if-nez v1, :cond_6d
new-instance v1, Lcom/google/android/gms/tagmanager/el;
iget-object v2, p0, Lcom/google/android/gms/tagmanager/eo;->g:Lcom/google/android/gms/tagmanager/m;
iget-object v3, p0, Lcom/google/android/gms/tagmanager/eo;->c:Landroid/os/Looper;
iget-object v4, p0, Lcom/google/android/gms/tagmanager/eo;->b:Lcom/google/android/gms/tagmanager/es;
invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/tagmanager/el;-><init>(Lcom/google/android/gms/tagmanager/m;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/a;Lcom/google/android/gms/tagmanager/em;)V
iput-object v1, p0, Lcom/google/android/gms/tagmanager/eo;->j:Lcom/google/android/gms/tagmanager/el;
:goto_56
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/eo;->b()Z
move-result v1
if-nez v1, :cond_a
iget-object v1, p0, Lcom/google/android/gms/tagmanager/eo;->p:Lcom/google/android/gms/tagmanager/ep;
invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/ep;->a(Lcom/google/android/gms/tagmanager/a;)Z
move-result v0
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->j:Lcom/google/android/gms/tagmanager/el;
invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/eo;->a(Lcom/google/android/gms/common/api/m;)V
:try_end_69
.catchall {:try_start_c .. :try_end_69} :catchall_6a
goto :goto_a
:catchall_6a
move-exception v0
monitor-exit p0
throw v0
:cond_6d
:try_start_6d
iget-object v1, p0, Lcom/google/android/gms/tagmanager/eo;->j:Lcom/google/android/gms/tagmanager/el;
invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/el;->a(Lcom/google/android/gms/tagmanager/a;)V
:try_end_72
.catchall {:try_start_6d .. :try_end_72} :catchall_6a
goto :goto_56
.end method
.method static synthetic a(Lcom/google/android/gms/tagmanager/eo;J)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/eo;->a(J)V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/tagmanager/eo;Lcom/google/android/gms/internal/cp;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/eo;->a(Lcom/google/android/gms/internal/cp;)V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/tagmanager/eo;Lcom/google/android/gms/internal/cp;JZ)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/eo;->a(Lcom/google/android/gms/internal/cp;JZ)V
return-void
.end method
.method private a(Z)V
.registers 12
const-wide/16 v4, 0x0
const/4 v2, 0x0
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->i:Lcom/google/android/gms/tagmanager/eu;
new-instance v1, Lcom/google/android/gms/tagmanager/eq;
invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/eq;-><init>(Lcom/google/android/gms/tagmanager/eo;Lcom/google/android/gms/tagmanager/eo$1;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/eu;->a(Lcom/google/android/gms/tagmanager/ay;)V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->o:Lcom/google/android/gms/tagmanager/et;
new-instance v1, Lcom/google/android/gms/tagmanager/er;
invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/er;-><init>(Lcom/google/android/gms/tagmanager/eo;Lcom/google/android/gms/tagmanager/eo$1;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/et;->a(Lcom/google/android/gms/tagmanager/ay;)V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->i:Lcom/google/android/gms/tagmanager/eu;
iget v1, p0, Lcom/google/android/gms/tagmanager/eo;->e:I
invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/eu;->a(I)Lcom/google/android/gms/tagmanager/cv;
move-result-object v6
if-eqz v6, :cond_3d
new-instance v7, Lcom/google/android/gms/tagmanager/el;
iget-object v8, p0, Lcom/google/android/gms/tagmanager/eo;->g:Lcom/google/android/gms/tagmanager/m;
iget-object v9, p0, Lcom/google/android/gms/tagmanager/eo;->c:Landroid/os/Looper;
new-instance v0, Lcom/google/android/gms/tagmanager/a;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/eo;->f:Landroid/content/Context;
iget-object v2, p0, Lcom/google/android/gms/tagmanager/eo;->g:Lcom/google/android/gms/tagmanager/m;
invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/m;->a()Lcom/google/android/gms/tagmanager/h;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/tagmanager/eo;->h:Ljava/lang/String;
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/h;Ljava/lang/String;JLcom/google/android/gms/tagmanager/cv;)V
iget-object v1, p0, Lcom/google/android/gms/tagmanager/eo;->b:Lcom/google/android/gms/tagmanager/es;
invoke-direct {v7, v8, v9, v0, v1}, Lcom/google/android/gms/tagmanager/el;-><init>(Lcom/google/android/gms/tagmanager/m;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/a;Lcom/google/android/gms/tagmanager/em;)V
iput-object v7, p0, Lcom/google/android/gms/tagmanager/eo;->j:Lcom/google/android/gms/tagmanager/el;
:cond_3d
new-instance v0, Lcom/google/android/gms/tagmanager/eo$2;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/eo$2;-><init>(Lcom/google/android/gms/tagmanager/eo;Z)V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->p:Lcom/google/android/gms/tagmanager/ep;
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/eo;->h()Z
move-result v0
if-eqz v0, :cond_52
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->o:Lcom/google/android/gms/tagmanager/et;
const-string v1, ""
invoke-interface {v0, v4, v5, v1}, Lcom/google/android/gms/tagmanager/et;->a(JLjava/lang/String;)V
:goto_51
return-void
:cond_52
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->i:Lcom/google/android/gms/tagmanager/eu;
invoke-interface {v0}, Lcom/google/android/gms/tagmanager/eu;->a()V
goto :goto_51
.end method
.method static synthetic b(Lcom/google/android/gms/tagmanager/eo;)Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/eo;->k:Z
return v0
.end method
.method static synthetic c(Lcom/google/android/gms/tagmanager/eo;)Lcom/google/android/gms/internal/cp;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->l:Lcom/google/android/gms/internal/cp;
return-object v0
.end method
.method static synthetic d(Lcom/google/android/gms/tagmanager/eo;)J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/tagmanager/eo;->m:J
return-wide v0
.end method
.method static synthetic e(Lcom/google/android/gms/tagmanager/eo;)Z
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/eo;->h()Z
move-result v0
return v0
.end method
.method static synthetic f(Lcom/google/android/gms/tagmanager/eo;)Lcom/google/android/gms/tagmanager/el;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->j:Lcom/google/android/gms/tagmanager/el;
return-object v0
.end method
.method static synthetic g(Lcom/google/android/gms/tagmanager/eo;)Lcom/google/android/gms/tagmanager/cf;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->d:Lcom/google/android/gms/tagmanager/cf;
return-object v0
.end method
.method private h()Z
.registers 4
invoke-static {}, Lcom/google/android/gms/tagmanager/cc;->a()Lcom/google/android/gms/tagmanager/cc;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cc;->b()Lcom/google/android/gms/tagmanager/cd;
move-result-object v1
sget-object v2, Lcom/google/android/gms/tagmanager/cd;->b:Lcom/google/android/gms/tagmanager/cd;
if-eq v1, v2, :cond_14
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cc;->b()Lcom/google/android/gms/tagmanager/cd;
move-result-object v1
sget-object v2, Lcom/google/android/gms/tagmanager/cd;->c:Lcom/google/android/gms/tagmanager/cd;
if-ne v1, v2, :cond_22
:cond_14
iget-object v1, p0, Lcom/google/android/gms/tagmanager/eo;->h:Ljava/lang/String;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cc;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_22
const/4 v0, 0x1
:goto_21
return v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method protected synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/eo;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/f;
move-result-object v0
return-object v0
.end method
.method declared-synchronized a(Ljava/lang/String;)V
.registers 3
monitor-enter p0
:try_start_1
iput-object p1, p0, Lcom/google/android/gms/tagmanager/eo;->n:Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->o:Lcom/google/android/gms/tagmanager/et;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->o:Lcom/google/android/gms/tagmanager/et;
invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/et;->a(Ljava/lang/String;)V
:cond_c
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_e
monitor-exit p0
return-void
:catchall_e
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/f;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->j:Lcom/google/android/gms/tagmanager/el;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->j:Lcom/google/android/gms/tagmanager/el;
:goto_6
return-object v0
:cond_7
sget-object v0, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;
if-ne p1, v0, :cond_10
const-string v0, "timer expired: setting result to failure"
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V
:cond_10
new-instance v0, Lcom/google/android/gms/tagmanager/el;
invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/el;-><init>(Lcom/google/android/gms/common/api/Status;)V
goto :goto_6
.end method
.method public d()V
.registers 9
const/4 v7, 0x0
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->i:Lcom/google/android/gms/tagmanager/eu;
iget v1, p0, Lcom/google/android/gms/tagmanager/eo;->e:I
invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/eu;->a(I)Lcom/google/android/gms/tagmanager/cv;
move-result-object v6
if-eqz v6, :cond_32
new-instance v0, Lcom/google/android/gms/tagmanager/a;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/eo;->f:Landroid/content/Context;
iget-object v2, p0, Lcom/google/android/gms/tagmanager/eo;->g:Lcom/google/android/gms/tagmanager/m;
invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/m;->a()Lcom/google/android/gms/tagmanager/h;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/tagmanager/eo;->h:Ljava/lang/String;
const-wide/16 v4, 0x0
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/h;Ljava/lang/String;JLcom/google/android/gms/tagmanager/cv;)V
new-instance v1, Lcom/google/android/gms/tagmanager/el;
iget-object v2, p0, Lcom/google/android/gms/tagmanager/eo;->g:Lcom/google/android/gms/tagmanager/m;
iget-object v3, p0, Lcom/google/android/gms/tagmanager/eo;->c:Landroid/os/Looper;
new-instance v4, Lcom/google/android/gms/tagmanager/eo$1;
invoke-direct {v4, p0}, Lcom/google/android/gms/tagmanager/eo$1;-><init>(Lcom/google/android/gms/tagmanager/eo;)V
invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/tagmanager/el;-><init>(Lcom/google/android/gms/tagmanager/m;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/a;Lcom/google/android/gms/tagmanager/em;)V
invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/eo;->a(Lcom/google/android/gms/common/api/m;)V
:goto_2d
iput-object v7, p0, Lcom/google/android/gms/tagmanager/eo;->o:Lcom/google/android/gms/tagmanager/et;
iput-object v7, p0, Lcom/google/android/gms/tagmanager/eo;->i:Lcom/google/android/gms/tagmanager/eu;
return-void
:cond_32
const-string v0, "Default was requested, but no default container was found"
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V
new-instance v1, Lcom/google/android/gms/common/api/Status;
const/16 v2, 0xa
invoke-direct {v1, v2, v0, v7}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V
invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/eo;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/f;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/eo;->a(Lcom/google/android/gms/common/api/m;)V
goto :goto_2d
.end method
.method public e()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/eo;->a(Z)V
return-void
.end method
.method public f()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/eo;->a(Z)V
return-void
.end method
.method declared-synchronized g()Ljava/lang/String;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/gms/tagmanager/eo;->n:Ljava/lang/String;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-object v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method