.class final Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;
.super Ljava/util/StringTokenizer;
.source "SourceFile"


# instance fields
.field protected _index:I

.field protected final _input:Ljava/lang/String;

.field protected _pushbackToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, "<,>"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->_input:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAllInput()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->_input:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemainingInput()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->_input:Ljava/lang/String;

    iget v1, p0, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->_index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasMoreTokens()Z
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->_pushbackToken:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-super {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final nextToken()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->_pushbackToken:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->_pushbackToken:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->_pushbackToken:Ljava/lang/String;

    :goto_9
    iget v1, p0, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->_index:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->_index:I

    return-object v0

    :cond_13
    invoke-super {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public final pushBack(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->_pushbackToken:Ljava/lang/String;

    iget v0, p0, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->_index:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->_index:I

    return-void
.end method
