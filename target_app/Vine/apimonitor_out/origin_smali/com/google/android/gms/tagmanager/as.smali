.class Lcom/google/android/gms/tagmanager/as;
.super Ljava/lang/Thread;

# interfaces
.implements Lcom/google/android/gms/tagmanager/ar;


# static fields
.field private static afF:Lcom/google/android/gms/tagmanager/as;


# instance fields
.field private final afE:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile afG:Lcom/google/android/gms/tagmanager/at;

.field private volatile mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private volatile uI:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    const-string v0, "GAThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/as;->afE:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/as;->uI:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/as;->mClosed:Z

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/as;->mContext:Landroid/content/Context;

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/as;->start()V

    return-void

    :cond_1d
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/as;->mContext:Landroid/content/Context;

    goto :goto_19
.end method

.method static M(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/as;
    .registers 2

    sget-object v0, Lcom/google/android/gms/tagmanager/as;->afF:Lcom/google/android/gms/tagmanager/as;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/tagmanager/as;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/as;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/as;->afF:Lcom/google/android/gms/tagmanager/as;

    :cond_b
    sget-object v0, Lcom/google/android/gms/tagmanager/as;->afF:Lcom/google/android/gms/tagmanager/as;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/as;)Lcom/google/android/gms/tagmanager/at;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/as;->afG:Lcom/google/android/gms/tagmanager/at;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/as;Lcom/google/android/gms/tagmanager/at;)Lcom/google/android/gms/tagmanager/at;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/as;->afG:Lcom/google/android/gms/tagmanager/at;

    return-object p1
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/as;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/as;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/as;->afE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Ljava/lang/String;J)V
    .registers 10

    new-instance v0, Lcom/google/android/gms/tagmanager/as$1;

    move-object v1, p0

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/as$1;-><init>(Lcom/google/android/gms/tagmanager/as;Lcom/google/android/gms/tagmanager/ar;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/as;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bU(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/tagmanager/as;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public run()V
    .registers 4

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/as;->mClosed:Z

    if-nez v0, :cond_41

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/as;->afE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-boolean v1, p0, Lcom/google/android/gms/tagmanager/as;->uI:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_13} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_13} :catch_1d

    goto :goto_0

    :catch_14
    move-exception v0

    :try_start_15
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->B(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_0

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on GAThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/as;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    const-string v0, "Google Analytics is shutting down."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/as;->uI:Z

    goto :goto_0

    :cond_41
    return-void
.end method
