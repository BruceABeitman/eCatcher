.class Lcom/google/android/gms/wearable/WearableListenerService$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/WearableListenerService$a;->a(Lcom/google/android/gms/wearable/internal/af;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic alt:Lcom/google/android/gms/wearable/WearableListenerService$a;

.field final synthetic alu:Lcom/google/android/gms/wearable/internal/af;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService$a;Lcom/google/android/gms/wearable/internal/af;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$2;->alt:Lcom/google/android/gms/wearable/WearableListenerService$a;

    iput-object p2, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$2;->alu:Lcom/google/android/gms/wearable/internal/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$2;->alt:Lcom/google/android/gms/wearable/WearableListenerService$a;

    iget-object v0, v0, Lcom/google/android/gms/wearable/WearableListenerService$a;->alr:Lcom/google/android/gms/wearable/WearableListenerService;

    iget-object v1, p0, Lcom/google/android/gms/wearable/WearableListenerService$a$2;->alu:Lcom/google/android/gms/wearable/internal/af;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/WearableListenerService;->onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V

    return-void
.end method
