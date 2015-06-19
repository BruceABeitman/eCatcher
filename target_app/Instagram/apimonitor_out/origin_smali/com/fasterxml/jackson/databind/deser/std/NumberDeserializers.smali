.class public Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;
.super Ljava/lang/Object;
.source "NumberDeserializers.java"


# static fields
.field private static final _classNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0xb

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->_classNames:Ljava/util/HashSet;

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Byte;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/Short;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Character;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Ljava/lang/Float;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Ljava/lang/Double;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Ljava/lang/Number;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Ljava/math/BigDecimal;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Ljava/math/BigInteger;

    aput-object v3, v1, v2

    :goto_45
    if-ge v0, v4, :cond_55

    aget-object v2, v1, v0

    sget-object v3, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_55
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static all()[Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;

    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v1, v2, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

    const-class v3, Ljava/lang/Byte;

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;

    const-class v3, Ljava/lang/Short;

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Short;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;

    const-class v3, Ljava/lang/Character;

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;

    const-class v3, Ljava/lang/Integer;

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;

    const-class v3, Ljava/lang/Long;

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

    const-class v3, Ljava/lang/Float;

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

    const-class v3, Ljava/lang/Double;

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Short;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$NumberDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$NumberDeserializer;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4e

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_f

    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;->access$000()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_18

    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;->access$100()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;

    move-result-object v0

    goto :goto_e

    :cond_18
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_21

    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;->access$200()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;

    move-result-object v0

    goto :goto_e

    :cond_21
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2a

    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;->access$300()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

    move-result-object v0

    goto :goto_e

    :cond_2a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_33

    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;->access$400()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;

    move-result-object v0

    goto :goto_e

    :cond_33
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3c

    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->access$500()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

    move-result-object v0

    goto :goto_e

    :cond_3c
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_45

    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;->access$600()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;

    move-result-object v0

    goto :goto_e

    :cond_45
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_bb

    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->access$700()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

    move-result-object v0

    goto :goto_e

    :cond_4e
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_5f

    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;->access$800()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;

    move-result-object v0

    goto :goto_e

    :cond_5f
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_68

    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;->access$900()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BooleanDeserializer;

    move-result-object v0

    goto :goto_e

    :cond_68
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_71

    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;->access$1000()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;

    move-result-object v0

    goto :goto_e

    :cond_71
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_7a

    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;->access$1100()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$DoubleDeserializer;

    move-result-object v0

    goto :goto_e

    :cond_7a
    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_83

    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;->access$1200()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;

    move-result-object v0

    goto :goto_e

    :cond_83
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_8c

    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->access$1300()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

    move-result-object v0

    goto :goto_e

    :cond_8c
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_96

    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;->access$1400()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ShortDeserializer;

    move-result-object v0

    goto/16 :goto_e

    :cond_96
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_a0

    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->access$1500()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;

    move-result-object v0

    goto/16 :goto_e

    :cond_a0
    const-class v0, Ljava/lang/Number;

    if-ne p0, v0, :cond_a8

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$NumberDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$NumberDeserializer;

    goto/16 :goto_e

    :cond_a8
    const-class v0, Ljava/math/BigDecimal;

    if-ne p0, v0, :cond_b0

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;

    goto/16 :goto_e

    :cond_b0
    const-class v0, Ljava/math/BigInteger;

    if-ne p0, v0, :cond_bb

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;

    goto/16 :goto_e

    :cond_b8
    const/4 v0, 0x0

    goto/16 :goto_e

    :cond_bb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Internal error: can\'t find deserializer for "

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
