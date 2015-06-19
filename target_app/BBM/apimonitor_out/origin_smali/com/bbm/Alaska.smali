.class public Lcom/bbm/Alaska;
.super Landroid/app/Application;
.source "Alaska.java"

# interfaces
.implements Lcom/bbm/s;


# static fields
.field public static a:Z

.field public static b:Lcom/bbm/setup/aa;

.field private static f:Lcom/bbm/f/c;

.field private static g:Lcom/bbm/f/c;

.field private static h:Lcom/bbm/f/c;

.field private static i:Lcom/bbm/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/e",
            "<",
            "Lcom/bbm/f/ae;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Lcom/bbm/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/e",
            "<",
            "Lcom/bbm/f/ag;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Lcom/bbm/d;

.field private static l:Lcom/bbm/d/a/i;

.field private static m:Lcom/bbm/af;

.field private static p:Lcom/bbm/Alaska;

.field private static q:Lcom/bbm/c/c;

.field private static r:Lcom/bbm/ui/f/a;

.field private static s:Lcom/bbm/iceberg/k;

.field private static t:Ljavax/net/ssl/TrustManagerFactory;


# instance fields
.field public c:Z

.field public final d:Lcom/bbm/t;

.field public e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bbm/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/bbm/i;

.field private o:Z

.field private u:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Lcom/bbm/f/af;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/lang/Thread;

.field private final w:Landroid/content/ServiceConnection;

.field private x:Lcom/d/a/b/f;

.field private y:Lcom/bbm/v;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bbm/Alaska;->a:Z

    new-instance v0, Lcom/bbm/f/c;

    invoke-direct {v0}, Lcom/bbm/f/c;-><init>()V

    sput-object v0, Lcom/bbm/Alaska;->f:Lcom/bbm/f/c;

    new-instance v0, Lcom/bbm/f/c;

    invoke-direct {v0}, Lcom/bbm/f/c;-><init>()V

    sput-object v0, Lcom/bbm/Alaska;->g:Lcom/bbm/f/c;

    new-instance v0, Lcom/bbm/f/c;

    invoke-direct {v0}, Lcom/bbm/f/c;-><init>()V

    sput-object v0, Lcom/bbm/Alaska;->h:Lcom/bbm/f/c;

    new-instance v0, Lcom/bbm/j/e;

    new-instance v1, Lcom/bbm/f/ae;

    invoke-direct {v1}, Lcom/bbm/f/ae;-><init>()V

    invoke-direct {v0, v1}, Lcom/bbm/j/e;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/bbm/Alaska;->i:Lcom/bbm/j/e;

    new-instance v0, Lcom/bbm/j/e;

    new-instance v1, Lcom/bbm/f/ag;

    invoke-direct {v1}, Lcom/bbm/f/ag;-><init>()V

    invoke-direct {v0, v1}, Lcom/bbm/j/e;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/bbm/Alaska;->j:Lcom/bbm/j/e;

    new-instance v0, Lcom/bbm/d/a/g;

    invoke-direct {v0}, Lcom/bbm/d/a/g;-><init>()V

    sput-object v0, Lcom/bbm/Alaska;->l:Lcom/bbm/d/a/i;

    const/4 v0, 0x0

    sput-object v0, Lcom/bbm/Alaska;->t:Ljavax/net/ssl/TrustManagerFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/Alaska;->c:Z

    new-instance v0, Lcom/bbm/a;

    invoke-direct {v0, p0}, Lcom/bbm/a;-><init>(Lcom/bbm/Alaska;)V

    iput-object v0, p0, Lcom/bbm/Alaska;->u:Lcom/bbm/j/a;

    new-instance v0, Lcom/bbm/b;

    invoke-direct {v0, p0}, Lcom/bbm/b;-><init>(Lcom/bbm/Alaska;)V

    iput-object v0, p0, Lcom/bbm/Alaska;->v:Ljava/lang/Thread;

    new-instance v0, Lcom/bbm/c;

    invoke-direct {v0, p0}, Lcom/bbm/c;-><init>(Lcom/bbm/Alaska;)V

    iput-object v0, p0, Lcom/bbm/Alaska;->w:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/bbm/t;

    const-string v1, "Opening conversation pane"

    invoke-direct {v0, v1}, Lcom/bbm/t;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/Alaska;->d:Lcom/bbm/t;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/Alaska;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static B()Ljavax/net/ssl/TrustManagerFactory;
    .registers 7

    const/4 v1, 0x0

    sget-object v0, Lcom/bbm/Alaska;->t:Ljavax/net/ssl/TrustManagerFactory;

    if-nez v0, :cond_5e

    :try_start_5
    sget-object v0, Lcom/bbm/Alaska;->p:Lcom/bbm/Alaska;

    invoke-virtual {v0}, Lcom/bbm/Alaska;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "certs/ca.pem"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v0, "BKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v0, 0x0

    move v2, v0

    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v3, "cert"

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    move v2, v3

    goto :goto_2c

    :cond_4e
    const-string v0, "X509"

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    sput-object v0, Lcom/bbm/Alaska;->t:Ljavax/net/ssl/TrustManagerFactory;

    invoke-virtual {v0, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_59} :catch_66

    if-eqz v1, :cond_5e

    :try_start_5b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_61

    :cond_5e
    :goto_5e
    sget-object v0, Lcom/bbm/Alaska;->t:Ljavax/net/ssl/TrustManagerFactory;

    return-object v0

    :catch_61
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_5e

    :catch_66
    move-exception v0

    :try_start_67
    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/bbm/Alaska;->t:Ljavax/net/ssl/TrustManagerFactory;
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_78

    if-eqz v1, :cond_5e

    :try_start_6f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_5e

    :catch_73
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_5e

    :catchall_78
    move-exception v0

    if-eqz v1, :cond_7e

    :try_start_7b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    :cond_7e
    :goto_7e
    throw v0

    :catch_7f
    move-exception v1

    invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_7e
