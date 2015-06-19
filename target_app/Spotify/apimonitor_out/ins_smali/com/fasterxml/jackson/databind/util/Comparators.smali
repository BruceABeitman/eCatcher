.class public Lcom/fasterxml/jackson/databind/util/Comparators;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static getArrayComparator(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
move-result v0
new-instance v1, Lcom/fasterxml/jackson/databind/util/Comparators$1;
invoke-direct {v1, p0, v0}, Lcom/fasterxml/jackson/databind/util/Comparators$1;-><init>(Ljava/lang/Object;I)V
return-object v1
.end method