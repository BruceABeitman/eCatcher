.class final Lcom/squareup/wire/MessageAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/squareup/wire/x;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TM;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/squareup/wire/g",
            "<TM;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/squareup/wire/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/o",
            "<",
            "Lcom/squareup/wire/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/wire/x;Ljava/lang/Class;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/x;",
            "Ljava/lang/Class",
            "<TM;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/squareup/wire/MessageAdapter;->d:Ljava/util/Map;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/squareup/wire/MessageAdapter;->a:Lcom/squareup/wire/x;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/squareup/wire/MessageAdapter;->b:Ljava/lang/Class;

    invoke-static/range {p2 .. p2}, Lcom/squareup/wire/MessageAdapter;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/squareup/wire/MessageAdapter;->c:Ljava/lang/Class;

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v14

    array-length v15, v14

    const/4 v2, 0x0

    move v12, v2

    :goto_2c
    if-ge v12, v15, :cond_e9

    aget-object v9, v14, v12

    const-class v2, Lcom/squareup/wire/n;

    invoke-virtual {v9, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/squareup/wire/n;

    if-eqz v7, :cond_81

    invoke-interface {v7}, Lcom/squareup/wire/n;->a()I

    move-result v3

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/wire/MessageAdapter;->d:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v7}, Lcom/squareup/wire/n;->b()Lcom/squareup/wire/Message$Datatype;

    move-result-object v5

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    if-ne v5, v2, :cond_ae

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v2, Ljava/lang/Enum;

    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_85

    :goto_63
    move-object v8, v6

    :goto_64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    new-instance v2, Lcom/squareup/wire/h;

    invoke-interface {v7}, Lcom/squareup/wire/n;->c()Lcom/squareup/wire/Message$Label;

    move-result-object v6

    invoke-interface {v7}, Lcom/squareup/wire/n;->d()Z

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/squareup/wire/MessageAdapter;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/squareup/wire/h;-><init>(ILjava/lang/String;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Message$Label;ZLjava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;B)V

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_81
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_2c

    :cond_85
    const-class v2, Ljava/util/List;

    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v6, 0x0

    aget-object v6, v2, v6

    instance-of v2, v6, Ljava/lang/Class;

    if-eqz v2, :cond_ac

    const-class v8, Ljava/lang/Enum;

    move-object v2, v6

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v8, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_ac

    check-cast v6, Ljava/lang/Class;

    goto :goto_63

    :cond_ac
    const/4 v6, 0x0

    goto :goto_63

    :cond_ae
    sget-object v2, Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;

    if-ne v5, v2, :cond_f2

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v2, Lcom/squareup/wire/Message;

    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_c0

    :goto_be
    move-object v8, v6

    goto :goto_64

    :cond_c0
    const-class v2, Ljava/util/List;

    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_e7

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v6, 0x0

    aget-object v6, v2, v6

    instance-of v2, v6, Ljava/lang/Class;

    if-eqz v2, :cond_e7

    const-class v8, Lcom/squareup/wire/Message;

    move-object v2, v6

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v8, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_e7

    check-cast v6, Ljava/lang/Class;

    goto :goto_be

    :cond_e7
    const/4 v6, 0x0

    goto :goto_be

    :cond_e9
    invoke-static {v13}, Lcom/squareup/wire/o;->a(Ljava/util/Map;)Lcom/squareup/wire/o;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/squareup/wire/MessageAdapter;->e:Lcom/squareup/wire/o;

    return-void

    :cond_f2
    move-object v8, v6

    goto/16 :goto_64
.end method

