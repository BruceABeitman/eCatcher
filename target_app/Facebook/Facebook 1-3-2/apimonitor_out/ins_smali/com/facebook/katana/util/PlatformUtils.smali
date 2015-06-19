.class public final Lcom/facebook/katana/util/PlatformUtils;
.super Ljava/lang/Object;
.source "PlatformUtils.java"
.field private static sPlatformEclairOrLater:Z
.field private static sPlatformEclairOrLaterDetected:Z
.field private static sStorageSupported:Z
.field private static sStorageSupportedDetected:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/facebook/katana/util/PlatformUtils;->sStorageSupportedDetected:Z
sput-boolean v0, Lcom/facebook/katana/util/PlatformUtils;->sPlatformEclairOrLaterDetected:Z
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static fixContacts(Landroid/content/Context;)V
.registers 2
invoke-static {}, Lcom/facebook/katana/util/PlatformUtils;->isEclairOrLater()Z
move-result v0
if-eqz v0, :cond_f
invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->platformStorageSupported(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_f
invoke-static {p0}, Lcom/facebook/katana/platform/PlatformStorage;->fixContactsHelper(Landroid/content/Context;)V
:cond_f
return-void
.end method
.method public static declared-synchronized isEclairOrLater()Z
.registers 7
const-class v5, Lcom/facebook/katana/util/PlatformUtils;
monitor-enter v5
:try_start_3
sget-boolean v6, Lcom/facebook/katana/util/PlatformUtils;->sPlatformEclairOrLaterDetected:Z
if-eqz v6, :cond_b
sget-boolean v6, Lcom/facebook/katana/util/PlatformUtils;->sPlatformEclairOrLater:Z
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_42
:goto_9
monitor-exit v5
return v6
:cond_b
const/4 v6, 0x0
:try_start_c
sput-boolean v6, Lcom/facebook/katana/util/PlatformUtils;->sPlatformEclairOrLater:Z
const-class v0, Landroid/os/Build$VERSION;
:try_start_10
:try_end_10
.catchall {:try_start_c .. :try_end_10} :catchall_42
const-string v6, "CODENAME"
invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v2
const/4 v6, 0x0
invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v6, "Eclair"
invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_2e
const/4 v6, 0x1
sput-boolean v6, Lcom/facebook/katana/util/PlatformUtils;->sPlatformEclairOrLater:Z
:cond_28
:goto_28
:try_end_28
.catchall {:try_start_10 .. :try_end_28} :catchall_42
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_28} :catch_40
const/4 v6, 0x1
:try_start_29
sput-boolean v6, Lcom/facebook/katana/util/PlatformUtils;->sPlatformEclairOrLaterDetected:Z
sget-boolean v6, Lcom/facebook/katana/util/PlatformUtils;->sPlatformEclairOrLater:Z
:try_end_2d
.catchall {:try_start_29 .. :try_end_2d} :catchall_42
goto :goto_9
:try_start_2e
:cond_2e
const-string v6, "SDK_INT"
invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v4
const/4 v6, 0x0
invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
move-result v3
const/4 v6, 0x5
if-lt v3, v6, :cond_28
const/4 v6, 0x1
sput-boolean v6, Lcom/facebook/katana/util/PlatformUtils;->sPlatformEclairOrLater:Z
:try_end_3f
.catchall {:try_start_2e .. :try_end_3f} :catchall_42
.catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3f} :catch_40
goto :goto_28
:catch_40
move-exception v6
goto :goto_28
:catchall_42
move-exception v6
monitor-exit v5
throw v6
.end method
.method public static declared-synchronized platformStorageSupported(Landroid/content/Context;)Z
.registers 3
const-class v0, Lcom/facebook/katana/util/PlatformUtils;
monitor-enter v0
:try_start_3
sget-boolean v1, Lcom/facebook/katana/util/PlatformUtils;->sStorageSupportedDetected:Z
if-eqz v1, :cond_b
sget-boolean v1, Lcom/facebook/katana/util/PlatformUtils;->sStorageSupported:Z
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_20
:goto_9
monitor-exit v0
return v1
:cond_b
const/4 v1, 0x0
:try_start_c
sput-boolean v1, Lcom/facebook/katana/util/PlatformUtils;->sStorageSupported:Z
:try_start_e
:try_end_e
.catchall {:try_start_c .. :try_end_e} :catchall_20
invoke-static {}, Lcom/facebook/katana/util/PlatformUtils;->isEclairOrLater()Z
move-result v1
if-eqz v1, :cond_1a
invoke-static {p0}, Lcom/facebook/katana/platform/PlatformStorage;->checkUnrestrictedPackages(Landroid/content/Context;)Z
move-result v1
sput-boolean v1, Lcom/facebook/katana/util/PlatformUtils;->sStorageSupported:Z
:try_end_1a
.catchall {:try_start_e .. :try_end_1a} :catchall_20
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_23
:goto_1a
:cond_1a
const/4 v1, 0x1
:try_start_1b
sput-boolean v1, Lcom/facebook/katana/util/PlatformUtils;->sStorageSupportedDetected:Z
sget-boolean v1, Lcom/facebook/katana/util/PlatformUtils;->sStorageSupported:Z
:try_end_1f
.catchall {:try_start_1b .. :try_end_1f} :catchall_20
goto :goto_9
:catchall_20
move-exception v1
monitor-exit v0
throw v1
:catch_23
move-exception v1
goto :goto_1a
.end method