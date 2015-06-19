.class public Lcom/fasterxml/jackson/databind/ObjectWriter;
.super Ljava/lang/Object;
.source "ObjectWriter.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/Versioned;
.implements Ljava/io/Serializable;


# static fields
.field protected static final NULL_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter; = null

.field private static final serialVersionUID:J = -0x61b57971e586985cL


# instance fields
.field protected final _cfgBigDecimalAsPlain:Z

.field protected final _characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

.field protected final _config:Lcom/fasterxml/jackson/databind/SerializationConfig;

.field protected final _generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

.field protected final _prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

.field protected final _rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _rootType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _schema:Lcom/fasterxml/jackson/core/FormatSchema;

.field protected final _serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

.field protected final _serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_cfgBigDecimalAsPlain:Z

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/core/FormatSchema;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_cfgBigDecimalAsPlain:Z

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/PrettyPrinter;)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_cfgBigDecimalAsPlain:Z

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    if-eqz p3, :cond_22

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    :cond_22
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz p3, :cond_32

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_32
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    :goto_36
    return-void

    :cond_37
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetchRootSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    goto :goto_36
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/core/JsonFactory;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonFactory;->requiresPropertyOrdering()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_cfgBigDecimalAsPlain:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_cfgBigDecimalAsPlain:Z

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_cfgBigDecimalAsPlain:Z

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/core/PrettyPrinter;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/core/io/CharacterEscapes;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/core/PrettyPrinter;",
            "Lcom/fasterxml/jackson/core/FormatSchema;",
            "Lcom/fasterxml/jackson/core/io/CharacterEscapes;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_cfgBigDecimalAsPlain:Z

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object p6, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;

    iput-object p7, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    return-void
.end method

.method private _configureJsonGenerator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-ne v0, v1, :cond_2a

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;

    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->setCharacterEscapes(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;

    :cond_17
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->setSchema(Lcom/fasterxml/jackson/core/FormatSchema;)V

    :cond_20
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_cfgBigDecimalAsPlain:Z

    if-eqz v0, :cond_29

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->enable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;

    :cond_29
    return-void

    :cond_2a
    instance-of v1, v0, Lcom/fasterxml/jackson/core/util/Instantiatable;

    if-eqz v1, :cond_36

    check-cast v0, Lcom/fasterxml/jackson/core/util/Instantiatable;

    invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/Instantiatable;->createInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/PrettyPrinter;

    :cond_36
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;

    goto :goto_e

    :cond_3a
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->useDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/JsonGenerator;

    goto :goto_e
.end method

.method private final _writeCloseable(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/SerializationConfig;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p2

    check-cast v0, Ljava/io/Closeable;

    :try_start_4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v1, :cond_22

    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_2e

    :goto_f
    const/4 v1, 0x0

    :try_start_10
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_45

    const/4 v3, 0x0

    :try_start_14
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_4b

    if-eqz v2, :cond_1c

    :try_start_19
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_3d

    :cond_1c
    :goto_1c
    if-eqz v2, :cond_21

    :try_start_1e
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_3f

    :cond_21
    :goto_21
    return-void

    :cond_22
    :try_start_22
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v1

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v1, p1, p2, v3, v4}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2e

    goto :goto_f

    :catchall_2e
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_32
    if-eqz p1, :cond_37

    :try_start_34
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_41

    :cond_37
    :goto_37
    if-eqz v1, :cond_3c

    :try_start_39
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_43

    :cond_3c
    :goto_3c
    throw v0

    :catch_3d
    move-exception v0

    goto :goto_1c

    :catch_3f
    move-exception v0

    goto :goto_21

    :catch_41
    move-exception v2

    goto :goto_37

    :catch_43
    move-exception v1

    goto :goto_3c

    :catchall_45
    move-exception v1

    move-object p1, v2

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_32

    :catchall_4b
    move-exception v0

    move-object v1, v2

    move-object p1, v2

    goto :goto_32
.end method

.method private final _writeCloseableValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/SerializationConfig;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Ljava/io/Closeable;

    :try_start_3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v1, :cond_25

    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    :goto_e
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_31

    :cond_1b
    const/4 v1, 0x0

    :try_start_1c
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_3f

    if-eqz v1, :cond_24

    :try_start_21
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_3b

    :cond_24
    :goto_24
    return-void

    :cond_25
    :try_start_25
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_31

    goto :goto_e

    :catchall_31
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_35
    if-eqz v1, :cond_3a

    :try_start_37
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3d

    :cond_3a
    :goto_3a
    throw v0

    :catch_3b
    move-exception v0

    goto :goto_24

    :catch_3d
    move-exception v1

    goto :goto_3a

    :catchall_3f
    move-exception v0

    goto :goto_35
.end method


# virtual methods
.method protected final _configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configureJsonGenerator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_17

    instance-of v0, p2, Ljava/io/Closeable;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_writeCloseable(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    :goto_16
    return-void

    :cond_17
    const/4 v1, 0x0

    :try_start_18
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    :goto_25
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2a

    goto :goto_16

    :catchall_2a
    move-exception v0

    if-nez v1, :cond_30

    :try_start_2d
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_3f

    :cond_30
    :goto_30
    throw v0

    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_2a

    goto :goto_25

    :catch_3f
    move-exception v1

    goto :goto_30
.end method

.method protected _prefetchRootSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_d

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->EAGER_SERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v3}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    :try_end_17
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_e .. :try_end_17} :catch_19

    move-result-object v0

    goto :goto_d

    :catch_19
    move-exception v1

    goto :goto_d
