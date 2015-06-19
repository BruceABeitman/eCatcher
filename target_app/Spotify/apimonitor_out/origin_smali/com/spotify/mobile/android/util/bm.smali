.class public final Lcom/spotify/mobile/android/util/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/spotify/mobile/android/util/bm;->a:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/bm;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget-object v1, p0, Lcom/spotify/mobile/android/util/bm;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/spotify/mobile/android/util/bm;->a:I

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(I)V
    .registers 4

    iget-object v1, p0, Lcom/spotify/mobile/android/util/bm;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/spotify/mobile/android/util/bm;->a:I

    iget-object v0, p0, Lcom/spotify/mobile/android/util/bm;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/util/bm;->a:I

    packed-switch v0, :pswitch_data_14

    const-string v0, "INVALID"

    :goto_7
    return-object v0

    :pswitch_8
    const-string v0, "STOPPING"

    goto :goto_7

    :pswitch_b
    const-string v0, "STOPPED"

    goto :goto_7

    :pswitch_e
    const-string v0, "STARTING"

    goto :goto_7

    :pswitch_11
    const-string v0, "STARTED"

    goto :goto_7

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method
