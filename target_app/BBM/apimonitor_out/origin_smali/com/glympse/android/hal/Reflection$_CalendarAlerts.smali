.class public Lcom/glympse/android/hal/Reflection$_CalendarAlerts;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static cR:Z

.field private static cS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static dk:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_CalendarAlerts;->cR:Z

    sput-object v1, Lcom/glympse/android/hal/Reflection$_CalendarAlerts;->cS:Ljava/lang/Class;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_CalendarAlerts;->dk:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CONTENT_URI(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_CalendarAlerts;->a(Landroid/content/ContentResolver;)V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_CalendarAlerts;->dk:Landroid/net/Uri;

    return-object v0
.end method

.method private static a(Landroid/content/ContentResolver;)V
    .registers 3

    sget-boolean v0, Lcom/glympse/android/hal/Reflection$_CalendarAlerts;->cR:Z

    if-nez v0, :cond_24

    const/4 v0, 0x1

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_CalendarAlerts;->cR:Z

    :try_start_7
    const-string v0, "android.provider.CalendarContract$CalendarAlerts"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_CalendarAlerts;->cS:Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_f} :catch_3d

    :goto_f
    sget-object v0, Lcom/glympse/android/hal/Reflection$_CalendarAlerts;->cS:Ljava/lang/Class;

    if-eqz v0, :cond_24

    :try_start_13
    sget-object v0, Lcom/glympse/android/hal/Reflection$_CalendarAlerts;->cS:Ljava/lang/Class;

    const-string v1, "CONTENT_URI"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sput-object v0, Lcom/glympse/android/hal/Reflection$_CalendarAlerts;->dk:Landroid/net/Uri;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_24} :catch_3b

    :cond_24
    :goto_24
    sget-object v0, Lcom/glympse/android/hal/Reflection$_CalendarAlerts;->dk:Landroid/net/Uri;

    if-nez v0, :cond_3a

    invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_CalendarContract;->CONTENT_URI(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_CalendarContract;->CONTENT_URI(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "calendar_alerts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_CalendarAlerts;->dk:Landroid/net/Uri;

    :cond_3a
    return-void

    :catch_3b
    move-exception v0

    goto :goto_24

    :catch_3d
    move-exception v0

    goto :goto_f
.end method
