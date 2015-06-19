.class public Ltwitter4j/internal/org/json/JSONObject;
.super Ljava/lang/Object;
.source "JSONObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/internal/org/json/JSONObject$1;,
        Ltwitter4j/internal/org/json/JSONObject$Null;
    }
.end annotation


# static fields
.field public static final NULL:Ljava/lang/Object;


# instance fields
.field private map:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ltwitter4j/internal/org/json/JSONObject$Null;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltwitter4j/internal/org/json/JSONObject$Null;-><init>(Ltwitter4j/internal/org/json/JSONObject$1;)V

    sput-object v0, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    invoke-direct {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->populateMap(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    array-length v3, p2

    if-ge v1, v3, :cond_1b

    aget-object v2, p2, v1

    :try_start_d
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ltwitter4j/internal/org/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_1c

    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1b
    return-void

    :catch_1c
    move-exception v3

    goto :goto_18
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    new-instance v0, Ltwitter4j/internal/org/json/JSONTokener;

    invoke-direct {v0, p1}, Ltwitter4j/internal/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ltwitter4j/internal/org/json/JSONTokener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-static {p1, p2, v10}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_5a

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    instance-of v10, v1, Ljava/lang/String;

    if-eqz v10, :cond_13

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    const-string v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v10, v6

    add-int/lit8 v3, v10, -0x1

    move-object v9, p0

    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v3, :cond_4e

    aget-object v8, v6, v0

    invoke-virtual {v9, v8}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v10, v5, Ltwitter4j/internal/org/json/JSONObject;

    if-eqz v10, :cond_4c

    check-cast v5, Ltwitter4j/internal/org/json/JSONObject;

    move-object v4, v5

    :goto_3e
    if-nez v4, :cond_48

    new-instance v4, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v4}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    invoke-virtual {v9, v8, v4}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    :cond_48
    move-object v9, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_4c
    const/4 v4, 0x0

    goto :goto_3e

    :cond_4e
    aget-object v10, v6, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    goto :goto_13

    :cond_5a
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-object v3, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ltwitter4j/internal/org/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_34
    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/org/json/JSONObject;[Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    :goto_4
    array-length v1, p2

    if-ge v0, v1, :cond_15

    :try_start_7
    aget-object v1, p2, v0

    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ltwitter4j/internal/org/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_16

    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_15
    return-void

    :catch_16
    move-exception v1

    goto :goto_12
.end method

.method public constructor <init>(Ltwitter4j/internal/org/json/JSONTokener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A JSONObject text must begin with \'{\' found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v2

    throw v2

    :cond_27
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->back()V

    :cond_2a
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v0

    sparse-switch v0, :sswitch_data_80

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->back()V

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v0

    const/16 v2, 0x3d

    if-ne v0, v2, :cond_6b

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->next()C

    move-result v2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_4f

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->back()V

    :cond_4f
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ltwitter4j/internal/org/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v2

    sparse-switch v2, :sswitch_data_8a

    const-string v2, "Expected a \',\' or \'}\'"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v2

    throw v2

    :sswitch_64
    const-string v2, "A JSONObject text must end with \'}\'"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v2

    throw v2

    :cond_6b
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_4f

    const-string v2, "Expected a \':\' after a key"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONException;

    move-result-object v2

    throw v2

    :sswitch_76
    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_27

    :sswitch_7e
    return-void

    nop

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_64
        0x7d -> :sswitch_7e
    .end sparse-switch

    :sswitch_data_8a
    .sparse-switch
        0x2c -> :sswitch_76
        0x3b -> :sswitch_76
        0x7d -> :sswitch_7e
    .end sparse-switch
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p0, :cond_b

    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    const-string v2, "Null pointer"

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-static {p0}, Ltwitter4j/internal/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_4f

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_4f

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_4f

    :goto_2a
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_3d
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4f
    return-object v0
.end method

.method private populateMap(Ljava/lang/Object;)V
    .registers 14

    const/4 v1, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    if-eqz v8, :cond_d

    move v1, v9

    :cond_d
    if-eqz v1, :cond_7a

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    :goto_13
    const/4 v0, 0x0

    :goto_14
    array-length v8, v5

    if-ge v0, v8, :cond_bf

    :try_start_17
    aget-object v4, v5, v0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-eqz v8, :cond_77

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v2, ""

    const-string v8, "get"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_85

    const-string v8, "getClass"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_41

    const-string v8, "getDeclaringClass"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7f

    :cond_41
    const-string v2, ""

    :cond_43
    :goto_43
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_77

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_77

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_77

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v9, :cond_93

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :cond_65
    :goto_65
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_77

    iget-object v8, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-static {v7}, Ltwitter4j/internal/org/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_77} :catch_c0

    :cond_77
    :goto_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_7a
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_13

    :cond_7f
    const/4 v8, 0x3

    :try_start_80
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_43

    :cond_85
    const-string v8, "is"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_43

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_43

    :cond_93
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-nez v8, :cond_65

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_bd} :catch_c0

    move-result-object v2

    goto :goto_65

    :cond_bf
    return-void

    :catch_c0
    move-exception v8

    goto :goto_77
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/16 v9, 0x5c

    const/16 v8, 0x22

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_f

    :cond_c
    const-string v6, "\"\""

    :goto_e
    return-object v6

    :cond_f
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x4

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v4, :cond_9e

    move v0, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_a8

    const/16 v6, 0x20

    if-lt v1, v6, :cond_3d

    const/16 v6, 0x80

    if-lt v1, v6, :cond_35

    const/16 v6, 0xa0

    if-lt v1, v6, :cond_3d

    :cond_35
    const/16 v6, 0x2000

    if-lt v1, v6, :cond_9a

    const/16 v6, 0x2100

    if-ge v1, v6, :cond_9a

    :cond_3d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "\\u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :sswitch_6a
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_67

    :sswitch_71
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_78

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_78
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_67

    :sswitch_7c
    const-string v6, "\\b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    :sswitch_82
    const-string v6, "\\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    :sswitch_88
    const-string v6, "\\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    :sswitch_8e
    const-string v6, "\\f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    :sswitch_94
    const-string v6, "\\r"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    :cond_9a
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_67

    :cond_9e
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_e

    nop

    :sswitch_data_a8
    .sparse-switch
        0x8 -> :sswitch_7c
        0x9 -> :sswitch_82
        0xa -> :sswitch_88
        0xc -> :sswitch_8e
        0xd -> :sswitch_94
        0x22 -> :sswitch_6a
        0x2f -> :sswitch_71
        0x5c -> :sswitch_6a
    .end sparse-switch
.end method

.method public static stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9

    const/16 v7, 0x30

    const/16 v6, 0x2e

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    :goto_f
    return-object p0

    :cond_10
    const-string v2, "true"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_f

    :cond_1b
    const-string v2, "false"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_f

    :cond_26
    const-string v2, "null"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    sget-object p0, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_f

    :cond_31
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v7, :cond_3c

    const/16 v2, 0x39

    if-le v0, v2, :cond_46

    :cond_3c
    if-eq v0, v6, :cond_46

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_46

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_f

    :cond_46
    if-ne v0, v7, :cond_6f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_6f

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x78

    if-eq v2, v3, :cond_5e

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x58

    if-ne v2, v3, :cond_6f

    :cond_5e
    const/4 v2, 0x2

    :try_start_5f
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6c} :catch_6e

    move-result-object p0

    goto :goto_f

    :catch_6e
    move-exception v2

    :cond_6f
    const/16 v2, 0x2e

    :try_start_71
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gt v2, v4, :cond_87

    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gt v2, v4, :cond_87

    const/16 v2, 0x45

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-le v2, v4, :cond_8c

    :cond_87
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    goto :goto_f

    :cond_8c
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_a8

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_a5} :catch_ab

    move-result-object p0

    goto/16 :goto_f

    :cond_a8
    move-object p0, v1

    goto/16 :goto_f

    :catch_ab
    move-exception v2

    goto/16 :goto_f
