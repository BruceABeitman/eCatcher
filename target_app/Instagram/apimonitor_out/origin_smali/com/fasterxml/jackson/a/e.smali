.class public Lcom/fasterxml/jackson/a/e;
.super Ljava/lang/Object;
.source "JsonFactory.java"

# interfaces
.implements Lcom/fasterxml/jackson/a/x;
.implements Ljava/io/Serializable;


# static fields
#the value of this static final field might be set in the static constructor
.field protected static final DEFAULT_FACTORY_FEATURE_FLAGS:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final DEFAULT_GENERATOR_FEATURE_FLAGS:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final DEFAULT_PARSER_FEATURE_FLAGS:I = 0x0

.field private static final DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/a/u; = null

.field public static final FORMAT_NAME_JSON:Ljava/lang/String; = "JSON"

.field protected static final _recyclerRef:Ljava/lang/ThreadLocal; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/fasterxml/jackson/a/g/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x791a681719524b4aL


# instance fields
.field protected _characterEscapes:Lcom/fasterxml/jackson/a/c/c;

.field protected _factoryFeatures:I

.field protected _generatorFeatures:I

.field protected _inputDecorator:Lcom/fasterxml/jackson/a/c/e;

.field protected _objectCodec:Lcom/fasterxml/jackson/a/s;

.field protected _outputDecorator:Lcom/fasterxml/jackson/a/c/j;

.field protected _parserFeatures:I

.field protected final transient _rootByteSymbols:Lcom/fasterxml/jackson/a/e/a;

.field protected final transient _rootCharSymbols:Lcom/fasterxml/jackson/a/e/d;