.end method

.method protected _serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->createInstance(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    return-object v0
.end method

.method protected _verifySchemaType(Lcom/fasterxml/jackson/core/FormatSchema;)V
    .registers 5

    if-eqz p1, :cond_3b

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->canUseSchema(Lcom/fasterxml/jackson/core/FormatSchema;)Z

    move-result v0

    if-nez v0, :cond_3b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not use FormatSchema of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    return-void
.end method

.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;)V

    return-void
.end method

.method public canSerialize(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->hasSerializerFor(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    return v0
.end method

.method public canSerialize(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->hasSerializerFor(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    return v0
.end method

.method public getAttributes()Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAttributes()Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object v0
.end method

.method public getFactory()Lcom/fasterxml/jackson/core/JsonFactory;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    return-object v0
.end method

.method public getJsonFactory()Lcom/fasterxml/jackson/core/JsonFactory;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    return-object v0
.end method

.method public getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    return-object v0
.end method

.method public hasPrefetchedSerializer()Z
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    return v0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v1, v0, :cond_b

    :goto_a
    return-object p0

    :cond_b
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    move-object p0, v0

    goto :goto_a
.end method

.method public with(Lcom/fasterxml/jackson/core/JsonFactory;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    if-ne p1, v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/core/JsonFactory;)V

    move-object p0, v0

    goto :goto_4
.end method

.method public with(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 10

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-ne p1, v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    if-nez p1, :cond_1b

    sget-object v5, Lcom/fasterxml/jackson/databind/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;

    :goto_9
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/core/PrettyPrinter;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/core/io/CharacterEscapes;)V

    move-object p0, v0

    goto :goto_4

    :cond_1b
    move-object v5, p1

    goto :goto_9
.end method

.method public with(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 10

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-ne v0, p1, :cond_5

    :goto_4
    return-object p0

    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/core/PrettyPrinter;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/core/io/CharacterEscapes;)V

    move-object p0, v0

    goto :goto_4
.end method

.method public with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v1, v0, :cond_b

    :goto_a
    return-object p0

    :cond_b
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    move-object p0, v0

    goto :goto_a
.end method

.method public varargs with(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v1, v0, :cond_b

    :goto_a
    return-object p0

    :cond_b
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    move-object p0, v0

    goto :goto_a
.end method

.method public with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v1, v0, :cond_b

    :goto_a
    return-object p0

    :cond_b
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    move-object p0, v0

    goto :goto_a
.end method

.method public with(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getFilterProvider()Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    move-result-object v0

    if-ne p1, v0, :cond_9

    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withFilters(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    move-object p0, v0

    goto :goto_8
.end method

.method public with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v1, v0, :cond_b

    :goto_a
    return-object p0

    :cond_b
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    move-object p0, v0

    goto :goto_a
.end method

.method public with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v1, v0, :cond_b

    :goto_a
    return-object p0

    :cond_b
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    move-object p0, v0

    goto :goto_a
.end method

.method public with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v1, v0, :cond_b

    :goto_a
    return-object p0

    :cond_b
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    move-object p0, v0

    goto :goto_a
.end method

.method public withAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_d

    :goto_c
    return-object p0

    :cond_d
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v1, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    move-object p0, v1

    goto :goto_c
.end method

.method public withAttributes(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withAttributes(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_d

    :goto_c
    return-object p0

    :cond_d
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v1, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    move-object p0, v1

    goto :goto_c
.end method

.method public withDefaultPrettyPrinter()Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 2

    new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->with(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withFeatures([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v1, v0, :cond_b

    :goto_a
    return-object p0

    :cond_b
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    move-object p0, v0

    goto :goto_a
.end method

.method public withRootName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withRootName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v1, v0, :cond_b

    :goto_a
    return-object p0

    :cond_b
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    move-object p0, v0

    goto :goto_a
.end method

.method public withSchema(Lcom/fasterxml/jackson/core/FormatSchema;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 10

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;

    if-ne v0, p1, :cond_5

    :goto_4
    return-object p0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_verifySchemaType(Lcom/fasterxml/jackson/core/FormatSchema;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/core/PrettyPrinter;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/core/io/CharacterEscapes;)V

    move-object p0, v0

    goto :goto_4
.end method

.method public withType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 10

    const/4 v4, 0x0

    if-eqz p1, :cond_28

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_28

    move-object v3, v4

    :goto_c
    if-nez v3, :cond_1d

    :goto_e
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/core/PrettyPrinter;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/core/io/CharacterEscapes;)V

    return-object v0

    :cond_1d
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetchRootSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    goto :goto_e

    :cond_28
    move-object v3, p1

    goto :goto_c
.end method

.method public withType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_c

    const/4 v0, 0x0

    check-cast v0, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    goto :goto_b
.end method

.method public withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v1, v0, :cond_b

    :goto_a
    return-object p0

    :cond_b
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    move-object p0, v0

    goto :goto_a
.end method

.method public without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v1, v0, :cond_b

    :goto_a
    return-object p0

    :cond_b
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    move-object p0, v0

    goto :goto_a
.end method

.method public varargs without(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v1, v0, :cond_b

    :goto_a
    return-object p0

    :cond_b
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    move-object p0, v0

    goto :goto_a
.end method

.method public withoutAttribute(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withoutAttribute(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v0, v1, :cond_d

    :goto_c
    return-object p0

    :cond_d
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v1, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    move-object p0, v1

    goto :goto_c
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withoutFeatures([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-ne v1, v0, :cond_b

    :goto_a
    return-object p0

    :cond_b
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    move-object p0, v0

    goto :goto_a
.end method

.method public writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configureJsonGenerator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_17

    instance-of v0, p2, Ljava/io/Closeable;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_writeCloseableValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    :goto_24
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    goto :goto_16

    :cond_32
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    goto :goto_24
.end method

.method public writeValue(Ljava/io/File;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/File;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    return-void
.end method

.method public writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    return-void
.end method

.method public writeValue(Ljava/io/Writer;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    return-void
.end method

.method public writeValueAsBytes(Ljava/lang/Object;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_getBufferRecycler()Lcom/fasterxml/jackson/core/util/BufferRecycler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    :try_start_b
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    :try_end_16
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_b .. :try_end_16} :catch_1e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_20

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->release()V

    return-object v1

    :catch_1e
    move-exception v0

    throw v0

    :catch_20
    move-exception v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->fromUnexpectedIOE(Ljava/io/IOException;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_getBufferRecycler()Lcom/fasterxml/jackson/core/util/BufferRecycler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    :try_start_b
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_generatorFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    :try_end_14
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_b .. :try_end_14} :catch_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_1b

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;->getAndClear()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_19
    move-exception v0

    throw v0

    :catch_1b
    move-exception v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->fromUnexpectedIOE(Ljava/io/IOException;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
.end method