.end method

.method public static testValidity(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_3c

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1f

    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_17

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_17
    new-instance v0, Ltwitter4j/internal/org/json/JSONException;

    const-string v1, "JSON does not allow non-finite numbers."

    invoke-direct {v0, v1}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3c

    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_34

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_34
    new-instance v0, Ltwitter4j/internal/org/json/JSONException;

    const-string v1, "JSON does not allow non-finite numbers."

    invoke-direct {v0, v1}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    return-void
.end method

.method public static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_9
    const-string v0, "null"

    :goto_b
    return-object v0

    :cond_c
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_17

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Ltwitter4j/internal/org/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_17
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_23

    instance-of v0, p0, Ltwitter4j/internal/org/json/JSONObject;

    if-nez v0, :cond_23

    instance-of v0, p0, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v0, :cond_28

    :cond_23
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_28
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_38

    new-instance v0, Ltwitter4j/internal/org/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_38
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_48

    new-instance v0, Ltwitter4j/internal/org/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5c

    new-instance v0, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v0, p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_5c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method static valueToString(Ljava/lang/Object;II)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_9
    const-string v0, "null"

    :goto_b
    return-object v0

    :cond_c
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_17

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Ltwitter4j/internal/org/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_17
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_20
    instance-of v0, p0, Ltwitter4j/internal/org/json/JSONObject;

    if-eqz v0, :cond_2b

    check-cast p0, Ltwitter4j/internal/org/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Ltwitter4j/internal/org/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_2b
    instance-of v0, p0, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v0, :cond_36

    check-cast p0, Ltwitter4j/internal/org/json/JSONArray;

    invoke-virtual {p0, p1, p2}, Ltwitter4j/internal/org/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_36
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_46

    new-instance v0, Ltwitter4j/internal/org/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1, p2}, Ltwitter4j/internal/org/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_46
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_56

    new-instance v0, Ltwitter4j/internal/org/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, p2}, Ltwitter4j/internal/org/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6a

    new-instance v0, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v0, p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Ltwitter4j/internal/org/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_6a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    if-nez p0, :cond_5

    :try_start_2
    sget-object p0, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_4
    :goto_4
    return-object p0

    :cond_5
    instance-of v3, p0, Ltwitter4j/internal/org/json/JSONObject;

    if-nez v3, :cond_4

    instance-of v3, p0, Ltwitter4j/internal/org/json/JSONArray;

    if-nez v3, :cond_4

    sget-object v3, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/lang/Byte;

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/lang/Character;

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/lang/Short;

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/lang/Integer;

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/lang/Long;

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/lang/Boolean;

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/lang/Float;

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/lang/Double;

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/lang/String;

    if-nez v3, :cond_4

    instance-of v3, p0, Ljava/util/Collection;

    if-eqz v3, :cond_46

    new-instance v3, Ltwitter4j/internal/org/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v3, p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    move-object p0, v3

    goto :goto_4

    :cond_46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_57

    new-instance v3, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v3, p0}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/lang/Object;)V

    move-object p0, v3

    goto :goto_4

    :cond_57
    instance-of v3, p0, Ljava/util/Map;

    if-eqz v3, :cond_64

    new-instance v3, Ltwitter4j/internal/org/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v3, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object p0, v3

    goto :goto_4

    :cond_64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    if-eqz v1, :cond_92

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_72
    const-string v3, "java."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8c

    const-string v3, "javax."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_95

    :cond_8c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_92
    const-string v2, ""

    goto :goto_72

    :cond_95
    new-instance v3, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v3, p0}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/Object;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9a} :catch_9d

    move-object p0, v3

    goto/16 :goto_4

    :catch_9d
    move-exception v0

    const/4 p0, 0x0

    goto/16 :goto_4
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    invoke-static {p2}, Ltwitter4j/internal/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    new-instance v1, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v1}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V

    invoke-virtual {v1, p2}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    :goto_15
    return-object p0

    :cond_16
    instance-of v1, v0, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v1, :cond_24

    check-cast v0, Ltwitter4j/internal/org/json/JSONArray;

    invoke-virtual {v0, p2}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    goto :goto_15

    :cond_24
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    const-string v2, "Null key."

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_33

    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_33
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1d

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1

    :cond_1d
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_35

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_33
    const/4 v1, 0x1

    goto :goto_1c

    :cond_35
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a Boolean."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :try_start_4
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_f

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    :goto_e
    return v2

    :cond_f
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_16

    move-result v2

    goto :goto_e

    :catch_16
    move-exception v0

    new-instance v2, Ltwitter4j/internal/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not an int."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v1, :cond_b

    check-cast v0, Ltwitter4j/internal/org/json/JSONArray;

    return-object v0

    :cond_b
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ltwitter4j/internal/org/json/JSONObject;

    if-eqz v1, :cond_b

    check-cast v0, Ltwitter4j/internal/org/json/JSONObject;

    return-object v0

    :cond_b
    new-instance v1, Ltwitter4j/internal/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :try_start_4
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_f

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :goto_e
    return-wide v2

    :cond_f
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_16

    move-result-wide v2

    goto :goto_e

    :catch_16
    move-exception v0

    new-instance v2, Ltwitter4j/internal/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not a long."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNull(Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Ltwitter4j/internal/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public keys()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .registers 2

    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public names()Ltwitter4j/internal/org/json/JSONArray;
    .registers 4

    new-instance v0, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v0}, Ltwitter4j/internal/org/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltwitter4j/internal/org/json/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONArray;

    goto :goto_9

    :cond_17
    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1e

    const/4 v0, 0x0

    :cond_1e
    return-object v0
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public put(Ljava/lang/String;D)Ltwitter4j/internal/org/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    return-object p0
.end method

