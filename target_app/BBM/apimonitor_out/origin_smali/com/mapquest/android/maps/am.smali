.class public final Lcom/mapquest/android/maps/am;
.super Landroid/os/Handler;
.source "MapController.java"


# instance fields
.field a:Lcom/mapquest/android/maps/MapView;

.field final synthetic b:Lcom/mapquest/android/maps/al;


# direct methods
.method private constructor <init>(Lcom/mapquest/android/maps/al;Lcom/mapquest/android/maps/MapView;)V
    .registers 3

    iput-object p1, p0, Lcom/mapquest/android/maps/am;->b:Lcom/mapquest/android/maps/al;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/mapquest/android/maps/am;->a:Lcom/mapquest/android/maps/MapView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mapquest/android/maps/al;Lcom/mapquest/android/maps/MapView;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/mapquest/android/maps/am;-><init>(Lcom/mapquest/android/maps/al;Lcom/mapquest/android/maps/MapView;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;)V
    .registers 3

    invoke-static {p0}, Lcom/mapquest/android/maps/cv;->a(Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/am;->dispatchMessage(Landroid/os/Message;)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/am;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .registers 9

    const v5, 0x15752a00

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_112

    :goto_8
    return-void

    :pswitch_9
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/mapquest/android/maps/g;->a(I)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/mapquest/android/maps/s;

    invoke-direct {v2, v0, v1}, Lcom/mapquest/android/maps/s;-><init>(II)V

    iget-object v0, p0, Lcom/mapquest/android/maps/am;->a:Lcom/mapquest/android/maps/MapView;

    iget-object v1, p0, Lcom/mapquest/android/maps/am;->a:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/mapquest/android/maps/MapView;->a(Lcom/mapquest/android/maps/s;I)V

    iget-object v0, p0, Lcom/mapquest/android/maps/am;->a:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    const/16 v0, 0x17

    invoke-static {v0}, Lcom/mapquest/android/maps/g;->a(I)V

    goto :goto_8

    :pswitch_3d
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/mapquest/android/maps/g;->a(I)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "zoom_level"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/mapquest/android/maps/am;->a:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/MapView;->setZoomLevel(I)V

    iget-object v0, p0, Lcom/mapquest/android/maps/am;->a:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/mapquest/android/maps/g;->a(I)V

    goto :goto_8

    :pswitch_5c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/mapquest/android/maps/am;->a:Lcom/mapquest/android/maps/MapView;

    shr-int/lit8 v0, v0, 0x1

    shr-int/lit8 v1, v1, 0x1

    iget-object v3, v2, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;

    iget v3, v3, Lcom/mapquest/android/maps/s;->b:I

    sub-int/2addr v3, v1

    add-int/2addr v3, v5

    rem-int/2addr v3, v5

    iget-object v4, v2, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;

    iget v4, v4, Lcom/mapquest/android/maps/s;->b:I

    add-int/2addr v1, v4

    rem-int/2addr v1, v5

    new-instance v4, Lcom/mapquest/android/maps/b;

    new-instance v5, Lcom/mapquest/android/maps/s;

    iget-object v6, v2, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;

    iget v6, v6, Lcom/mapquest/android/maps/s;->a:I

    add-int/2addr v6, v0

    invoke-direct {v5, v6, v3}, Lcom/mapquest/android/maps/s;-><init>(II)V

    new-instance v3, Lcom/mapquest/android/maps/s;

    iget-object v6, v2, Lcom/mapquest/android/maps/MapView;->d:Lcom/mapquest/android/maps/s;

    iget v6, v6, Lcom/mapquest/android/maps/s;->a:I

    sub-int v0, v6, v0

    invoke-direct {v3, v0, v1}, Lcom/mapquest/android/maps/s;-><init>(II)V

    invoke-direct {v4, v5, v3}, Lcom/mapquest/android/maps/b;-><init>(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/s;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v4, v0}, Lcom/mapquest/android/maps/MapView;->a(Lcom/mapquest/android/maps/b;Z)V

    iget-object v0, p0, Lcom/mapquest/android/maps/am;->a:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    goto/16 :goto_8

    :pswitch_a8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ul_latitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ul_longitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "lr_latitude"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "lr_longitude"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/mapquest/android/maps/s;

    invoke-direct {v4, v0, v1}, Lcom/mapquest/android/maps/s;-><init>(II)V

    new-instance v0, Lcom/mapquest/android/maps/s;

    invoke-direct {v0, v2, v3}, Lcom/mapquest/android/maps/s;-><init>(II)V

    new-instance v1, Lcom/mapquest/android/maps/b;

    invoke-direct {v1, v4, v0}, Lcom/mapquest/android/maps/b;-><init>(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/s;)V

    iget-object v0, p0, Lcom/mapquest/android/maps/am;->a:Lcom/mapquest/android/maps/MapView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mapquest/android/maps/MapView;->a(Lcom/mapquest/android/maps/b;Z)V

    iget-object v0, p0, Lcom/mapquest/android/maps/am;->a:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    goto/16 :goto_8

    :pswitch_ec
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/mapquest/android/maps/g;->a(I)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "scale"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/mapquest/android/maps/am;->a:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/MapView;->setMapRotation(F)V

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/mapquest/android/maps/g;->a(I)V

    iget-object v0, p0, Lcom/mapquest/android/maps/am;->a:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    const/16 v0, 0x21

    invoke-static {v0}, Lcom/mapquest/android/maps/g;->a(I)V

    goto/16 :goto_8

    nop

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_9
        :pswitch_3d
        :pswitch_5c
        :pswitch_a8
        :pswitch_ec
    .end packed-switch
.end method
