.class public abstract Lorg/codehaus/jackson/impl/JsonWriteContext;
.super Lorg/codehaus/jackson/JsonStreamContext;


# static fields
.field public static final STATUS_EXPECT_NAME:I = 0x5

.field public static final STATUS_EXPECT_VALUE:I = 0x4

.field public static final STATUS_OK_AFTER_COLON:I = 0x2

.field public static final STATUS_OK_AFTER_COMMA:I = 0x1

.field public static final STATUS_OK_AFTER_SPACE:I = 0x3

.field public static final STATUS_OK_AS_IS:I


# instance fields
.field _childArray:Lorg/codehaus/jackson/impl/JsonWriteContext;

.field _childObject:Lorg/codehaus/jackson/impl/JsonWriteContext;

.field protected final _parent:Lorg/codehaus/jackson/impl/JsonWriteContext;


# direct methods
.method protected constructor <init>(ILorg/codehaus/jackson/impl/JsonWriteContext;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/codehaus/jackson/JsonStreamContext;-><init>(I)V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_childArray:Lorg/codehaus/jackson/impl/JsonWriteContext;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_childObject:Lorg/codehaus/jackson/impl/JsonWriteContext;

    iput-object p2, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_parent:Lorg/codehaus/jackson/impl/JsonWriteContext;

    return-void
.end method

.method public static createRootContext()Lorg/codehaus/jackson/impl/JsonWriteContext;
    .registers 1

    new-instance v0, Lorg/codehaus/jackson/impl/RootWContext;

    invoke-direct {v0}, Lorg/codehaus/jackson/impl/RootWContext;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected abstract appendDesc(Ljava/lang/StringBuilder;)V
.end method

.method public final createChildArrayContext()Lorg/codehaus/jackson/impl/JsonWriteContext;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_childArray:Lorg/codehaus/jackson/impl/JsonWriteContext;

    if-nez v0, :cond_c

    new-instance v0, Lorg/codehaus/jackson/impl/ArrayWContext;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/impl/ArrayWContext;-><init>(Lorg/codehaus/jackson/impl/JsonWriteContext;)V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_childArray:Lorg/codehaus/jackson/impl/JsonWriteContext;

    :goto_b
    return-object v0

    :cond_c
    const/4 v1, -0x1

    iput v1, v0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_index:I

    goto :goto_b
.end method

.method public final createChildObjectContext()Lorg/codehaus/jackson/impl/JsonWriteContext;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_childObject:Lorg/codehaus/jackson/impl/JsonWriteContext;

    if-nez v0, :cond_c

    new-instance v0, Lorg/codehaus/jackson/impl/ObjectWContext;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/impl/ObjectWContext;-><init>(Lorg/codehaus/jackson/impl/JsonWriteContext;)V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_childObject:Lorg/codehaus/jackson/impl/JsonWriteContext;

    :goto_b
    return-object v0

    :cond_c
    const/4 v1, -0x1

    iput v1, v0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_index:I

    goto :goto_b
.end method

.method public bridge synthetic getParent()Lorg/codehaus/jackson/JsonStreamContext;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    return-object v0
.end method

.method public final getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonWriteContext;->_parent:Lorg/codehaus/jackson/impl/JsonWriteContext;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->appendDesc(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract writeFieldName(Ljava/lang/String;)I
.end method

.method public abstract writeValue()I
.end method
