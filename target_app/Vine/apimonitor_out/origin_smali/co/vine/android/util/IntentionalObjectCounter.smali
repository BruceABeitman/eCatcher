.class public Lco/vine/android/util/IntentionalObjectCounter;
.super Ljava/lang/Object;
.source "IntentionalObjectCounter.java"


# static fields
.field private static final LOCK:[I = null

.field public static final RECORDER_INSTANCE_COUNT:Ljava/lang/String; = "recorder"

.field private static final sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mItem:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lco/vine/android/util/IntentionalObjectCounter;->LOCK:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lco/vine/android/util/IntentionalObjectCounter;->sInstances:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/util/IntentionalObjectCounter;->mKey:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lco/vine/android/util/IntentionalObjectCounter;->mItem:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static add(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lco/vine/android/util/IntentionalObjectCounter;->getCounter(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    sget-object v2, Lco/vine/android/util/IntentionalObjectCounter;->LOCK:[I

    monitor-enter v2

    :try_start_7
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static getCount(Ljava/lang/String;)I
    .registers 4

    invoke-static {p0}, Lco/vine/android/util/IntentionalObjectCounter;->getCounter(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    sget-object v2, Lco/vine/android/util/IntentionalObjectCounter;->LOCK:[I

    monitor-enter v2

    :try_start_7
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    monitor-exit v2

    return v1

    :catchall_d
    move-exception v1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private static getCounter(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    sget-object v2, Lco/vine/android/util/IntentionalObjectCounter;->LOCK:[I

    monitor-enter v2

    :try_start_3
    sget-object v1, Lco/vine/android/util/IntentionalObjectCounter;->sInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lco/vine/android/util/IntentionalObjectCounter;->sInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    monitor-exit v2

    return-object v0

    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public static release(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lco/vine/android/util/IntentionalObjectCounter;->getCounter(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    sget-object v2, Lco/vine/android/util/IntentionalObjectCounter;->LOCK:[I

    monitor-enter v2

    :try_start_7
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v1
.end method


# virtual methods
.method public add()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/util/IntentionalObjectCounter;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/util/IntentionalObjectCounter;->mItem:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1}, Lco/vine/android/util/IntentionalObjectCounter;->add(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lco/vine/android/util/IntentionalObjectCounter;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lco/vine/android/util/IntentionalObjectCounter;->getCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public release()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/util/IntentionalObjectCounter;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/util/IntentionalObjectCounter;->mItem:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1}, Lco/vine/android/util/IntentionalObjectCounter;->release(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    return-void
.end method
