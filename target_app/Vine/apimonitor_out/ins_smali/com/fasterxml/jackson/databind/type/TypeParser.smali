.class public Lcom/fasterxml/jackson/databind/type/TypeParser;
.super Ljava/lang/Object;
.source "TypeParser.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field protected final _factory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/TypeParser;->_factory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
return-void
.end method
.method protected _problem(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
.registers 6
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Failed to parse type \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->getAllInput()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' (remaining: \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->getRemainingInput()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\'): "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
return-object v0
.end method
.method protected findClass(Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Ljava/lang/Class;
.registers 6
:try_start_0
invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findClass(Ljava/lang/String;)Ljava/lang/Class;
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
instance-of v1, v0, Ljava/lang/RuntimeException;
if-eqz v1, :cond_d
check-cast v0, Ljava/lang/RuntimeException;
throw v0
:cond_d
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Can not locate class \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\', problem: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/type/TypeParser;->_problem(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
.end method
.method public parse(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 5
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;
invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/type/TypeParser;->parseType(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->hasMoreTokens()Z
move-result v2
if-eqz v2, :cond_1a
const-string v0, "Unexpected tokens after complete type"
invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/type/TypeParser;->_problem(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
:cond_1a
return-object v0
.end method
.method protected parseType(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 5
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->hasMoreTokens()Z
move-result v0
if-nez v0, :cond_d
const-string v0, "Unexpected end-of-string"
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeParser;->_problem(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
:cond_d
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->nextToken()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeParser;->findClass(Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Ljava/lang/Class;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->hasMoreTokens()Z
move-result v1
if-eqz v1, :cond_35
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->nextToken()Ljava/lang/String;
move-result-object v1
const-string v2, "<"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_32
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeParser;->_factory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeParser;->parseTypes(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Ljava/util/List;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromParameterizedClass(Ljava/lang/Class;Ljava/util/List;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
:goto_31
return-object v0
:cond_32
invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->pushBack(Ljava/lang/String;)V
:cond_35
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeParser;->_factory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
goto :goto_31
.end method
.method protected parseTypes(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Ljava/util/List;
.registers 5
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:cond_5
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->hasMoreTokens()Z
move-result v1
if-eqz v1, :cond_18
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeParser;->parseType(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->hasMoreTokens()Z
move-result v1
if-nez v1, :cond_1f
:cond_18
const-string v0, "Unexpected end-of-string"
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeParser;->_problem(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
:cond_1f
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->nextToken()Ljava/lang/String;
move-result-object v1
const-string v2, ">"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2c
return-object v0
:cond_2c
const-string v2, ","
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unexpected token \'"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\', expected \',\' or \'>\')"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeParser;->_problem(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
move-result-object v0
throw v0
.end method