.field protected _rootValueSeparator:Lcom/fasterxml/jackson/a/u;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/fasterxml/jackson/a/f;->a()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_FACTORY_FEATURE_FLAGS:I

    invoke-static {}, Lcom/fasterxml/jackson/a/n;->a()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_PARSER_FEATURE_FLAGS:I

    invoke-static {}, Lcom/fasterxml/jackson/a/i;->a()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    sget-object v0, Lcom/fasterxml/jackson/a/g/e;->a:Lcom/fasterxml/jackson/a/c/l;

    sput-object v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/a/u;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/a/e;->_recyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/e;-><init>(Lcom/fasterxml/jackson/a/s;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/a/e;Lcom/fasterxml/jackson/a/s;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/fasterxml/jackson/a/e/d;->a()Lcom/fasterxml/jackson/a/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootCharSymbols:Lcom/fasterxml/jackson/a/e/d;

    invoke-static {}, Lcom/fasterxml/jackson/a/e/a;->a()Lcom/fasterxml/jackson/a/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootByteSymbols:Lcom/fasterxml/jackson/a/e/a;

    sget v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_FACTORY_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_factoryFeatures:I

    sget v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_PARSER_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    sget v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    sget-object v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/a/u;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootValueSeparator:Lcom/fasterxml/jackson/a/u;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    iget v0, p1, Lcom/fasterxml/jackson/a/e;->_factoryFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_factoryFeatures:I

    iget v0, p1, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    iget v0, p1, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    iget-object v0, p1, Lcom/fasterxml/jackson/a/e;->_characterEscapes:Lcom/fasterxml/jackson/a/c/c;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_characterEscapes:Lcom/fasterxml/jackson/a/c/c;

    iget-object v0, p1, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    iget-object v0, p1, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    iget-object v0, p1, Lcom/fasterxml/jackson/a/e;->_rootValueSeparator:Lcom/fasterxml/jackson/a/u;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootValueSeparator:Lcom/fasterxml/jackson/a/u;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/a/s;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/fasterxml/jackson/a/e/d;->a()Lcom/fasterxml/jackson/a/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootCharSymbols:Lcom/fasterxml/jackson/a/e/d;

    invoke-static {}, Lcom/fasterxml/jackson/a/e/a;->a()Lcom/fasterxml/jackson/a/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootByteSymbols:Lcom/fasterxml/jackson/a/e/a;

    sget v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_FACTORY_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_factoryFeatures:I

    sget v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_PARSER_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    sget v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    sget-object v0, Lcom/fasterxml/jackson/a/e;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/a/u;

    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootValueSeparator:Lcom/fasterxml/jackson/a/u;

    iput-object p1, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    return-void
.end method


# virtual methods
.method protected _checkInvalidCopy(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p1, :cond_37

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed copy(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/e;->version()Lcom/fasterxml/jackson/a/w;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not override copy(); it has to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    return-void
.end method

.method protected _createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;
    .registers 5

    new-instance v0, Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/e;->_getBufferRecycler()Lcom/fasterxml/jackson/a/g/a;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/fasterxml/jackson/a/c/d;-><init>(Lcom/fasterxml/jackson/a/g/a;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method protected _createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;
    .registers 6

    new-instance v0, Lcom/fasterxml/jackson/a/d/l;

    iget v1, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/fasterxml/jackson/a/d/l;-><init>(Lcom/fasterxml/jackson/a/c/d;ILcom/fasterxml/jackson/a/s;Ljava/io/Writer;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_characterEscapes:Lcom/fasterxml/jackson/a/c/c;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_characterEscapes:Lcom/fasterxml/jackson/a/c/c;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/d/l;->setCharacterEscapes(Lcom/fasterxml/jackson/a/c/c;)Lcom/fasterxml/jackson/a/h;

    :cond_12
    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_rootValueSeparator:Lcom/fasterxml/jackson/a/u;

    sget-object v2, Lcom/fasterxml/jackson/a/e;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/a/u;

    if-eq v1, v2, :cond_1b

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/d/l;->setRootValueSeparator(Lcom/fasterxml/jackson/a/u;)Lcom/fasterxml/jackson/a/h;

    :cond_1b
    return-object v0
.end method

.method protected _createJsonGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/a/e;->_createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected _createJsonParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/a/e;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method protected _createJsonParser(Ljava/io/Reader;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/a/e;->_createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method protected _createJsonParser([BIILcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/a/e;->_createParser([BIILcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method protected _createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;
    .registers 10

    new-instance v0, Lcom/fasterxml/jackson/a/d/a;

    invoke-direct {v0, p2, p1}, Lcom/fasterxml/jackson/a/d/a;-><init>(Lcom/fasterxml/jackson/a/c/d;Ljava/io/InputStream;)V

    iget v1, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    iget-object v3, p0, Lcom/fasterxml/jackson/a/e;->_rootByteSymbols:Lcom/fasterxml/jackson/a/e/a;

    iget-object v4, p0, Lcom/fasterxml/jackson/a/e;->_rootCharSymbols:Lcom/fasterxml/jackson/a/e/d;

    sget-object v5, Lcom/fasterxml/jackson/a/f;->b:Lcom/fasterxml/jackson/a/f;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/a/e;->isEnabled(Lcom/fasterxml/jackson/a/f;)Z

    move-result v5

    sget-object v6, Lcom/fasterxml/jackson/a/f;->a:Lcom/fasterxml/jackson/a/f;

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/a/e;->isEnabled(Lcom/fasterxml/jackson/a/f;)Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/a/d/a;->a(ILcom/fasterxml/jackson/a/s;Lcom/fasterxml/jackson/a/e/a;Lcom/fasterxml/jackson/a/e/d;ZZ)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method protected _createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;
    .registers 9

    new-instance v0, Lcom/fasterxml/jackson/a/d/g;

    iget v2, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    iget-object v4, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_rootCharSymbols:Lcom/fasterxml/jackson/a/e/d;

    sget-object v3, Lcom/fasterxml/jackson/a/f;->b:Lcom/fasterxml/jackson/a/f;

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/a/e;->isEnabled(Lcom/fasterxml/jackson/a/f;)Z

    move-result v3

    sget-object v5, Lcom/fasterxml/jackson/a/f;->a:Lcom/fasterxml/jackson/a/f;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/a/e;->isEnabled(Lcom/fasterxml/jackson/a/f;)Z

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcom/fasterxml/jackson/a/e/d;->a(ZZ)Lcom/fasterxml/jackson/a/e/d;

    move-result-object v5

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/g;-><init>(Lcom/fasterxml/jackson/a/c/d;ILjava/io/Reader;Lcom/fasterxml/jackson/a/s;Lcom/fasterxml/jackson/a/e/d;)V

    return-object v0
.end method

.method protected _createParser([BIILcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;
    .registers 12

    new-instance v0, Lcom/fasterxml/jackson/a/d/a;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/fasterxml/jackson/a/d/a;-><init>(Lcom/fasterxml/jackson/a/c/d;[BII)V

    iget v1, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    iget-object v3, p0, Lcom/fasterxml/jackson/a/e;->_rootByteSymbols:Lcom/fasterxml/jackson/a/e/a;

    iget-object v4, p0, Lcom/fasterxml/jackson/a/e;->_rootCharSymbols:Lcom/fasterxml/jackson/a/e/d;

    sget-object v5, Lcom/fasterxml/jackson/a/f;->b:Lcom/fasterxml/jackson/a/f;

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/a/e;->isEnabled(Lcom/fasterxml/jackson/a/f;)Z

    move-result v5

    sget-object v6, Lcom/fasterxml/jackson/a/f;->a:Lcom/fasterxml/jackson/a/f;

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/a/e;->isEnabled(Lcom/fasterxml/jackson/a/f;)Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/a/d/a;->a(ILcom/fasterxml/jackson/a/s;Lcom/fasterxml/jackson/a/e/a;Lcom/fasterxml/jackson/a/e/d;ZZ)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method protected _createUTF8Generator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;
    .registers 6

    new-instance v0, Lcom/fasterxml/jackson/a/d/i;

    iget v1, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/fasterxml/jackson/a/d/i;-><init>(Lcom/fasterxml/jackson/a/c/d;ILcom/fasterxml/jackson/a/s;Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_characterEscapes:Lcom/fasterxml/jackson/a/c/c;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_characterEscapes:Lcom/fasterxml/jackson/a/c/c;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/d/i;->setCharacterEscapes(Lcom/fasterxml/jackson/a/c/c;)Lcom/fasterxml/jackson/a/h;

    :cond_12
    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_rootValueSeparator:Lcom/fasterxml/jackson/a/u;

    sget-object v2, Lcom/fasterxml/jackson/a/e;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/a/u;

    if-eq v1, v2, :cond_1b

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/d/i;->setRootValueSeparator(Lcom/fasterxml/jackson/a/u;)Lcom/fasterxml/jackson/a/h;

    :cond_1b
    return-object v0
.end method

.method protected _createUTF8JsonGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/a/e;->_createUTF8Generator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected _createWriter(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/d;Lcom/fasterxml/jackson/a/c/d;)Ljava/io/Writer;
    .registers 6

    sget-object v0, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;

    if-ne p2, v0, :cond_a

    new-instance v0, Lcom/fasterxml/jackson/a/c/n;

    invoke-direct {v0, p3, p1}, Lcom/fasterxml/jackson/a/c/n;-><init>(Lcom/fasterxml/jackson/a/c/d;Ljava/io/OutputStream;)V

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public _getBufferRecycler()Lcom/fasterxml/jackson/a/g/a;
    .registers 4

    sget-object v0, Lcom/fasterxml/jackson/a/e;->_recyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_1c

    new-instance v0, Lcom/fasterxml/jackson/a/g/a;

    invoke-direct {v0}, Lcom/fasterxml/jackson/a/g/a;-><init>()V

    sget-object v1, Lcom/fasterxml/jackson/a/e;->_recyclerRef:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1c
    return-object v0

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/a/g/a;

    goto :goto_b
.end method

.method protected _optimizedStreamFromURL(Ljava/net/URL;)Ljava/io/InputStream;
    .registers 4

    const-string v0, "file"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2e

    :cond_18
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2e

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_2d
    return-object v0

    :cond_2e
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2d
.end method

.method public canUseSchema(Lcom/fasterxml/jackson/a/c;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/e;->getFormatName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Lcom/fasterxml/jackson/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final configure(Lcom/fasterxml/jackson/a/f;Z)Lcom/fasterxml/jackson/a/e;
    .registers 4

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->enable(Lcom/fasterxml/jackson/a/f;)Lcom/fasterxml/jackson/a/e;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->disable(Lcom/fasterxml/jackson/a/f;)Lcom/fasterxml/jackson/a/e;

    move-result-object v0

    goto :goto_6
.end method

.method public final configure(Lcom/fasterxml/jackson/a/i;Z)Lcom/fasterxml/jackson/a/e;
    .registers 4

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->enable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/e;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->disable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/e;

    move-result-object v0

    goto :goto_6
.end method

.method public final configure(Lcom/fasterxml/jackson/a/n;Z)Lcom/fasterxml/jackson/a/e;
    .registers 4

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->enable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/e;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->disable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/e;

    move-result-object v0

    goto :goto_6
.end method

.method public copy()Lcom/fasterxml/jackson/a/e;
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/a/e;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/e;->_checkInvalidCopy(Ljava/lang/Class;)V

    new-instance v0, Lcom/fasterxml/jackson/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/a/e;-><init>(Lcom/fasterxml/jackson/a/e;Lcom/fasterxml/jackson/a/s;)V

    return-object v0
.end method

.method public createGenerator(Ljava/io/File;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;
    .registers 6

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/a/c/d;->a(Lcom/fasterxml/jackson/a/d;)V

    sget-object v2, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;

    if-ne p2, v2, :cond_20

    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    if-eqz v2, :cond_1b

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/j;->a()Ljava/io/OutputStream;

    move-result-object v0

    :cond_1b
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/e;->_createUTF8Generator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    invoke-virtual {p0, v0, p2, v1}, Lcom/fasterxml/jackson/a/e;->_createWriter(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/d;Lcom/fasterxml/jackson/a/c/d;)Ljava/io/Writer;

    move-result-object v0

    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    if-eqz v2, :cond_2e

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/j;->b()Ljava/io/Writer;

    move-result-object v0

    :cond_2e
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/e;->_createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    goto :goto_1f
.end method

.method public createGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/a/h;
    .registers 3

    sget-object v0, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    return-object v0
.end method

.method public createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/a/c/d;->a(Lcom/fasterxml/jackson/a/d;)V

    sget-object v0, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;

    if-ne p2, v0, :cond_1b

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/j;->a()Ljava/io/OutputStream;

    move-result-object p1

    :cond_16
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/a/e;->_createUTF8Generator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/a/e;->_createWriter(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/d;Lcom/fasterxml/jackson/a/c/d;)Ljava/io/Writer;

    move-result-object v0

    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    if-eqz v2, :cond_29

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/j;->b()Ljava/io/Writer;

    move-result-object v0

    :cond_29
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/e;->_createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    goto :goto_1a
.end method

.method public createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/c/j;->b()Ljava/io/Writer;

    move-result-object p1

    :cond_f
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/File;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/File;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/a/h;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/io/File;)Lcom/fasterxml/jackson/a/l;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/a/l;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/net/URL;)Lcom/fasterxml/jackson/a/l;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser([B)Lcom/fasterxml/jackson/a/l;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->createParser([B)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser([BII)Lcom/fasterxml/jackson/a/l;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/e;->createParser([BII)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createParser(Ljava/io/File;)Lcom/fasterxml/jackson/a/l;
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    if-eqz v2, :cond_14

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/e;->a()Ljava/io/InputStream;

    move-result-object v0

    :cond_14
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/e;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/c/e;->a()Ljava/io/InputStream;

    move-result-object p1

    :cond_f
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/a/l;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/c/e;->c()Ljava/io/Reader;

    move-result-object p1

    :cond_f
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/a/l;
    .registers 5

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    if-eqz v2, :cond_14

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/e;->c()Ljava/io/Reader;

    move-result-object v0

    :cond_14
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/e;->_createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/a/l;
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->_optimizedStreamFromURL(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v2, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    if-eqz v2, :cond_13

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/e;->a()Ljava/io/InputStream;

    move-result-object v0

    :cond_13
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/a/e;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    return-object v0
.end method

.method public createParser([B)Lcom/fasterxml/jackson/a/l;
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/c/e;->b()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/a/e;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/fasterxml/jackson/a/e;->_createParser([BIILcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    goto :goto_15
.end method

.method public createParser([BII)Lcom/fasterxml/jackson/a/l;
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/a/e;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/a/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/c/e;->b()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/a/e;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/a/e;->_createParser([BIILcom/fasterxml/jackson/a/c/d;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    goto :goto_15
.end method

.method public disable(Lcom/fasterxml/jackson/a/f;)Lcom/fasterxml/jackson/a/e;
    .registers 4

    iget v0, p0, Lcom/fasterxml/jackson/a/e;->_factoryFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/f;->b()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_factoryFeatures:I

    return-object p0
.end method

.method public disable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/e;
    .registers 4

    iget v0, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/i;->b()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    return-object p0
.end method

.method public disable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/e;
    .registers 4

    iget v0, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/n;->b()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/a/f;)Lcom/fasterxml/jackson/a/e;
    .registers 4

    iget v0, p0, Lcom/fasterxml/jackson/a/e;->_factoryFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/f;->b()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_factoryFeatures:I

    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/e;
    .registers 4

    iget v0, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/i;->b()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/a/n;)Lcom/fasterxml/jackson/a/e;
    .registers 4

    iget v0, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/n;->b()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    return-object p0
.end method

.method public getCharacterEscapes()Lcom/fasterxml/jackson/a/c/c;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_characterEscapes:Lcom/fasterxml/jackson/a/c/c;

    return-object v0
.end method

.method public getCodec()Lcom/fasterxml/jackson/a/s;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/a/e;

    if-ne v0, v1, :cond_b

    const-string v0, "JSON"

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getInputDecorator()Lcom/fasterxml/jackson/a/c/e;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    return-object v0
.end method

.method public getOutputDecorator()Lcom/fasterxml/jackson/a/c/j;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    return-object v0
.end method

.method public getRootValueSeparator()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootValueSeparator:Lcom/fasterxml/jackson/a/u;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootValueSeparator:Lcom/fasterxml/jackson/a/u;

    invoke-interface {v0}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public hasFormat$2764b24c(Lcom/fasterxml/jackson/a/b/b;)I
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/a/e;

    if-ne v0, v1, :cond_d

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/e;->hasJSONFormat$2764b24c(Lcom/fasterxml/jackson/a/b/b;)I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected hasJSONFormat$2764b24c(Lcom/fasterxml/jackson/a/b/b;)I
    .registers 3

    invoke-static {p1}, Lcom/fasterxml/jackson/a/d/a;->a(Lcom/fasterxml/jackson/a/b/b;)I

    move-result v0

    return v0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/a/f;)Z
    .registers 4

    iget v0, p0, Lcom/fasterxml/jackson/a/e;->_factoryFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/f;->b()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/a/i;)Z
    .registers 4

    iget v0, p0, Lcom/fasterxml/jackson/a/e;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/i;->b()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/a/n;)Z
    .registers 4

    iget v0, p0, Lcom/fasterxml/jackson/a/e;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/n;->b()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected readResolve()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/a/e;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/a/e;-><init>(Lcom/fasterxml/jackson/a/e;Lcom/fasterxml/jackson/a/s;)V

    return-object v0
.end method

.method public requiresCustomCodec()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setCharacterEscapes(Lcom/fasterxml/jackson/a/c/c;)Lcom/fasterxml/jackson/a/e;
    .registers 2

    iput-object p1, p0, Lcom/fasterxml/jackson/a/e;->_characterEscapes:Lcom/fasterxml/jackson/a/c/c;

    return-object p0
.end method

.method public setCodec(Lcom/fasterxml/jackson/a/s;)Lcom/fasterxml/jackson/a/e;
    .registers 2

    iput-object p1, p0, Lcom/fasterxml/jackson/a/e;->_objectCodec:Lcom/fasterxml/jackson/a/s;

    return-object p0
.end method

.method public setInputDecorator(Lcom/fasterxml/jackson/a/c/e;)Lcom/fasterxml/jackson/a/e;
    .registers 2

    iput-object p1, p0, Lcom/fasterxml/jackson/a/e;->_inputDecorator:Lcom/fasterxml/jackson/a/c/e;

    return-object p0
.end method

.method public setOutputDecorator(Lcom/fasterxml/jackson/a/c/j;)Lcom/fasterxml/jackson/a/e;
    .registers 2

    iput-object p1, p0, Lcom/fasterxml/jackson/a/e;->_outputDecorator:Lcom/fasterxml/jackson/a/c/j;

    return-object p0
.end method

.method public setRootValueSeparator(Ljava/lang/String;)Lcom/fasterxml/jackson/a/e;
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/fasterxml/jackson/a/e;->_rootValueSeparator:Lcom/fasterxml/jackson/a/u;

    return-object p0

    :cond_6
    new-instance v0, Lcom/fasterxml/jackson/a/c/l;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/a/c/l;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public version()Lcom/fasterxml/jackson/a/w;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/a/d/f;->a:Lcom/fasterxml/jackson/a/w;

    return-object v0
.end method
