.class public Lcom/facebook/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/lang/String; = null

.field public static final b:I = 0xface

.field public static final c:Ljava/lang/String; = "com.facebook.sdk.WebViewErrorCode"

.field public static final d:Ljava/lang/String; = "com.facebook.sdk.FailingUrl"

.field public static final e:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_SET"

.field public static final f:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_UNSET"

.field public static final g:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_OPENED"

.field public static final h:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

.field public static final i:Ljava/lang/String; = "com.facebook.sdk.ApplicationId"

.field private static final j:J = 0x1L

.field private static final k:Ljava/lang/Object; = null

.field private static l:Lcom/facebook/aw; = null

.field private static volatile m:Landroid/content/Context; = null

.field private static final n:I = 0x15180

.field private static final o:I = 0xe10

.field private static final p:Ljava/lang/String; = "com.facebook.sdk.Session.saveSessionKey"

.field private static final q:Ljava/lang/String; = "com.facebook.sdk.Session.authBundleKey"

.field private static final r:Ljava/lang/String; = "publish"

.field private static final s:Ljava/lang/String; = "manage"

.field private static final t:Ljava/util/Set;


# instance fields
.field private volatile A:Landroid/os/Bundle;

.field private final B:Ljava/util/List;

.field private C:Landroid/os/Handler;

.field private D:Lcom/facebook/az;

.field private final E:Ljava/lang/Object;

.field private F:Lcom/facebook/bv;

.field private volatile G:Lcom/facebook/bg;

.field private u:Ljava/lang/String;

.field private v:Lcom/facebook/bk;

.field private w:Lcom/facebook/a;

.field private x:Ljava/util/Date;

.field private y:Lcom/facebook/ax;

.field private z:Lcom/facebook/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/aw;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/aw;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/aw;->k:Ljava/lang/Object;

    new-instance v0, Lcom/facebook/aw$1;

    invoke-direct {v0}, Lcom/facebook/aw$1;-><init>()V

    sput-object v0, Lcom/facebook/aw;->t:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/facebook/aw;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/bv;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/bv;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/aw;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/bv;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/bv;Z)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/facebook/aw;->x:Ljava/util/Date;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/facebook/aw;->E:Ljava/lang/Object;

    if-eqz p1, :cond_1c

    if-nez p2, :cond_1c

    invoke-static {p1}, Lcom/facebook/b/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_1c
    const-string v1, "applicationId"

    invoke-static {p2, v1}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/facebook/aw;->b(Landroid/content/Context;)V

    if-nez p3, :cond_2d

    new-instance p3, Lcom/facebook/bn;

    sget-object v1, Lcom/facebook/aw;->m:Landroid/content/Context;

    invoke-direct {p3, v1}, Lcom/facebook/bn;-><init>(Landroid/content/Context;)V

    :cond_2d
    iput-object p2, p0, Lcom/facebook/aw;->u:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/aw;->F:Lcom/facebook/bv;

    sget-object v1, Lcom/facebook/bk;->a:Lcom/facebook/bk;

    iput-object v1, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    iput-object v0, p0, Lcom/facebook/aw;->y:Lcom/facebook/ax;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/aw;->B:Ljava/util/List;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/facebook/aw;->C:Landroid/os/Handler;

    if-eqz p4, :cond_4f

    invoke-virtual {p3}, Lcom/facebook/bv;->a()Landroid/os/Bundle;

    move-result-object v0

    :cond_4f
    invoke-static {v0}, Lcom/facebook/bv;->b(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_81

    const-string v1, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-static {v0, v1}, Lcom/facebook/bv;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    if-eqz v1, :cond_68

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_76

    :cond_68
    invoke-virtual {p3}, Lcom/facebook/bv;->b()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a;->a(Ljava/util/List;)Lcom/facebook/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    :goto_75
    return-void

    :cond_76
    invoke-static {v0}, Lcom/facebook/a;->a(Landroid/os/Bundle;)Lcom/facebook/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    sget-object v0, Lcom/facebook/bk;->b:Lcom/facebook/bk;

    iput-object v0, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    goto :goto_75

    :cond_81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a;->a(Ljava/util/List;)Lcom/facebook/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    goto :goto_75
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/bk;Lcom/facebook/a;Ljava/util/Date;ZLcom/facebook/ax;)V
    .registers 11

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/aw;->x:Ljava/util/Date;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/aw;->E:Ljava/lang/Object;

    iput-object p1, p0, Lcom/facebook/aw;->u:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    iput-object p3, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    iput-object p4, p0, Lcom/facebook/aw;->x:Ljava/util/Date;

    iput-object p6, p0, Lcom/facebook/aw;->y:Lcom/facebook/ax;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/aw;->C:Landroid/os/Handler;

    iput-object v3, p0, Lcom/facebook/aw;->G:Lcom/facebook/bg;

    iput-object v3, p0, Lcom/facebook/aw;->F:Lcom/facebook/bv;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/aw;->B:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/bk;Lcom/facebook/a;Ljava/util/Date;ZLcom/facebook/ax;Lcom/facebook/aw$1;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/facebook/aw;-><init>(Ljava/lang/String;Lcom/facebook/bk;Lcom/facebook/a;Ljava/util/Date;ZLcom/facebook/ax;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;ZLcom/facebook/bf;)Lcom/facebook/aw;
    .registers 4

    new-instance v0, Lcom/facebook/bc;

    invoke-direct {v0, p0}, Lcom/facebook/bc;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p2}, Lcom/facebook/bc;->b(Lcom/facebook/bf;)Lcom/facebook/bc;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/aw;->a(Landroid/content/Context;ZLcom/facebook/bc;)Lcom/facebook/aw;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/aw;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/aw;->a(Landroid/content/Context;ZLcom/facebook/bc;)Lcom/facebook/aw;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/app/Fragment;ZLcom/facebook/bf;)Lcom/facebook/aw;
    .registers 5

    new-instance v0, Lcom/facebook/bc;

    invoke-direct {v0, p1}, Lcom/facebook/bc;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, p3}, Lcom/facebook/bc;->b(Lcom/facebook/bf;)Lcom/facebook/bc;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/facebook/aw;->a(Landroid/content/Context;ZLcom/facebook/bc;)Lcom/facebook/aw;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/a;Lcom/facebook/bf;)Lcom/facebook/aw;
    .registers 6

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/aw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v2, v1}, Lcom/facebook/aw;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/bv;Z)V

    invoke-static {v0}, Lcom/facebook/aw;->a(Lcom/facebook/aw;)V

    invoke-virtual {v0, p1, p2}, Lcom/facebook/aw;->a(Lcom/facebook/a;Lcom/facebook/bf;)V

    return-object v0
