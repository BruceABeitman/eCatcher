.class Lcom/c/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field final a:Lcom/c/aw;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "L\u001b0zK]\u0011*.\u000e\\\u001c-6K\u000b\u0017(5]N\u0010"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_27

    :cond_b
    move-object v3, v0

    move v4, v2

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_10
    aget-char v6, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_42

    const/16 v5, 0x2e

    :goto_19
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_25

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_10

    :cond_25
    move v1, v0

    move-object v0, v3

    :cond_27
    if-gt v1, v2, :cond_b

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/ab;->b:Ljava/lang/String;

    return-void

    :pswitch_35
    const/16 v5, 0x2b

    goto :goto_19

    :pswitch_38
    const/16 v5, 0x74

    goto :goto_19

    :pswitch_3b
    const/16 v5, 0x44

    goto :goto_19

    :pswitch_3e
    const/16 v5, 0x5a

    goto :goto_19

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_35
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
    .end packed-switch
.end method

.method constructor <init>(Lcom/c/aw;)V
    .registers 2

    iput-object p1, p0, Lcom/c/ab;->a:Lcom/c/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10

    iget-object v6, p0, Lcom/c/ab;->a:Lcom/c/aw;

    monitor-enter v6

    :try_start_3
    iget-object v0, p0, Lcom/c/ab;->a:Lcom/c/aw;

    invoke-static {v0}, Lcom/c/aw;->b(Lcom/c/aw;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/c/ab;->a:Lcom/c/aw;

    invoke-static {v0}, Lcom/c/aw;->c(Lcom/c/aw;)Lcom/c/bp;

    move-result-object v0

    sget-object v1, Lcom/c/ab;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    monitor-exit v6

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/c/ab;->a:Lcom/c/aw;

    invoke-static {v0}, Lcom/c/aw;->d(Lcom/c/aw;)Ljava/util/List;

    move-result-object v7

    new-instance v0, Lcom/c/r;

    iget-object v1, p0, Lcom/c/ab;->a:Lcom/c/aw;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-static {}, Lcom/c/ba;->d()Lcom/c/ba;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/c/r;-><init>(Lcom/c/am;FFFLcom/c/ba;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/c/ab;->a:Lcom/c/aw;

    invoke-static {v0}, Lcom/c/aw;->e(Lcom/c/aw;)V

    monitor-exit v6

    goto :goto_17

    :catchall_42
    move-exception v0

    monitor-exit v6
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v0
.end method
