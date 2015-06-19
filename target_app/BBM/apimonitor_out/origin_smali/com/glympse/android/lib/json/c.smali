.class Lcom/glympse/android/lib/json/c;
.super Ljava/lang/Object;
.source "JsonSerializer.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/glympse/android/core/GPrimitive;)V
    .registers 5

    const/16 v2, 0x22

    if-nez p1, :cond_a

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    return-void

    :cond_a
    invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->type()I

    move-result v0

    sparse-switch v0, :sswitch_data_78

    goto :goto_9

    :sswitch_12
    invoke-static {p0, p1}, Lcom/glympse/android/lib/json/c;->b(Ljava/lang/StringBuilder;Lcom/glympse/android/core/GPrimitive;)V

    goto :goto_9

    :sswitch_16
    invoke-static {p0, p1}, Lcom/glympse/android/lib/json/c;->c(Ljava/lang/StringBuilder;Lcom/glympse/android/core/GPrimitive;)V

    goto :goto_9

    :sswitch_1a
    invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_2a
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_9

    :sswitch_2e
    invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->getLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_9

    :sswitch_36
    invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v0, "\"\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_46
    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->jsonEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    const-string v0, "\"\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_56
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :sswitch_60
    invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->getBool()Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_6c
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :sswitch_72
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :sswitch_data_78
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_16
        0x4 -> :sswitch_1a
        0x8 -> :sswitch_2e
        0x10 -> :sswitch_60
        0x20 -> :sswitch_36
        0x40 -> :sswitch_72
    .end sparse-switch
.end method

.method private static b(Ljava/lang/StringBuilder;Lcom/glympse/android/core/GPrimitive;)V
    .registers 5

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_1f

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/glympse/android/lib/json/c;->a(Ljava/lang/StringBuilder;Lcom/glympse/android/core/GPrimitive;)V

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_1c

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static c(Ljava/lang/StringBuilder;Lcom/glympse/android/core/GPrimitive;)V
    .registers 5

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/glympse/android/core/GPrimitive;->getKeys()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    :cond_d
    :goto_d
    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->jsonEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\":"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/glympse/android/lib/json/c;->a(Ljava/lang/StringBuilder;Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_39
    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method
