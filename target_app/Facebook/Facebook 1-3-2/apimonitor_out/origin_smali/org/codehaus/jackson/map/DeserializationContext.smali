.class public abstract Lorg/codehaus/jackson/map/DeserializationContext;
.super Ljava/lang/Object;


# instance fields
.field protected final _config:Lorg/codehaus/jackson/map/DeserializationConfig;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/map/DeserializationContext;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    return-void
.end method


# virtual methods
.method public abstract constructCalendar(Ljava/util/Date;)Ljava/util/Calendar;
.end method

.method public abstract getArrayBuilders()Lorg/codehaus/jackson/map/util/ArrayBuilders;
.end method

.method public getBase64Variant()Lorg/codehaus/jackson/Base64Variant;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationContext;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->getBase64Variant()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/codehaus/jackson/map/DeserializationConfig;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationContext;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    return-object v0
.end method

.method public abstract getParser()Lorg/codehaus/jackson/JsonParser;
.end method

.method public abstract instantiationException(Ljava/lang/Class;Ljava/lang/Exception;)Lorg/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Exception;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationContext;->_config:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public abstract leaseObjectBuffer()Lorg/codehaus/jackson/map/util/ObjectBuffer;
.end method

.method public abstract mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract parseDate(Ljava/lang/String;)Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract returnObjectBuffer(Lorg/codehaus/jackson/map/util/ObjectBuffer;)V
.end method

.method public abstract unknownFieldException(Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
.end method

.method public abstract weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract weirdNumberException(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method
