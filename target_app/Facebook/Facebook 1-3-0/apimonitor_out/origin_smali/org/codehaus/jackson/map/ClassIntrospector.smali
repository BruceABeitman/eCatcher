.class public abstract Lorg/codehaus/jackson/map/ClassIntrospector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/codehaus/jackson/map/BeanDescription;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract forClassAnnotations(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation
.end method

.method public abstract forClassAnnotations(Lorg/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation
.end method

.method public abstract forCreation(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation
.end method

.method public abstract forDeserialization(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract forSerialization(Lorg/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation
.end method
