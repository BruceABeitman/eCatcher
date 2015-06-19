.class public final Lcom/instagram/android/c2dm/a/c;
.super Ljava/lang/Object;
.source "NotificationDelegateHelper.java"
.method public static a(Landroid/content/Context;Ljava/util/List;Landroid/support/v4/app/ba;)Landroid/app/Notification;
.registers 6
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/notifications/a/b;
const/4 v1, 0x0
invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->g()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_23
invoke-static {}, Lcom/instagram/common/e/b/h;->a()Lcom/instagram/common/e/b/h;
move-result-object v1
invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->g()Ljava/lang/String;
move-result-object v2
invoke-static {p0, v2}, Lcom/instagram/n/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/instagram/common/e/b/h;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v1
:cond_23
if-eqz v1, :cond_3b
new-instance v2, Landroid/support/v4/app/ay;
invoke-direct {v2, p2}, Landroid/support/v4/app/ay;-><init>(Landroid/support/v4/app/ba;)V
invoke-virtual {v2, v1}, Landroid/support/v4/app/ay;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ay;
move-result-object v1
invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/support/v4/app/ay;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ay;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/ay;->a()Landroid/app/Notification;
move-result-object v0
:goto_3a
return-object v0
:cond_3b
invoke-virtual {p2}, Landroid/support/v4/app/ba;->d()Landroid/app/Notification;
move-result-object v0
goto :goto_3a
.end method
.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
.registers 4
const v0, 0xfb16
const/high16 v1, 0x1000
invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
return-object v0
.end method
.method private static a(Landroid/content/Context;Lcom/instagram/notifications/a/b;Z)Landroid/app/PendingIntent;
.registers 7
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/instagram/android/activity/MainTabActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x400
invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "ig://"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/instagram/notifications/a/b;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v1
const-string v2, "notif_dummy"
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v3
invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
if-eqz p2, :cond_41
const-string v2, "has_comment"
sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
:cond_41
invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
const-string v1, "from_notification_id"
invoke-virtual {p1}, Lcom/instagram/notifications/a/b;->k()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const v1, 0xfb16
const/high16 v2, 0x800
invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/instagram/android/c2dm/ClearNotificationReceiver;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-static {p1}, Lcom/instagram/android/c2dm/b;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
return-object v0
.end method
.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
.registers 5
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/instagram/android/c2dm/ClearNotificationReceiver;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-static {p1, p2}, Lcom/instagram/android/c2dm/b;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
return-object v0
.end method
.method private static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x1050005
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F
move-result v0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x1050006
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F
move-result v1
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
int-to-float v2, v2
div-float/2addr v0, v2
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
int-to-float v2, v2
div-float/2addr v1, v2
invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F
move-result v0
const/high16 v1, 0x3f80
cmpl-float v1, v0, v1
if-ltz v1, :cond_2d
:goto_2c
return-object p1
:cond_2d
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v1
int-to-float v1, v1
mul-float/2addr v1, v0
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
int-to-float v2, v2
mul-float/2addr v0, v2
float-to-int v1, v1
float-to-int v0, v0
const/4 v2, 0x1
invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object p1
goto :goto_2c
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/support/v4/app/ba;
.registers 8
invoke-interface {p3}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/notifications/a/b;
invoke-static {p0, p1, p2}, Lcom/instagram/android/c2dm/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
invoke-static {p0, v1}, Lcom/instagram/android/c2dm/a/c;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
move-result-object v1
invoke-static {p3}, Lcom/instagram/android/c2dm/a/c;->a(Ljava/util/List;)Z
move-result v2
invoke-static {p0, v0, v2}, Lcom/instagram/android/c2dm/a/c;->a(Landroid/content/Context;Lcom/instagram/notifications/a/b;Z)Landroid/app/PendingIntent;
move-result-object v2
new-instance v3, Landroid/support/v4/app/ba;
invoke-direct {v3, p0}, Landroid/support/v4/app/ba;-><init>(Landroid/content/Context;)V
invoke-virtual {v3, v2}, Landroid/support/v4/app/ba;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ba;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/ba;->a()Landroid/support/v4/app/ba;
move-result-object v2
invoke-interface {p3}, Ljava/util/List;->size()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/support/v4/app/ba;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;
move-result-object v2
invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->c()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/support/v4/app/ba;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;
move-result-object v2
invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->d()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/support/v4/app/ba;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/support/v4/app/ba;->b(Landroid/app/PendingIntent;)Landroid/support/v4/app/ba;
move-result-object v1
invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/support/v4/app/ba;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;
move-result-object v1
sget v2, Lcom/facebook/au;->notification_icon:I
invoke-virtual {v1, v2}, Landroid/support/v4/app/ba;->a(I)Landroid/support/v4/app/ba;
move-result-object v2
const-string v1, "default"
invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->j()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_66
invoke-virtual {v2}, Landroid/support/v4/app/ba;->c()Landroid/support/v4/app/ba;
:cond_66
const/4 v1, 0x0
invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->h()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_89
invoke-static {}, Lcom/instagram/common/e/b/h;->a()Lcom/instagram/common/e/b/h;
move-result-object v1
invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->h()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/instagram/common/e/b/h;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
:goto_79
if-eqz v0, :cond_88
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0xb
if-lt v1, v3, :cond_85
invoke-static {p0, v0}, Lcom/instagram/android/c2dm/a/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v0
:cond_85
invoke-virtual {v2, v0}, Landroid/support/v4/app/ba;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ba;
:cond_88
return-object v2
:cond_89
move-object v0, v1
goto :goto_79
.end method
.method static a(Landroid/support/v4/app/bb;Ljava/util/List;)V
.registers 4
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_7
if-ltz v1, :cond_1a
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/notifications/a/b;
invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v4/app/bb;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_7
:cond_1a
return-void
.end method
.method private static a(Ljava/util/List;)Z
.registers 4
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/notifications/a/b;
sget-object v2, Lcom/instagram/notifications/a/a;->g:Ljava/lang/String;
invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method