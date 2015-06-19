.class public final Lcom/crashlytics/android/internal/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/concurrent/locks/ReentrantLock;

.field private final d:Z

.field private final e:Z

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[^\\p{Alnum}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/internal/ao;->a:Ljava/util/regex/Pattern;

    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/internal/ao;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/internal/ao;->c:Ljava/util/concurrent/locks/ReentrantLock;

    if-nez p1, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appContext must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iput-object p1, p0, Lcom/crashlytics/android/internal/ao;->f:Landroid/content/Context;

    const-string v0, "com.crashlytics.CollectDeviceIdentifiers"

    invoke-static {p1, v0, v4}, Lcom/crashlytics/android/internal/ab;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/crashlytics/android/internal/ao;->d:Z

    iget-boolean v0, p0, Lcom/crashlytics/android/internal/ao;->d:Z

    if-nez v0, :cond_43

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v1, "Crashlytics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Device ID collection disabled for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    const-string v0, "com.crashlytics.CollectUserIdentifiers"

    invoke-static {p1, v0, v4}, Lcom/crashlytics/android/internal/ab;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/crashlytics/android/internal/ao;->e:Z

    iget-boolean v0, p0, Lcom/crashlytics/android/internal/ao;->e:Z

    if-nez v0, :cond_6f

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v1, "Crashlytics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "User information collection disabled for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/internal/ao;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    const-string v0, "crashlytics.installation.id"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/internal/ao;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "crashlytics.installation.id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_2d

    :cond_27
    iget-object v1, p0, Lcom/crashlytics/android/internal/ao;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_2d
    move-exception v0

    iget-object v1, p0, Lcom/crashlytics/android/internal/ao;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static a(Ljava/util/Map;Lcom/crashlytics/android/internal/ap;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/crashlytics/android/internal/ap;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/crashlytics/android/internal/ap;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_5

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/internal/ao;->f:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lcom/crashlytics/android/internal/ao;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/crashlytics/android/internal/ao;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/crashlytics/android/internal/ao;->d:Z

    if-eqz v0, :cond_2f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_2f

    :try_start_b
    const-class v0, Landroid/os/Build;

    const-string v2, "SERIAL"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/internal/ao;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_1f

    move-result-object v0

    :goto_1e
    return-object v0

    :catch_1f
    move-exception v0

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v2

    const-string v3, "Crashlytics"

    const-string v4, "Could not retrieve android.os.Build.SERIAL value"

    invoke-interface {v2, v3, v4, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    move-object v0, v1

    goto :goto_1e
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/crashlytics/android/internal/ao;->e:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/crashlytics/android/internal/ab;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "crashlytics.installation.id"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-direct {p0, v1}, Lcom/crashlytics/android/internal/ao;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v4}, Lcom/crashlytics/android/internal/ao;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v4}, Lcom/crashlytics/android/internal/ao;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v4}, Lcom/crashlytics/android/internal/ao;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v4}, Lcom/crashlytics/android/internal/ao;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    iget-boolean v1, p0, Lcom/crashlytics/android/internal/ao;->d:Z

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/crashlytics/android/internal/ao;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/crashlytics/android/internal/ab;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "crashlytics.installation.id"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    invoke-direct {p0, v1}, Lcom/crashlytics/android/internal/ao;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    :cond_1d
    return-object v0
.end method

.method public final f()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/crashlytics/android/internal/ap;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/crashlytics/android/internal/ap;->c:Lcom/crashlytics/android/internal/ap;

    invoke-virtual {p0}, Lcom/crashlytics/android/internal/ao;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/crashlytics/android/internal/ao;->a(Ljava/util/Map;Lcom/crashlytics/android/internal/ap;Ljava/lang/String;)V

    sget-object v3, Lcom/crashlytics/android/internal/ap;->d:Lcom/crashlytics/android/internal/ap;

    iget-boolean v0, p0, Lcom/crashlytics/android/internal/ao;->d:Z

    if-eqz v0, :cond_76

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/crashlytics/android/internal/ao;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/crashlytics/android/internal/ao;->f:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/internal/ao;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_31
    invoke-static {v2, v3, v0}, Lcom/crashlytics/android/internal/ao;->a(Ljava/util/Map;Lcom/crashlytics/android/internal/ap;Ljava/lang/String;)V

    sget-object v0, Lcom/crashlytics/android/internal/ap;->e:Lcom/crashlytics/android/internal/ap;

    invoke-direct {p0}, Lcom/crashlytics/android/internal/ao;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/crashlytics/android/internal/ao;->a(Ljava/util/Map;Lcom/crashlytics/android/internal/ap;Ljava/lang/String;)V

    sget-object v3, Lcom/crashlytics/android/internal/ap;->a:Lcom/crashlytics/android/internal/ap;

    iget-boolean v0, p0, Lcom/crashlytics/android/internal/ao;->d:Z

    if-eqz v0, :cond_65

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-direct {p0, v0}, Lcom/crashlytics/android/internal/ao;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/crashlytics/android/internal/ao;->f:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/internal/ao;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_65
    invoke-static {v2, v3, v1}, Lcom/crashlytics/android/internal/ao;->a(Ljava/util/Map;Lcom/crashlytics/android/internal/ap;Ljava/lang/String;)V

    sget-object v0, Lcom/crashlytics/android/internal/ap;->b:Lcom/crashlytics/android/internal/ap;

    invoke-virtual {p0}, Lcom/crashlytics/android/internal/ao;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/crashlytics/android/internal/ao;->a(Ljava/util/Map;Lcom/crashlytics/android/internal/ap;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_76
    move-object v0, v1

    goto :goto_31
.end method

.method public final g()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/crashlytics/android/internal/ao;->d:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/crashlytics/android/internal/ao;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {v1}, Lcom/crashlytics/android/internal/ao;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1d
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 5

    iget-boolean v0, p0, Lcom/crashlytics/android/internal/ao;->d:Z

    if-eqz v0, :cond_19

    const-string v0, "android.permission.BLUETOOTH"

    invoke-direct {p0, v0}, Lcom/crashlytics/android/internal/ao;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :try_start_c
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/internal/ao;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_1b

    :cond_19
    :goto_19
    const/4 v0, 0x0

    return-object v0

    :catch_1b
    move-exception v0

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v2, "Crashlytics"

    const-string v3, "Utils#getBluetoothMacAddress failed, returning null. Requires prior call to BluetoothAdatpter.getDefaultAdapter() on thread that has called Looper.prepare()"

    invoke-interface {v1, v2, v3, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method
