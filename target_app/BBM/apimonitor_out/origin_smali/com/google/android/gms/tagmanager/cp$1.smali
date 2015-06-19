.class Lcom/google/android/gms/tagmanager/cp$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cp$b;


# instance fields
.field final synthetic Wo:Lcom/google/android/gms/tagmanager/cp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cp$1;->Wo:Lcom/google/android/gms/tagmanager/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jB()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
