.class public final Lcom/bbm/n/b;
.super Ljava/lang/Object;
.source "MediaCallManager.java"

# interfaces
.implements Lcom/rim/bbm/BbmMediaCallService$IMediaCallListener;


# static fields
.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;

.field private static q:Lcom/bbm/n/b;


# instance fields
.field public a:Lcom/bbm/j/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/t",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/bbm/j/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/t",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/bbm/j/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/t",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/bbm/j/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/t",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/bbm/j/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/t",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bbm/n/j;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Z

.field public i:Landroid/content/Context;

.field public j:Lcom/google/b/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/a/l",
            "<",
            "Lcom/rim/bbm/BbmMediaCallService;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/bbm/util/cv;

.field private o:Lcom/bbm/j/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/t",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private p:J

.field private r:Landroid/app/NotificationManager;

.field private s:Landroid/support/v4/app/ag;

.field private t:Landroid/os/Handler;

.field private u:Ljava/lang/Runnable;

.field private v:Landroid/media/MediaPlayer;

.field private final w:Lcom/bbm/j/k;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/bbm/n/b;->q:Lcom/bbm/n/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bbm_outgoing_call.wav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/n/b;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bbm_incoming_call.wav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/n/b;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bbm_end_call.wav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/n/b;->n:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 9

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbm/j/t;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/j/t;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;

    new-instance v0, Lcom/bbm/j/t;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/j/t;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/n/b;->o:Lcom/bbm/j/t;

    new-instance v0, Lcom/bbm/j/t;

    invoke-direct {v0}, Lcom/bbm/j/t;-><init>()V

    iput-object v0, p0, Lcom/bbm/n/b;->b:Lcom/bbm/j/t;

    new-instance v0, Lcom/bbm/j/t;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/j/t;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/n/b;->c:Lcom/bbm/j/t;

    new-instance v0, Lcom/bbm/j/t;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/j/t;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/n/b;->d:Lcom/bbm/j/t;

    new-instance v0, Lcom/bbm/j/t;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/j/t;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/n/b;->e:Lcom/bbm/j/t;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/n/b;->f:Ljava/lang/ref/WeakReference;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bbm/n/b;->g:I

    iput-wide v5, p0, Lcom/bbm/n/b;->p:J

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/n/b;->j:Lcom/google/b/a/l;

    iput-object v2, p0, Lcom/bbm/n/b;->s:Landroid/support/v4/app/ag;

    iput-object v2, p0, Lcom/bbm/n/b;->k:Lcom/bbm/util/cv;

    iput-object v2, p0, Lcom/bbm/n/b;->v:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/bbm/n/c;

    invoke-direct {v0, p0}, Lcom/bbm/n/c;-><init>(Lcom/bbm/n/b;)V

    iput-object v0, p0, Lcom/bbm/n/b;->w:Lcom/bbm/j/k;

    invoke-static {}, Lcom/rim/bbm/BbmMediaCallService;->getInstance()Lcom/rim/bbm/BbmMediaCallService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/n/b;->j:Lcom/google/b/a/l;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/n/b;->i:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bbm/n/b;->t:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bbm/n/b;->i:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/bbm/n/b;->r:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/bbm/n/b;->r:Landroid/app/NotificationManager;

    const/16 v1, 0x2328

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v0, Lcom/bbm/util/cv;

    invoke-direct {v0}, Lcom/bbm/util/cv;-><init>()V

    iput-object v0, p0, Lcom/bbm/n/b;->k:Lcom/bbm/util/cv;

    iget-object v0, p0, Lcom/bbm/n/b;->i:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/bbm/n/b;->k:Lcom/bbm/util/cv;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/bbm/n/b;->w:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/n/b;->j:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/bbm/n/b;->j:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rim/bbm/BbmMediaCallService;

    iget-object v1, p0, Lcom/bbm/n/b;->i:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "allow_mobile_calls"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/rim/bbm/BbmMediaCallService;->setSetting(IZ)V

    :cond_cb
    return-void
.end method

.method static synthetic a(Lcom/bbm/n/b;I)I
    .registers 2

    iput p1, p0, Lcom/bbm/n/b;->g:I

    return p1
.end method

.method static synthetic a(Lcom/bbm/n/b;Landroid/support/v4/app/ag;)Landroid/support/v4/app/ag;
    .registers 2

    iput-object p1, p0, Lcom/bbm/n/b;->s:Landroid/support/v4/app/ag;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/n/b;)Lcom/bbm/j/t;
    .registers 2

    iget-object v0, p0, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/bbm/n/b;
    .registers 3

    sget-object v0, Lcom/bbm/n/b;->q:Lcom/bbm/n/b;

    if-nez v0, :cond_f

    new-instance v0, Lcom/bbm/n/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/n/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bbm/n/b;->q:Lcom/bbm/n/b;

    :cond_f
    sget-object v0, Lcom/bbm/n/b;->q:Lcom/bbm/n/b;

    return-object v0
