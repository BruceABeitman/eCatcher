.class public Lcom/flurry/sdk/dy;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String;
.field private static b:Ljava/lang/String;
.field private static c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/flurry/sdk/dy;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/flurry/sdk/dy;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static declared-synchronized a()Ljava/lang/String;
.registers 2
const-class v1, Lcom/flurry/sdk/dy;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/flurry/sdk/dy;->b:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_f
sget-object v0, Lcom/flurry/sdk/dy;->b:Ljava/lang/String;
:goto_d
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_23
monitor-exit v1
return-object v0
:cond_f
:try_start_f
sget-object v0, Lcom/flurry/sdk/dy;->c:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1a
sget-object v0, Lcom/flurry/sdk/dy;->c:Ljava/lang/String;
goto :goto_d
:cond_1a
invoke-static {}, Lcom/flurry/sdk/dy;->b()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/flurry/sdk/dy;->c:Ljava/lang/String;
sget-object v0, Lcom/flurry/sdk/dy;->c:Ljava/lang/String;
:try_end_22
.catchall {:try_start_f .. :try_end_22} :catchall_23
goto :goto_d
:catchall_23
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static a(Ljava/lang/String;)V
.registers 1
sput-object p0, Lcom/flurry/sdk/dy;->b:Ljava/lang/String;
return-void
.end method
.method private static b()Ljava/lang/String;
.registers 4
:try_start_0
invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;
move-result-object v0
invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v0
iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
if-eqz v1, :cond_1c
iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
:goto_1b
return-object v0
:cond_1c
iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
if-eqz v1, :cond_30
iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
:try_end_25
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_27
move-result-object v0
goto :goto_1b
:catch_27
move-exception v0
const/4 v1, 0x6
sget-object v2, Lcom/flurry/sdk/dy;->a:Ljava/lang/String;
const-string v3, ""
invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_30
const-string v0, "Unknown"
goto :goto_1b
.end method