.class public final Lcom/bbm/meetings/a;
.super Ljava/lang/Object;
.source "MeetingUtil.java"
.method public static a(Landroid/content/Context;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
sget-object v2, Lcom/bbm/ae;->e:Ljava/lang/String;
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const-string v0, "Meetings application is not installed."
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
.registers 8
const/4 v5, 0x0
invoke-static {p0}, Lcom/bbm/meetings/a;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_51
new-instance v0, Lcom/bbm/meetings/MeetingUtil$1;
new-instance v1, Landroid/os/Handler;
invoke-direct {v1}, Landroid/os/Handler;-><init>()V
invoke-direct {v0, v1, p0, p1}, Lcom/bbm/meetings/MeetingUtil$1;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-virtual {v0, v1, v5}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V
invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V
sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/ResultReceiver;
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
:try_start_26
new-instance v1, Landroid/content/Intent;
invoke-direct {v1}, Landroid/content/Intent;-><init>()V
new-instance v2, Landroid/content/ComponentName;
const-string v3, "com.blackberry.bbm.meetings"
const-string v4, "com.blackberry.bbm.meetings.MeetingsService"
invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
const-string v2, "com.blackberry.bbm.meetings.extra.ResultReceiver"
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string v0, "com.blackberry.bbm.meetings.RequestPmiNumber"
invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:try_end_44
.catch Ljava/lang/Exception; {:try_start_26 .. :try_end_44} :catch_45
:goto_44
return-void
:catch_45
move-exception v0
const-string v1, "Unable to launch meetings service"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
aput-object v0, v2, v5
invoke-static {v1, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_44
:cond_51
invoke-static {p0}, Lcom/bbm/meetings/a;->a(Landroid/content/Context;)V
goto :goto_44
.end method
.method public static b(Landroid/content/Context;)Z
.registers 5
const/4 v0, 0x1
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
:try_start_5
const-string v2, "com.blackberry.bbm.meetings"
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:goto_b
:try_end_b
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_b} :catch_c
return v0
:catch_c
move-exception v0
const/4 v0, 0x0
goto :goto_b
.end method