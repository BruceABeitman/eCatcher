.class  Lcom/facebook/katana/VersionTasks;
.super Ljava/lang/Object;
.source "LoginActivity.java"
.field private static final VERSION_BEFORE_CONTACTS_SYNC_FIX:J = -0x1L
.field private static mSingletonInstance:Lcom/facebook/katana/VersionTasks;
.field private final mBuildNumber:J
.field private final mContext:Landroid/content/Context;
.field private final mPreviouslyRunBuild:J
.method private constructor <init>(Landroid/content/Context;)V
.registers 8
const-wide/16 v4, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/katana/VersionTasks;->mContext:Landroid/content/Context;
const/4 v0, 0x0
:try_start_8
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_14
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_14} :catch_28
move-result-object v0
:goto_15
if-eqz v0, :cond_25
iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
int-to-long v1, v1
iput-wide v1, p0, Lcom/facebook/katana/VersionTasks;->mBuildNumber:J
:goto_1c
const-string v1, "last_run_build"
invoke-static {p1, v1, v4, v5}, Lcom/facebook/katana/provider/KeyValueManager;->getLongValue(Landroid/content/Context;Ljava/lang/String;J)J
move-result-wide v1
iput-wide v1, p0, Lcom/facebook/katana/VersionTasks;->mPreviouslyRunBuild:J
return-void
:cond_25
iput-wide v4, p0, Lcom/facebook/katana/VersionTasks;->mBuildNumber:J
goto :goto_1c
:catch_28
move-exception v1
goto :goto_15
.end method
.method static synthetic access$0(Lcom/facebook/katana/VersionTasks;)J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/VersionTasks;->mPreviouslyRunBuild:J
return-wide v0
.end method
.method static synthetic access$1(Lcom/facebook/katana/VersionTasks;)J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/VersionTasks;->mBuildNumber:J
return-wide v0
.end method
.method static synthetic access$2(Lcom/facebook/katana/VersionTasks;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/VersionTasks;->mContext:Landroid/content/Context;
return-object v0
.end method
.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/facebook/katana/VersionTasks;
.registers 3
const-class v0, Lcom/facebook/katana/VersionTasks;
monitor-enter v0
:try_start_3
sget-object v1, Lcom/facebook/katana/VersionTasks;->mSingletonInstance:Lcom/facebook/katana/VersionTasks;
if-nez v1, :cond_e
new-instance v1, Lcom/facebook/katana/VersionTasks;
invoke-direct {v1, p0}, Lcom/facebook/katana/VersionTasks;-><init>(Landroid/content/Context;)V
sput-object v1, Lcom/facebook/katana/VersionTasks;->mSingletonInstance:Lcom/facebook/katana/VersionTasks;
:cond_e
sget-object v1, Lcom/facebook/katana/VersionTasks;->mSingletonInstance:Lcom/facebook/katana/VersionTasks;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v0
return-object v1
:catchall_12
move-exception v1
monitor-exit v0
throw v1
.end method
.method public executeUpgrades()V
.registers 2
new-instance v0, Lcom/facebook/katana/VersionTasks$1;
invoke-direct {v0, p0}, Lcom/facebook/katana/VersionTasks$1;-><init>(Lcom/facebook/katana/VersionTasks;)V
invoke-virtual {v0}, Lcom/facebook/katana/VersionTasks$1;->start()V
return-void
.end method