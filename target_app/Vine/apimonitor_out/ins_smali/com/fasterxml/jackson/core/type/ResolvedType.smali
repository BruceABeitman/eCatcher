.class public abstract Lcom/fasterxml/jackson/core/type/ResolvedType;
.super Ljava/lang/Object;
.source "ResolvedType.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract containedType(I)Lcom/fasterxml/jackson/core/type/ResolvedType;
.end method
.method public abstract containedTypeCount()I
.end method
.method public abstract containedTypeName(I)Ljava/lang/String;
.end method
.method public abstract getContentType()Lcom/fasterxml/jackson/core/type/ResolvedType;
.end method
.method public abstract getKeyType()Lcom/fasterxml/jackson/core/type/ResolvedType;
.end method
.method public abstract getRawClass()Ljava/lang/Class;
.end method
.method public abstract hasGenericTypes()Z
.end method
.method public abstract hasRawClass(Ljava/lang/Class;)Z
.end method
.method public abstract isAbstract()Z
.end method
.method public abstract isArrayType()Z
.end method
.method public abstract isCollectionLikeType()Z
.end method
.method public abstract isConcrete()Z
.end method
.method public abstract isContainerType()Z
.end method
.method public abstract isEnumType()Z
.end method
.method public abstract isFinal()Z
.end method
.method public abstract isInterface()Z
.end method
.method public abstract isMapLikeType()Z
.end method
.method public abstract isPrimitive()Z
.end method
.method public abstract isThrowable()Z
.end method
.method public abstract toCanonical()Ljava/lang/String;
.end method