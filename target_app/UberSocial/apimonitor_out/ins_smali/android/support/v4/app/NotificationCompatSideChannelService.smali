.class public abstract Landroid/support/v4/app/NotificationCompatSideChannelService;
.super Landroid/app/Service;
.source "SourceFile"
.field private static final BUILD_VERSION_CODE_KITKAT_WATCH:I = 0x14
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Service;-><init>()V
return-void
.end method
.method static synthetic access$100(Landroid/support/v4/app/NotificationCompatSideChannelService;ILjava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v4/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V
return-void
.end method
.method private checkPermission(ILjava/lang/String;)V
.registers 7
invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatSideChannelService;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
move-result-object v1
array-length v2, v1
const/4 v0, 0x0
:goto_a
if-ge v0, v2, :cond_18
aget-object v3, v1, v0
invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_15
return-void
:cond_15
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_18
new-instance v0, Ljava/lang/SecurityException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "NotificationSideChannelService: Uid "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is not authorized for package "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public abstract cancel(Ljava/lang/String;ILjava/lang/String;)V
.end method
.method public abstract cancelAll(Ljava/lang/String;)V
.end method
.method public abstract notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 5
const/4 v0, 0x0
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
const-string v2, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_13
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x14
if-lt v1, v2, :cond_14
:cond_13
:goto_13
return-object v0
:cond_14
new-instance v1, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;
invoke-direct {v1, p0, v0}, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;-><init>(Landroid/support/v4/app/NotificationCompatSideChannelService;Landroid/support/v4/app/NotificationCompatSideChannelService$1;)V
move-object v0, v1
goto :goto_13
.end method