.class Lcom/baidu/location/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/b;


# direct methods
.method private constructor <init>(Lcom/baidu/location/b;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/b$b;->a:Lcom/baidu/location/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/b;Lcom/baidu/location/b$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/location/b$b;-><init>(Lcom/baidu/location/b;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/location/b$b;->a:Lcom/baidu/location/b;

    invoke-static {v0, p1}, Lcom/baidu/location/b;->a(Lcom/baidu/location/b;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/b$b;->a:Lcom/baidu/location/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b;->a(Lcom/baidu/location/b;Z)Z

    iget-object v0, p0, Lcom/baidu/location/b$b;->a:Lcom/baidu/location/b;

    invoke-static {v0}, Lcom/baidu/location/b;->try(Lcom/baidu/location/b;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/location/b$b;->a:Lcom/baidu/location/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/b;->if(Lcom/baidu/location/b;Z)V

    :cond_19
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/location/b$b;->a:Lcom/baidu/location/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b;->a(Lcom/baidu/location/b;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/b$b;->a:Lcom/baidu/location/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b;->if(Lcom/baidu/location/b;Z)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 8

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_2c

    :goto_4
    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/baidu/location/b$b;->a:Lcom/baidu/location/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b;->a(Lcom/baidu/location/b;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/b$b;->a:Lcom/baidu/location/b;

    invoke-static {v0, v3}, Lcom/baidu/location/b;->if(Lcom/baidu/location/b;Z)V

    goto :goto_4

    :pswitch_11
    iget-object v0, p0, Lcom/baidu/location/b$b;->a:Lcom/baidu/location/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/baidu/location/b;->if(Lcom/baidu/location/b;J)J

    iget-object v0, p0, Lcom/baidu/location/b$b;->a:Lcom/baidu/location/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/b;->a(Lcom/baidu/location/b;Z)Z

    iget-object v0, p0, Lcom/baidu/location/b$b;->a:Lcom/baidu/location/b;

    invoke-static {v0, v3}, Lcom/baidu/location/b;->if(Lcom/baidu/location/b;Z)V

    goto :goto_4

    :pswitch_26
    iget-object v0, p0, Lcom/baidu/location/b$b;->a:Lcom/baidu/location/b;

    invoke-static {v0, v3}, Lcom/baidu/location/b;->a(Lcom/baidu/location/b;Z)Z

    goto :goto_4

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_11
        :pswitch_26
    .end packed-switch
.end method
