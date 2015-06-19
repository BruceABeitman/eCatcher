.class public abstract Lorg/codehaus/jackson/map/BeanDescription;
.super Ljava/lang/Object;


# instance fields
.field protected final _type:Lorg/codehaus/jackson/type/JavaType;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/type/JavaType;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/map/BeanDescription;->_type:Lorg/codehaus/jackson/type/JavaType;

    return-void
.end method


# virtual methods
.method public abstract findGetters(ZLjava/util/Collection;)Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findSetters(Z)Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end method

.method public getBeanClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/map/BeanDescription;->_type:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/codehaus/jackson/type/JavaType;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/map/BeanDescription;->_type:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method
