.class  Lcom/sun/activation/registries/LineTokenizer;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final singles:Ljava/lang/String; = "="
.field private currentPosition:I
.field private maxPosition:I
.field private stack:Ljava/util/Vector;
.field private str:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;
const/4 v0, 0x0
iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
iput-object p1, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I
return-void
.end method
.method private skipWhiteSpace()V
.registers 3
:goto_0
iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
iget v1, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I
if-ge v0, v1, :cond_14
iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;
iget v1, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z
move-result v0
if-nez v0, :cond_15
:cond_14
return-void
:cond_15
iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
goto :goto_0
.end method
.method public hasMoreTokens()Z
.registers 4
const/4 v0, 0x1
iget-object v1, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;
invoke-virtual {v1}, Ljava/util/Vector;->size()I
move-result v1
if-lez v1, :cond_a
:cond_9
:goto_9
return v0
:cond_a
invoke-direct {p0}, Lcom/sun/activation/registries/LineTokenizer;->skipWhiteSpace()V
iget v1, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I
if-lt v1, v2, :cond_9
const/4 v0, 0x0
goto :goto_9
.end method
.method public nextToken()Ljava/lang/String;
.registers 8
const/16 v6, 0x5c
const/16 v5, 0x22
iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v1
if-lez v1, :cond_1e
iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;
add-int/lit8 v2, v1, -0x1
invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v2, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;
add-int/lit8 v1, v1, -0x1
invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V
:goto_1d
return-object v0
:cond_1e
invoke-direct {p0}, Lcom/sun/activation/registries/LineTokenizer;->skipWhiteSpace()V
iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
iget v1, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I
if-lt v0, v1, :cond_2d
new-instance v0, Ljava/util/NoSuchElementException;
invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V
throw v0
:cond_2d
iget v1, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
if-ne v0, v5, :cond_94
iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
const/4 v0, 0x0
:cond_3e
:goto_3e
iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
iget v3, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I
if-lt v2, v3, :cond_4d
:goto_44
:cond_44
iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;
iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
goto :goto_1d
:cond_4d
iget-object v2, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;
iget v3, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
move-result v2
if-ne v2, v6, :cond_63
iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
const/4 v0, 0x1
goto :goto_3e
:cond_63
if-ne v2, v5, :cond_3e
if-eqz v0, :cond_87
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
add-int/lit8 v0, v1, 0x1
:goto_6e
iget v1, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
add-int/lit8 v1, v1, -0x1
if-lt v0, v1, :cond_79
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_1d
:cond_79
iget-object v1, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C
move-result v1
if-eq v1, v6, :cond_84
invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_84
add-int/lit8 v0, v0, 0x1
goto :goto_6e
:cond_87
iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;
add-int/lit8 v1, v1, 0x1
iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
add-int/lit8 v2, v2, -0x1
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
goto :goto_1d
:cond_94
const-string v2, "="
invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ltz v0, :cond_a9
iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
goto :goto_44
:cond_a3
iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
:cond_a9
iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I
if-ge v0, v2, :cond_44
const-string v0, "="
iget-object v2, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;
iget v3, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
move-result v2
invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-gez v0, :cond_44
iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;
iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I
invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z
move-result v0
if-eqz v0, :cond_a3
goto/16 :goto_44
.end method
.method public pushToken(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method