.method public put(Ljava/lang/String;I)Ltwitter4j/internal/org/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    return-object p0
.end method

.method public put(Ljava/lang/String;J)Ltwitter4j/internal/org/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ltwitter4j/internal/org/json/JSONException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-eqz p2, :cond_15

    invoke-static {p2}, Ltwitter4j/internal/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_14
    return-object p0

    :cond_15
    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_14
.end method

.method public put(Ljava/lang/String;Ljava/util/Collection;)Ltwitter4j/internal/org/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    new-instance v0, Ltwitter4j/internal/org/json/JSONArray;

    invoke-direct {v0, p2}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;)Ltwitter4j/internal/org/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    new-instance v0, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v0, p2}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Ltwitter4j/internal/org/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    if-eqz p2, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    return-object p0

    :cond_8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public putOnce(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_2c

    if-eqz p2, :cond_2c

    invoke-virtual {p0, p1}, Ltwitter4j/internal/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    new-instance v0, Ltwitter4j/internal/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    invoke-virtual {p0, p1, p2}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    :cond_2c
    return-object p0
.end method

.method public putOpt(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1, p2}, Ltwitter4j/internal/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/internal/org/json/JSONObject;

    :cond_7
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sortedKeys()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1d

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :catch_3f
    move-exception v0

    const/4 v4, 0x0

    :goto_41
    return-object v4

    :cond_42
    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_3f

    move-result-object v4

    goto :goto_41
.end method

.method public toString(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/internal/org/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(II)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    const/16 v9, 0x20

    const/16 v8, 0xa

    const/4 v7, 0x1

    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_e

    const-string v6, "{}"

    :goto_d
    return-object v6

    :cond_e
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONObject;->sortedKeys()Ljava/util/Iterator;

    move-result-object v1

    add-int v3, p2, p1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne v2, v7, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1, p2}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3e
    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    :cond_48
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1, v3}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-le v6, v7, :cond_83

    const-string v6, ",\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7a
    const/4 v0, 0x0

    :goto_7b
    if-ge v0, v3, :cond_48

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    :cond_83
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7a

    :cond_87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-le v6, v7, :cond_3e

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_91
    if-ge v0, p2, :cond_3e

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_91
.end method

