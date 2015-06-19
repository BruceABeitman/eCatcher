.class final Lcom/instagram/common/s/c;
.super Ljava/lang/Object;
.source "RageSensorEventListener.java"


# instance fields
.field final a:J

.field private final b:Lcom/instagram/common/i/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/i/b/a",
            "<",
            "Lcom/instagram/common/s/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:I


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x3b9aca00

    iput-wide v0, p0, Lcom/instagram/common/s/c;->a:J

    sget v0, Lcom/instagram/common/s/d;->a:I

    iput v0, p0, Lcom/instagram/common/s/c;->d:I

    new-instance v0, Lcom/instagram/common/i/b/a;

    invoke-direct {v0}, Lcom/instagram/common/i/b/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/s/c;->b:Lcom/instagram/common/i/b/a;

    return-void
.end method


# virtual methods
.method final a()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/s/c;->b:Lcom/instagram/common/i/b/a;

    invoke-virtual {v0}, Lcom/instagram/common/i/b/a;->c()V

    return-void
.end method

.method final a(Landroid/hardware/SensorEvent;)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/common/s/c;->b:Lcom/instagram/common/i/b/a;

    invoke-virtual {v0}, Lcom/instagram/common/i/b/a;->b()I

    move-result v0

    if-nez v0, :cond_1b

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v2, 0x3b9aca00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/instagram/common/s/c;->c:J

    iget-object v0, p0, Lcom/instagram/common/s/c;->b:Lcom/instagram/common/i/b/a;

    new-instance v1, Lcom/instagram/common/s/e;

    invoke-direct {v1, p1}, Lcom/instagram/common/s/e;-><init>(Landroid/hardware/SensorEvent;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/i/b/a;->a(Ljava/lang/Object;)V

    :goto_1a
    return-void

    :cond_1b
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v3, p0, Lcom/instagram/common/s/c;->c:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_27

    const/16 v1, 0x20

    if-lt v0, v1, :cond_2b

    :cond_27
    const/16 v1, 0xa

    if-ge v0, v1, :cond_36

    :cond_2b
    iget-object v0, p0, Lcom/instagram/common/s/c;->b:Lcom/instagram/common/i/b/a;

    new-instance v1, Lcom/instagram/common/s/e;

    invoke-direct {v1, p1}, Lcom/instagram/common/s/e;-><init>(Landroid/hardware/SensorEvent;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/i/b/a;->a(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_36
    iget-object v0, p0, Lcom/instagram/common/s/c;->b:Lcom/instagram/common/i/b/a;

    invoke-virtual {v0}, Lcom/instagram/common/i/b/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/s/e;

    invoke-virtual {v0, p1}, Lcom/instagram/common/s/e;->a(Landroid/hardware/SensorEvent;)V

    iget-object v1, p0, Lcom/instagram/common/s/c;->b:Lcom/instagram/common/i/b/a;

    invoke-virtual {v1, v0}, Lcom/instagram/common/i/b/a;->a(Ljava/lang/Object;)V

    goto :goto_1a
.end method

.method final b()Z
    .registers 11

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_6
    iget-object v0, p0, Lcom/instagram/common/s/c;->b:Lcom/instagram/common/i/b/a;

    invoke-virtual {v0}, Lcom/instagram/common/i/b/a;->b()I

    move-result v0

    if-ge v1, v0, :cond_6f

    iget-object v0, p0, Lcom/instagram/common/s/c;->b:Lcom/instagram/common/i/b/a;

    invoke-virtual {v0, v1}, Lcom/instagram/common/i/b/a;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/s/e;

    iget v5, v0, Lcom/instagram/common/s/e;->a:F

    const v7, 0x4150af7e

    cmpl-float v5, v5, v7

    if-lez v5, :cond_39

    move v5, v6

    :goto_20
    iget v0, v0, Lcom/instagram/common/s/e;->a:F

    const v7, -0x3eaf5082

    cmpg-float v0, v0, v7

    if-gez v0, :cond_3b

    move v0, v6

    :goto_2a
    sget-object v7, Lcom/instagram/common/s/b;->a:[I

    iget v8, p0, Lcom/instagram/common/s/c;->d:I

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_76

    :cond_35
    :goto_35
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_39
    move v5, v2

    goto :goto_20

    :cond_3b
    move v0, v2

    goto :goto_2a

    :pswitch_3d
    if-eqz v5, :cond_46

    sget v0, Lcom/instagram/common/s/d;->b:I

    iput v0, p0, Lcom/instagram/common/s/c;->d:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_46
    if-eqz v0, :cond_35

    sget v0, Lcom/instagram/common/s/d;->c:I

    iput v0, p0, Lcom/instagram/common/s/c;->d:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :pswitch_4f
    if-eqz v0, :cond_58

    sget v0, Lcom/instagram/common/s/d;->c:I

    iput v0, p0, Lcom/instagram/common/s/c;->d:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_58
    if-nez v5, :cond_35

    sget v0, Lcom/instagram/common/s/d;->a:I

    iput v0, p0, Lcom/instagram/common/s/c;->d:I

    goto :goto_35

    :pswitch_5f
    if-eqz v5, :cond_68

    sget v0, Lcom/instagram/common/s/d;->b:I

    iput v0, p0, Lcom/instagram/common/s/c;->d:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_68
    if-nez v0, :cond_35

    sget v0, Lcom/instagram/common/s/d;->a:I

    iput v0, p0, Lcom/instagram/common/s/c;->d:I

    goto :goto_35

    :cond_6f
    if-lt v4, v9, :cond_74

    if-lt v3, v9, :cond_74

    :goto_73
    return v6

    :cond_74
    move v6, v2

    goto :goto_73

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_4f
        :pswitch_5f
    .end packed-switch
.end method
