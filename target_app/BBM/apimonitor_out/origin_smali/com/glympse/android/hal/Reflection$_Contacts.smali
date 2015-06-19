.class public Lcom/glympse/android/hal/Reflection$_Contacts;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static cR:Z

.field private static dk:Landroid/net/Uri;

.field private static dp:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static dq:Ljava/lang/reflect/Method;

.field private static dr:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/glympse/android/hal/Reflection$_Contacts;->cR:Z

    sput-object v1, Lcom/glympse/android/hal/Reflection$_Contacts;->dp:Ljava/lang/Class;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_Contacts;->dk:Landroid/net/Uri;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_Contacts;->dq:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/glympse/android/hal/Reflection$_Contacts;->dr:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CONTENT_URI()Landroid/net/Uri;
    .registers 1

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_Contacts;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_Contacts;->dk:Landroid/net/Uri;

    return-object v0
.end method

.method private static Load()V
    .registers 5

    const/4 v1, 0x1

    sget-boolean v0, Lcom/glympse/android/hal/Reflection$_Contacts;->cR:Z

    if-nez v0, :cond_5b

    sput-boolean v1, Lcom/glympse/android/hal/Reflection$_Contacts;->cR:Z

    :try_start_7
    const-string v0, "android.provider.ContactsContract$Contacts"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_Contacts;->dp:Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_f} :catch_62

    :goto_f
    sget-object v0, Lcom/glympse/android/hal/Reflection$_Contacts;->dp:Ljava/lang/Class;

    if-eqz v0, :cond_5b

    :try_start_13
    sget-object v0, Lcom/glympse/android/hal/Reflection$_Contacts;->dp:Ljava/lang/Class;

    const-string v1, "CONTENT_URI"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sput-object v0, Lcom/glympse/android/hal/Reflection$_Contacts;->dk:Landroid/net/Uri;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_24} :catch_60

    :goto_24
    :try_start_24
    sget-object v0, Lcom/glympse/android/hal/Reflection$_Contacts;->dp:Ljava/lang/Class;

    const-string v1, "openContactPhotoInputStream"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ContentResolver;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/net/Uri;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_Contacts;->dr:Ljava/lang/reflect/Method;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_40} :catch_5e

    :goto_40
    sget-object v0, Lcom/glympse/android/hal/Reflection$_Contacts;->dr:Ljava/lang/reflect/Method;

    if-nez v0, :cond_5b

    :try_start_44
    sget-object v0, Lcom/glympse/android/hal/Reflection$_Contacts;->dp:Ljava/lang/Class;

    const-string v1, "openContactPhotoInputStream"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ContentResolver;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/net/Uri;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/Reflection$_Contacts;->dq:Ljava/lang/reflect/Method;
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_5b} :catch_5c

    :cond_5b
    :goto_5b
    return-void

    :catch_5c
    move-exception v0

    goto :goto_5b

    :catch_5e
    move-exception v0

    goto :goto_40

    :catch_60
    move-exception v0

    goto :goto_24

    :catch_62
    move-exception v0

    goto :goto_f
.end method

.method public static openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;
    .registers 10

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/glympse/android/hal/Reflection$_Contacts;->Load()V

    sget-object v0, Lcom/glympse/android/hal/Reflection$_Contacts;->dr:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_27

    :try_start_9
    sget-object v0, Lcom/glympse/android/hal/Reflection$_Contacts;->dr:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_22} :catch_23

    :goto_22
    return-object v0

    :catch_23
    move-exception v0

    invoke-static {v0, v6}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_27
    sget-object v0, Lcom/glympse/android/hal/Reflection$_Contacts;->dq:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_42

    :try_start_2b
    sget-object v0, Lcom/glympse/android/hal/Reflection$_Contacts;->dq:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_3d} :catch_3e

    goto :goto_22

    :catch_3e
    move-exception v0

    invoke-static {v0, v6}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_42
    move-object v0, v1

    goto :goto_22
.end method