.method public write(Ljava/io/Writer;)Ljava/io/Writer;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    const/16 v5, 0x7b

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    if-eqz v0, :cond_17

    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ltwitter4j/internal/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    iget-object v5, p0, Ltwitter4j/internal/org/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ltwitter4j/internal/org/json/JSONObject;

    if-eqz v5, :cond_3c

    check-cast v4, Ltwitter4j/internal/org/json/JSONObject;

    invoke-virtual {v4, p1}, Ltwitter4j/internal/org/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    :goto_3a
    const/4 v0, 0x1

    goto :goto_a

    :cond_3c
    instance-of v5, v4, Ltwitter4j/internal/org/json/JSONArray;

    if-eqz v5, :cond_4d

    check-cast v4, Ltwitter4j/internal/org/json/JSONArray;

    invoke-virtual {v4, p1}, Ltwitter4j/internal/org/json/JSONArray;->write(Ljava/io/Writer;)Ljava/io/Writer;
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_45} :catch_46

    goto :goto_3a

    :catch_46
    move-exception v1

    new-instance v5, Ltwitter4j/internal/org/json/JSONException;

    invoke-direct {v5, v1}, Ltwitter4j/internal/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_4d
    :try_start_4d
    invoke-static {v4}, Ltwitter4j/internal/org/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3a

    :cond_55
    const/16 v5, 0x7d

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5a} :catch_46

    return-object p1
.end method