.end method

.method public static final a(Landroid/content/Context;Lcom/facebook/bv;Lcom/facebook/bf;Landroid/os/Bundle;)Lcom/facebook/aw;
    .registers 8

    const/4 v1, 0x0

    if-nez p3, :cond_5

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_3a

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_12
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/aw;

    invoke-static {p0}, Lcom/facebook/aw;->b(Landroid/content/Context;)V

    if-eqz p1, :cond_3c

    iput-object p1, v0, Lcom/facebook/aw;->F:Lcom/facebook/bv;

    :goto_24
    if-eqz p2, :cond_29

    invoke-virtual {v0, p2}, Lcom/facebook/aw;->a(Lcom/facebook/bf;)V

    :cond_29
    const-string v2, "com.facebook.sdk.Session.authBundleKey"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/aw;->A:Landroid/os/Bundle;
    :try_end_31
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_31} :catch_32
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_31} :catch_44

    goto :goto_4

    :catch_32
    move-exception v0

    sget-object v2, Lcom/facebook/aw;->a:Ljava/lang/String;

    const-string v3, "Unable to restore session"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a
    :goto_3a
    move-object v0, v1

    goto :goto_4

    :cond_3c
    :try_start_3c
    new-instance v2, Lcom/facebook/bn;

    invoke-direct {v2, p0}, Lcom/facebook/bn;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/facebook/aw;->F:Lcom/facebook/bv;
    :try_end_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_43} :catch_32
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_43} :catch_44

    goto :goto_24

    :catch_44
    move-exception v0

    sget-object v2, Lcom/facebook/aw;->a:Ljava/lang/String;

    const-string v3, "Unable to restore session."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a
.end method

.method private static a(Landroid/content/Context;ZLcom/facebook/bc;)Lcom/facebook/aw;
    .registers 6

    new-instance v0, Lcom/facebook/ba;

    invoke-direct {v0, p0}, Lcom/facebook/ba;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/facebook/ba;->a()Lcom/facebook/aw;

    move-result-object v0

    sget-object v1, Lcom/facebook/bk;->b:Lcom/facebook/bk;

    invoke-virtual {v0}, Lcom/facebook/aw;->d()Lcom/facebook/bk;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/bk;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    if-eqz p1, :cond_1e

    :cond_17
    invoke-static {v0}, Lcom/facebook/aw;->a(Lcom/facebook/aw;)V

    invoke-virtual {v0, p2}, Lcom/facebook/aw;->a(Lcom/facebook/bc;)V

    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method static synthetic a(Lcom/facebook/aw;Lcom/facebook/az;)Lcom/facebook/az;
    .registers 2

    iput-object p1, p0, Lcom/facebook/aw;->D:Lcom/facebook/az;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/aw;Lcom/facebook/bg;)Lcom/facebook/bg;
    .registers 2

    iput-object p1, p0, Lcom/facebook/aw;->G:Lcom/facebook/bg;

    return-object p1
.end method

