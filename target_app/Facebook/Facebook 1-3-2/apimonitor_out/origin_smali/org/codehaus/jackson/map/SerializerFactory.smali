.class public abstract Lorg/codehaus/jackson/map/SerializerFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializationConfig;)Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<TT;>;"
        }
    .end annotation
.end method
