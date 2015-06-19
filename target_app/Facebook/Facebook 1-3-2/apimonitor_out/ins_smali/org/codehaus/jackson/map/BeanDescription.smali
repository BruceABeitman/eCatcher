.class public abstract Lorg/codehaus/jackson/map/BeanDescription;
.super Ljava/lang/Object;
.field protected final _type:Lorg/codehaus/jackson/type/JavaType;
.method protected constructor <init>(Lorg/codehaus/jackson/type/JavaType;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/codehaus/jackson/map/BeanDescription;->_type:Lorg/codehaus/jackson/type/JavaType;
return-void
.end method
.method public abstract findGetters(ZLjava/util/Collection;)Ljava/util/LinkedHashMap;
.end method
.method public abstract findSetters(Z)Ljava/util/LinkedHashMap;
.end method
.method public getBeanClass()Ljava/lang/Class;
.registers 2
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