.method private a(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I
    .registers 6

    invoke-static {p1}, Lcom/squareup/wire/z;->a(I)I

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/squareup/wire/MessageAdapter;->a(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private a(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I
    .registers 8

    const/4 v0, 0x0

    sget-object v1, Lcom/squareup/wire/MessageAdapter$1;->a:[I

    invoke-virtual {p2}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_be

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_12
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1f

    invoke-static {v0}, Lcom/squareup/wire/z;->b(I)I

    move-result v0

    :goto_1e
    return v0

    :cond_1f
    const/16 v0, 0xa

    goto :goto_1e

    :pswitch_22
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/z;->a(J)I

    move-result v0

    goto :goto_1e

    :pswitch_2d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/z;->b(I)I

    move-result v0

    goto :goto_1e

    :pswitch_38
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/z;->f(I)I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/z;->b(I)I

    move-result v0

    goto :goto_1e

    :pswitch_47
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/z;->d(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/z;->a(J)I

    move-result v0

    goto :goto_1e

    :pswitch_56
    const/4 v0, 0x1

    goto :goto_1e

    :pswitch_58
    check-cast p1, Lcom/squareup/wire/m;

    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->a:Lcom/squareup/wire/x;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/x;->c(Ljava/lang/Class;)Lcom/squareup/wire/b;

    invoke-static {p1}, Lcom/squareup/wire/b;->a(Lcom/squareup/wire/m;)I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/z;->b(I)I

    move-result v0

    goto :goto_1e

    :pswitch_6c
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    :goto_73
    if-ge v0, v2, :cond_97

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_82

    add-int/lit8 v1, v1, 0x1

    :goto_7f
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_82
    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_89

    add-int/lit8 v1, v1, 0x2

    goto :goto_7f

    :cond_89
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_94

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    :cond_94
    add-int/lit8 v1, v1, 0x3

    goto :goto_7f

    :cond_97
    invoke-static {v1}, Lcom/squareup/wire/z;->b(I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1e

    :pswitch_9d
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->b()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/z;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_1e

    :pswitch_aa
    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->b()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/z;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_1e

    :pswitch_b7
    const/4 v0, 0x4

    goto/16 :goto_1e

    :pswitch_ba
    const/16 v0, 0x8

    goto/16 :goto_1e

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_12
        :pswitch_22
        :pswitch_22
        :pswitch_2d
        :pswitch_38
        :pswitch_47
        :pswitch_56
        :pswitch_58
        :pswitch_6c
        :pswitch_9d
        :pswitch_aa
        :pswitch_b7
        :pswitch_b7
        :pswitch_b7
        :pswitch_ba
        :pswitch_ba
        :pswitch_ba
    .end packed-switch
.end method

.method private a(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p2, v2, p3}, Lcom/squareup/wire/MessageAdapter;->a(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_5

    :cond_15
    return v0
.end method

.method private a(I)Lcom/squareup/wire/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/wire/d",
            "<",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->a:Lcom/squareup/wire/x;

    iget-object v0, v0, Lcom/squareup/wire/x;->a:Lcom/squareup/wire/f;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/f;->a(Ljava/lang/Class;I)Lcom/squareup/wire/d;

    move-result-object v0

    goto :goto_7
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TM;>;)",
            "Ljava/lang/Class",
            "<",
            "Lcom/squareup/wire/g",
            "<TM;>;>;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$Builder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v0

    return-object v0

    :catch_1c
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No builder class found for message type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/squareup/wire/Message;Lcom/squareup/wire/h;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/squareup/wire/h;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1}, Lcom/squareup/wire/h;->a(Lcom/squareup/wire/h;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Field is not of type \"Message\""

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_e
    :try_start_e
    invoke-static {p1}, Lcom/squareup/wire/h;->a(Lcom/squareup/wire/h;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_15} :catch_17

    move-result-object v0

    return-object v0

    :catch_17
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private a(Lcom/squareup/wire/y;ILcom/squareup/wire/Message$Datatype;)Ljava/lang/Object;
    .registers 10

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I

    invoke-virtual {p3}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_136

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_13
    invoke-virtual {p1}, Lcom/squareup/wire/y;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1b
    return-object v0

    :pswitch_1c
    invoke-virtual {p1}, Lcom/squareup/wire/y;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1b

    :pswitch_25
    invoke-virtual {p1}, Lcom/squareup/wire/y;->c()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/y;->c(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1b

    :pswitch_32
    invoke-virtual {p1}, Lcom/squareup/wire/y;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/y;->a(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1b

    :pswitch_3f
    invoke-virtual {p1}, Lcom/squareup/wire/y;->c()I

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v0, 0x1

    :goto_46
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1b

    :cond_4b
    move v0, v2

    goto :goto_46

    :pswitch_4d
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->e:Lcom/squareup/wire/o;

    invoke-virtual {v0, p2}, Lcom/squareup/wire/o;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/h;

    if-eqz v0, :cond_66

    iget-object v1, v0, Lcom/squareup/wire/h;->i:Lcom/squareup/wire/b;

    if-eqz v1, :cond_66

    iget-object v0, v0, Lcom/squareup/wire/h;->i:Lcom/squareup/wire/b;

    :goto_5d
    invoke-virtual {p1}, Lcom/squareup/wire/y;->c()I

    move-result v1

    :try_start_61
    invoke-virtual {v0, v1}, Lcom/squareup/wire/b;->a(I)Lcom/squareup/wire/m;
    :try_end_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_61 .. :try_end_64} :catch_8c

    move-result-object v0

    goto :goto_1b

    :cond_66
    iget-object v2, p0, Lcom/squareup/wire/MessageAdapter;->a:Lcom/squareup/wire/x;

    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->e:Lcom/squareup/wire/o;

    invoke-virtual {v1, p2}, Lcom/squareup/wire/o;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/h;

    if-nez v1, :cond_89

    move-object v1, v3

    :goto_73
    if-nez v1, :cond_7f

    invoke-direct {p0, p2}, Lcom/squareup/wire/MessageAdapter;->a(I)Lcom/squareup/wire/d;

    move-result-object v3

    if-eqz v3, :cond_7f

    invoke-virtual {v3}, Lcom/squareup/wire/d;->c()Ljava/lang/Class;

    move-result-object v1

    :cond_7f
    invoke-virtual {v2, v1}, Lcom/squareup/wire/x;->c(Ljava/lang/Class;)Lcom/squareup/wire/b;

    move-result-object v1

    if-eqz v0, :cond_87

    iput-object v1, v0, Lcom/squareup/wire/h;->i:Lcom/squareup/wire/b;

    :cond_87
    move-object v0, v1

    goto :goto_5d

    :cond_89
    iget-object v1, v1, Lcom/squareup/wire/h;->e:Ljava/lang/Class;

    goto :goto_73

    :catch_8c
    move-exception v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1b

    :pswitch_92
    invoke-virtual {p1}, Lcom/squareup/wire/y;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :pswitch_97
    invoke-virtual {p1}, Lcom/squareup/wire/y;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/y;->b(I)Lokio/ByteString;

    move-result-object v0

    goto/16 :goto_1b

    :pswitch_a1
    invoke-virtual {p1}, Lcom/squareup/wire/y;->c()I

    move-result v0

    iget v1, p1, Lcom/squareup/wire/y;->a:I

    const/16 v4, 0x40

    if-lt v1, v4, :cond_b3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Wire recursion limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b3
    invoke-virtual {p1, v0}, Lcom/squareup/wire/y;->d(I)I

    move-result v4

    iget v0, p1, Lcom/squareup/wire/y;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/squareup/wire/y;->a:I

    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->e:Lcom/squareup/wire/o;

    invoke-virtual {v0, p2}, Lcom/squareup/wire/o;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/h;

    if-eqz v0, :cond_df

    iget-object v1, v0, Lcom/squareup/wire/h;->h:Lcom/squareup/wire/MessageAdapter;

    if-eqz v1, :cond_df

    iget-object v0, v0, Lcom/squareup/wire/h;->h:Lcom/squareup/wire/MessageAdapter;

    :goto_cd
    invoke-virtual {v0, p1}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/y;)Lcom/squareup/wire/Message;

    move-result-object v0

    invoke-virtual {p1, v2}, Lcom/squareup/wire/y;->a(I)V

    iget v1, p1, Lcom/squareup/wire/y;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lcom/squareup/wire/y;->a:I

    invoke-virtual {p1, v4}, Lcom/squareup/wire/y;->e(I)V

    goto/16 :goto_1b

    :cond_df
    iget-object v5, p0, Lcom/squareup/wire/MessageAdapter;->a:Lcom/squareup/wire/x;

    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->e:Lcom/squareup/wire/o;

    invoke-virtual {v1, p2}, Lcom/squareup/wire/o;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/h;

    if-nez v1, :cond_102

    move-object v1, v3

    :goto_ec
    if-nez v1, :cond_f8

    invoke-direct {p0, p2}, Lcom/squareup/wire/MessageAdapter;->a(I)Lcom/squareup/wire/d;

    move-result-object v3

    if-eqz v3, :cond_f8

    invoke-virtual {v3}, Lcom/squareup/wire/d;->b()Ljava/lang/Class;

    move-result-object v1

    :cond_f8
    invoke-virtual {v5, v1}, Lcom/squareup/wire/x;->a(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;

    move-result-object v1

    if-eqz v0, :cond_100

    iput-object v1, v0, Lcom/squareup/wire/h;->h:Lcom/squareup/wire/MessageAdapter;

    :cond_100
    move-object v0, v1

    goto :goto_cd

    :cond_102
    iget-object v1, v1, Lcom/squareup/wire/h;->f:Ljava/lang/Class;

    goto :goto_ec

    :pswitch_105
    invoke-virtual {p1}, Lcom/squareup/wire/y;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1b

    :pswitch_10f
    invoke-virtual {p1}, Lcom/squareup/wire/y;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_1b

    :pswitch_119
    invoke-virtual {p1}, Lcom/squareup/wire/y;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_1b

    :pswitch_127
    invoke-virtual {p1}, Lcom/squareup/wire/y;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_1b

    nop

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1c
        :pswitch_1c
        :pswitch_13
        :pswitch_25
        :pswitch_32
        :pswitch_3f
        :pswitch_4d
        :pswitch_92
        :pswitch_97
        :pswitch_a1
        :pswitch_105
        :pswitch_105
        :pswitch_119
        :pswitch_10f
        :pswitch_10f
        :pswitch_127
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->c:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    :catch_7
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No builder field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/squareup/wire/MessageAdapter;->c:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private a(Lcom/squareup/wire/Message;Lcom/squareup/wire/z;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/squareup/wire/z;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->e:Lcom/squareup/wire/o;

    iget-object v0, v0, Lcom/squareup/wire/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/h;

    invoke-static {p1, v0}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/Message;Lcom/squareup/wire/h;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    iget v3, v0, Lcom/squareup/wire/h;->a:I

    iget-object v4, v0, Lcom/squareup/wire/h;->c:Lcom/squareup/wire/Message$Datatype;

    iget-object v0, v0, Lcom/squareup/wire/h;->d:Lcom/squareup/wire/Message$Label;

    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->b()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->c()Z

    move-result v0

    if-eqz v0, :cond_33

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p2, v0, v3, v4}, Lcom/squareup/wire/MessageAdapter;->b(Lcom/squareup/wire/z;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_8

    :cond_33
    check-cast v1, Ljava/util/List;

    invoke-direct {p0, p2, v1, v3, v4}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/z;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_8

    :cond_39
    invoke-direct {p0, p2, v3, v1, v4}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/z;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_8

    :cond_3d
    instance-of v0, p1, Lcom/squareup/wire/ExtendableMessage;

    if-eqz v0, :cond_85

    move-object v0, p1

    check-cast v0, Lcom/squareup/wire/ExtendableMessage;

    iget-object v1, v0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/e;

    if-eqz v1, :cond_85

    iget-object v2, v0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/e;

    const/4 v0, 0x0

    move v1, v0

    :goto_4c
    invoke-virtual {v2}, Lcom/squareup/wire/e;->a()I

    move-result v0

    if-ge v1, v0, :cond_85

    invoke-virtual {v2, v1}, Lcom/squareup/wire/e;->a(I)Lcom/squareup/wire/d;

    move-result-object v3

    invoke-virtual {v2, v1}, Lcom/squareup/wire/e;->b(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3}, Lcom/squareup/wire/d;->e()I

    move-result v4

    invoke-virtual {v3}, Lcom/squareup/wire/d;->f()Lcom/squareup/wire/Message$Datatype;

    move-result-object v5

    invoke-virtual {v3}, Lcom/squareup/wire/d;->g()Lcom/squareup/wire/Message$Label;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/wire/Message$Label;->b()Z

    move-result v6

    if-eqz v6, :cond_81

    invoke-virtual {v3}, Lcom/squareup/wire/Message$Label;->c()Z

    move-result v3

    if-eqz v3, :cond_7b

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p2, v0, v4, v5}, Lcom/squareup/wire/MessageAdapter;->b(Lcom/squareup/wire/z;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    :goto_77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4c

    :cond_7b
    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p2, v0, v4, v5}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/z;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_77

    :cond_81
    invoke-direct {p0, p2, v4, v0, v5}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/z;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_77

    :cond_85
    invoke-virtual {p1, p2}, Lcom/squareup/wire/Message;->a(Lcom/squareup/wire/z;)V

    return-void
.end method

.method private static a(Lcom/squareup/wire/c;Lcom/squareup/wire/d;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/c;",
            "Lcom/squareup/wire/d",
            "<**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/wire/c;->a:Lcom/squareup/wire/e;

    if-nez v0, :cond_c

    new-instance v0, Lcom/squareup/wire/e;

    invoke-direct {v0, p1, p2}, Lcom/squareup/wire/e;-><init>(Lcom/squareup/wire/d;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/squareup/wire/c;->a:Lcom/squareup/wire/e;

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/squareup/wire/c;->a:Lcom/squareup/wire/e;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/wire/e;->a(Lcom/squareup/wire/d;Ljava/lang/Object;)V

    goto :goto_b
.end method

.method private a(Lcom/squareup/wire/g;ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/g",
            "<TM;>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->e:Lcom/squareup/wire/o;

    invoke-virtual {v0, p2}, Lcom/squareup/wire/o;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/h;

    invoke-static {v0}, Lcom/squareup/wire/h;->b(Lcom/squareup/wire/h;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private a(Lcom/squareup/wire/z;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V
    .registers 8

    sget-object v0, Lcom/squareup/wire/Message$1;->a:[I

    invoke-virtual {p4}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No wiretype for datatype "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_20
    sget-object v0, Lcom/squareup/wire/WireType;->a:Lcom/squareup/wire/WireType;

    :goto_22
    invoke-virtual {p1, p2, v0}, Lcom/squareup/wire/z;->b(ILcom/squareup/wire/WireType;)V

    invoke-direct {p0, p1, p3, p4}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/z;Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    return-void

    :pswitch_29
    sget-object v0, Lcom/squareup/wire/WireType;->f:Lcom/squareup/wire/WireType;

    goto :goto_22

    :pswitch_2c
    sget-object v0, Lcom/squareup/wire/WireType;->b:Lcom/squareup/wire/WireType;

    goto :goto_22

    :pswitch_2f
    sget-object v0, Lcom/squareup/wire/WireType;->c:Lcom/squareup/wire/WireType;

    goto :goto_22

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method

.method private a(Lcom/squareup/wire/z;Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V
    .registers 6

    sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I

    invoke-virtual {p3}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_e2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_11
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1d

    invoke-virtual {p1, v0}, Lcom/squareup/wire/z;->d(I)V

    :goto_1c
    return-void

    :cond_1d
    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/z;->b(J)V

    goto :goto_1c

    :pswitch_22
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/z;->b(J)V

    goto :goto_1c

    :pswitch_2c
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/z;->d(I)V

    goto :goto_1c

    :pswitch_36
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/z;->f(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/z;->d(I)V

    goto :goto_1c

    :pswitch_44
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/z;->d(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/z;->b(J)V

    goto :goto_1c

    :pswitch_52
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5f

    const/4 v0, 0x1

    :goto_5b
    invoke-virtual {p1, v0}, Lcom/squareup/wire/z;->c(I)V

    goto :goto_1c

    :cond_5f
    const/4 v0, 0x0

    goto :goto_5b

    :pswitch_61
    check-cast p2, Lcom/squareup/wire/m;

    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->a:Lcom/squareup/wire/x;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/x;->c(Ljava/lang/Class;)Lcom/squareup/wire/b;

    invoke-static {p2}, Lcom/squareup/wire/b;->a(Lcom/squareup/wire/m;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/z;->d(I)V

    goto :goto_1c

    :pswitch_74
    check-cast p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p1, v1}, Lcom/squareup/wire/z;->d(I)V

    invoke-virtual {p1, v0}, Lcom/squareup/wire/z;->a([B)V

    goto :goto_1c

    :pswitch_84
    check-cast p2, Lokio/ByteString;

    invoke-virtual {p2}, Lokio/ByteString;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/z;->d(I)V

    invoke-virtual {p2}, Lokio/ByteString;->c()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/z;->a([B)V

    goto :goto_1c

    :pswitch_95
    check-cast p2, Lcom/squareup/wire/Message;

    invoke-virtual {p2}, Lcom/squareup/wire/Message;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/z;->d(I)V

    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->a:Lcom/squareup/wire/x;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/x;->a(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;

    move-result-object v0

    invoke-direct {v0, p2, p1}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/Message;Lcom/squareup/wire/z;)V

    goto/16 :goto_1c

    :pswitch_ad
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/z;->e(I)V

    goto/16 :goto_1c

    :pswitch_b8
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/z;->c(J)V

    goto/16 :goto_1c

    :pswitch_c3
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/z;->e(I)V

    goto/16 :goto_1c

    :pswitch_d2
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/z;->c(J)V

    goto/16 :goto_1c

    nop

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_11
        :pswitch_22
        :pswitch_22
        :pswitch_2c
        :pswitch_36
        :pswitch_44
        :pswitch_52
        :pswitch_61
        :pswitch_74
        :pswitch_84
        :pswitch_95
        :pswitch_ad
        :pswitch_ad
        :pswitch_c3
        :pswitch_b8
        :pswitch_b8
        :pswitch_d2
    .end packed-switch
.end method

.method private a(Lcom/squareup/wire/z;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/z;",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, p3, v1, p4}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/z;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_4

    :cond_12
    return-void
.end method

.method private b(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/squareup/wire/MessageAdapter;->a(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_5

    :cond_15
    sget-object v1, Lcom/squareup/wire/WireType;->c:Lcom/squareup/wire/WireType;

    invoke-static {p2, v1}, Lcom/squareup/wire/z;->a(ILcom/squareup/wire/WireType;)I

    move-result v1

    invoke-static {v1}, Lcom/squareup/wire/z;->b(I)I

    move-result v1

    invoke-static {v0}, Lcom/squareup/wire/z;->b(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private b(Lcom/squareup/wire/z;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/z;",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, p4}, Lcom/squareup/wire/MessageAdapter;->a(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_5

    :cond_15
    sget-object v1, Lcom/squareup/wire/WireType;->c:Lcom/squareup/wire/WireType;

    invoke-virtual {p1, p3, v1}, Lcom/squareup/wire/z;->b(ILcom/squareup/wire/WireType;)V

    invoke-virtual {p1, v0}, Lcom/squareup/wire/z;->d(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1, p4}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/z;Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_21

    :cond_2f
    return-void
.end method


# virtual methods
.method final a(Lcom/squareup/wire/Message;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->e:Lcom/squareup/wire/o;

    iget-object v0, v0, Lcom/squareup/wire/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :cond_a
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/h;

    invoke-static {p1, v0}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/Message;Lcom/squareup/wire/h;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    iget v5, v0, Lcom/squareup/wire/h;->a:I

    iget-object v6, v0, Lcom/squareup/wire/h;->c:Lcom/squareup/wire/Message$Datatype;

    iget-object v0, v0, Lcom/squareup/wire/h;->d:Lcom/squareup/wire/Message$Label;

    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->b()Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->c()Z

    move-result v0

    if-eqz v0, :cond_38

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, v5, v6}, Lcom/squareup/wire/MessageAdapter;->b(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_a

    :cond_38
    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1, v5, v6}, Lcom/squareup/wire/MessageAdapter;->a(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_a

    :cond_41
    invoke-direct {p0, v5, v1, v6}, Lcom/squareup/wire/MessageAdapter;->a(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_a

    :cond_48
    instance-of v0, p1, Lcom/squareup/wire/ExtendableMessage;

    if-eqz v0, :cond_96

    move-object v0, p1

    check-cast v0, Lcom/squareup/wire/ExtendableMessage;

    iget-object v1, v0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/e;

    if-eqz v1, :cond_96

    iget-object v4, v0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/e;

    move v1, v3

    :goto_56
    invoke-virtual {v4}, Lcom/squareup/wire/e;->a()I

    move-result v0

    if-ge v3, v0, :cond_95

    invoke-virtual {v4, v3}, Lcom/squareup/wire/e;->a(I)Lcom/squareup/wire/d;

    move-result-object v5

    invoke-virtual {v4, v3}, Lcom/squareup/wire/e;->b(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5}, Lcom/squareup/wire/d;->e()I

    move-result v6

    invoke-virtual {v5}, Lcom/squareup/wire/d;->f()Lcom/squareup/wire/Message$Datatype;

    move-result-object v7

    invoke-virtual {v5}, Lcom/squareup/wire/d;->g()Lcom/squareup/wire/Message$Label;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/wire/Message$Label;->b()Z

    move-result v8

    if-eqz v8, :cond_8f

    invoke-virtual {v5}, Lcom/squareup/wire/Message$Label;->c()Z

    move-result v5

    if-eqz v5, :cond_87

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, v6, v7}, Lcom/squareup/wire/MessageAdapter;->b(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_83
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_56

    :cond_87
    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, v6, v7}, Lcom/squareup/wire/MessageAdapter;->a(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_83

    :cond_8f
    invoke-direct {p0, v6, v0, v7}, Lcom/squareup/wire/MessageAdapter;->a(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_83

    :cond_95
    add-int/2addr v2, v1

    :cond_96
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->c()I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method final a(Lcom/squareup/wire/y;)Lcom/squareup/wire/Message;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/y;",
            ")TM;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/g;

    new-instance v6, Lcom/squareup/wire/k;

    const/4 v2, 0x0

    invoke-direct {v6, v2}, Lcom/squareup/wire/k;-><init>(B)V

    :cond_e
    :goto_e
    :pswitch_e
    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/squareup/wire/y;->a()I

    move-result v2

    shr-int/lit8 v7, v2, 0x3

    invoke-static {v2}, Lcom/squareup/wire/WireType;->a(I)Lcom/squareup/wire/WireType;

    move-result-object v8

    if-nez v7, :cond_66

    invoke-virtual {v6}, Lcom/squareup/wire/k;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, p0, Lcom/squareup/wire/MessageAdapter;->e:Lcom/squareup/wire/o;

    invoke-virtual {v2, v4}, Lcom/squareup/wire/o;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-virtual {v6, v4}, Lcom/squareup/wire/k;->a(I)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v4, v2}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/g;ILjava/lang/Object;)V
    :try_end_42
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_42} :catch_43
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_42} :catch_5a

    goto :goto_23

    :catch_43
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_4a
    :try_start_4a
    move-object v0, v1

    check-cast v0, Lcom/squareup/wire/c;

    move-object v2, v0

    invoke-direct {p0, v4}, Lcom/squareup/wire/MessageAdapter;->a(I)Lcom/squareup/wire/d;

    move-result-object v5

    invoke-virtual {v6, v4}, Lcom/squareup/wire/k;->a(I)Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v5, v4}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/c;Lcom/squareup/wire/d;Ljava/lang/Object;)V
    :try_end_59
    .catch Ljava/lang/IllegalAccessException; {:try_start_4a .. :try_end_59} :catch_43
    .catch Ljava/lang/InstantiationException; {:try_start_4a .. :try_end_59} :catch_5a

    goto :goto_23

    :catch_5a
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_61
    :try_start_61
    invoke-virtual {v1}, Lcom/squareup/wire/g;->build()Lcom/squareup/wire/Message;

    move-result-object v1

    return-object v1

    :cond_66
    iget-object v2, p0, Lcom/squareup/wire/MessageAdapter;->e:Lcom/squareup/wire/o;

    invoke-virtual {v2, v7}, Lcom/squareup/wire/o;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/h;

    if-eqz v2, :cond_ae

    iget-object v3, v2, Lcom/squareup/wire/h;->c:Lcom/squareup/wire/Message$Datatype;

    iget-object v2, v2, Lcom/squareup/wire/h;->d:Lcom/squareup/wire/Message$Label;

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    :goto_77
    invoke-virtual {v3}, Lcom/squareup/wire/Message$Label;->c()Z

    move-result v2

    if-eqz v2, :cond_128

    sget-object v2, Lcom/squareup/wire/WireType;->c:Lcom/squareup/wire/WireType;

    if-ne v8, v2, :cond_128

    invoke-virtual {p1}, Lcom/squareup/wire/y;->c()I

    move-result v3

    invoke-virtual {p1}, Lcom/squareup/wire/y;->g()J

    move-result-wide v8

    invoke-virtual {p1, v3}, Lcom/squareup/wire/y;->d(I)I

    move-result v5

    :goto_8d
    invoke-virtual {p1}, Lcom/squareup/wire/y;->g()J

    move-result-wide v10

    int-to-long v12, v3

    add-long/2addr v12, v8

    cmp-long v2, v10, v12

    if-gez v2, :cond_113

    invoke-direct {p0, p1, v7, v4}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/y;ILcom/squareup/wire/Message$Datatype;)Ljava/lang/Object;

    move-result-object v2

    sget-object v10, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    if-ne v4, v10, :cond_10e

    instance-of v10, v2, Ljava/lang/Integer;

    if-eqz v10, :cond_10e

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v10, v2

    invoke-virtual {v1, v7, v10, v11}, Lcom/squareup/wire/g;->addVarint(IJ)V

    goto :goto_8d

    :cond_ae
    invoke-direct {p0, v7}, Lcom/squareup/wire/MessageAdapter;->a(I)Lcom/squareup/wire/d;

    move-result-object v4

    if-nez v4, :cond_101

    sget-object v2, Lcom/squareup/wire/MessageAdapter$1;->b:[I

    invoke-virtual {v8}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_15c

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported wire type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_d4
    invoke-virtual {p1}, Lcom/squareup/wire/y;->d()J

    move-result-wide v2

    invoke-virtual {v1, v7, v2, v3}, Lcom/squareup/wire/g;->addVarint(IJ)V

    goto/16 :goto_e

    :pswitch_dd
    invoke-virtual {p1}, Lcom/squareup/wire/y;->e()I

    move-result v2

    invoke-virtual {v1, v7, v2}, Lcom/squareup/wire/g;->addFixed32(II)V

    goto/16 :goto_e

    :pswitch_e6
    invoke-virtual {p1}, Lcom/squareup/wire/y;->f()J

    move-result-wide v2

    invoke-virtual {v1, v7, v2, v3}, Lcom/squareup/wire/g;->addFixed64(IJ)V

    goto/16 :goto_e

    :pswitch_ef
    invoke-virtual {p1}, Lcom/squareup/wire/y;->c()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/squareup/wire/y;->b(I)Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/squareup/wire/g;->addLengthDelimited(ILokio/ByteString;)V

    goto/16 :goto_e

    :pswitch_fc
    invoke-virtual {p1}, Lcom/squareup/wire/y;->h()V

    goto/16 :goto_e

    :cond_101
    invoke-virtual {v4}, Lcom/squareup/wire/d;->f()Lcom/squareup/wire/Message$Datatype;

    move-result-object v3

    invoke-virtual {v4}, Lcom/squareup/wire/d;->g()Lcom/squareup/wire/Message$Label;

    move-result-object v2

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_77

    :cond_10e
    invoke-virtual {v6, v7, v2}, Lcom/squareup/wire/k;->a(ILjava/lang/Object;)V

    goto/16 :goto_8d

    :cond_113
    invoke-virtual {p1, v5}, Lcom/squareup/wire/y;->e(I)V

    invoke-virtual {p1}, Lcom/squareup/wire/y;->g()J

    move-result-wide v4

    int-to-long v2, v3

    add-long/2addr v2, v8

    cmp-long v2, v4, v2

    if-eqz v2, :cond_e

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Packed data had wrong length!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_128
    invoke-direct {p0, p1, v7, v4}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/y;ILcom/squareup/wire/Message$Datatype;)Ljava/lang/Object;

    move-result-object v2

    sget-object v8, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    if-ne v4, v8, :cond_140

    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_140

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v7, v2, v3}, Lcom/squareup/wire/g;->addVarint(IJ)V

    goto/16 :goto_e

    :cond_140
    invoke-virtual {v3}, Lcom/squareup/wire/Message$Label;->b()Z

    move-result v3

    if-eqz v3, :cond_14b

    invoke-virtual {v6, v7, v2}, Lcom/squareup/wire/k;->a(ILjava/lang/Object;)V

    goto/16 :goto_e

    :cond_14b
    if-eqz v5, :cond_156

    move-object v0, v1

    check-cast v0, Lcom/squareup/wire/c;

    move-object v3, v0

    invoke-static {v3, v5, v2}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/c;Lcom/squareup/wire/d;Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_156
    invoke-direct {p0, v1, v7, v2}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/g;ILjava/lang/Object;)V
    :try_end_159
    .catch Ljava/lang/IllegalAccessException; {:try_start_61 .. :try_end_159} :catch_43
    .catch Ljava/lang/InstantiationException; {:try_start_61 .. :try_end_159} :catch_5a

    goto/16 :goto_e

    nop

    :pswitch_data_15c
    .packed-switch 0x1
        :pswitch_d4
        :pswitch_dd
        :pswitch_e6
        :pswitch_ef
        :pswitch_fc
        :pswitch_e
    .end packed-switch
.end method

.method final b(Lcom/squareup/wire/Message;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)[B"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/Message;)I

    move-result v0

    new-array v0, v0, [B

    :try_start_6
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/squareup/wire/z;->a([BI)Lcom/squareup/wire/z;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/Message;Lcom/squareup/wire/z;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final c(Lcom/squareup/wire/Message;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->e:Lcom/squareup/wire/o;

    iget-object v1, v1, Lcom/squareup/wire/o;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/h;

    invoke-static {p1, v0}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/Message;Lcom/squareup/wire/h;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1e

    iget-boolean v5, v0, Lcom/squareup/wire/h;->g:Z

    if-nez v5, :cond_1e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    iget-object v0, v0, Lcom/squareup/wire/h;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_47
    instance-of v0, p1, Lcom/squareup/wire/ExtendableMessage;

    if-eqz v0, :cond_63

    check-cast p1, Lcom/squareup/wire/ExtendableMessage;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{extensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/e;

    if-nez v0, :cond_6d

    const-string v0, "{}"

    :goto_5b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_63
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6d
    iget-object v0, p1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/e;

    invoke-virtual {v0}, Lcom/squareup/wire/e;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5b
.end method
