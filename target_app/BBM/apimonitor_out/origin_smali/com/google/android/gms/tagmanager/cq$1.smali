.class Lcom/google/android/gms/tagmanager/cq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Wq:Lcom/google/android/gms/tagmanager/cq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cq$1;->Wq:Lcom/google/android/gms/tagmanager/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq$1;->Wq:Lcom/google/android/gms/tagmanager/cq;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cq;->jC()V

    return-void
.end method
