.class Lcom/glympse/android/lib/ix;
.super Ljava/lang/Object;
.source "TravelMode.java"

# interfaces
.implements Lcom/glympse/android/api/GTravelMode;


# instance fields
.field private pb:I

.field private tr:Lcom/glympse/android/core/GPrimitive;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/glympse/android/core/GPrimitive;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/glympse/android/lib/ix;->pb:I

    iput-object p2, p0, Lcom/glympse/android/lib/ix;->tr:Lcom/glympse/android/core/GPrimitive;

    return-void
.end method

.method public static E(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const-string v1, "driving"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    goto :goto_7

    :cond_12
    const-string v1, "bicycling"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x2

    goto :goto_7

    :cond_1c
    const-string v1, "walking"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v0, 0x3

    goto :goto_7

    :cond_26
    const-string v1, "airline"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x4

    goto :goto_7
.end method

.method public static w(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_26

    const-string v0, "default"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0

    :pswitch_a
    const-string v0, "driving"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_11
    const-string v0, "bicycling"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_18
    const-string v0, "walking"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_1f
    const-string v0, "airline"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_a
        :pswitch_11
        :pswitch_18
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public decode(Lcom/glympse/android/core/GPrimitive;)V
    .registers 4

    const-string v0, "mode"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/glympse/android/lib/ix;->pb:I

    const-string v0, "settings"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ix;->tr:Lcom/glympse/android/core/GPrimitive;

    return-void
.end method

.method public encode(Lcom/glympse/android/core/GPrimitive;I)V
    .registers 6

    const-string v0, "type"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/glympse/android/lib/ix;->pb:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/glympse/android/lib/ix;->tr:Lcom/glympse/android/core/GPrimitive;

    if-eqz v0, :cond_1b

    const-string v0, "settings"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/ix;->tr:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    :cond_1b
    return-void
.end method

.method public getMode()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/ix;->pb:I

    return v0
.end method

.method public getSettings()Lcom/glympse/android/core/GPrimitive;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ix;->tr:Lcom/glympse/android/core/GPrimitive;

    return-object v0
.end method

.method public isEqual(Lcom/glympse/android/core/GCommon;)Z
    .registers 5

    const/4 v0, 0x0

    check-cast p1, Lcom/glympse/android/lib/ix;

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget v1, p0, Lcom/glympse/android/lib/ix;->pb:I

    iget v2, p1, Lcom/glympse/android/lib/ix;->pb:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/glympse/android/lib/ix;->tr:Lcom/glympse/android/core/GPrimitive;

    if-nez v1, :cond_16

    iget-object v1, p1, Lcom/glympse/android/lib/ix;->tr:Lcom/glympse/android/core/GPrimitive;

    if-nez v1, :cond_5

    :cond_14
    const/4 v0, 0x1

    goto :goto_5

    :cond_16
    iget-object v1, p1, Lcom/glympse/android/lib/ix;->tr:Lcom/glympse/android/core/GPrimitive;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/glympse/android/lib/ix;->tr:Lcom/glympse/android/core/GPrimitive;

    iget-object v2, p1, Lcom/glympse/android/lib/ix;->tr:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->isEqual(Lcom/glympse/android/core/GCommon;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_5
.end method
