.class public Lcom/google/android/gms/wearable/internal/av;
.super Lcom/google/android/gms/wearable/internal/ac$a;


# instance fields
.field private final ami:Lcom/google/android/gms/wearable/DataApi$DataListener;

.field private final amj:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

.field private final amk:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

.field private final aml:[Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/wearable/DataApi$DataListener;Lcom/google/android/gms/wearable/MessageApi$MessageListener;Lcom/google/android/gms/wearable/NodeApi$NodeListener;[Landroid/content/IntentFilter;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/ac$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/av;->ami:Lcom/google/android/gms/wearable/DataApi$DataListener;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/av;->amj:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/av;->amk:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/av;->aml:[Landroid/content/IntentFilter;

    return-void
.end method

.method public static a(Lcom/google/android/gms/wearable/DataApi$DataListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/av;
    .registers 4

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/wearable/internal/av;

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/google/android/gms/wearable/internal/av;-><init>(Lcom/google/android/gms/wearable/DataApi$DataListener;Lcom/google/android/gms/wearable/MessageApi$MessageListener;Lcom/google/android/gms/wearable/NodeApi$NodeListener;[Landroid/content/IntentFilter;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/wearable/MessageApi$MessageListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/av;
    .registers 4

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/wearable/internal/av;

    invoke-direct {v0, v1, p0, v1, p1}, Lcom/google/android/gms/wearable/internal/av;-><init>(Lcom/google/android/gms/wearable/DataApi$DataListener;Lcom/google/android/gms/wearable/MessageApi$MessageListener;Lcom/google/android/gms/wearable/NodeApi$NodeListener;[Landroid/content/IntentFilter;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/wearable/NodeApi$NodeListener;)Lcom/google/android/gms/wearable/internal/av;
    .registers 3

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/wearable/internal/av;

    invoke-direct {v0, v1, v1, p0, v1}, Lcom/google/android/gms/wearable/internal/av;-><init>(Lcom/google/android/gms/wearable/DataApi$DataListener;Lcom/google/android/gms/wearable/MessageApi$MessageListener;Lcom/google/android/gms/wearable/NodeApi$NodeListener;[Landroid/content/IntentFilter;)V

    return-object v0
.end method


# virtual methods
.method public Y(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/av;->ami:Lcom/google/android/gms/wearable/DataApi$DataListener;

    if-eqz v0, :cond_17

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/av;->ami:Lcom/google/android/gms/wearable/DataApi$DataListener;

    new-instance v1, Lcom/google/android/gms/wearable/DataEventBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/DataEventBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/DataApi$DataListener;->onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :goto_11
    return-void

    :catchall_12
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v0

    :cond_17
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    goto :goto_11
.end method

.method public a(Lcom/google/android/gms/wearable/internal/af;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/av;->amj:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/av;->amj:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/MessageApi$MessageListener;->onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V

    :cond_9
    return-void
.end method

.method public a(Lcom/google/android/gms/wearable/internal/ai;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/av;->amk:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/av;->amk:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/NodeApi$NodeListener;->onPeerConnected(Lcom/google/android/gms/wearable/Node;)V

    :cond_9
    return-void
.end method

.method public b(Lcom/google/android/gms/wearable/internal/ai;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/av;->amk:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/av;->amk:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/NodeApi$NodeListener;->onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V

    :cond_9
    return-void
.end method

.method public np()[Landroid/content/IntentFilter;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/av;->aml:[Landroid/content/IntentFilter;

    return-object v0
.end method