.end method

.method static synthetic C()Lcom/bbm/f/c;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->f:Lcom/bbm/f/c;

    return-object v0
.end method

.method static synthetic D()Lcom/bbm/f/c;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->g:Lcom/bbm/f/c;

    return-object v0
.end method

.method static synthetic E()Lcom/bbm/f/c;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->h:Lcom/bbm/f/c;

    return-object v0
.end method

.method static synthetic F()Lcom/bbm/j/e;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->i:Lcom/bbm/j/e;

    return-object v0
.end method

.method static synthetic G()Lcom/bbm/j/e;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->j:Lcom/bbm/j/e;

    return-object v0
.end method

.method private static H()Lcom/bbm/iceberg/k;
    .registers 2

    sget-object v0, Lcom/bbm/Alaska;->s:Lcom/bbm/iceberg/k;

    if-nez v0, :cond_d

    new-instance v0, Lcom/bbm/iceberg/k;

    sget-object v1, Lcom/bbm/Alaska;->p:Lcom/bbm/Alaska;

    invoke-direct {v0, v1}, Lcom/bbm/iceberg/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bbm/Alaska;->s:Lcom/bbm/iceberg/k;

    :cond_d
    sget-object v0, Lcom/bbm/Alaska;->s:Lcom/bbm/iceberg/k;

    return-object v0
.end method

.method public static a()Lcom/bbm/f/a;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->g:Lcom/bbm/f/c;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/Alaska;)Lcom/bbm/i;
    .registers 2

    iget-object v0, p0, Lcom/bbm/Alaska;->n:Lcom/bbm/i;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/Alaska;Lcom/bbm/i;)Lcom/bbm/i;
    .registers 2

    iput-object p1, p0, Lcom/bbm/Alaska;->n:Lcom/bbm/i;

    return-object p1
.end method

.method public static b()Lcom/bbm/f/a;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->f:Lcom/bbm/f/c;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/Alaska;)Lcom/bbm/j/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/Alaska;->u:Lcom/bbm/j/a;

    return-object v0
.end method

.method public static c()Lcom/bbm/d;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->k:Lcom/bbm/d;

    return-object v0
.end method

.method public static d()Lcom/bbm/b/q;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->k:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->a:Lcom/bbm/b/q;

    return-object v0
.end method

.method public static e()Lcom/bbm/d/a;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->k:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    return-object v0
.end method

.method public static f()Lcom/bbm/g/am;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->k:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    return-object v0
.end method

.method public static g()Lcom/bbm/c/c;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->q:Lcom/bbm/c/c;

    return-object v0
.end method

.method public static h()Landroid/content/SharedPreferences;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->p:Lcom/bbm/Alaska;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static i()Lcom/bbm/ui/f/a;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->r:Lcom/bbm/ui/f/a;

    return-object v0
