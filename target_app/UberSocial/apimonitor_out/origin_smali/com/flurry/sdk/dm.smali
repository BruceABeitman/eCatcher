.class public Lcom/flurry/sdk/dm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;

.field public static final c:Ljava/lang/Integer;

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/Boolean;

.field public static final g:Ljava/lang/Boolean;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/Boolean;

.field public static final j:Landroid/location/Criteria;

.field public static final k:Ljava/lang/Long;

.field public static final l:Ljava/lang/Boolean;

.field public static final m:Ljava/lang/Long;

.field public static final n:Ljava/lang/Byte;

.field private static o:Lcom/flurry/sdk/dn;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v0, 0xaa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dm;->a:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dm;->b:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dm;->c:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dm;->d:Ljava/lang/Integer;

    sput-object v1, Lcom/flurry/sdk/dm;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dm;->f:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dm;->g:Ljava/lang/Boolean;

    sput-object v1, Lcom/flurry/sdk/dm;->h:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dm;->i:Ljava/lang/Boolean;

    sput-object v1, Lcom/flurry/sdk/dm;->j:Landroid/location/Criteria;

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dm;->k:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dm;->l:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dm;->m:Ljava/lang/Long;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dm;->n:Ljava/lang/Byte;

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/dn;
    .registers 2

    const-class v1, Lcom/flurry/sdk/dm;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    if-nez v0, :cond_11

    new-instance v0, Lcom/flurry/sdk/dn;

    invoke-direct {v0}, Lcom/flurry/sdk/dn;-><init>()V

    sput-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    invoke-static {}, Lcom/flurry/sdk/dm;->b()V

    :cond_11
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b()V
    .registers 3

    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    if-nez v0, :cond_b

    new-instance v0, Lcom/flurry/sdk/dn;

    invoke-direct {v0}, Lcom/flurry/sdk/dn;-><init>()V

    sput-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    :cond_b
    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    const-string v1, "AgentVersion"

    sget-object v2, Lcom/flurry/sdk/dm;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    const-string v1, "ReleaseMajorVersion"

    sget-object v2, Lcom/flurry/sdk/dm;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    const-string v1, "ReleaseMinorVersion"

    sget-object v2, Lcom/flurry/sdk/dm;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    const-string v1, "ReleasePatchVersion"

    sget-object v2, Lcom/flurry/sdk/dm;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    const-string v1, "ReleaseBetaVersion"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    const-string v1, "VersionName"

    sget-object v2, Lcom/flurry/sdk/dm;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    const-string v1, "CaptureUncaughtExceptions"

    sget-object v2, Lcom/flurry/sdk/dm;->f:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    const-string v1, "UseHttps"

    sget-object v2, Lcom/flurry/sdk/dm;->g:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    const-string v1, "ReportUrl"

    sget-object v2, Lcom/flurry/sdk/dm;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    const-string v1, "ReportLocation"

    sget-object v2, Lcom/flurry/sdk/dm;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    const-string v1, "LocationCriteria"

    sget-object v2, Lcom/flurry/sdk/dm;->j:Landroid/location/Criteria;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    const-string v1, "ContinueSessionMillis"

    sget-object v2, Lcom/flurry/sdk/dm;->k:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    const-string v1, "LogEvents"

    sget-object v2, Lcom/flurry/sdk/dm;->l:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    const-string v1, "Age"

    sget-object v2, Lcom/flurry/sdk/dm;->m:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    const-string v1, "Gender"

    sget-object v2, Lcom/flurry/sdk/dm;->n:Ljava/lang/Byte;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/dm;->o:Lcom/flurry/sdk/dn;

    const-string v1, "UserId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
