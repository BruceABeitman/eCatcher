.class Lcom/nineoldandroids/util/ReflectiveProperty;
.super Lcom/nineoldandroids/util/Property;
.source "ReflectiveProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nineoldandroids/util/Property",
        "<TT;TV;>;"
    }
.end annotation


# static fields
.field private static final PREFIX_GET:Ljava/lang/String; = "get"

.field private static final PREFIX_IS:Ljava/lang/String; = "is"

.field private static final PREFIX_SET:Ljava/lang/String; = "set"


# instance fields
.field private mField:Ljava/lang/reflect/Field;

.field private mGetter:Ljava/lang/reflect/Method;

.field private mSetter:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "get"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    :try_start_3d
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nineoldandroids/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;
    :try_end_47
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3d .. :try_end_47} :catch_8e

    :goto_47
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nineoldandroids/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/nineoldandroids/util/ReflectiveProperty;->typesMatch(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v15

    if-nez v15, :cond_147

    new-instance v15, Lcom/nineoldandroids/util/NoSuchPropertyException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Underlying type ("

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ") "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "does not match Property type ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/nineoldandroids/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    throw v15

    :catch_8e
    move-exception v4

    const/4 v15, 0x0

    :try_start_90
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nineoldandroids/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nineoldandroids/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_a3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_90 .. :try_end_a3} :catch_a4

    goto :goto_47

    :catch_a4
    move-exception v5

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "is"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    :try_start_b6
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nineoldandroids/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;
    :try_end_c0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b6 .. :try_end_c0} :catch_c1

    goto :goto_47

    :catch_c1
    move-exception v6

    const/4 v15, 0x0

    :try_start_c3
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nineoldandroids/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nineoldandroids/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_d6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c3 .. :try_end_d6} :catch_d8

    goto/16 :goto_47

    :catch_d8
    move-exception v7

    :try_start_d9
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nineoldandroids/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nineoldandroids/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, Lcom/nineoldandroids/util/ReflectiveProperty;->typesMatch(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v15

    if-nez v15, :cond_171

    new-instance v15, Lcom/nineoldandroids/util/NoSuchPropertyException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Underlying type ("

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ") "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "does not match Property type ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/nineoldandroids/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d9 .. :try_end_12c} :catch_12c

    :catch_12c
    move-exception v8

    new-instance v15, Lcom/nineoldandroids/util/NoSuchPropertyException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "No accessor method or field found for property with name "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/nineoldandroids/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_147
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "set"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x1

    :try_start_158
    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nineoldandroids/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nineoldandroids/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_171
    .catch Ljava/lang/NoSuchMethodException; {:try_start_158 .. :try_end_171} :catch_172

    :cond_171
    :goto_171
    return-void

    :catch_172
    move-exception v15

    goto :goto_171
.end method

.method private typesMatch(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/Class;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p2, p1, :cond_4d

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_4a

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_12

    const-class v2, Ljava/lang/Float;

    if-eq p1, v2, :cond_4b

    :cond_12
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_1a

    const-class v2, Ljava/lang/Integer;

    if-eq p1, v2, :cond_4b

    :cond_1a
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_22

    const-class v2, Ljava/lang/Boolean;

    if-eq p1, v2, :cond_4b

    :cond_22
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_2a

    const-class v2, Ljava/lang/Long;

    if-eq p1, v2, :cond_4b

    :cond_2a
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_32

    const-class v2, Ljava/lang/Double;

    if-eq p1, v2, :cond_4b

    :cond_32
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_3a

    const-class v2, Ljava/lang/Short;

    if-eq p1, v2, :cond_4b

    :cond_3a
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_42

    const-class v2, Ljava/lang/Byte;

    if-eq p1, v2, :cond_4b

    :cond_42
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v2, :cond_4a

    const-class v2, Ljava/lang/Character;

    if-eq p1, v2, :cond_4b

    :cond_4a
    :goto_4a
    return v0

    :cond_4b
    move v0, v1

    goto :goto_4a

    :cond_4d
    move v0, v1

    goto :goto_4a
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    iget-object v1, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1e

    :try_start_4
    iget-object v1, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_a} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_a} :catch_13

    move-result-object v1

    :goto_b
    return-object v1

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :catch_13
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1e
    iget-object v1, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_30

    :try_start_22
    iget-object v1, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_27} :catch_29

    move-result-object v1

    goto :goto_b

    :catch_29
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_30
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public isReadOnly()Z
    .registers 2

    iget-object v0, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_22

    :try_start_4
    iget-object v1, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_f} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_f} :catch_17

    :goto_f
    return-void

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :catch_17
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_22
    iget-object v1, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_33

    :try_start_26
    iget-object v1, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_2b} :catch_2c

    goto :goto_f

    :catch_2c
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_33
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Property "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nineoldandroids/util/ReflectiveProperty;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is read-only"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
