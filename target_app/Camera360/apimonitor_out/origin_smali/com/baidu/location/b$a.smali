.class Lcom/baidu/location/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/b;


# direct methods
.method private constructor <init>(Lcom/baidu/location/b;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/b;Lcom/baidu/location/b$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/location/b$a;-><init>(Lcom/baidu/location/b;)V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0}, Lcom/baidu/location/b;->new(Lcom/baidu/location/b;)Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    packed-switch p1, :pswitch_data_ba

    :pswitch_f
    goto :goto_b

    :pswitch_10
    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0, v3}, Lcom/baidu/location/b;->a(Lcom/baidu/location/b;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0, v2}, Lcom/baidu/location/b;->if(Lcom/baidu/location/b;Z)V

    invoke-static {v2}, Lcom/baidu/location/b;->a(I)I

    goto :goto_b

    :pswitch_1e
    const-string/jumbo v0, "baidu_location_service"

    const-string/jumbo v1, "gps status change"

    invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0}, Lcom/baidu/location/b;->do(Lcom/baidu/location/b;)Landroid/location/GpsStatus;

    move-result-object v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    iget-object v1, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v1}, Lcom/baidu/location/b;->new(Lcom/baidu/location/b;)Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/b;->a(Lcom/baidu/location/b;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    :goto_3e
    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0}, Lcom/baidu/location/b;->do(Lcom/baidu/location/b;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_b8

    add-int/lit8 v0, v1, 0x1

    :goto_61
    move v1, v0

    goto :goto_4d

    :cond_63
    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0}, Lcom/baidu/location/b;->new(Lcom/baidu/location/b;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v1}, Lcom/baidu/location/b;->do(Lcom/baidu/location/b;)Landroid/location/GpsStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    goto :goto_3e

    :cond_73
    const-string/jumbo v0, "baidu_location_service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gps nunmber in count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/b;->void()I

    move-result v0

    if-lt v0, v5, :cond_9e

    if-ge v1, v5, :cond_9e

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/baidu/location/b;->do(Lcom/baidu/location/b;J)J

    :cond_9e
    if-ge v1, v5, :cond_a5

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0, v2}, Lcom/baidu/location/b;->if(Lcom/baidu/location/b;Z)V

    :cond_a5
    invoke-static {}, Lcom/baidu/location/b;->void()I

    move-result v0

    if-gt v0, v5, :cond_b3

    if-le v1, v5, :cond_b3

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/baidu/location/b;->if(Lcom/baidu/location/b;Z)V

    :cond_b3
    invoke-static {v1}, Lcom/baidu/location/b;->a(I)I

    goto/16 :goto_b

    :cond_b8
    move v0, v1

    goto :goto_61

    :pswitch_data_ba
    .packed-switch 0x2
        :pswitch_10
        :pswitch_f
        :pswitch_1e
    .end packed-switch
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .registers 14

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-boolean v0, Lcom/baidu/location/j;->m:Z

    if-nez v0, :cond_a

    sput v7, Lcom/baidu/location/j;->h:I

    :cond_9
    :goto_9
    return-void

    :cond_a
    if-eqz p3, :cond_9

    const-string/jumbo v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x96

    if-gt v0, v1, :cond_9

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-virtual {v0}, Lcom/baidu/location/b;->new()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "baidu_location_service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gps manager onNmeaReceived : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v2}, Lcom/baidu/location/b;->a(Lcom/baidu/location/b;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-lez v0, :cond_f2

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0}, Lcom/baidu/location/b;->int(Lcom/baidu/location/b;)Z

    move-result v0

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0}, Lcom/baidu/location/b;->case(Lcom/baidu/location/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f2

    :try_start_77
    new-instance v0, Lcom/baidu/location/b$c;

    iget-object v1, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    iget-object v2, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v2}, Lcom/baidu/location/b;->case(Lcom/baidu/location/b;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v3}, Lcom/baidu/location/b;->if(Lcom/baidu/location/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v4}, Lcom/baidu/location/b;->for(Lcom/baidu/location/b;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v5}, Lcom/baidu/location/b;->byte(Lcom/baidu/location/b;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/location/b$c;-><init>(Lcom/baidu/location/b;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/location/b$1;)V

    invoke-static {v0}, Lcom/baidu/location/b$c;->if(Lcom/baidu/location/b$c;)Z

    move-result v1

    if-eqz v1, :cond_114

    invoke-static {v0}, Lcom/baidu/location/b$c;->do(Lcom/baidu/location/b$c;)I

    move-result v1

    sput v1, Lcom/baidu/location/j;->h:I

    sget v1, Lcom/baidu/location/j;->h:I

    if-lez v1, :cond_d3

    const-string/jumbo v1, "&nmea=%.1f|%.1f&g_tp=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/baidu/location/b$c;->for(Lcom/baidu/location/b$c;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/baidu/location/b$c;->a(Lcom/baidu/location/b$c;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    sget v3, Lcom/baidu/location/j;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/b;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_d3} :catch_121

    :cond_d3
    :goto_d3
    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0}, Lcom/baidu/location/b;->case(Lcom/baidu/location/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    iget-object v1, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    iget-object v2, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v2, v9}, Lcom/baidu/location/b;->a(Lcom/baidu/location/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/location/b;->do(Lcom/baidu/location/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/b;->if(Lcom/baidu/location/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0, v7}, Lcom/baidu/location/b;->do(Lcom/baidu/location/b;Z)Z

    :cond_f2
    const-string/jumbo v0, "$GPGGA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0, v8}, Lcom/baidu/location/b;->do(Lcom/baidu/location/b;Z)Z

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/b;->if(Lcom/baidu/location/b;Ljava/lang/String;)Ljava/lang/String;

    :cond_109
    :goto_109
    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/baidu/location/b;->a(Lcom/baidu/location/b;J)J

    goto/16 :goto_9

    :cond_114
    const/4 v0, 0x0

    :try_start_115
    sput v0, Lcom/baidu/location/j;->h:I

    const-string/jumbo v0, "baidu_location_service"

    const-string/jumbo v1, "nmea invalid"

    invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_120} :catch_121

    goto :goto_d3

    :catch_121
    move-exception v0

    sput v7, Lcom/baidu/location/j;->h:I

    goto :goto_d3

    :cond_125
    const-string/jumbo v0, "$GPGSV"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13c

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-static {v0}, Lcom/baidu/location/b;->case(Lcom/baidu/location/b;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_109

    :cond_13c
    const-string/jumbo v0, "$GPGSA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_109

    iget-object v0, p0, Lcom/baidu/location/b$a;->a:Lcom/baidu/location/b;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/b;->a(Lcom/baidu/location/b;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_109
.end method
