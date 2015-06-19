.class Lcom/glympse/android/hal/bo;
.super Landroid/content/BroadcastReceiver;
.source "SmsProvider.java"


# static fields
.field private static final eA:Ljava/lang/String; = "com.glympse.android.kit.send.SMS_SENT"


# instance fields
.field private aP:Z

.field private eB:Ljava/lang/String;

.field private eC:I

.field private eD:Lcom/glympse/android/hal/bp;

.field private ew:Ljava/lang/String;

.field private ex:Ljava/lang/String;

.field private ey:Lcom/glympse/android/hal/GSmsListener;

.field final synthetic ez:Lcom/glympse/android/hal/bm;


# direct methods
.method public constructor <init>(Lcom/glympse/android/hal/bm;Lcom/glympse/android/hal/GSmsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/glympse/android/hal/bo;->ez:Lcom/glympse/android/hal/bm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v3, p0, Lcom/glympse/android/hal/bo;->eD:Lcom/glympse/android/hal/bp;

    iput-object p2, p0, Lcom/glympse/android/hal/bo;->ey:Lcom/glympse/android/hal/GSmsListener;

    iput-object p3, p0, Lcom/glympse/android/hal/bo;->eB:Ljava/lang/String;

    iput-object p4, p0, Lcom/glympse/android/hal/bo;->ew:Ljava/lang/String;

    iput-object p5, p0, Lcom/glympse/android/hal/bo;->ex:Ljava/lang/String;

    iput p6, p0, Lcom/glympse/android/hal/bo;->eC:I

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmsBroadcastReceiver.SmsBroadcastReceiver() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/glympse/android/hal/bo;->eB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Lcom/glympse/android/hal/bp;

    invoke-direct {v0, p0, v3}, Lcom/glympse/android/hal/bp;-><init>(Lcom/glympse/android/hal/bo;Lcom/glympse/android/hal/bm$1;)V

    iput-object v0, p0, Lcom/glympse/android/hal/bo;->eD:Lcom/glympse/android/hal/bp;

    invoke-static {p1}, Lcom/glympse/android/hal/bm;->a(Lcom/glympse/android/hal/bm;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/hal/bo;->eD:Lcom/glympse/android/hal/bp;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {p1}, Lcom/glympse/android/hal/bm;->b(Lcom/glympse/android/hal/bm;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-static {p1}, Lcom/glympse/android/hal/bm;->b(Lcom/glympse/android/hal/bm;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4b
    return-void
.end method

.method static synthetic a(Lcom/glympse/android/hal/bo;)Lcom/glympse/android/hal/GSmsListener;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/bo;->ey:Lcom/glympse/android/hal/GSmsListener;

    return-object v0
.end method

.method static synthetic a(Lcom/glympse/android/hal/bo;Lcom/glympse/android/hal/GSmsListener;)Lcom/glympse/android/hal/GSmsListener;
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/hal/bo;->ey:Lcom/glympse/android/hal/GSmsListener;

    return-object p1
.end method

.method static synthetic b(Lcom/glympse/android/hal/bo;)V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/hal/bo;->stop()V

    return-void
.end method

.method private d(Landroid/content/Intent;)V
    .registers 13

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/glympse/android/hal/bo;->getResultCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_f4

    iput-boolean v4, p0, Lcom/glympse/android/hal/bo;->aP:Z

    const-string v3, "Unknown error"

    invoke-virtual {p0}, Lcom/glympse/android/hal/bo;->getResultCode()I

    move-result v0

    if-lez v0, :cond_e2

    move v1, v0

    :goto_15
    move v5, v0

    move v6, v1

    move-object v0, v3

    move v3, v2

    :goto_19
    if-eqz v0, :cond_f1

    if-eqz v6, :cond_f1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_3b
    if-eqz v1, :cond_e9

    move v0, v2

    move v2, v4

    :goto_3f
    if-eqz v0, :cond_4e

    iget v3, p0, Lcom/glympse/android/hal/bo;->eC:I

    if-nez v3, :cond_4e

    iget-object v3, p0, Lcom/glympse/android/hal/bo;->ez:Lcom/glympse/android/hal/bm;

    iget-object v8, p0, Lcom/glympse/android/hal/bo;->ew:Ljava/lang/String;

    iget-object v9, p0, Lcom/glympse/android/hal/bo;->ex:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lcom/glympse/android/hal/bm;->c(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "SmsBroadcastReceiver.handleIntent() - "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/glympse/android/hal/bo;->eB:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", Success: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", Failed: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", Error: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", Code: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", Result: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-boolean v3, p0, Lcom/glympse/android/hal/bo;->aP:Z

    if-eqz v3, :cond_9b

    invoke-static {p1}, Lcom/glympse/android/hal/DebugBase;->dumpIntent(Landroid/content/Intent;)V

    :cond_9b
    if-nez v0, :cond_9f

    if-eqz v2, :cond_b1

    :cond_9f
    iget-object v2, p0, Lcom/glympse/android/hal/bo;->ey:Lcom/glympse/android/hal/GSmsListener;

    if-eqz v2, :cond_aa

    iget-object v2, p0, Lcom/glympse/android/hal/bo;->ey:Lcom/glympse/android/hal/GSmsListener;

    invoke-interface {v2, v0, v5, v1, v7}, Lcom/glympse/android/hal/GSmsListener;->complete(ZILjava/lang/String;Lcom/glympse/android/core/GCommon;)V

    iput-object v7, p0, Lcom/glympse/android/hal/bo;->ey:Lcom/glympse/android/hal/GSmsListener;

    :cond_aa
    iget-boolean v0, p0, Lcom/glympse/android/hal/bo;->aP:Z

    if-nez v0, :cond_b1

    invoke-direct {p0}, Lcom/glympse/android/hal/bo;->stop()V

    :cond_b1
    return-void

    :sswitch_b2
    move v3, v2

    move v5, v2

    move v6, v2

    move-object v0, v7

    goto/16 :goto_19

    :sswitch_b8
    const-string v0, "General failure. The phone number may be invalid."

    const-string v1, "errorCode"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v1

    goto/16 :goto_19

    :sswitch_c5
    const-string v1, "No SMS service"

    const/4 v0, 0x4

    move-object v3, v1

    move v1, v2

    goto/16 :goto_15

    :sswitch_cc
    const-string v1, "Invalid SMS message format"

    const/4 v0, 0x3

    move-object v3, v1

    move v1, v2

    goto/16 :goto_15

    :sswitch_d3
    const-string v1, "Radio is off. Are you in airplane mode?"

    const/4 v0, 0x2

    move-object v3, v1

    move v1, v2

    goto/16 :goto_15

    :sswitch_da
    iput-boolean v4, p0, Lcom/glympse/android/hal/bo;->aP:Z

    move v3, v4

    move v5, v2

    move v6, v2

    move-object v0, v7

    goto/16 :goto_19

    :cond_e2
    const/16 v1, 0x22b

    move v10, v1

    move v1, v0

    move v0, v10

    goto/16 :goto_15

    :cond_e9
    if-nez v3, :cond_ee

    move v0, v4

    goto/16 :goto_3f

    :cond_ee
    move v0, v2

    goto/16 :goto_3f

    :cond_f1
    move-object v1, v0

    goto/16 :goto_3b

    :sswitch_data_f4
    .sparse-switch
        -0x1 -> :sswitch_b2
        0x1 -> :sswitch_b8
        0x2 -> :sswitch_d3
        0x3 -> :sswitch_cc
        0x4 -> :sswitch_c5
        0x7cf -> :sswitch_da
    .end sparse-switch
.end method

.method private stop()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/hal/bo;->ez:Lcom/glympse/android/hal/bm;

    invoke-static {v0}, Lcom/glympse/android/hal/bm;->b(Lcom/glympse/android/hal/bm;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_11

    :try_start_8
    iget-object v0, p0, Lcom/glympse/android/hal/bo;->ez:Lcom/glympse/android/hal/bm;

    invoke-static {v0}, Lcom/glympse/android/hal/bm;->b(Lcom/glympse/android/hal/bm;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_11
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/glympse/android/hal/bo;->ez:Lcom/glympse/android/hal/bm;

    invoke-static {v0}, Lcom/glympse/android/hal/bm;->a(Lcom/glympse/android/hal/bm;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/hal/bo;->eD:Lcom/glympse/android/hal/bp;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/glympse/android/hal/bo;->ez:Lcom/glympse/android/hal/bm;

    invoke-static {v0}, Lcom/glympse/android/hal/bm;->c(Lcom/glympse/android/hal/bm;)I

    iget-object v0, p0, Lcom/glympse/android/hal/bo;->ez:Lcom/glympse/android/hal/bm;

    invoke-static {v0}, Lcom/glympse/android/hal/bm;->d(Lcom/glympse/android/hal/bm;)I

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/glympse/android/hal/bo;->ez:Lcom/glympse/android/hal/bm;

    invoke-virtual {v0}, Lcom/glympse/android/hal/bm;->X()V

    :cond_1d
    invoke-direct {p0, p2}, Lcom/glympse/android/hal/bo;->d(Landroid/content/Intent;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_21

    :goto_20
    return-void

    :catch_21
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_20
.end method
