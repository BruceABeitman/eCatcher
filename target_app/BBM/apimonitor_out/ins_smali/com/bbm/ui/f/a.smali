.class public final Lcom/bbm/ui/f/a;
.super Ljava/lang/Object;
.source "BBMNotificationManager.java"
.field protected static final a:[J
.field protected final b:Landroid/content/BroadcastReceiver;
.field private final c:Landroid/content/Context;
.field private final d:Landroid/app/NotificationManager;
.field private final e:Ljava/util/List;
.field private f:Z
.field private g:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x6
new-array v0, v0, [J
fill-array-data v0, :array_a
sput-object v0, Lcom/bbm/ui/f/a;->a:[J
return-void
nop
:array_a
.array-data 0x8
0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/bbm/ui/f/a;->f:Z
iput-boolean v0, p0, Lcom/bbm/ui/f/a;->g:Z
new-instance v0, Lcom/bbm/ui/f/b;
invoke-direct {v0, p0}, Lcom/bbm/ui/f/b;-><init>(Lcom/bbm/ui/f/a;)V
iput-object v0, p0, Lcom/bbm/ui/f/a;->b:Landroid/content/BroadcastReceiver;
iput-object p1, p0, Lcom/bbm/ui/f/a;->c:Landroid/content/Context;
const-string v0, "notification"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/NotificationManager;
iput-object v0, p0, Lcom/bbm/ui/f/a;->d:Landroid/app/NotificationManager;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/f/a;->e:Ljava/util/List;
iget-object v0, p0, Lcom/bbm/ui/f/a;->b:Landroid/content/BroadcastReceiver;
new-instance v1, Landroid/content/IntentFilter;
const-string v2, "com.bbm.notification_deleted"
invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
return-void
.end method
.method public static a(Landroid/content/Context;Lcom/bbm/f/ag;)Landroid/app/Notification;
.registers 9
const v2, 0x7f02025c
const/high16 v6, 0x800
const/4 v5, 0x0
new-instance v1, Landroid/support/v4/app/ag;
invoke-direct {v1, p0}, Landroid/support/v4/app/ag;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(I)Landroid/support/v4/app/ag;
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, v1, Landroid/support/v4/app/ag;->g:Landroid/graphics/Bitmap;
const v0, 0x7f0e0105
invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
iput-object v0, v1, Landroid/support/v4/app/ag;->b:Ljava/lang/CharSequence;
const-string v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-nez v0, :cond_6c
const v0, 0x7f0e012d
invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
iput-object v0, v1, Landroid/support/v4/app/ag;->c:Ljava/lang/CharSequence;
:goto_38
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
new-instance v2, Landroid/content/Intent;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v3
const-class v4, Lcom/bbm/ui/activities/StartupActivity;
invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-static {v0, v5, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
iput-object v0, v1, Landroid/support/v4/app/ag;->d:Landroid/app/PendingIntent;
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
const-class v3, Lcom/bbm/ui/activities/MainActivity;
invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "showOngoingNotificationExplanation"
invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
invoke-static {v2, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
iput-object v0, v1, Landroid/support/v4/app/ag;->d:Landroid/app/PendingIntent;
invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()Landroid/app/Notification;
move-result-object v0
return-object v0
:cond_6c
iget-object v0, p1, Lcom/bbm/f/ag;->a:Lcom/bbm/f/ah;
sget-object v2, Lcom/bbm/f/ah;->b:Lcom/bbm/f/ah;
if-ne v0, v2, :cond_7c
const v0, 0x7f0e012e
invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
iput-object v0, v1, Landroid/support/v4/app/ag;->c:Ljava/lang/CharSequence;
goto :goto_38
:cond_7c
const v0, 0x7f0e04cc
invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
iput-object v0, v1, Landroid/support/v4/app/ag;->c:Ljava/lang/CharSequence;
goto :goto_38
.end method
.method static synthetic a(Lcom/bbm/ui/f/a;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/f/a;->e()V
return-void
.end method
.method private d()Landroid/support/v4/app/ag;
.registers 9
const/4 v7, 0x0
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/af;->c()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/af;->e()Z
move-result v1
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/af;->l()I
move-result v2
new-instance v3, Landroid/support/v4/app/ag;
iget-object v4, p0, Lcom/bbm/ui/f/a;->c:Landroid/content/Context;
invoke-direct {v3, v4}, Landroid/support/v4/app/ag;-><init>(Landroid/content/Context;)V
const/16 v4, 0x10
invoke-virtual {v3, v4}, Landroid/support/v4/app/ag;->c(I)V
iget-object v4, p0, Lcom/bbm/ui/f/a;->c:Landroid/content/Context;
new-instance v5, Landroid/content/Intent;
const-string v6, "com.bbm.notification_deleted"
invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-static {v4, v7, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v4
iget-object v5, v3, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;
iput-object v4, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;
const/4 v4, 0x2
iput v4, v3, Landroid/support/v4/app/ag;->j:I
iget-object v4, v3, Landroid/support/v4/app/ag;->r:Landroid/app/Notification;
iput v7, v4, Landroid/app/Notification;->defaults:I
invoke-virtual {v3, v0}, Landroid/support/v4/app/ag;->a(Landroid/net/Uri;)Landroid/support/v4/app/ag;
if-eqz v1, :cond_4b
sget-object v0, Lcom/bbm/ui/f/a;->a:[J
invoke-virtual {v3, v0}, Landroid/support/v4/app/ag;->a([J)Landroid/support/v4/app/ag;
:cond_4b
packed-switch v2, :pswitch_data_7c
:goto_4e
return-object v3
:pswitch_4f
const/4 v0, -0x1
invoke-virtual {v3, v0}, Landroid/support/v4/app/ag;->b(I)Landroid/support/v4/app/ag;
goto :goto_4e
:pswitch_54
const/16 v0, -0x100
invoke-virtual {v3, v0}, Landroid/support/v4/app/ag;->b(I)Landroid/support/v4/app/ag;
goto :goto_4e
:pswitch_5a
const v0, -0xff0100
invoke-virtual {v3, v0}, Landroid/support/v4/app/ag;->b(I)Landroid/support/v4/app/ag;
goto :goto_4e
:pswitch_61
const v0, -0xff0001
invoke-virtual {v3, v0}, Landroid/support/v4/app/ag;->b(I)Landroid/support/v4/app/ag;
goto :goto_4e
:pswitch_68
const v0, -0xffff01
invoke-virtual {v3, v0}, Landroid/support/v4/app/ag;->b(I)Landroid/support/v4/app/ag;
goto :goto_4e
:pswitch_6f
const v0, -0x7fff80
invoke-virtual {v3, v0}, Landroid/support/v4/app/ag;->b(I)Landroid/support/v4/app/ag;
goto :goto_4e
:pswitch_76
const/high16 v0, -0x1
invoke-virtual {v3, v0}, Landroid/support/v4/app/ag;->b(I)Landroid/support/v4/app/ag;
goto :goto_4e
:pswitch_data_7c
.packed-switch 0x0
:pswitch_76
:pswitch_4f
:pswitch_54
:pswitch_5a
:pswitch_61
:pswitch_68
:pswitch_6f
.end packed-switch
.end method
.method private e()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/f/a;->f:Z
iget-object v0, p0, Lcom/bbm/ui/f/a;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/f/c;
invoke-interface {v0}, Lcom/bbm/ui/f/c;->c()V
goto :goto_9
:cond_19
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/f/a;->f:Z
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/f/a;->c:Landroid/content/Context;
invoke-static {v0}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/n/b;->e()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/bbm/ui/f/a;->a(Z)V
return-void
.end method
.method public final a(Lcom/bbm/ui/f/c;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/f/a;->e:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/f/a;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/f/c;
invoke-interface {v0, p1}, Lcom/bbm/ui/f/c;->a(Ljava/lang/String;)V
goto :goto_6
:cond_16
return-void
.end method
.method public final a(Z)V
.registers 16
iget-boolean v0, p0, Lcom/bbm/ui/f/a;->f:Z
if-nez v0, :cond_8
iget-boolean v0, p0, Lcom/bbm/ui/f/a;->g:Z
if-eqz v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
new-instance v4, Ljava/util/TreeSet;
new-instance v0, Lcom/bbm/ui/f/d;
invoke-direct {v0, p0}, Lcom/bbm/ui/f/d;-><init>(Lcom/bbm/ui/f/a;)V
invoke-direct {v4, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V
iget-object v0, p0, Lcom/bbm/ui/f/a;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_19
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/f/c;
invoke-interface {v0}, Lcom/bbm/ui/f/c;->b()Ljava/util/Collection;
move-result-object v0
invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
goto :goto_19
:cond_2d
invoke-interface {v4}, Ljava/util/Set;->size()I
move-result v0
if-nez v0, :cond_3a
iget-object v0, p0, Lcom/bbm/ui/f/a;->d:Landroid/app/NotificationManager;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
goto :goto_8
:cond_3a
invoke-interface {v4}, Ljava/util/Set;->size()I
move-result v0
const/4 v1, 0x1
if-le v0, v1, :cond_14f
invoke-direct {p0}, Lcom/bbm/ui/f/a;->d()Landroid/support/v4/app/ag;
move-result-object v0
const v1, 0x7f02025d
invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(I)Landroid/support/v4/app/ag;
move-result-object v6
iget-object v0, p0, Lcom/bbm/ui/f/a;->c:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f02025d
invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, v6, Landroid/support/v4/app/ag;->g:Landroid/graphics/Bitmap;
iget-object v0, p0, Lcom/bbm/ui/f/a;->c:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0105
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, v6, Landroid/support/v4/app/ag;->b:Ljava/lang/CharSequence;
new-instance v7, Landroid/support/v4/app/ah;
invoke-direct {v7, v6}, Landroid/support/v4/app/ah;-><init>(Landroid/support/v4/app/ag;)V
const-string v3, ""
const/4 v2, 0x0
const-wide/16 v0, 0x0
invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v8
move v4, v2
move-wide v12, v0
move-wide v1, v12
:cond_7b
:goto_7b
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_10a
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/f/e;
instance-of v5, v0, Lcom/bbm/ui/f/w;
if-nez v5, :cond_1fe
invoke-interface {v0}, Lcom/bbm/ui/f/e;->g()Ljava/lang/Long;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
move-result-wide v9
cmp-long v5, v1, v9
if-gtz v5, :cond_7b
invoke-interface {v0}, Lcom/bbm/ui/f/e;->g()Ljava/lang/Long;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
move-result-wide v2
:goto_9f
iget-object v1, p0, Lcom/bbm/ui/f/a;->c:Landroid/content/Context;
const v5, 0x7f0e0545
invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-interface {v0}, Lcom/bbm/ui/f/e;->b_()Ljava/lang/String;
move-result-object v10
aput-object v10, v5, v9
const/4 v9, 0x1
invoke-interface {v0}, Lcom/bbm/ui/f/e;->d()Ljava/lang/String;
move-result-object v10
aput-object v10, v5, v9
invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
iget-object v1, p0, Lcom/bbm/ui/f/a;->c:Landroid/content/Context;
const v9, 0x7f0e06c4
invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v9, 0x2
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
invoke-interface {v0}, Lcom/bbm/ui/f/e;->b_()Ljava/lang/String;
move-result-object v11
aput-object v11, v9, v10
const/4 v10, 0x1
invoke-interface {v0}, Lcom/bbm/ui/f/e;->d()Ljava/lang/String;
move-result-object v11
aput-object v11, v9, v10
invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/bbm/util/dk;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v1
iget-object v9, v7, Landroid/support/v4/app/ah;->a:Ljava/util/ArrayList;
invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-interface {v0}, Lcom/bbm/ui/f/e;->i()Lcom/bbm/ui/f/f;
move-result-object v1
if-eqz v1, :cond_fd
invoke-interface {v0}, Lcom/bbm/ui/f/e;->i()Lcom/bbm/ui/f/f;
move-result-object v1
invoke-interface {v1}, Lcom/bbm/ui/f/f;->a()Z
move-result v1
if-eqz v1, :cond_108
sget-object v1, Lcom/bbm/ui/f/a;->a:[J
:goto_fa
invoke-virtual {v6, v1}, Landroid/support/v4/app/ag;->a([J)Landroid/support/v4/app/ag;
:cond_fd
invoke-interface {v0}, Lcom/bbm/ui/f/e;->j()I
move-result v0
or-int/2addr v0, v4
move v4, v0
move-wide v12, v2
move-wide v1, v12
move-object v3, v5
goto/16 :goto_7b
:cond_108
const/4 v1, 0x0
goto :goto_fa
:cond_10a
sparse-switch v4, :sswitch_data_202
iget-object v0, p0, Lcom/bbm/ui/f/a;->c:Landroid/content/Context;
const v1, 0x7f0a007b
invoke-static {v0, v1}, Lcom/bbm/ui/f/r;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;
move-result-object v0
:goto_116
iput-object v0, v6, Landroid/support/v4/app/ag;->d:Landroid/app/PendingIntent;
invoke-virtual {v6, v3}, Landroid/support/v4/app/ag;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ag;
if-eqz p1, :cond_125
const/4 v0, 0x0
invoke-virtual {v6, v0}, Landroid/support/v4/app/ag;->a([J)Landroid/support/v4/app/ag;
const/4 v0, 0x0
invoke-virtual {v6, v0}, Landroid/support/v4/app/ag;->a(Landroid/net/Uri;)Landroid/support/v4/app/ag;
:cond_125
iget-object v0, p0, Lcom/bbm/ui/f/a;->d:Landroid/app/NotificationManager;
const/4 v1, 0x2
invoke-virtual {v6}, Landroid/support/v4/app/ag;->a()Landroid/app/Notification;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
goto/16 :goto_8
:sswitch_131
iget-object v0, p0, Lcom/bbm/ui/f/a;->c:Landroid/content/Context;
const v1, 0x7f0a007f
invoke-static {v0, v1}, Lcom/bbm/ui/f/r;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;
move-result-object v0
goto :goto_116
:sswitch_13b
iget-object v0, p0, Lcom/bbm/ui/f/a;->c:Landroid/content/Context;
const v1, 0x7f0a007e
invoke-static {v0, v1}, Lcom/bbm/ui/f/r;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;
move-result-object v0
goto :goto_116
:sswitch_145
iget-object v0, p0, Lcom/bbm/ui/f/a;->c:Landroid/content/Context;
const v1, 0x7f0a007a
invoke-static {v0, v1}, Lcom/bbm/ui/f/r;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;
move-result-object v0
goto :goto_116
:cond_14f
invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_153
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/f/e;
iget-object v1, p0, Lcom/bbm/ui/f/a;->c:Landroid/content/Context;
const v2, 0x7f0e0545
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-interface {v0}, Lcom/bbm/ui/f/e;->b_()Ljava/lang/String;
move-result-object v5
aput-object v5, v2, v4
const/4 v4, 0x1
invoke-interface {v0}, Lcom/bbm/ui/f/e;->d()Ljava/lang/String;
move-result-object v5
aput-object v5, v2, v4
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-interface {v0}, Lcom/bbm/ui/f/e;->c_()Landroid/graphics/Bitmap;
move-result-object v2
invoke-direct {p0}, Lcom/bbm/ui/f/a;->d()Landroid/support/v4/app/ag;
move-result-object v5
invoke-interface {v0}, Lcom/bbm/ui/f/e;->f()I
move-result v1
const/4 v6, -0x1
if-ne v1, v6, :cond_1f0
const v1, 0x7f02025d
:goto_18f
invoke-virtual {v5, v1}, Landroid/support/v4/app/ag;->a(I)Landroid/support/v4/app/ag;
move-result-object v5
if-nez v2, :cond_1f5
iget-object v1, p0, Lcom/bbm/ui/f/a;->c:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f02025d
invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v1
:goto_1a2
iput-object v1, v5, Landroid/support/v4/app/ag;->g:Landroid/graphics/Bitmap;
invoke-interface {v0}, Lcom/bbm/ui/f/e;->b_()Ljava/lang/String;
move-result-object v1
iput-object v1, v5, Landroid/support/v4/app/ag;->b:Ljava/lang/CharSequence;
invoke-interface {v0}, Lcom/bbm/ui/f/e;->d()Ljava/lang/String;
move-result-object v1
iput-object v1, v5, Landroid/support/v4/app/ag;->c:Ljava/lang/CharSequence;
invoke-virtual {v5, v4}, Landroid/support/v4/app/ag;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ag;
move-result-object v2
invoke-interface {v0}, Lcom/bbm/ui/f/e;->h()Landroid/app/PendingIntent;
move-result-object v1
if-nez v1, :cond_1f7
iget-object v1, p0, Lcom/bbm/ui/f/a;->c:Landroid/content/Context;
const v4, 0x7f0a007b
invoke-static {v1, v4}, Lcom/bbm/ui/f/r;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;
move-result-object v1
:goto_1c3
iput-object v1, v2, Landroid/support/v4/app/ag;->d:Landroid/app/PendingIntent;
invoke-interface {v0}, Lcom/bbm/ui/f/e;->i()Lcom/bbm/ui/f/f;
move-result-object v1
if-eqz v1, :cond_1da
invoke-interface {v0}, Lcom/bbm/ui/f/e;->i()Lcom/bbm/ui/f/f;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/ui/f/f;->a()Z
move-result v0
if-eqz v0, :cond_1fc
sget-object v0, Lcom/bbm/ui/f/a;->a:[J
:goto_1d7
invoke-virtual {v2, v0}, Landroid/support/v4/app/ag;->a([J)Landroid/support/v4/app/ag;
:cond_1da
if-eqz p1, :cond_1e4
const/4 v0, 0x0
invoke-virtual {v2, v0}, Landroid/support/v4/app/ag;->a([J)Landroid/support/v4/app/ag;
const/4 v0, 0x0
invoke-virtual {v2, v0}, Landroid/support/v4/app/ag;->a(Landroid/net/Uri;)Landroid/support/v4/app/ag;
:cond_1e4
iget-object v0, p0, Lcom/bbm/ui/f/a;->d:Landroid/app/NotificationManager;
const/4 v1, 0x2
invoke-virtual {v2}, Landroid/support/v4/app/ag;->a()Landroid/app/Notification;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
goto/16 :goto_153
:cond_1f0
invoke-interface {v0}, Lcom/bbm/ui/f/e;->f()I
move-result v1
goto :goto_18f
:cond_1f5
move-object v1, v2
goto :goto_1a2
:cond_1f7
invoke-interface {v0}, Lcom/bbm/ui/f/e;->h()Landroid/app/PendingIntent;
move-result-object v1
goto :goto_1c3
:cond_1fc
const/4 v0, 0x0
goto :goto_1d7
:cond_1fe
move-wide v2, v1
goto/16 :goto_9f
nop
:sswitch_data_202
.sparse-switch
0x2 -> :sswitch_131
0x10 -> :sswitch_13b
0x20 -> :sswitch_145
.end sparse-switch
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/f/a;->d:Landroid/app/NotificationManager;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
invoke-direct {p0}, Lcom/bbm/ui/f/a;->e()V
return-void
.end method
.method public final c()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/f/a;->g:Z
iget-object v0, p0, Lcom/bbm/ui/f/a;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/f/c;
invoke-interface {v0}, Lcom/bbm/ui/f/c;->d()V
goto :goto_9
:cond_19
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/f/a;->g:Z
return-void
.end method