.end method

.method public static j()Lcom/bbm/f/ae;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->i:Lcom/bbm/j/e;

    iget-object v0, v0, Lcom/bbm/j/e;->c:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/f/ae;

    return-object v0
.end method

.method public static k()Lcom/bbm/f/ag;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->j:Lcom/bbm/j/e;

    iget-object v0, v0, Lcom/bbm/j/e;->c:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/f/ag;

    return-object v0
.end method

.method public static l()Lcom/bbm/af;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->m:Lcom/bbm/af;

    return-object v0
.end method

.method public static o()Lcom/bbm/Alaska;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->p:Lcom/bbm/Alaska;

    return-object v0
.end method

.method public static q()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static u()Lcom/bbm/setup/ag;
    .registers 1

    sget-object v0, Lcom/bbm/Alaska;->b:Lcom/bbm/setup/aa;

    invoke-virtual {v0}, Lcom/bbm/setup/aa;->a()Lcom/bbm/setup/ag;

    move-result-object v0

    return-object v0
.end method

.method public static x()Lcom/bbm/j/r;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/iceberg/j;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/bbm/Alaska;->H()Lcom/bbm/iceberg/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/iceberg/k;->a()Lcom/bbm/j/r;

    move-result-object v0

    return-object v0
.end method

.method public static y()Z
    .registers 4

    const/4 v1, 0x1

    invoke-static {}, Lcom/bbm/Alaska;->H()Lcom/bbm/iceberg/k;

    move-result-object v2

    iget-object v0, v2, Lcom/bbm/iceberg/k;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/j/r;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/bbm/iceberg/m;

    invoke-direct {v0, v2}, Lcom/bbm/iceberg/m;-><init>(Lcom/bbm/iceberg/k;)V

    iput-boolean v1, v0, Lcom/bbm/j/a;->c:Z

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/bbm/iceberg/k;->b:Ljava/lang/ref/WeakReference;

    :cond_1d
    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2b

    move v0, v1

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public static z()V
    .registers 1

    invoke-static {}, Lcom/bbm/Alaska;->H()Lcom/bbm/iceberg/k;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/iceberg/k;->a:Lcom/bbm/iceberg/a;

    invoke-virtual {v0}, Lcom/bbm/iceberg/a;->b()V

    return-void
.end method


# virtual methods
.method public final A()Lcom/bbm/f/af;
    .registers 2

    iget-object v0, p0, Lcom/bbm/Alaska;->u:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/f/af;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .registers 1

    return-object p0
.end method

.method public final m()Lcom/bbm/setup/aa;
    .registers 2

    sget-object v0, Lcom/bbm/Alaska;->b:Lcom/bbm/setup/aa;

    return-object v0
.end method

