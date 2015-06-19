.class public final Landroid/support/v4/app/bx;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# static fields
.field private static final a:I

.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/Object;

.field private static h:Landroid/support/v4/app/cf;

.field private static final i:Landroid/support/v4/app/bz;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/bx;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/support/v4/app/bx;->d:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/bx;->g:Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2b

    new-instance v0, Landroid/support/v4/app/cc;

    invoke-direct {v0}, Landroid/support/v4/app/cc;-><init>()V

    sput-object v0, Landroid/support/v4/app/bx;->i:Landroid/support/v4/app/bz;

    :goto_22
    sget-object v0, Landroid/support/v4/app/bx;->i:Landroid/support/v4/app/bz;

    invoke-interface {v0}, Landroid/support/v4/app/bz;->a()I

    move-result v0

    sput v0, Landroid/support/v4/app/bx;->a:I

    return-void

    :cond_2b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_38

    new-instance v0, Landroid/support/v4/app/cb;

    invoke-direct {v0}, Landroid/support/v4/app/cb;-><init>()V

    sput-object v0, Landroid/support/v4/app/bx;->i:Landroid/support/v4/app/bz;

    goto :goto_22

    :cond_38
    new-instance v0, Landroid/support/v4/app/ca;

    invoke-direct {v0}, Landroid/support/v4/app/ca;-><init>()V

    sput-object v0, Landroid/support/v4/app/bx;->i:Landroid/support/v4/app/bz;

    goto :goto_22
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/bx;->e:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v4/app/bx;->e:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroid/support/v4/app/bx;->f:Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic a()I
    .registers 1

    sget v0, Landroid/support/v4/app/bx;->a:I

    return v0
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v4/app/bx;
    .registers 2

    new-instance v0, Landroid/support/v4/app/bx;

    invoke-direct {v0, p0}, Landroid/support/v4/app/bx;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Landroid/support/v4/app/ch;)V
    .registers 5

    sget-object v1, Landroid/support/v4/app/bx;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/support/v4/app/bx;->h:Landroid/support/v4/app/cf;

    if-nez v0, :cond_14

    new-instance v0, Landroid/support/v4/app/cf;

    iget-object v2, p0, Landroid/support/v4/app/bx;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v4/app/cf;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/support/v4/app/bx;->h:Landroid/support/v4/app/cf;

    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    sget-object v0, Landroid/support/v4/app/bx;->h:Landroid/support/v4/app/cf;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/cf;->a(Landroid/support/v4/app/ch;)V

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/app/Notification;)Z
    .registers 3

    invoke-static {p0}, Landroid/support/v4/app/av;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, "android.support.useSideChannel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static b(Landroid/content/Context;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    sget-object v0, Landroid/support/v4/app/bx;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    array-length v4, v2

    const/4 v0, 0x0

    :goto_22
    if-ge v0, v4, :cond_36

    aget-object v5, v2, v0

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_33

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_36
    sget-object v2, Landroid/support/v4/app/bx;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_39
    sput-object v3, Landroid/support/v4/app/bx;->d:Ljava/util/Set;

    sput-object v1, Landroid/support/v4/app/bx;->c:Ljava/lang/String;

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_41

    :cond_3e
    sget-object v0, Landroid/support/v4/app/bx;->d:Ljava/util/Set;

    return-object v0

    :catchall_41
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final a(ILandroid/app/Notification;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 5

    sget-object v0, Landroid/support/v4/app/bx;->i:Landroid/support/v4/app/bz;

    iget-object v1, p0, Landroid/support/v4/app/bx;->f:Landroid/app/NotificationManager;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/app/bz;->a(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    new-instance v0, Landroid/support/v4/app/by;

    iget-object v1, p0, Landroid/support/v4/app/bx;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Landroid/support/v4/app/by;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/bx;->a(Landroid/support/v4/app/ch;)V

    return-void
.end method

.method public final a(Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 6

    invoke-static {p3}, Landroid/support/v4/app/bx;->a(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Landroid/support/v4/app/cd;

    iget-object v1, p0, Landroid/support/v4/app/bx;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1, p3}, Landroid/support/v4/app/cd;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/bx;->a(Landroid/support/v4/app/ch;)V

    :goto_14
    return-void

    :cond_15
    sget-object v0, Landroid/support/v4/app/bx;->i:Landroid/support/v4/app/bz;

    iget-object v1, p0, Landroid/support/v4/app/bx;->f:Landroid/app/NotificationManager;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/v4/app/bz;->a(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_14
.end method
