.class public Lcom/google/android/gms/internal/ct;
.super Lcom/google/android/gms/internal/en;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final lq:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private oU:Z

.field private oV:Lcom/google/android/gms/internal/dh;

.field private oW:Lcom/google/android/gms/internal/cs;

.field private oX:Lcom/google/android/gms/internal/cy;

.field private oY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/cw;",
            ">;"
        }
    .end annotation
.end field

.field private oZ:Lcom/google/android/gms/internal/da;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/dh;Lcom/google/android/gms/internal/da;)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/en;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ct;->lq:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ct;->oU:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ct;->oY:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ct;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ct;->oV:Lcom/google/android/gms/internal/dh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ct;->oZ:Lcom/google/android/gms/internal/da;

    new-instance v0, Lcom/google/android/gms/internal/cs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ct;->oW:Lcom/google/android/gms/internal/cs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/cy;->h(Landroid/content/Context;)Lcom/google/android/gms/internal/cy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ct;->oX:Lcom/google/android/gms/internal/cy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->oX:Lcom/google/android/gms/internal/cy;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cy;->d(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ct;->oY:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ct;)Lcom/google/android/gms/internal/da;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->oZ:Lcom/google/android/gms/internal/da;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/internal/cw;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "RESPONSE_CODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "INAPP_PURCHASE_DATA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "INAPP_DATA_SIGNATURE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ct$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/ct$1;-><init>(Lcom/google/android/gms/internal/ct;Lcom/google/android/gms/internal/cw;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ct;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private b(J)V
    .registers 4

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ct;->c(J)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "Timeout waiting for pending transaction to be processed."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ct;->oU:Z

    if-eqz v0, :cond_0

    return-void
.end method

.method private bd()V
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->oY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->oY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cw;

    iget-object v2, v0, Lcom/google/android/gms/internal/cw;->pl:Ljava/lang/String;

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_26
    const/4 v0, 0x0

    :goto_27
    iget-object v1, p0, Lcom/google/android/gms/internal/ct;->oW:Lcom/google/android/gms/internal/cs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ct;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/cs;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_55

    :cond_35
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ct;->oX:Lcom/google/android/gms/internal/cy;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cw;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/cy;->a(Lcom/google/android/gms/internal/cw;)V

    goto :goto_3d

    :cond_55
    invoke-static {v0}, Lcom/google/android/gms/internal/cz;->a(Landroid/os/Bundle;)I

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const-string v1, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const-string v1, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const-string v1, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    move v4, v0

    :goto_75
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_b3

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/cw;

    invoke-static {v1}, Lcom/google/android/gms/internal/cz;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v3, Lcom/google/android/gms/internal/cw;->pk:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_af

    invoke-direct {p0, v3, v1, v2}, Lcom/google/android/gms/internal/ct;->a(Lcom/google/android/gms/internal/cw;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_af
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_75

    :cond_b3
    if-eqz v5, :cond_35

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    move-object v0, v5

    goto/16 :goto_27
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ct;)Lcom/google/android/gms/internal/dh;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->oV:Lcom/google/android/gms/internal/dh;

    return-object v0
.end method

.method private c(J)Z
    .registers 7

    const-wide/32 v0, 0xea60

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_11

    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/google/android/gms/internal/ct;->lq:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_16} :catch_18

    :goto_16
    const/4 v0, 0x1

    goto :goto_10

    :catch_18
    move-exception v0

    const-string v0, "waitWithTimeout_lock interrupted"

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    goto :goto_16
.end method


# virtual methods
.method public bc()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/ct;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ct;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ct;->b(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->oW:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->destroy()V

    monitor-exit v1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/ct;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->oW:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cs;->o(Landroid/os/IBinder;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ct;->bd()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ct;->oU:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->lq:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string v0, "In-app billing service disconnected."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->oW:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->destroy()V

    return-void
.end method

.method public onStop()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ct;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->oW:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->destroy()V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method