.end method

.method private a(Lcom/bbm/d/gp;Z)V
    .registers 6

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/n/b;->b:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->g(Ljava/lang/String;)Lcom/google/b/f/a/l;

    move-result-object v0

    new-instance v1, Lcom/bbm/n/d;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/bbm/n/d;-><init>(Lcom/bbm/n/b;Lcom/google/b/f/a/l;Lcom/bbm/d/gp;Z)V

    invoke-static {}, Lcom/google/b/f/a/o;->a()Lcom/google/b/f/a/n;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/b/f/a/l;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic b(Lcom/bbm/n/b;)Lcom/bbm/j/t;
    .registers 2

    iget-object v0, p0, Lcom/bbm/n/b;->b:Lcom/bbm/j/t;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/n/b;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbm/n/b;->i:Landroid/content/Context;

    return-object v0
.end method

.method private c(Lcom/bbm/d/gp;)Z
    .registers 4

    iget-object v1, p1, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/n/b;->b:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bbm/n/b;->b:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method static synthetic d(Lcom/bbm/n/b;)Lcom/bbm/util/cv;
    .registers 2

    iget-object v0, p0, Lcom/bbm/n/b;->k:Lcom/bbm/util/cv;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/n/b;)I
    .registers 2

    iget v0, p0, Lcom/bbm/n/b;->g:I

    return v0
.end method

.method static synthetic f(Lcom/bbm/n/b;)Lcom/google/b/a/l;
    .registers 2

    iget-object v0, p0, Lcom/bbm/n/b;->j:Lcom/google/b/a/l;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/n/b;)Landroid/support/v4/app/ag;
    .registers 2

    iget-object v0, p0, Lcom/bbm/n/b;->s:Landroid/support/v4/app/ag;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/n/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/bbm/n/b;->p:J

    return-wide v0
.end method

.method static synthetic i(Lcom/bbm/n/b;)Landroid/app/NotificationManager;
    .registers 2

    iget-object v0, p0, Lcom/bbm/n/b;->r:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/n/b;)Lcom/bbm/j/t;
    .registers 2

    iget-object v0, p0, Lcom/bbm/n/b;->o:Lcom/bbm/j/t;

    return-object v0
.end method