.method private a(ILcom/facebook/n;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1d

    iget-object v0, p2, Lcom/facebook/n;->a:Lcom/facebook/o;

    sget-object v2, Lcom/facebook/o;->a:Lcom/facebook/o;

    if-ne v0, v2, :cond_14

    iget-object v0, p2, Lcom/facebook/n;->b:Lcom/facebook/a;

    move-object v2, v0

    move-object v0, v1

    :goto_e
    iput-object v1, p0, Lcom/facebook/aw;->z:Lcom/facebook/d;

    invoke-virtual {p0, v2, v0}, Lcom/facebook/aw;->a(Lcom/facebook/a;Ljava/lang/Exception;)V

    return-void

    :cond_14
    new-instance v0, Lcom/facebook/r;

    iget-object v2, p2, Lcom/facebook/n;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/facebook/r;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_e

    :cond_1d
    if-nez p1, :cond_28

    new-instance v0, Lcom/facebook/v;

    iget-object v2, p2, Lcom/facebook/n;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/facebook/v;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_e

    :cond_28
    move-object v0, v1

    move-object v2, v1

    goto :goto_e
.end method

.method static synthetic a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/aw;->b(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final a(Lcom/facebook/aw;)V
    .registers 3

    sget-object v1, Lcom/facebook/aw;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/aw;->l:Lcom/facebook/aw;

    if-eq p0, v0, :cond_29

    sget-object v0, Lcom/facebook/aw;->l:Lcom/facebook/aw;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/facebook/aw;->i()V

    :cond_e
    sput-object p0, Lcom/facebook/aw;->l:Lcom/facebook/aw;

    if-eqz v0, :cond_17

    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-static {v0}, Lcom/facebook/aw;->b(Ljava/lang/String;)V

    :cond_17
    if-eqz p0, :cond_29

    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-static {v0}, Lcom/facebook/aw;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/aw;->b()Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    invoke-static {v0}, Lcom/facebook/aw;->b(Ljava/lang/String;)V

    :cond_29
    monitor-exit v1

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method static synthetic a(Lcom/facebook/aw;ILcom/facebook/n;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/aw;->a(ILcom/facebook/n;)V

    return-void
.end method

.method public static final a(Lcom/facebook/aw;Landroid/os/Bundle;)V
    .registers 5

    if-eqz p1, :cond_29

    if-eqz p0, :cond_29

    const-string v0, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_11
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_2a

    const-string v1, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "com.facebook.sdk.Session.authBundleKey"

    iget-object v1, p0, Lcom/facebook/aw;->A:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_29
    return-void

    :catch_2a
    move-exception v0

    new-instance v1, Lcom/facebook/t;

    const-string v2, "Unable to save session."

    invoke-direct {v1, v2, v0}, Lcom/facebook/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lcom/facebook/ax;Lcom/facebook/b/l;)V
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/facebook/ax;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/p;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_e
    sget-object v0, Lcom/facebook/b/l;->b:Lcom/facebook/b/l;

    invoke-virtual {v0, p2}, Lcom/facebook/b/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    new-instance v0, Lcom/facebook/t;

    const-string v1, "Cannot request publish or manage authorization with no permissions."

    invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    invoke-virtual {p1}, Lcom/facebook/ax;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/aw;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    sget-object v2, Lcom/facebook/b/l;->a:Lcom/facebook/b/l;

    invoke-virtual {v2, p2}, Lcom/facebook/b/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    new-instance v1, Lcom/facebook/t;

    const-string v2, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_50
    sget-object v2, Lcom/facebook/b/l;->b:Lcom/facebook/b/l;

    invoke-virtual {v2, p2}, Lcom/facebook/b/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    sget-object v2, Lcom/facebook/aw;->a:Ljava/lang/String;

    const-string v3, "Should not pass a read permission (%s) to a request for publish or manage authorization"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_68
    return-void
.end method

.method private a(Lcom/facebook/bb;Lcom/facebook/b/l;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/facebook/aw;->a(Lcom/facebook/ax;Lcom/facebook/b/l;)V

    invoke-direct {p0, p1}, Lcom/facebook/aw;->b(Lcom/facebook/ax;)V

    if-eqz p1, :cond_3c

    iget-object v1, p0, Lcom/facebook/aw;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/facebook/aw;->y:Lcom/facebook/ax;

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to request new permissions for a session that has a pending request."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    :try_start_1a
    sget-object v0, Lcom/facebook/aw$4;->a:[I

    iget-object v2, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    invoke-virtual {v2}, Lcom/facebook/bk;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_3e

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to request new permissions for a session that is not currently open."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2f
    iput-object p1, p0, Lcom/facebook/aw;->y:Lcom/facebook/ax;

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_17

    invoke-virtual {p0}, Lcom/facebook/aw;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/bb;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/facebook/aw;->a(Lcom/facebook/ax;)V

    :cond_3c
    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x4
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method

.method private a(Lcom/facebook/bc;Lcom/facebook/b/l;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lcom/facebook/aw;->a(Lcom/facebook/ax;Lcom/facebook/b/l;)V

    invoke-direct {p0, p1}, Lcom/facebook/aw;->b(Lcom/facebook/ax;)V

    iget-object v1, p0, Lcom/facebook/aw;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/facebook/aw;->y:Lcom/facebook/ax;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    iget-object v2, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Session: an attempt was made to open a session that has a pending request."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/aw;->a(Lcom/facebook/bk;Lcom/facebook/bk;Ljava/lang/Exception;)V

    monitor-exit v1

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget-object v2, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    sget-object v0, Lcom/facebook/aw$4;->a:[I

    iget-object v3, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    invoke-virtual {v3}, Lcom/facebook/bk;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_88

    :pswitch_2c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to open an already opened session."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_34

    throw v0

    :pswitch_37
    :try_start_37
    sget-object v0, Lcom/facebook/bk;->c:Lcom/facebook/bk;

    iput-object v0, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    if-nez p1, :cond_45

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "openRequest cannot be null when opening a new Session"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    iput-object p1, p0, Lcom/facebook/aw;->y:Lcom/facebook/ax;

    :goto_47
    if-eqz p1, :cond_50

    invoke-virtual {p1}, Lcom/facebook/bc;->b()Lcom/facebook/bf;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/aw;->a(Lcom/facebook/bf;)V

    :cond_50
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/facebook/aw;->a(Lcom/facebook/bk;Lcom/facebook/bk;Ljava/lang/Exception;)V

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_37 .. :try_end_55} :catchall_34

    sget-object v1, Lcom/facebook/bk;->c:Lcom/facebook/bk;

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0, p1}, Lcom/facebook/aw;->a(Lcom/facebook/ax;)V

    goto :goto_1c

    :pswitch_5d
    if-eqz p1, :cond_79

    :try_start_5f
    invoke-virtual {p1}, Lcom/facebook/bc;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/p;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_79

    invoke-virtual {p1}, Lcom/facebook/bc;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/aw;->h()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/facebook/b/p;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_79

    iput-object p1, p0, Lcom/facebook/aw;->y:Lcom/facebook/ax;

    :cond_79
    iget-object v0, p0, Lcom/facebook/aw;->y:Lcom/facebook/ax;

    if-nez v0, :cond_82

    sget-object v0, Lcom/facebook/bk;->d:Lcom/facebook/bk;

    iput-object v0, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    goto :goto_47

    :cond_82
    sget-object v0, Lcom/facebook/bk;->c:Lcom/facebook/bk;

    iput-object v0, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;
    :try_end_86
    .catchall {:try_start_5f .. :try_end_86} :catchall_34

    goto :goto_47

    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_37
        :pswitch_2c
        :pswitch_5d
    .end packed-switch
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Cannot readObject, serialization proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/content/Intent;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/facebook/aw;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method static a(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_1c

    const-string v0, "publish"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "manage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/facebook/aw;->t:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method static synthetic b(Lcom/facebook/aw;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/facebook/aw;->B:Ljava/util/List;

    return-object v0
.end method

.method static b(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_f

    sget-object v0, Lcom/facebook/aw;->m:Landroid/content/Context;

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_d

    move-object p0, v0

    :cond_d
    sput-object p0, Lcom/facebook/aw;->m:Landroid/content/Context;

    :cond_f
    return-void
.end method

.method private static b(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 3

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    return-void

    :cond_6
    invoke-static {}, Lcom/facebook/bm;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5
.end method

.method private b(Lcom/facebook/a;)V
    .registers 4

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/facebook/aw;->F:Lcom/facebook/bv;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/aw;->F:Lcom/facebook/bv;

    invoke-virtual {p1}, Lcom/facebook/a;->f()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/bv;->a(Landroid/os/Bundle;)V

    :cond_f
    return-void
.end method

.method private b(Lcom/facebook/a;Ljava/lang/Exception;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    if-eqz p1, :cond_16

    iput-object p1, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    invoke-direct {p0, p1}, Lcom/facebook/aw;->b(Lcom/facebook/a;)V

    sget-object v1, Lcom/facebook/bk;->d:Lcom/facebook/bk;

    iput-object v1, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    :cond_d
    :goto_d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/aw;->y:Lcom/facebook/ax;

    iget-object v1, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    invoke-virtual {p0, v0, v1, p2}, Lcom/facebook/aw;->a(Lcom/facebook/bk;Lcom/facebook/bk;Ljava/lang/Exception;)V

    return-void

    :cond_16
    if-eqz p2, :cond_d

    sget-object v1, Lcom/facebook/bk;->f:Lcom/facebook/bk;

    iput-object v1, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    goto :goto_d
.end method

.method private b(Lcom/facebook/ax;)V
    .registers 7

    if-eqz p1, :cond_3b

    invoke-static {p1}, Lcom/facebook/ax;->a(Lcom/facebook/ax;)Z

    move-result v0

    if-nez v0, :cond_3b

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/facebook/aw;->l()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/facebook/aw;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3b

    new-instance v0, Lcom/facebook/t;

    const-string v1, "Cannot use SessionLoginBehavior %s when %s is not declared as an activity in AndroidManifest.xml"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/facebook/ax;->c()Lcom/facebook/bj;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/facebook/LoginActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    return-void
.end method

.method static b(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/aw;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic c(Lcom/facebook/aw;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/facebook/aw;->C:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Lcom/facebook/a;Ljava/lang/Exception;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    if-eqz p1, :cond_d

    iput-object p1, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    invoke-direct {p0, p1}, Lcom/facebook/aw;->b(Lcom/facebook/a;)V

    sget-object v1, Lcom/facebook/bk;->e:Lcom/facebook/bk;

    iput-object v1, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/aw;->y:Lcom/facebook/ax;

    iget-object v1, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    invoke-virtual {p0, v0, v1, p2}, Lcom/facebook/aw;->a(Lcom/facebook/bk;Lcom/facebook/bk;Ljava/lang/Exception;)V

    return-void
.end method

.method private c(Lcom/facebook/ax;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/facebook/aw;->d(Lcom/facebook/ax;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/aw;->a(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_c

    :goto_b
    return v0

    :cond_c
    :try_start_c
    invoke-virtual {p1}, Lcom/facebook/ax;->g()Lcom/facebook/be;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ax;->d()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/facebook/be;->a(Landroid/content/Intent;I)V
    :try_end_17
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_17} :catch_19

    const/4 v0, 0x1

    goto :goto_b

    :catch_19
    move-exception v1

    goto :goto_b
.end method

.method private d(Lcom/facebook/ax;)Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/facebook/aw;->l()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/facebook/ax;->c()Lcom/facebook/bj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/bj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/facebook/ax;->j()Lcom/facebook/g;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/LoginActivity;->a(Lcom/facebook/g;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/aw;)Lcom/facebook/bg;
    .registers 2

    iget-object v0, p0, Lcom/facebook/aw;->G:Lcom/facebook/bg;

    return-object v0
.end method

.method private e(Lcom/facebook/ax;)Z
    .registers 4

    new-instance v0, Lcom/facebook/d;

    invoke-direct {v0}, Lcom/facebook/d;-><init>()V

    iput-object v0, p0, Lcom/facebook/aw;->z:Lcom/facebook/d;

    iget-object v0, p0, Lcom/facebook/aw;->z:Lcom/facebook/d;

    new-instance v1, Lcom/facebook/aw$2;

    invoke-direct {v1, p0}, Lcom/facebook/aw$2;-><init>(Lcom/facebook/aw;)V

    invoke-virtual {v0, v1}, Lcom/facebook/d;->a(Lcom/facebook/m;)V

    iget-object v0, p0, Lcom/facebook/aw;->z:Lcom/facebook/d;

    invoke-static {}, Lcom/facebook/aw;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/d;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/facebook/aw;->z:Lcom/facebook/d;

    invoke-virtual {p1}, Lcom/facebook/ax;->j()Lcom/facebook/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/d;->a(Lcom/facebook/g;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static final k()Lcom/facebook/aw;
    .registers 2

    sget-object v1, Lcom/facebook/aw;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/aw;->l:Lcom/facebook/aw;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method static l()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/facebook/aw;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/facebook/aw;->m:Landroid/content/Context;

    return-object v0
.end method

.method private s()Ljava/lang/Object;
    .registers 8

    new-instance v0, Lcom/facebook/bd;

    iget-object v1, p0, Lcom/facebook/aw;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    iget-object v3, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    iget-object v4, p0, Lcom/facebook/aw;->x:Ljava/util/Date;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/aw;->y:Lcom/facebook/ax;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/bd;-><init>(Ljava/lang/String;Lcom/facebook/bk;Lcom/facebook/a;Ljava/util/Date;ZLcom/facebook/ax;)V

    return-object v0
.end method

.method private t()V
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/facebook/aw;->D:Lcom/facebook/az;

    if-nez v1, :cond_19

    invoke-static {}, Lcom/facebook/bm;->d()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/facebook/aw;->u:Ljava/lang/String;

    if-eqz v1, :cond_19

    new-instance v0, Lcom/facebook/az;

    sget-object v2, Lcom/facebook/aw;->m:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/az;-><init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/aw;->D:Lcom/facebook/az;

    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_23

    if-eqz v0, :cond_22

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/az;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_22
    return-void

    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .registers 3

    iget-object v1, p0, Lcom/facebook/aw;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/facebook/aw;->A:Landroid/os/Bundle;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method a(Landroid/os/Bundle;)V
    .registers 6

    iget-object v1, p0, Lcom/facebook/aw;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    sget-object v2, Lcom/facebook/aw$4;->a:[I

    iget-object v3, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    invoke-virtual {v3}, Lcom/facebook/bk;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_54

    sget-object v0, Lcom/facebook/aw;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshToken ignored in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_2d
    return-void

    :pswitch_2e
    sget-object v2, Lcom/facebook/bk;->e:Lcom/facebook/bk;

    iput-object v2, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    iget-object v2, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/aw;->a(Lcom/facebook/bk;Lcom/facebook/bk;Ljava/lang/Exception;)V

    :pswitch_38
    iget-object v0, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    invoke-static {v0, p1}, Lcom/facebook/a;->a(Lcom/facebook/a;Landroid/os/Bundle;)Lcom/facebook/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    iget-object v0, p0, Lcom/facebook/aw;->F:Lcom/facebook/bv;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/facebook/aw;->F:Lcom/facebook/bv;

    iget-object v2, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    invoke-virtual {v2}, Lcom/facebook/a;->f()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/bv;->a(Landroid/os/Bundle;)V

    :cond_4f
    monitor-exit v1

    goto :goto_2d

    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v0

    :pswitch_data_54
    .packed-switch 0x4
        :pswitch_2e
        :pswitch_38
    .end packed-switch
.end method

.method a(Lcom/facebook/a;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    return-void
.end method

.method public final a(Lcom/facebook/a;Lcom/facebook/bf;)V
    .registers 7

    iget-object v1, p0, Lcom/facebook/aw;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/facebook/aw;->y:Lcom/facebook/ax;

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to open a session that has a pending request."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    sget-object v2, Lcom/facebook/bk;->a:Lcom/facebook/bk;

    if-eq v0, v2, :cond_26

    iget-object v0, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    sget-object v2, Lcom/facebook/bk;->b:Lcom/facebook/bk;

    if-eq v0, v2, :cond_26

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to open an already opened session."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    if-eqz p2, :cond_2b

    invoke-virtual {p0, p2}, Lcom/facebook/aw;->a(Lcom/facebook/bf;)V

    :cond_2b
    iput-object p1, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    iget-object v0, p0, Lcom/facebook/aw;->F:Lcom/facebook/bv;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/facebook/aw;->F:Lcom/facebook/bv;

    invoke-virtual {p1}, Lcom/facebook/a;->f()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/bv;->a(Landroid/os/Bundle;)V

    :cond_3a
    iget-object v0, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    sget-object v2, Lcom/facebook/bk;->d:Lcom/facebook/bk;

    iput-object v2, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    iget-object v2, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/aw;->a(Lcom/facebook/bk;Lcom/facebook/bk;Ljava/lang/Exception;)V

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_f

    invoke-direct {p0}, Lcom/facebook/aw;->t()V

    return-void
.end method

.method a(Lcom/facebook/a;Ljava/lang/Exception;)V
    .registers 6

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/facebook/a;->g()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p1, 0x0

    new-instance p2, Lcom/facebook/t;

    const-string v0, "Invalid access token."

    invoke-direct {p2, v0}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V

    :cond_10
    iget-object v1, p0, Lcom/facebook/aw;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_13
    sget-object v0, Lcom/facebook/aw$4;->a:[I

    iget-object v2, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    invoke-virtual {v2}, Lcom/facebook/bk;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_2e

    :goto_20
    :pswitch_20
    monitor-exit v1

    return-void

    :pswitch_22
    invoke-direct {p0, p1, p2}, Lcom/facebook/aw;->b(Lcom/facebook/a;Ljava/lang/Exception;)V

    goto :goto_20

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_26

    throw v0

    :pswitch_29
    :try_start_29
    invoke-direct {p0, p1, p2}, Lcom/facebook/aw;->c(Lcom/facebook/a;Ljava/lang/Exception;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_26

    goto :goto_20

    nop

    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_22
        :pswitch_20
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method a(Lcom/facebook/ax;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/aw;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ax;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/facebook/aw;->t()V

    invoke-direct {p0, p1}, Lcom/facebook/aw;->c(Lcom/facebook/ax;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p1}, Lcom/facebook/ax;->a(Lcom/facebook/ax;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0, p1}, Lcom/facebook/aw;->e(Lcom/facebook/ax;)Z

    move-result v0

    :cond_18
    if-nez v0, :cond_3d

    iget-object v1, p0, Lcom/facebook/aw;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1d
    iget-object v0, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    sget-object v2, Lcom/facebook/aw$4;->a:[I

    iget-object v3, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    invoke-virtual {v3}, Lcom/facebook/bk;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_44

    sget-object v2, Lcom/facebook/bk;->f:Lcom/facebook/bk;

    iput-object v2, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    iget-object v2, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    new-instance v3, Lcom/facebook/t;

    const-string v4, "Log in attempt failed."

    invoke-direct {v3, v4}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/aw;->a(Lcom/facebook/bk;Lcom/facebook/bk;Ljava/lang/Exception;)V

    monitor-exit v1

    :cond_3d
    :goto_3d
    return-void

    :pswitch_3e
    monitor-exit v1

    goto :goto_3d

    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_40

    throw v0

    nop

    :pswitch_data_44
    .packed-switch 0x6
        :pswitch_3e
        :pswitch_3e
    .end packed-switch
.end method

.method public final a(Lcom/facebook/bb;)V
    .registers 3

    sget-object v0, Lcom/facebook/b/l;->a:Lcom/facebook/b/l;

    invoke-direct {p0, p1, v0}, Lcom/facebook/aw;->a(Lcom/facebook/bb;Lcom/facebook/b/l;)V

    return-void
.end method

.method public final a(Lcom/facebook/bc;)V
    .registers 3

    sget-object v0, Lcom/facebook/b/l;->a:Lcom/facebook/b/l;

    invoke-direct {p0, p1, v0}, Lcom/facebook/aw;->a(Lcom/facebook/bc;Lcom/facebook/b/l;)V

    return-void
.end method

.method public final a(Lcom/facebook/bf;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/aw;->B:Ljava/util/List;

    monitor-enter v1

    if-eqz p1, :cond_12

    :try_start_5
    iget-object v0, p0, Lcom/facebook/aw;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/facebook/aw;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0
.end method

.method a(Lcom/facebook/bg;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/aw;->G:Lcom/facebook/bg;

    return-void
.end method

.method a(Lcom/facebook/bk;Lcom/facebook/bk;Ljava/lang/Exception;)V
    .registers 7

    if-ne p1, p2, :cond_5

    if-nez p3, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p2}, Lcom/facebook/bk;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a;->a(Ljava/util/List;)Lcom/facebook/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    :cond_15
    iget-object v1, p0, Lcom/facebook/aw;->B:Ljava/util/List;

    monitor-enter v1

    :try_start_18
    new-instance v0, Lcom/facebook/aw$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/aw$3;-><init>(Lcom/facebook/aw;Lcom/facebook/bk;Ljava/lang/Exception;)V

    iget-object v2, p0, Lcom/facebook/aw;->C:Landroid/os/Handler;

    invoke-static {v2, v0}, Lcom/facebook/aw;->b(Landroid/os/Handler;Ljava/lang/Runnable;)V

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_3d

    sget-object v0, Lcom/facebook/aw;->l:Lcom/facebook/aw;

    if-ne p0, v0, :cond_4

    invoke-virtual {p1}, Lcom/facebook/bk;->a()Z

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/bk;->a()Z

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p2}, Lcom/facebook/bk;->a()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    invoke-static {v0}, Lcom/facebook/aw;->b(Ljava/lang/String;)V

    goto :goto_4

    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0

    :cond_40
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

    invoke-static {v0}, Lcom/facebook/aw;->b(Ljava/lang/String;)V

    goto :goto_4
.end method

.method a(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/aw;->x:Ljava/util/Date;

    return-void
.end method

.method public final a(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "currentActivity"

    invoke-static {p1, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/facebook/aw;->b(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/facebook/aw;->E:Ljava/lang/Object;

    monitor-enter v3

    :try_start_d
    iget-object v0, p0, Lcom/facebook/aw;->y:Lcom/facebook/ax;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/facebook/aw;->y:Lcom/facebook/ax;

    invoke-virtual {v0}, Lcom/facebook/ax;->d()I

    move-result v0

    if-eq p2, v0, :cond_1c

    :cond_19
    const/4 v0, 0x0

    monitor-exit v3

    :goto_1b
    return v0

    :cond_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_2e

    if-eqz p4, :cond_42

    const-string v0, "com.facebook.LoginActivity:Result"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/n;

    if-eqz v0, :cond_31

    invoke-direct {p0, p3, v0}, Lcom/facebook/aw;->a(ILcom/facebook/n;)V

    move v0, v2

    goto :goto_1b

    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    iget-object v0, p0, Lcom/facebook/aw;->z:Lcom/facebook/d;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/facebook/aw;->z:Lcom/facebook/d;

    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/d;->a(IILandroid/content/Intent;)Z

    move v0, v2

    goto :goto_1b

    :cond_3c
    move-object v0, v1

    :goto_3d
    invoke-virtual {p0, v1, v0}, Lcom/facebook/aw;->a(Lcom/facebook/a;Ljava/lang/Exception;)V

    move v0, v2

    goto :goto_1b

    :cond_42
    if-nez p3, :cond_4c

    new-instance v0, Lcom/facebook/v;

    const-string v3, "User canceled operation."

    invoke-direct {v0, v3}, Lcom/facebook/v;-><init>(Ljava/lang/String;)V

    goto :goto_3d

    :cond_4c
    move-object v0, v1

    goto :goto_3d
.end method

.method public final b(Lcom/facebook/bb;)V
    .registers 3

    sget-object v0, Lcom/facebook/b/l;->b:Lcom/facebook/b/l;

    invoke-direct {p0, p1, v0}, Lcom/facebook/aw;->a(Lcom/facebook/bb;Lcom/facebook/b/l;)V

    return-void
.end method

.method public final b(Lcom/facebook/bc;)V
    .registers 3

    sget-object v0, Lcom/facebook/b/l;->b:Lcom/facebook/b/l;

    invoke-direct {p0, p1, v0}, Lcom/facebook/aw;->a(Lcom/facebook/bc;Lcom/facebook/b/l;)V

    return-void
.end method

.method public final b(Lcom/facebook/bf;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/aw;->B:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/facebook/aw;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final b()Z
    .registers 3

    iget-object v1, p0, Lcom/facebook/aw;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    invoke-virtual {v0}, Lcom/facebook/bk;->a()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public final c()Z
    .registers 3

    iget-object v1, p0, Lcom/facebook/aw;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    invoke-virtual {v0}, Lcom/facebook/bk;->b()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public final d()Lcom/facebook/bk;
    .registers 3

    iget-object v1, p0, Lcom/facebook/aw;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/aw;->u:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/facebook/aw;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/facebook/aw;

    iget-object v1, p1, Lcom/facebook/aw;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/aw;->u:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/aw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/facebook/aw;->A:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/facebook/aw;->A:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/facebook/aw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    iget-object v2, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    invoke-static {v1, v2}, Lcom/facebook/aw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/facebook/aw;->g()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/aw;->g()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/aw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final f()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/facebook/aw;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_8
    monitor-exit v1

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    invoke-virtual {v0}, Lcom/facebook/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public final g()Ljava/util/Date;
    .registers 3

    iget-object v1, p0, Lcom/facebook/aw;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_8
    monitor-exit v1

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    invoke-virtual {v0}, Lcom/facebook/a;->b()Ljava/util/Date;

    move-result-object v0

    goto :goto_8

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public final h()Ljava/util/List;
    .registers 3

    iget-object v1, p0, Lcom/facebook/aw;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_8
    monitor-exit v1

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    invoke-virtual {v0}, Lcom/facebook/a;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_8

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .registers 6

    iget-object v1, p0, Lcom/facebook/aw;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    sget-object v2, Lcom/facebook/aw$4;->a:[I

    iget-object v3, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    invoke-virtual {v3}, Lcom/facebook/bk;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_34

    :goto_12
    monitor-exit v1

    return-void

    :pswitch_14
    sget-object v2, Lcom/facebook/bk;->f:Lcom/facebook/bk;

    iput-object v2, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    iget-object v2, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    new-instance v3, Lcom/facebook/t;

    const-string v4, "Log in attempt aborted."

    invoke-direct {v3, v4}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/aw;->a(Lcom/facebook/bk;Lcom/facebook/bk;Ljava/lang/Exception;)V

    goto :goto_12

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0

    :pswitch_28
    :try_start_28
    sget-object v2, Lcom/facebook/bk;->g:Lcom/facebook/bk;

    iput-object v2, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    iget-object v2, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/aw;->a(Lcom/facebook/bk;Lcom/facebook/bk;Ljava/lang/Exception;)V
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_25

    goto :goto_12

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method public final j()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/aw;->F:Lcom/facebook/bv;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/aw;->F:Lcom/facebook/bv;

    invoke-virtual {v0}, Lcom/facebook/bv;->b()V

    :cond_9
    sget-object v0, Lcom/facebook/aw;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/b/p;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/facebook/aw;->i()V

    return-void
.end method

.method m()V
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/aw;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/facebook/aw;->n()V

    :cond_9
    return-void
.end method

.method n()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/aw;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/facebook/aw;->G:Lcom/facebook/bg;

    if-nez v2, :cond_f

    new-instance v0, Lcom/facebook/bg;

    invoke-direct {v0, p0}, Lcom/facebook/bg;-><init>(Lcom/facebook/aw;)V

    iput-object v0, p0, Lcom/facebook/aw;->G:Lcom/facebook/bg;

    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_16

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/facebook/bg;->a()V

    :cond_15
    return-void

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method o()Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/aw;->G:Lcom/facebook/bg;

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    invoke-virtual {v2}, Lcom/facebook/bk;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    invoke-virtual {v2}, Lcom/facebook/a;->d()Lcom/facebook/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/c;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/aw;->x:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    invoke-virtual {v3}, Lcom/facebook/a;->e()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method p()Lcom/facebook/a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    return-object v0
.end method

.method q()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/facebook/aw;->x:Ljava/util/Date;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/aw;->v:Lcom/facebook/bk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    if-nez v0, :cond_42

    const-string v0, "null"

    :goto_23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/aw;->u:Ljava/lang/String;

    if-nez v0, :cond_45

    const-string v0, "null"

    :goto_33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_42
    iget-object v0, p0, Lcom/facebook/aw;->w:Lcom/facebook/a;

    goto :goto_23

    :cond_45
    iget-object v0, p0, Lcom/facebook/aw;->u:Ljava/lang/String;

    goto :goto_33
.end method
