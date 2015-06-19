.class Lcom/glympse/android/rdbg/h;
.super Ljava/lang/Object;
.source "RDbgPageDomain.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static O(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/16 v11, 0xa

    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    "

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    check-cast v0, [C

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    move v4, v3

    move v2, v3

    move v1, v3

    :goto_1b
    if-ge v4, v8, :cond_88

    aget-char v9, v0, v4

    sparse-switch v9, :sswitch_data_8e

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_25
    :goto_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :sswitch_28
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v2, :cond_25

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v3

    :goto_31
    add-int/lit8 v9, v1, 0x1

    if-ge v5, v9, :cond_3b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :sswitch_3e
    if-nez v2, :cond_4e

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v3

    :goto_46
    if-ge v5, v1, :cond_4e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    :cond_4e
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    :sswitch_52
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v2, :cond_25

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v3

    :goto_5b
    if-ge v5, v1, :cond_25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5b

    :sswitch_63
    if-nez v2, :cond_6b

    const-string v5, ": "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_6b
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    :sswitch_6f
    if-eqz v2, :cond_25

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    :sswitch_75
    if-lez v4, :cond_82

    add-int/lit8 v5, v4, -0x1

    aget-char v5, v0, v5

    const/16 v10, 0x5c

    if-eq v5, v10, :cond_82

    if-nez v2, :cond_86

    const/4 v2, 0x1

    :cond_82
    :goto_82
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_86
    move v2, v3

    goto :goto_82

    :cond_88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_8e
    .sparse-switch
        0x9 -> :sswitch_6f
        0xa -> :sswitch_6f
        0x20 -> :sswitch_6f
        0x22 -> :sswitch_75
        0x2c -> :sswitch_52
        0x3a -> :sswitch_63
        0x5b -> :sswitch_28
        0x5d -> :sswitch_3e
        0x7b -> :sswitch_28
        0x7d -> :sswitch_3e
    .end sparse-switch
.end method

.method public static b(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/lib/GGlympsePrivate;)Lcom/glympse/android/core/GPrimitive;
    .registers 7

    const/4 v4, 0x2

    const-string v0, "id"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v4}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v2

    const-string v3, "id"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    const-string v0, "error"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/glympse/android/core/GPrimitive;->putNull(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-static {p1}, Lcom/glympse/android/rdbg/j;->k(Lcom/glympse/android/lib/GGlympsePrivate;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    const-string v3, "frameTree"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    const-string v1, "result"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    return-object v2
.end method

.method public static c(Lcom/glympse/android/core/GPrimitive;Lcom/glympse/android/lib/GGlympsePrivate;)Lcom/glympse/android/core/GPrimitive;
    .registers 8

    const/4 v4, 0x2

    const-string v0, "id"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v4}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v2

    const-string v3, "id"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    const-string v0, "error"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/glympse/android/core/GPrimitive;->putNull(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    const-string v0, "params"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    const-string v3, "url"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "This isn\'t actually a file. It\'s a weird placeholder for the root frame."

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_45
    :goto_45
    const-string v3, "content"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "base64Encoded"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V

    const-string v0, "result"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    return-object v2

    :cond_62
    invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/glympse/android/hal/HalFactory;->openDirectory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/glympse/android/hal/GDirectory;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/glympse/android/hal/GDirectory;->readText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7d

    const-string v0, "This file no longer exists."

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    :cond_7d
    const-string v4, ".dat"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8d

    const-string v4, ".dat"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    :cond_8d
    invoke-static {v0}, Lcom/glympse/android/rdbg/h;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_45
.end method