.method private j()V
    .registers 5

    invoke-direct {p0}, Lcom/bbm/n/b;->k()V

    new-instance v0, Lcom/bbm/n/e;

    invoke-direct {v0, p0}, Lcom/bbm/n/e;-><init>(Lcom/bbm/n/b;)V

    iput-object v0, p0, Lcom/bbm/n/b;->u:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/bbm/n/b;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bbm/n/b;->u:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic k(Lcom/bbm/n/b;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/bbm/n/b;->t:Landroid/os/Handler;

    return-object v0
.end method

.method private k()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/n/b;->u:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bbm/n/b;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bbm/n/b;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/n/b;->u:Ljava/lang/Runnable;

    :cond_e
    return-void
.end method

.method private l()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/n/b;->v:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bbm/n/b;->v:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bbm/n/b;->v:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/bbm/n/b;->v:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/n/b;->v:Landroid/media/MediaPlayer;

    :cond_19
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    const/4 v1, 0x3

    if-ne v0, v1, :cond_29

    :cond_15
    iget v0, p0, Lcom/bbm/n/b;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/bbm/n/b;->j:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rim/bbm/BbmMediaCallService;

    iget v1, p0, Lcom/bbm/n/b;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/rim/bbm/BbmMediaCallService;->endCall(II)I

    :goto_28
    return-void

    :cond_29
    invoke-virtual {p0}, Lcom/bbm/n/b;->i()V

    goto :goto_28
.end method

.method public final a(Lcom/bbm/n/j;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/n/b;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/n/b;->c:Lcom/bbm/j/t;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/n/b;->j:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/bbm/n/b;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/bbm/n/b;->j:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rim/bbm/BbmMediaCallService;

    iget v1, p0, Lcom/bbm/n/b;->g:I

    invoke-virtual {v0, v1, p1}, Lcom/rim/bbm/BbmMediaCallService;->muteAudio(IZ)I

    :cond_23
    iget-object v0, p0, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_53

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iget-object v0, p0, Lcom/bbm/n/b;->b:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/n/b;->c:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/bbm/n/b;->a(Lcom/bbm/d/gp;Z)V

    :cond_53
    return-void
.end method

.method public final a(Lcom/bbm/d/gp;)Z
    .registers 4

    iget-object v0, p0, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/bbm/n/b;->c(Lcom/bbm/d/gp;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public final b()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_21

    iget v0, p0, Lcom/bbm/n/b;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/bbm/n/b;->j:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rim/bbm/BbmMediaCallService;

    iget v1, p0, Lcom/bbm/n/b;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/rim/bbm/BbmMediaCallService;->endCall(II)I

    :cond_21
    :goto_21
    return-void

    :cond_22
    invoke-virtual {p0}, Lcom/bbm/n/b;->i()V

    goto :goto_21
.end method

.method public final b(Lcom/bbm/d/gp;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/bbm/n/b;->c(Lcom/bbm/d/gp;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public final c()J
    .registers 3

    iget-object v0, p0, Lcom/bbm/n/b;->o:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/n/b;->b:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final f()Z
    .registers 2

    iget-object v0, p0, Lcom/bbm/n/b;->c:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .registers 2

    iget-object v0, p0, Lcom/bbm/n/b;->d:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final h()I
    .registers 2

    iget-object v0, p0, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final i()V
    .registers 6

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/bbm/n/b;->k()V

    iget-object v0, p0, Lcom/bbm/n/b;->b:Lcom/bbm/j/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bbm/n/b;->g:I

    iget-object v0, p0, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/n/b;->o:Lcom/bbm/j/t;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/n/b;->c:Lcom/bbm/j/t;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/n/b;->d:Lcom/bbm/j/t;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V

    iput-wide v3, p0, Lcom/bbm/n/b;->p:J

    iget-object v0, p0, Lcom/bbm/n/b;->i:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x2328

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/bbm/n/b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/n/j;

    if-eqz v0, :cond_51

    invoke-interface {v0}, Lcom/bbm/n/j;->a()V

    :cond_51
    return-void
.end method

.method public final onBluetoothEnabled(Z)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/n/b;->e:Lcom/bbm/j/t;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onCallStateChange(ILcom/rim/bbm/BbmMediaCallService$CallData;)V
    .registers 8

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v0, p2, Lcom/rim/bbm/BbmMediaCallService$CallData;->failureReason:I

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bbm/n/b;->b:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/bbm/n/h;

    invoke-direct {v1, p0, p2, v0}, Lcom/bbm/n/h;-><init>(Lcom/bbm/n/b;Lcom/rim/bbm/BbmMediaCallService$CallData;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bbm/j/u;->c()V

    :cond_17
    iget-object v0, p0, Lcom/bbm/n/b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/n/j;

    iget v1, p2, Lcom/rim/bbm/BbmMediaCallService$CallData;->callState:I

    packed-switch v1, :pswitch_data_14a

    :cond_24
    :goto_24
    return-void

    :pswitch_25
    invoke-virtual {p0}, Lcom/bbm/n/b;->i()V

    if-eqz v0, :cond_24

    invoke-interface {v0}, Lcom/bbm/n/j;->a()V

    goto :goto_24

    :pswitch_2e
    if-eqz v0, :cond_24

    goto :goto_24

    :pswitch_31
    if-eqz v0, :cond_24

    goto :goto_24

    :pswitch_34
    iget-object v1, p0, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;

    invoke-virtual {v1}, Lcom/bbm/j/t;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_78

    invoke-direct {p0}, Lcom/bbm/n/b;->l()V

    iget-object v1, p0, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bbm/n/b;->p:J

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v1

    iget-object v2, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/n/b;->b:Lcom/bbm/j/t;

    invoke-virtual {v1}, Lcom/bbm/j/t;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v2

    iget-object v1, p0, Lcom/bbm/n/b;->c:Lcom/bbm/j/t;

    invoke-virtual {v1}, Lcom/bbm/j/t;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/bbm/n/b;->a(Lcom/bbm/d/gp;Z)V

    invoke-direct {p0}, Lcom/bbm/n/b;->j()V

    :cond_78
    if-eqz v0, :cond_24

    invoke-interface {v0}, Lcom/bbm/n/j;->b()V

    goto :goto_24

    :pswitch_7e
    if-eqz v0, :cond_24

    goto :goto_24

    :pswitch_81
    iget-object v1, p0, Lcom/bbm/n/b;->v:Landroid/media/MediaPlayer;

    if-nez v1, :cond_af

    :try_start_85
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/bbm/n/b;->v:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bbm/n/b;->v:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v1, p0, Lcom/bbm/n/b;->v:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/bbm/n/b;->i:Landroid/content/Context;

    sget-object v4, Lcom/bbm/n/b;->l:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/bbm/n/b;->v:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v1, p0, Lcom/bbm/n/b;->v:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v1, p0, Lcom/bbm/n/b;->v:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_af} :catch_b6

    :cond_af
    :goto_af
    if-eqz v0, :cond_24

    invoke-interface {v0}, Lcom/bbm/n/j;->c()V

    goto/16 :goto_24

    :catch_b6
    move-exception v1

    const-string v3, "Error playing outgoing call ringtone"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bbm/n/b;->v:Landroid/media/MediaPlayer;

    goto :goto_af

    :pswitch_c2
    if-eqz v0, :cond_24

    goto/16 :goto_24

    :pswitch_c6
    invoke-direct {p0}, Lcom/bbm/n/b;->l()V

    iget-object v1, p0, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;

    invoke-virtual {v1}, Lcom/bbm/j/t;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/bbm/n/b;->i()V

    if-eqz v0, :cond_df

    iget-boolean v3, p2, Lcom/rim/bbm/BbmMediaCallService$CallData;->rateCall:Z

    invoke-interface {v0, v3}, Lcom/bbm/n/j;->a(Z)V

    :cond_df
    iget-boolean v0, p0, Lcom/bbm/n/b;->h:Z

    if-eqz v0, :cond_fb

    const-string v0, "Setting speaker to disabled"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/n/b;->i:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_f7
    :goto_f7
    iput-boolean v2, p0, Lcom/bbm/n/b;->h:Z

    goto/16 :goto_24

    :cond_fb
    if-eqz v1, :cond_f7

    :try_start_fd
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    if-ne v1, v4, :cond_148

    const/4 v0, 0x2

    :goto_105
    invoke-virtual {v3, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/bbm/n/b;->i:Landroid/content/Context;

    sget-object v1, Lcom/bbm/n/b;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    new-instance v0, Lcom/bbm/n/f;

    invoke-direct {v0, p0, v3}, Lcom/bbm/n/f;-><init>(Lcom/bbm/n/b;Landroid/media/MediaPlayer;)V

    invoke-virtual {v3, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v0, Lcom/bbm/n/g;

    invoke-direct {v0, p0, v3}, Lcom/bbm/n/g;-><init>(Lcom/bbm/n/b;Landroid/media/MediaPlayer;)V

    invoke-virtual {v3, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_12a} :catch_12b

    goto :goto_f7

    :catch_12b
    move-exception v0

    const-string v1, "Error playing disconnected beep"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    const-string v0, "Setting speaker to disabled"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/n/b;->i:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_f7

    :cond_148
    move v0, v2

    goto :goto_105

    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_25
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_7e
        :pswitch_81
        :pswitch_c2
        :pswitch_c6
    .end packed-switch
.end method

.method public final onIncomingCall(ILcom/rim/bbm/BbmMediaCallService$CallData;)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/n/b;->k:Lcom/bbm/util/cv;

    invoke-virtual {v0}, Lcom/bbm/util/cv;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bbm/n/b;->j:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rim/bbm/BbmMediaCallService;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/rim/bbm/BbmMediaCallService;->endCall(II)I

    :goto_14
    return-void

    :cond_15
    new-instance v0, Lcom/bbm/n/i;

    invoke-direct {v0, p0, p2}, Lcom/bbm/n/i;-><init>(Lcom/bbm/n/b;Lcom/rim/bbm/BbmMediaCallService$CallData;)V

    invoke-virtual {v0}, Lcom/bbm/n/i;->c()V

    goto :goto_14
.end method

.method public final onMediaStateChange(ILcom/rim/bbm/BbmMediaCallService$CallData;)V
    .registers 6

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/bbm/n/b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/n/j;

    iget v1, p2, Lcom/rim/bbm/BbmMediaCallService$CallData;->audioState:I

    packed-switch v1, :pswitch_data_60

    :cond_e
    :goto_e
    return-void

    :pswitch_f
    if-eqz v0, :cond_e

    goto :goto_e

    :pswitch_12
    if-eqz v0, :cond_e

    goto :goto_e

    :pswitch_15
    iget-object v1, p0, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;

    invoke-virtual {v1}, Lcom/bbm/j/t;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_59

    invoke-direct {p0}, Lcom/bbm/n/b;->l()V

    iget-object v1, p0, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bbm/n/b;->p:J

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v1

    iget-object v2, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/n/b;->b:Lcom/bbm/j/t;

    invoke-virtual {v1}, Lcom/bbm/j/t;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v2

    iget-object v1, p0, Lcom/bbm/n/b;->c:Lcom/bbm/j/t;

    invoke-virtual {v1}, Lcom/bbm/j/t;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/bbm/n/b;->a(Lcom/bbm/d/gp;Z)V

    invoke-direct {p0}, Lcom/bbm/n/b;->j()V

    :cond_59
    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/bbm/n/j;->d()V

    goto :goto_e

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method
