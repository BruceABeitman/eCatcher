.class Lcom/google/android/gms/tagmanager/co$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/co;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/ex;Lcom/google/android/gms/tagmanager/cq;Lcom/google/android/gms/tagmanager/cp;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/co;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/co;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/co$1;->a:Lcom/google/android/gms/tagmanager/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
