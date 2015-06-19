.class public Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
.super Ljava/lang/Object;
.source "DataFormatReaders.java"
.field public static final DEFAULT_MAX_INPUT_LOOKAHEAD:I = 0x40
.field protected final _maxInputLookahead:I
.field protected final _minimalMatch$459d58cc:I
.field protected final _optimalMatch$459d58cc:I
.field protected final _readers:[Lcom/fasterxml/jackson/databind/ObjectReader;
.method public constructor <init>(Ljava/util/Collection;)V
.registers 3
invoke-interface {p1}, Ljava/util/Collection;->size()I
move-result v0
new-array v0, v0, [Lcom/fasterxml/jackson/databind/ObjectReader;
invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fasterxml/jackson/databind/ObjectReader;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;)V
return-void
.end method
.method public varargs constructor <init>([Lcom/fasterxml/jackson/databind/ObjectReader;)V
.registers 5
sget v0, Lcom/fasterxml/jackson/a/b/d;->d:I
sget v1, Lcom/fasterxml/jackson/a/b/d;->c:I
const/16 v2, 0x40
invoke-direct {p0, p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;III)V
return-void
.end method
.method private constructor <init>([Lcom/fasterxml/jackson/databind/ObjectReader;III)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;
iput p2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch$459d58cc:I
iput p3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch$459d58cc:I
iput p4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I
return-void
.end method
.method private _findFormat(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
.registers 11
const/4 v0, 0x0
const/4 v2, 0x0
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;
array-length v6, v5
move v4, v0
:goto_6
if-ge v4, v6, :cond_36
aget-object v3, v5, v4
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->reset()V
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/a/e;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/a/e;->hasFormat$2764b24c(Lcom/fasterxml/jackson/a/b/b;)I
move-result v1
if-eqz v1, :cond_3d
add-int/lit8 v7, v1, -0x1
iget v8, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch$459d58cc:I
add-int/lit8 v8, v8, -0x1
if-lt v7, v8, :cond_3d
if-eqz v2, :cond_27
add-int/lit8 v7, v0, -0x1
add-int/lit8 v8, v1, -0x1
if-ge v7, v8, :cond_3d
:cond_27
add-int/lit8 v0, v1, -0x1
iget v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch$459d58cc:I
add-int/lit8 v2, v2, -0x1
if-ge v0, v2, :cond_38
move v0, v1
move-object v1, v3
:goto_31
add-int/lit8 v2, v4, 0x1
move v4, v2
move-object v2, v1
goto :goto_6
:cond_36
move v1, v0
move-object v3, v2
:cond_38
invoke-virtual {p1, v3, v1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->createMatcher$edb45c1(Lcom/fasterxml/jackson/databind/ObjectReader;I)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
move-result-object v0
return-object v0
:cond_3d
move-object v1, v2
goto :goto_31
.end method
.method public findFormat(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
.registers 4
new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;
iget v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I
new-array v1, v1, [B
invoke-direct {v0, p0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;-><init>(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;Ljava/io/InputStream;[B)V
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_findFormat(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
move-result-object v0
return-object v0
.end method
.method public findFormat([B)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;-><init>(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;[B)V
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_findFormat(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
move-result-object v0
return-object v0
.end method
.method public findFormat([BII)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;-><init>(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;[BII)V
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_findFormat(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const/16 v0, 0x5b
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;
array-length v2, v0
if-lez v2, :cond_39
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;
const/4 v3, 0x0
aget-object v0, v0, v3
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/e;->getFormatName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x1
:goto_20
if-ge v0, v2, :cond_39
const-string v3, ", "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;
aget-object v3, v3, v0
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/a/e;
move-result-object v3
invoke-virtual {v3}, Lcom/fasterxml/jackson/a/e;->getFormatName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_20
:cond_39
const/16 v0, 0x5d
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public with(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
.registers 7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;
array-length v1, v0
new-array v2, v1, [Lcom/fasterxml/jackson/databind/ObjectReader;
const/4 v0, 0x0
:goto_6
if-ge v0, v1, :cond_15
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;
aget-object v3, v3, v0
invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->with(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;
move-result-object v3
aput-object v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_15
new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
iget v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch$459d58cc:I
iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch$459d58cc:I
iget v4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I
invoke-direct {v0, v2, v1, v3, v4}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;III)V
return-object v0
.end method
.method public with([Lcom/fasterxml/jackson/databind/ObjectReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
.registers 6
new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
iget v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch$459d58cc:I
iget v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch$459d58cc:I
iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I
invoke-direct {v0, p1, v1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;III)V
return-object v0
.end method
.method public withMaxInputLookahead(I)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
.registers 6
iget v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;
iget v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch$459d58cc:I
iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch$459d58cc:I
invoke-direct {v0, v1, v2, v3, p1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;III)V
move-object p0, v0
goto :goto_4
.end method
.method public withMinimalMatch$79dd65ca(I)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
.registers 6
iget v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch$459d58cc:I
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;
iget v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch$459d58cc:I
iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I
invoke-direct {v0, v1, v2, p1, v3}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;III)V
move-object p0, v0
goto :goto_4
.end method
.method public withOptimalMatch$79dd65ca(I)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
.registers 6
iget v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch$459d58cc:I
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;
iget v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch$459d58cc:I
iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I
invoke-direct {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;III)V
move-object p0, v0
goto :goto_4
.end method
.method public withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
.registers 7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;
array-length v1, v0
new-array v2, v1, [Lcom/fasterxml/jackson/databind/ObjectReader;
const/4 v0, 0x0
:goto_6
if-ge v0, v1, :cond_15
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;
aget-object v3, v3, v0
invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;
move-result-object v3
aput-object v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_15
new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
iget v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch$459d58cc:I
iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch$459d58cc:I
iget v4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I
invoke-direct {v0, v2, v1, v3, v4}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;III)V
return-object v0
.end method