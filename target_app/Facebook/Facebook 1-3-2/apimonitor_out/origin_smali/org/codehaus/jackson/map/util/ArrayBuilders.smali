.class public final Lorg/codehaus/jackson/map/util/ArrayBuilders;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;,
        Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;,
        Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;,
        Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;,
        Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;,
        Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;,
        Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;
    }
.end annotation


# instance fields
.field _booleanBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

.field _byteBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

.field _doubleBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

.field _floatBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

.field _intBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

.field _longBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

.field _shortBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    return-void
.end method


# virtual methods
.method public getBooleanBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    if-nez v0, :cond_b

    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    return-object v0
.end method

.method public getByteBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    if-nez v0, :cond_b

    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    return-object v0
.end method

.method public getDoubleBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    if-nez v0, :cond_b

    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    return-object v0
.end method

.method public getFloatBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    if-nez v0, :cond_b

    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    return-object v0
.end method

.method public getIntBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    if-nez v0, :cond_b

    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    return-object v0
.end method

.method public getLongBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    if-nez v0, :cond_b

    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    return-object v0
.end method

.method public getShortBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    if-nez v0, :cond_b

    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    return-object v0
.end method