.method public final n()Z
    .registers 3

    sget-object v0, Lcom/bbm/Alaska;->g:Lcom/bbm/f/c;

    invoke-virtual {v0}, Lcom/bbm/f/c;->a()Lcom/bbm/f/b;

    move-result-object v0

    sget-object v1, Lcom/bbm/f/b;->d:Lcom/bbm/f/b;

    if-eq v0, v1, :cond_14

    sget-object v0, Lcom/bbm/Alaska;->h:Lcom/bbm/f/c;

    invoke-virtual {v0}, Lcom/bbm/f/c;->a()Lcom/bbm/f/b;

    move-result-object v0

    sget-object v1, Lcom/bbm/f/b;->d:Lcom/bbm/f/b;

    if-ne v0, v1, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onCreate()V
    .registers 9

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    iget-object v0, p0, Lcom/bbm/Alaska;->u:Lcom/bbm/j/a;

    iput-boolean v6, v0, Lcom/bbm/j/a;->c:Z

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "RIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :goto_1b
    return-void

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bbm/Alaska;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/logs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "BBM Version: %s, build: %s Date: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/bbm/Alaska;->r()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Lcom/bbm/l;->a:Lcom/bbm/k;

    aput-object v3, v2, v6

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    const-string v0, "onCreate"

    const-class v1, Lcom/bbm/Alaska;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object p0, Lcom/bbm/Alaska;->p:Lcom/bbm/Alaska;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Lcom/bbm/n;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bbm/n;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sget-object v0, Lcom/google/analytics/tracking/android/p;->a:Lcom/google/analytics/tracking/android/p;

    if-nez v0, :cond_89

    new-instance v0, Lcom/google/analytics/tracking/android/p;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/p;->a:Lcom/google/analytics/tracking/android/p;

    :cond_89
    sget-object v0, Lcom/google/analytics/tracking/android/p;->a:Lcom/google/analytics/tracking/android/p;

    iget-object v0, p0, Lcom/bbm/Alaska;->v:Ljava/lang/Thread;

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/bbm/Alaska;->v:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_9e

    iget-object v0, p0, Lcom/bbm/Alaska;->v:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_9e
    const-string v0, "Loading native libraries"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/bbm/f/i;->a(Landroid/content/Context;)V

    const-string v0, "Done loading native libraries"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V

    new-instance v0, Lcom/bbm/af;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bbm/af;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    sput-object v0, Lcom/bbm/Alaska;->m:Lcom/bbm/af;

    new-instance v0, Lcom/bbm/b/q;

    sget-object v1, Lcom/bbm/Alaska;->f:Lcom/bbm/f/c;

    sget-object v2, Lcom/bbm/Alaska;->l:Lcom/bbm/d/a/i;

    invoke-direct {v0, v1, p0, v2}, Lcom/bbm/b/q;-><init>(Lcom/bbm/f/a;Landroid/content/Context;Lcom/bbm/d/a/i;)V

    new-instance v1, Lcom/bbm/d/a;

    sget-object v2, Lcom/bbm/Alaska;->g:Lcom/bbm/f/c;

    sget-object v3, Lcom/bbm/Alaska;->l:Lcom/bbm/d/a/i;

    invoke-direct {v1, v2, p0, v3}, Lcom/bbm/d/a;-><init>(Lcom/bbm/f/a;Landroid/content/Context;Lcom/bbm/d/a/i;)V

    new-instance v2, Lcom/bbm/g/am;

    sget-object v3, Lcom/bbm/Alaska;->h:Lcom/bbm/f/c;

    sget-object v4, Lcom/bbm/Alaska;->l:Lcom/bbm/d/a/i;

    invoke-direct {v2, v3, v4}, Lcom/bbm/g/am;-><init>(Lcom/bbm/f/a;Lcom/bbm/d/a/i;)V

    new-instance v3, Lcom/bbm/d;

    invoke-direct {v3, v1, v2, v0}, Lcom/bbm/d;-><init>(Lcom/bbm/d/a;Lcom/bbm/g/am;Lcom/bbm/b/q;)V

    sput-object v3, Lcom/bbm/Alaska;->k:Lcom/bbm/d;

    new-instance v0, Lcom/bbm/ui/f/g;

    sget-object v1, Lcom/bbm/Alaska;->g:Lcom/bbm/f/c;

    invoke-direct {v0, v1}, Lcom/bbm/ui/f/g;-><init>(Lcom/bbm/f/a;)V

    new-instance v1, Lcom/bbm/ui/f/l;

    sget-object v2, Lcom/bbm/Alaska;->g:Lcom/bbm/f/c;

    invoke-direct {v1, v2}, Lcom/bbm/ui/f/l;-><init>(Lcom/bbm/f/a;)V

    new-instance v2, Lcom/bbm/ui/f/o;

    sget-object v3, Lcom/bbm/Alaska;->h:Lcom/bbm/f/c;

    invoke-direct {v2, v3}, Lcom/bbm/ui/f/o;-><init>(Lcom/bbm/f/a;)V

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/bbm/o;->a(Landroid/content/Context;)V

    new-instance v3, Lcom/bbm/ui/f/a;

    invoke-direct {v3, p0}, Lcom/bbm/ui/f/a;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/bbm/Alaska;->r:Lcom/bbm/ui/f/a;

    invoke-virtual {v3, v0}, Lcom/bbm/ui/f/a;->a(Lcom/bbm/ui/f/c;)V

    sget-object v0, Lcom/bbm/Alaska;->r:Lcom/bbm/ui/f/a;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/f/a;->a(Lcom/bbm/ui/f/c;)V

    sget-object v0, Lcom/bbm/Alaska;->r:Lcom/bbm/ui/f/a;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/f/a;->a(Lcom/bbm/ui/f/c;)V

    new-instance v0, Lcom/bbm/setup/aa;

    sget-object v1, Lcom/bbm/Alaska;->k:Lcom/bbm/d;

    iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-direct {v0, p0, v1}, Lcom/bbm/setup/aa;-><init>(Lcom/bbm/s;Lcom/bbm/d/a;)V

    sput-object v0, Lcom/bbm/Alaska;->b:Lcom/bbm/setup/aa;

    iget-object v1, v0, Lcom/bbm/setup/aa;->f:Lcom/bbm/j/k;

    invoke-virtual {v1}, Lcom/bbm/j/k;->c()V

    iget-object v1, v0, Lcom/bbm/setup/aa;->d:Lcom/bbm/j/k;

    invoke-virtual {v1}, Lcom/bbm/j/k;->c()V

    iget-object v1, v0, Lcom/bbm/setup/aa;->c:Lcom/bbm/y;

    iget-object v1, v1, Lcom/bbm/y;->h:Lcom/bbm/j/k;

    invoke-virtual {v1}, Lcom/bbm/j/k;->c()V

    iget-object v1, v0, Lcom/bbm/setup/aa;->h:Lcom/bbm/setup/ai;

    invoke-virtual {v1}, Lcom/bbm/setup/ai;->a()V

    iput-boolean v6, v1, Lcom/bbm/setup/ai;->b:Z

    iget-object v1, v1, Lcom/bbm/setup/ai;->c:Lcom/bbm/j/k;

    invoke-virtual {v1}, Lcom/bbm/j/k;->c()V

    iget-object v1, v0, Lcom/bbm/setup/aa;->b:Lcom/bbm/j/k;

    invoke-virtual {v1}, Lcom/bbm/j/k;->c()V

    iget-object v1, v0, Lcom/bbm/setup/aa;->i:Lcom/bbm/setup/an;

    iget-object v1, v1, Lcom/bbm/setup/an;->a:Lcom/bbm/j/k;

    invoke-virtual {v1}, Lcom/bbm/j/k;->c()V

    iget-object v0, v0, Lcom/bbm/setup/aa;->e:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    new-instance v0, Lcom/bbm/c/c;

    invoke-direct {v0, p0}, Lcom/bbm/c/c;-><init>(Lcom/bbm/Alaska;)V

    sput-object v0, Lcom/bbm/Alaska;->q:Lcom/bbm/c/c;

    iget-object v1, v0, Lcom/bbm/c/c;->aJ:Lcom/bbm/c/a;

    iget-object v2, v1, Lcom/bbm/c/a;->b:Landroid/app/Application;

    iget-object v1, v1, Lcom/bbm/c/a;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v2, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v1, v0, Lcom/bbm/c/c;->aH:Lcom/bbm/j/k;

    invoke-virtual {v1}, Lcom/bbm/j/k;->c()V

    iget-object v1, v0, Lcom/bbm/c/c;->aK:Lcom/bbm/c/v;

    iget-object v1, v1, Lcom/bbm/c/v;->a:Lcom/bbm/j/k;

    invoke-virtual {v1}, Lcom/bbm/j/k;->c()V

    sget-object v1, Lcom/bbm/Alaska;->k:Lcom/bbm/d;

    iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iget-object v1, v1, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v1, v1, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    iget-object v0, v0, Lcom/bbm/c/c;->aI:Lcom/bbm/f/ac;

    invoke-interface {v1, v0}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V

    sget-object v0, Lcom/bbm/Alaska;->q:Lcom/bbm/c/c;

    const-string v1, "mixpanel_number_of_app_starts"

    invoke-virtual {v0, p0, v1}, Lcom/bbm/c/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "Alaska maybe startServiceLayer, LOAD_SHUNT %s, IsBound %s"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    iget-boolean v2, p0, Lcom/bbm/Alaska;->o:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/bbm/Alaska;->o:Z

    if-nez v0, :cond_1a6

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bbm/Alaska;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bbm/BbmService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.bbm.BBMService.mock_service"

    sget-boolean v2, Lcom/bbm/Alaska;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbm/Alaska;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/bbm/Alaska;->p()V

    :cond_1a6
    new-instance v2, Lcom/d/a/b/h;

    invoke-direct {v2, p0}, Lcom/d/a/b/h;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/d/a/a/a/a/b;

    invoke-virtual {p0}, Lcom/bbm/Alaska;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const/high16 v3, 0x50

    invoke-direct {v0, v1, v3}, Lcom/d/a/a/a/a/b;-><init>(Ljava/io/File;I)V

    iget v1, v2, Lcom/d/a/b/h;->l:I

    if-gtz v1, :cond_1be

    iget v1, v2, Lcom/d/a/b/h;->m:I

    if-lez v1, :cond_1c5

    :cond_1be
    const-string v1, "discCache(), discCacheSize() and discCacheFileCount calls overlap each other"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/d/a/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c5
    iget-object v1, v2, Lcom/d/a/b/h;->p:Lcom/d/a/a/a/b/a;

    if-eqz v1, :cond_1d0

    const-string v1, "discCache() and discCacheFileNameGenerator() calls overlap each other"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/d/a/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d0
    iput-object v0, v2, Lcom/d/a/b/h;->o:Lcom/d/a/a/a/b;

    iget-object v0, v2, Lcom/d/a/b/h;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_29d

    iget v0, v2, Lcom/d/a/b/h;->g:I

    iget v1, v2, Lcom/d/a/b/h;->h:I

    iget-object v3, v2, Lcom/d/a/b/h;->j:Lcom/d/a/b/a/j;

    invoke-static {v0, v1, v3}, Lcom/d/a/b/a;->a(IILcom/d/a/b/a/j;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, v2, Lcom/d/a/b/h;->c:Ljava/util/concurrent/Executor;

    :goto_1e2
    iget-object v0, v2, Lcom/d/a/b/h;->d:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_2a1

    iget v0, v2, Lcom/d/a/b/h;->g:I

    iget v1, v2, Lcom/d/a/b/h;->h:I

    iget-object v3, v2, Lcom/d/a/b/h;->j:Lcom/d/a/b/a/j;

    invoke-static {v0, v1, v3}, Lcom/d/a/b/a;->a(IILcom/d/a/b/a/j;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, v2, Lcom/d/a/b/h;->d:Ljava/util/concurrent/Executor;

    :goto_1f2
    iget-object v0, v2, Lcom/d/a/b/h;->o:Lcom/d/a/a/a/b;

    if-nez v0, :cond_216

    iget-object v0, v2, Lcom/d/a/b/h;->p:Lcom/d/a/a/a/b/a;

    if-nez v0, :cond_201

    new-instance v0, Lcom/d/a/a/a/b/b;

    invoke-direct {v0}, Lcom/d/a/a/a/b/b;-><init>()V

    iput-object v0, v2, Lcom/d/a/b/h;->p:Lcom/d/a/a/a/b/a;

    :cond_201
    iget-object v0, v2, Lcom/d/a/b/h;->b:Landroid/content/Context;

    iget-object v1, v2, Lcom/d/a/b/h;->p:Lcom/d/a/a/a/b/a;

    iget v3, v2, Lcom/d/a/b/h;->l:I

    iget v4, v2, Lcom/d/a/b/h;->m:I

    if-lez v3, :cond_2a5

    invoke-static {v0}, Lcom/d/a/c/e;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    new-instance v0, Lcom/d/a/a/a/a/b;

    invoke-direct {v0, v4, v1, v3}, Lcom/d/a/a/a/a/b;-><init>(Ljava/io/File;Lcom/d/a/a/a/b/a;I)V

    :goto_214
    iput-object v0, v2, Lcom/d/a/b/h;->o:Lcom/d/a/a/a/b;

    :cond_216
    iget-object v0, v2, Lcom/d/a/b/h;->n:Lcom/d/a/a/b/c;

    if-nez v0, :cond_238

    iget v0, v2, Lcom/d/a/b/h;->k:I

    if-nez v0, :cond_22a

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v3, 0x8

    div-long/2addr v0, v3

    long-to-int v0, v0

    :cond_22a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v1, v3, :cond_2bd

    new-instance v1, Lcom/d/a/a/b/a/c;

    invoke-direct {v1, v0}, Lcom/d/a/a/b/a/c;-><init>(I)V

    move-object v0, v1

    :goto_236
    iput-object v0, v2, Lcom/d/a/b/h;->n:Lcom/d/a/a/b/c;

    :cond_238
    iget-boolean v0, v2, Lcom/d/a/b/h;->i:Z

    if-eqz v0, :cond_24a

    new-instance v0, Lcom/d/a/a/b/a/a;

    iget-object v1, v2, Lcom/d/a/b/h;->n:Lcom/d/a/a/b/c;

    new-instance v3, Lcom/d/a/b/a/i;

    invoke-direct {v3}, Lcom/d/a/b/a/i;-><init>()V

    invoke-direct {v0, v1, v3}, Lcom/d/a/a/b/a/a;-><init>(Lcom/d/a/a/b/c;Ljava/util/Comparator;)V

    iput-object v0, v2, Lcom/d/a/b/h;->n:Lcom/d/a/a/b/c;

    :cond_24a
    iget-object v0, v2, Lcom/d/a/b/h;->q:Lcom/d/a/b/d/c;

    if-nez v0, :cond_257

    iget-object v0, v2, Lcom/d/a/b/h;->b:Landroid/content/Context;

    new-instance v1, Lcom/d/a/b/d/a;

    invoke-direct {v1, v0}, Lcom/d/a/b/d/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v2, Lcom/d/a/b/h;->q:Lcom/d/a/b/d/c;

    :cond_257
    iget-object v0, v2, Lcom/d/a/b/h;->r:Lcom/d/a/b/b/d;

    if-nez v0, :cond_264

    iget-boolean v0, v2, Lcom/d/a/b/h;->t:Z

    new-instance v1, Lcom/d/a/b/b/a;

    invoke-direct {v1, v0}, Lcom/d/a/b/b/a;-><init>(Z)V

    iput-object v1, v2, Lcom/d/a/b/h;->r:Lcom/d/a/b/b/d;

    :cond_264
    iget-object v0, v2, Lcom/d/a/b/h;->s:Lcom/d/a/b/d;

    if-nez v0, :cond_273

    new-instance v0, Lcom/d/a/b/e;

    invoke-direct {v0}, Lcom/d/a/b/e;-><init>()V

    invoke-virtual {v0}, Lcom/d/a/b/e;->a()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, v2, Lcom/d/a/b/h;->s:Lcom/d/a/b/d;

    :cond_273
    new-instance v0, Lcom/d/a/b/g;

    invoke-direct {v0, v2, v5}, Lcom/d/a/b/g;-><init>(Lcom/d/a/b/h;B)V

    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/Alaska;->x:Lcom/d/a/b/f;

    iget-object v1, p0, Lcom/bbm/Alaska;->x:Lcom/d/a/b/f;

    invoke-virtual {v1, v0}, Lcom/d/a/b/f;->a(Lcom/d/a/b/g;)V

    :try_start_283
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/bbm/Alaska;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "HttpResponseCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/32 v1, 0xa00000

    invoke-static {v0, v1, v2}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    :try_end_294
    .catch Ljava/io/IOException; {:try_start_283 .. :try_end_294} :catch_2c5

    :goto_294
    new-instance v0, Lcom/bbm/v;

    invoke-direct {v0, p0}, Lcom/bbm/v;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/bbm/Alaska;->y:Lcom/bbm/v;

    goto/16 :goto_1b

    :cond_29d
    iput-boolean v6, v2, Lcom/d/a/b/h;->e:Z

    goto/16 :goto_1e2

    :cond_2a1
    iput-boolean v6, v2, Lcom/d/a/b/h;->f:Z

    goto/16 :goto_1f2

    :cond_2a5
    if-lez v4, :cond_2b2

    invoke-static {v0}, Lcom/d/a/c/e;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    new-instance v0, Lcom/d/a/a/a/a/a;

    invoke-direct {v0, v3, v1, v4}, Lcom/d/a/a/a/a/a;-><init>(Ljava/io/File;Lcom/d/a/a/a/b/a;I)V

    goto/16 :goto_214

    :cond_2b2
    invoke-static {v0}, Lcom/d/a/c/e;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    new-instance v0, Lcom/d/a/a/a/a/c;

    invoke-direct {v0, v3, v1}, Lcom/d/a/a/a/a/c;-><init>(Ljava/io/File;Lcom/d/a/a/a/b/a;)V

    goto/16 :goto_214

    :cond_2bd
    new-instance v1, Lcom/d/a/a/b/a/b;

    invoke-direct {v1, v0}, Lcom/d/a/a/b/a/b;-><init>(I)V

    move-object v0, v1

    goto/16 :goto_236

    :catch_2c5
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_294
.end method

.method public onLowMemory()V
    .registers 3

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    const-string v0, "onLowMemory"

    const-class v1, Lcom/bbm/Alaska;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 7

    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    const-string v0, "onTrimMemory"

    const-class v1, Lcom/bbm/Alaska;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    sparse-switch p1, :sswitch_data_5c

    const-string v0, "unknown"

    :goto_f
    const-string v1, "Trim Memory level %d %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/16 v0, 0x14

    if-ne p1, v0, :cond_2a

    sget-object v0, Lcom/bbm/Alaska;->q:Lcom/bbm/c/c;

    invoke-virtual {v0, p0}, Lcom/bbm/c/c;->a(Landroid/content/Context;)V

    :cond_2a
    const/16 v0, 0xa

    if-lt p1, v0, :cond_33

    sget-object v0, Lcom/bbm/Alaska;->l:Lcom/bbm/d/a/i;

    invoke-interface {v0}, Lcom/bbm/d/a/i;->a()V

    :cond_33
    sget-object v0, Lcom/bbm/Alaska;->k:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iget-object v0, v0, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;

    iget-object v1, v0, Lcom/bbm/d/a/d/c;->h:Lcom/google/b/b/d;

    invoke-interface {v1}, Lcom/google/b/b/d;->a()V

    iget-object v0, v0, Lcom/bbm/d/a/d/c;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-static {}, Lcom/bbm/util/fb;->a()V

    return-void

    :sswitch_47
    const-string v0, "TRIM_MEMORY_BACKGROUND"

    goto :goto_f

    :sswitch_4a
    const-string v0, "TRIM_MEMORY_COMPLETE"

    goto :goto_f

    :sswitch_4d
    const-string v0, "TRIM_MEMORY_MODERATE"

    goto :goto_f

    :sswitch_50
    const-string v0, "TRIM_MEMORY_UI_HIDDEN"

    goto :goto_f

    :sswitch_53
    const-string v0, "TRIM_MEMORY_RUNNING_CRITICAL"

    goto :goto_f

    :sswitch_56
    const-string v0, "TRIM_MEMORY_RUNNING_LOW"

    goto :goto_f

    :sswitch_59
    const-string v0, "TRIM_MEMORY_RUNNING_MODERATE"

    goto :goto_f

    :sswitch_data_5c
    .sparse-switch
        0x5 -> :sswitch_59
        0xa -> :sswitch_56
        0xf -> :sswitch_53
        0x14 -> :sswitch_50
        0x28 -> :sswitch_47
        0x3c -> :sswitch_4d
        0x50 -> :sswitch_4a
    .end sparse-switch
.end method

.method public final p()V
    .registers 4

    iget-boolean v0, p0, Lcom/bbm/Alaska;->o:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bbm/Alaska;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bbm/BbmService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.bbm.BBMService.mock_service"

    sget-boolean v2, Lcom/bbm/Alaska;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/Alaska;->w:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/bbm/Alaska;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/Alaska;->o:Z

    goto :goto_4
.end method

.method public final r()Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/bbm/Alaska;->s()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v0, "getVersionName() version name not returned"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    const-string v0, ""

    goto :goto_6
.end method

.method public final s()Landroid/content/pm/PackageInfo;
    .registers 4

    invoke-virtual {p0}, Lcom/bbm/Alaska;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/Alaska;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public final t()Z
    .registers 3

    sget-object v0, Lcom/bbm/Alaska;->b:Lcom/bbm/setup/aa;

    invoke-virtual {v0}, Lcom/bbm/setup/aa;->a()Lcom/bbm/setup/ag;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/setup/ag;->a:Lcom/bbm/setup/ah;

    sget-object v1, Lcom/bbm/setup/ah;->k:Lcom/bbm/setup/ah;

    if-eq v0, v1, :cond_12

    sget-object v1, Lcom/bbm/setup/ah;->b:Lcom/bbm/setup/ah;

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final v()V
    .registers 2

    invoke-static {}, Lcom/bbm/Alaska;->j()Lcom/bbm/f/ae;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bbm/f/ae;->j:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/bbm/Alaska;->w()V

    :cond_b
    return-void
.end method

.method public final w()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/Alaska;->n:Lcom/bbm/i;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bbm/Alaska;->n:Lcom/bbm/i;

    iget-object v0, v0, Lcom/bbm/i;->a:Lcom/bbm/BbmService;

    invoke-static {v0}, Lcom/bbm/BbmService;->a(Lcom/bbm/BbmService;)Lcom/bbm/f/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/f/ad;->i()V

    :cond_f
    return-void
.end method
