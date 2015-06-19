.class public Lcom/glympse/android/hal/Reflection$_Attendees;
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

.field private static dj:Ljava/lang/reflect/Method;

.field private static dk:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_Attendees;->cR:Z

    sput-object v1, Lcom/glympse/android/hal/Reflection$_Attendees;->cS:Ljava/lang/Class;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_Attendees;->dj:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_Attendees;->dk:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/ContentResolver;)V
    .registers 6

    const/4 v1, 0x1

    sget-boolean v0, Lcom/glympse/android/hal/Reflection$_Attendees;->cR:Z

    if-nez v0, :cond_56

    sput-boolean v1, Lcom/glympse/android/hal/Reflection$_Attendees;->cR:Z

    :try_start_7
    const-string v0, "android.provider.CalendarContract$Attendees"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_Attendees;->cS:Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_f} :catch_5b

    :goto_f
    sget-object v0, Lcom/glympse/android/hal/Reflection$_Attendees;->cS:Ljava/lang/Class;

    if-eqz v0, :cond_40

    :try_start_13
    sget-object v0, Lcom/glympse/android/hal/Reflection$_Attendees;->cS:Ljava/lang/Class;

    const-string v1, "query"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ContentResolver;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_Attendees;->dj:Ljava/lang/reflect/Method;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_2f} :catch_59

    :goto_2f
    :try_start_2f
    sget-object v0, Lcom/glympse/android/hal/Reflection$_Attendees;->cS:Ljava/lang/Class;

    const-string v1, "CONTENT_URI"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sput-object v0, Lcom/glympse/android/hal/Reflection$_Attendees;->dk:Landroid/net/Uri;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_40} :catch_57

    :cond_40
    :goto_40
    sget-object v0, Lcom/glympse/android/hal/Reflection$_Attendees;->dk:Landroid/net/Uri;

    if-nez v0, :cond_56

    invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_CalendarContract;->CONTENT_URI(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_CalendarContract;->CONTENT_URI(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "attendees"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_Attendees;->dk:Landroid/net/Uri;

    :cond_56
    return-void

    :catch_57
    move-exception v0

    goto :goto_40

    :catch_59
    move-exception v0

    goto :goto_2f

    :catch_5b
    move-exception v0

    goto :goto_f
.end method

.method public static query(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_Attendees;->a(Landroid/content/ContentResolver;)V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_Attendees;->dj:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_27

    :try_start_9
    sget-object v0, Lcom/glympse/android/hal/Reflection$_Attendees;->dj:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_22} :catch_23

    :goto_22
    return-object v0

    :catch_23
    move-exception v0

    invoke-static {v0, v6}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_27
    sget-object v1, Lcom/glympse/android/hal/Reflection$_Attendees;->dk:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "event_id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_22
.end method
