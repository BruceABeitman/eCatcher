.class public final Lcom/facebook/internal/Validate;
.super Ljava/lang/Object;
.source "Validate.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static containsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V
.registers 7
invoke-static {p0, p1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V
invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_7
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_32
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_7
new-instance v2, Ljava/lang/NullPointerException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Container \'"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\' cannot contain null values"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v2
:cond_32
return-void
.end method
.method public static notEmpty(Ljava/util/Collection;Ljava/lang/String;)V
.registers 5
invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z
move-result v0
if-eqz v0, :cond_25
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Container \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' cannot be empty"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
return-void
.end method
.method public static notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V
.registers 2
invoke-static {p0, p1}, Lcom/facebook/internal/Validate;->containsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V
invoke-static {p0, p1}, Lcom/facebook/internal/Validate;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V
return-void
.end method
.method public static notNull(Ljava/lang/Object;Ljava/lang/String;)V
.registers 5
if-nez p0, :cond_21
new-instance v0, Ljava/lang/NullPointerException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Argument \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' cannot be null"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
return-void
.end method
.method public static notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_25
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Argument \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' cannot be null or empty"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
return-void
.end method
.method public static varargs oneOf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 10
move-object v0, p2
array-length v2, v0
const/4 v1, 0x0
:goto_3
if-ge v1, v2, :cond_15
aget-object v3, v0, v1
if-eqz v3, :cond_10
invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_12
:cond_f
return-void
:cond_10
if-eqz p0, :cond_f
:cond_12
add-int/lit8 v1, v1, 0x1
goto :goto_3
:cond_15
new-instance v4, Ljava/lang/IllegalArgumentException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Argument \'"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "\' was not one of the allowed values"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v4
.end method