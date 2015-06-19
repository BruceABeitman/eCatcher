.class public final Lcom/fasterxml/jackson/databind/node/TextNode;
.super Lcom/fasterxml/jackson/databind/node/ValueNode;
.source "TextNode.java"


# static fields
.field static final EMPTY_STRING_NODE:Lcom/fasterxml/jackson/databind/node/TextNode; = null

.field static final INT_SPACE:I = 0x20


# instance fields
.field final _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/fasterxml/jackson/databind/node/TextNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/TextNode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/TextNode;->EMPTY_STRING_NODE:Lcom/fasterxml/jackson/databind/node/TextNode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    return-void
.end method

.method protected static appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/a/c/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/fasterxml/jackson/databind/node/TextNode;->EMPTY_STRING_NODE:Lcom/fasterxml/jackson/databind/node/TextNode;

    goto :goto_3

    :cond_d
    new-instance v0, Lcom/fasterxml/jackson/databind/node/TextNode;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/TextNode;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method protected final _reportBase64EOF()V
    .registers 4

    new-instance v0, Lcom/fasterxml/jackson/a/k;

    const-string v1, "Unexpected end-of-String when base64 content"

    sget-object v2, Lcom/fasterxml/jackson/a/j;->a:Lcom/fasterxml/jackson/a/j;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/a/k;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;)V

    throw v0
.end method

.method protected final _reportInvalidBase64(Lcom/fasterxml/jackson/a/a;CI)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportInvalidBase64(Lcom/fasterxml/jackson/a/a;CILjava/lang/String;)V

    return-void
.end method

.method protected final _reportInvalidBase64(Lcom/fasterxml/jackson/a/a;CILjava/lang/String;)V
    .registers 8

    const/16 v0, 0x20

    if-gt p2, v0, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal white space character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    if-eqz p4, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_42
    new-instance v1, Lcom/fasterxml/jackson/a/k;

    sget-object v2, Lcom/fasterxml/jackson/a/j;->a:Lcom/fasterxml/jackson/a/j;

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/a/k;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;)V

    throw v1

    :cond_4a
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/a/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_76

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected padding character (\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_76
    invoke-static {p2}, Ljava/lang/Character;->isDefined(C)Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-eqz v0, :cond_9c

    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_9c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_29
.end method

.method public final asBoolean(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    if-eqz v0, :cond_13

    const-string v0, "true"

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 p1, 0x1

    :cond_13
    return p1
.end method

.method public final asDouble(D)D
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/a/c/h;->a(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final asInt(I)I
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/a/c/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final asLong(J)J
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/a/c/h;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final asText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public final asToken()Lcom/fasterxml/jackson/a/r;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    return-object v0
.end method

.method public final binaryValue()[B
    .registers 2

    invoke-static {}, Lcom/fasterxml/jackson/a/b;->a()Lcom/fasterxml/jackson/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/TextNode;->getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-ne p1, p0, :cond_5

    const/4 v0, 0x1

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_4

    check-cast p1, Lcom/fasterxml/jackson/databind/node/TextNode;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B
    .registers 13

    const/4 v10, 0x3

    const/4 v9, -0x2

    const/4 v2, 0x0

    new-instance v3, Lcom/fasterxml/jackson/a/g/d;

    invoke-direct {v3, v2}, Lcom/fasterxml/jackson/a/g/d;-><init>(B)V

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v2

    :goto_f
    if-ge v0, v5, :cond_4b

    :goto_11
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v1, v5, :cond_4b

    const/16 v6, 0x20

    if-le v0, v6, :cond_ce

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/a;->b(C)I

    move-result v6

    if-gez v6, :cond_26

    invoke-virtual {p0, p1, v0, v2}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportInvalidBase64(Lcom/fasterxml/jackson/a/a;CI)V

    :cond_26
    if-lt v1, v5, :cond_2b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportBase64EOF()V

    :cond_2b
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/a/a;->b(C)I

    move-result v7

    if-gez v7, :cond_3b

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v1, v8}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportInvalidBase64(Lcom/fasterxml/jackson/a/a;CI)V

    :cond_3b
    shl-int/lit8 v1, v6, 0x6

    or-int/2addr v1, v7

    if-lt v0, v5, :cond_53

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->a()Z

    move-result v6

    if-nez v6, :cond_50

    shr-int/lit8 v0, v1, 0x4

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/a/g/d;->a(I)V

    :cond_4b
    :goto_4b
    invoke-virtual {v3}, Lcom/fasterxml/jackson/a/g/d;->c()[B

    move-result-object v0

    return-object v0

    :cond_50
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportBase64EOF()V

    :cond_53
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/a;->b(C)I

    move-result v7

    if-gez v7, :cond_99

    if-eq v7, v9, :cond_65

    const/4 v7, 0x2

    invoke-virtual {p0, p1, v0, v7}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportInvalidBase64(Lcom/fasterxml/jackson/a/a;CI)V

    :cond_65
    if-lt v6, v5, :cond_6a

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportBase64EOF()V

    :cond_6a
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/a/a;->a(C)Z

    move-result v7

    if-nez v7, :cond_92

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "expected padding character \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->b()C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, v6, v10, v7}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportInvalidBase64(Lcom/fasterxml/jackson/a/a;CILjava/lang/String;)V

    :cond_92
    shr-int/lit8 v1, v1, 0x4

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/a/g/d;->a(I)V

    goto/16 :goto_f

    :cond_99
    shl-int/lit8 v0, v1, 0x6

    or-int v1, v0, v7

    if-lt v6, v5, :cond_ae

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_ab

    shr-int/lit8 v0, v1, 0x2

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/a/g/d;->b(I)V

    goto :goto_4b

    :cond_ab
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportBase64EOF()V

    :cond_ae
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/a/a;->b(C)I

    move-result v7

    if-gez v7, :cond_c6

    if-eq v7, v9, :cond_bf

    invoke-virtual {p0, p1, v6, v10}, Lcom/fasterxml/jackson/databind/node/TextNode;->_reportInvalidBase64(Lcom/fasterxml/jackson/a/a;CI)V

    :cond_bf
    shr-int/lit8 v1, v1, 0x2

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/a/g/d;->b(I)V

    goto/16 :goto_f

    :cond_c6
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v7

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/a/g/d;->c(I)V

    goto/16 :goto_f

    :cond_ce
    move v0, v1

    goto/16 :goto_11
.end method

.method public final getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->STRING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final serialize(Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeNull()V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public final textValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    shr-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TextNode;->_value:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/fasterxml/jackson/databind/node/TextNode;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
