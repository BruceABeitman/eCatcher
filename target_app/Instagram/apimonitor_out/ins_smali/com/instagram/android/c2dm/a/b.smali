.class public Lcom/instagram/android/c2dm/a/b;
.super Ljava/lang/Object;
.source "NewsTabNotificationDelegate.java"
.implements Lcom/instagram/common/q/i;
.field private static final a:Ljava/lang/Class;
.field private b:Landroid/content/Context;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/android/c2dm/a/b;
sput-object v0, Lcom/instagram/android/c2dm/a/b;->a:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/android/c2dm/a/b;->b:Landroid/content/Context;
return-void
.end method
.method private static a(Lcom/instagram/notifications/a/b;)Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/instagram/notifications/a/b;->l()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static b(Ljava/lang/String;)Lcom/instagram/notifications/a/b;
.registers 2
invoke-static {p0}, Lcom/instagram/notifications/a/b;->a(Ljava/lang/String;)Lcom/instagram/notifications/a/b;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/String;Ljava/util/List;)Landroid/app/Notification;
.registers 5
iget-object v0, p0, Lcom/instagram/android/c2dm/a/b;->b:Landroid/content/Context;
invoke-virtual {p0}, Lcom/instagram/android/c2dm/a/b;->a()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, p1, p2}, Lcom/instagram/android/c2dm/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/support/v4/app/ba;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/c2dm/a/b;->b:Landroid/content/Context;
invoke-static {v1, p2, v0}, Lcom/instagram/android/c2dm/a/c;->a(Landroid/content/Context;Ljava/util/List;Landroid/support/v4/app/ba;)Landroid/app/Notification;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/util/Map;Ljava/lang/String;)Landroid/app/Notification;
.registers 4
const/4 v0, 0x0
return-object v0
.end method
.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/instagram/android/c2dm/a/b;->b(Ljava/lang/String;)Lcom/instagram/notifications/a/b;
move-result-object v0
return-object v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
const-string v0, "newstab"
return-object v0
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
.registers 3
check-cast p1, Lcom/instagram/notifications/a/b;
invoke-static {p1}, Lcom/instagram/android/c2dm/a/b;->a(Lcom/instagram/notifications/a/b;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(I)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public final b()Landroid/content/SharedPreferences;
.registers 2
sget-object v0, Lcom/instagram/android/c2dm/a/b;->a:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v0
return-object v0
.end method