.class public Lcom/googlecode/javacpp/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacpp/Parser$Parameters;,
        Lcom/googlecode/javacpp/Parser$Declarator;,
        Lcom/googlecode/javacpp/Parser$TemplateMap;,
        Lcom/googlecode/javacpp/Parser$Tokenizer;,
        Lcom/googlecode/javacpp/Parser$Token;,
        Lcom/googlecode/javacpp/Parser$InfoMapper;,
        Lcom/googlecode/javacpp/Parser$InfoMap;,
        Lcom/googlecode/javacpp/Parser$Info;,
        Lcom/googlecode/javacpp/Parser$Exception;
    }
.end annotation


# instance fields
.field infoMap:Lcom/googlecode/javacpp/Parser$InfoMap;

.field properties:Ljava/util/Properties;

.field tokenArray:[Lcom/googlecode/javacpp/Parser$Token;

.field tokenIndex:I


# direct methods
.method public constructor <init>(Ljava/util/Properties;Lcom/googlecode/javacpp/Parser$InfoMap;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser;->properties:Ljava/util/Properties;

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser;->infoMap:Lcom/googlecode/javacpp/Parser$InfoMap;

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser;->tokenArray:[Lcom/googlecode/javacpp/Parser$Token;

    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    iput-object p1, p0, Lcom/googlecode/javacpp/Parser;->properties:Ljava/util/Properties;

    iput-object p2, p0, Lcom/googlecode/javacpp/Parser;->infoMap:Lcom/googlecode/javacpp/Parser$InfoMap;

    return-void
.end method


# virtual methods
.method attribute()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    const/16 v7, 0x28

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    :goto_17
    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    move v2, v3

    goto :goto_17

    :cond_2c
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v1

    :goto_31
    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    if-lez v0, :cond_67

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    add-int/lit8 v0, v0, 0x1

    :cond_4f
    :goto_4f
    invoke-virtual {p0, v2}, Lcom/googlecode/javacpp/Parser;->nextToken(Z)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v1

    goto :goto_31

    :cond_54
    new-array v4, v3, [Ljava/lang/Object;

    const/16 v5, 0x29

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    add-int/lit8 v0, v0, -0x1

    goto :goto_4f

    :cond_67
    move v2, v3

    goto :goto_17
.end method

.method body()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    const/16 v7, 0x7b

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    :goto_16
    return v2

    :cond_17
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v1

    :goto_1c
    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    if-lez v0, :cond_52

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    add-int/lit8 v0, v0, 0x1

    :cond_3a
    :goto_3a
    invoke-virtual {p0, v2}, Lcom/googlecode/javacpp/Parser;->nextToken(Z)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v1

    goto :goto_1c

    :cond_3f
    new-array v4, v3, [Ljava/lang/Object;

    const/16 v5, 0x7d

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    :cond_52
    move v2, v3

    goto :goto_16
.end method

.method commentAfter()Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    const-string v0, ""

    :goto_6
    iget v3, p0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    if-lez v3, :cond_24

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/googlecode/javacpp/Parser;->getToken(I)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget v3, p0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    goto :goto_6

    :cond_24
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v1

    :goto_28
    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    iget-object v3, v1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_6b

    iget-object v3, v1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_6b

    iget-object v2, v1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_70

    const-string v3, " * "

    :goto_5b
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6b
    invoke-virtual {p0, v6}, Lcom/googlecode/javacpp/Parser;->nextToken(Z)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v1

    goto :goto_28

    :cond_70
    const-string v3, "/**"

    goto :goto_5b

    :cond_73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_94

    const-string v3, "*/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_94

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " */"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_94
    return-object v0
.end method

.method commentBefore()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, ""

    :goto_6
    iget v2, p0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    if-lez v2, :cond_24

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/googlecode/javacpp/Parser;->getToken(I)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget v2, p0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    goto :goto_6

    :cond_24
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v1

    :goto_28
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    iget-object v2, v1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_48

    iget-object v2, v1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_61

    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_61
    invoke-virtual {p0, v5}, Lcom/googlecode/javacpp/Parser;->nextToken(Z)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v1

    goto :goto_28

    :cond_66
    return-object v0
.end method

.method declaration(Ljava/lang/String;Lcom/googlecode/javacpp/Parser$TemplateMap;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->commentBefore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v4

    iget-object v2, v4, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/googlecode/javacpp/Parser;->template(Lcom/googlecode/javacpp/Parser$TemplateMap;)Lcom/googlecode/javacpp/Parser$TemplateMap;

    move-result-object v1

    if-eq v1, p2, :cond_2c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2c
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->macro()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_44

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_43
    return-object v5

    :cond_44
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->enumeration()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_43

    :cond_5c
    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/Parser;->group(Lcom/googlecode/javacpp/Parser$TemplateMap;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_74

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_43

    :cond_74
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->typedef()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_43

    :cond_8c
    invoke-virtual {p0, p1, v1}, Lcom/googlecode/javacpp/Parser;->function(Ljava/lang/String;Lcom/googlecode/javacpp/Parser$TemplateMap;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_43

    :cond_a4
    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/Parser;->variable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_bc

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_43

    :cond_bc
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->attribute()Z

    move-result v5

    if-eqz v5, :cond_d5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_43

    :cond_d5
    new-instance v5, Lcom/googlecode/javacpp/Parser$Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/googlecode/javacpp/Parser$Token;->file:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/googlecode/javacpp/Parser$Token;->lineNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Could not parse declaration at \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/googlecode/javacpp/Parser$Exception;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method declarator(Lcom/googlecode/javacpp/Parser$TemplateMap;Ljava/lang/String;IIZZ)Lcom/googlecode/javacpp/Parser$Declarator;
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    sget-object v30, Lcom/googlecode/javacpp/Parser$Token;->TYPEDEF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v30, v28, v29

    invoke-virtual/range {v27 .. v28}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v17

    new-instance v8, Lcom/googlecode/javacpp/Parser$Declarator;

    invoke-direct {v8}, Lcom/googlecode/javacpp/Parser$Declarator;-><init>()V

    const-string v7, ""

    const/16 v25, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v26

    :goto_23
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    sget-object v29, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_4f

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x5

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_7e

    :cond_4f
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_63

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/googlecode/javacpp/Parser$TemplateMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_63

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/googlecode/javacpp/Parser$TemplateMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_63
    iput-object v7, v8, Lcom/googlecode/javacpp/Parser$Declarator;->javaType:Ljava/lang/String;

    iput-object v7, v8, Lcom/googlecode/javacpp/Parser$Declarator;->cppType:Ljava/lang/String;

    const-string v27, "..."

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1f2

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    const/4 v8, 0x0

    :cond_7d
    :goto_7d
    return-object v8

    :cond_7e
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    sget-object v29, Lcom/googlecode/javacpp/Parser$Token;->CONST:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9d

    const/16 v27, 0x1

    move/from16 v0, v27

    iput-boolean v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->constValue:Z

    :cond_98
    :goto_98
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v26

    goto :goto_23

    :cond_9d
    const/16 v27, 0x5

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    sget-object v29, Lcom/googlecode/javacpp/Parser$Token;->TYPEDEF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v29, v27, v28

    const/16 v28, 0x1

    sget-object v29, Lcom/googlecode/javacpp/Parser$Token;->ENUM:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v29, v27, v28

    const/16 v28, 0x2

    sget-object v29, Lcom/googlecode/javacpp/Parser$Token;->CLASS:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v29, v27, v28

    const/16 v28, 0x3

    sget-object v29, Lcom/googlecode/javacpp/Parser$Token;->STRUCT:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v29, v27, v28

    const/16 v28, 0x4

    sget-object v29, Lcom/googlecode/javacpp/Parser$Token;->UNION:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_98

    const/16 v27, 0x9

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string v29, "signed"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    const-string v29, "unsigned"

    aput-object v29, v27, v28

    const/16 v28, 0x2

    const-string v29, "char"

    aput-object v29, v27, v28

    const/16 v28, 0x3

    const-string v29, "short"

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const-string v29, "int"

    aput-object v29, v27, v28

    const/16 v28, 0x5

    const-string v29, "long"

    aput-object v29, v27, v28

    const/16 v28, 0x6

    const-string v29, "bool"

    aput-object v29, v27, v28

    const/16 v28, 0x7

    const-string v29, "float"

    aput-object v29, v27, v28

    const/16 v28, 0x8

    const-string v29, "double"

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_14c

    if-nez v25, :cond_12c

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_128
    const/16 v25, 0x1

    goto/16 :goto_98

    :cond_12c
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_128

    :cond_14c
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_18e

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser;->getToken(I)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v27

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x2a

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const/16 v30, 0x26

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x2

    const/16 v30, 0x5

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x3

    sget-object v30, Lcom/googlecode/javacpp/Parser$Token;->CONST:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v30, v28, v29

    invoke-virtual/range {v27 .. v28}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4f

    :cond_18e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser;->infoMap:Lcom/googlecode/javacpp/Parser$InfoMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/googlecode/javacpp/Parser$InfoMap;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v27

    if-lez v27, :cond_1ec

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/googlecode/javacpp/Parser$Info;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Info;->annotations:[Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1ec

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/googlecode/javacpp/Parser$Info;

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/googlecode/javacpp/Parser$Info;->annotations:[Ljava/lang/String;

    array-length v0, v3

    move/from16 v19, v0

    const/4 v10, 0x0

    :goto_1c0
    move/from16 v0, v19

    if-ge v10, v0, :cond_98

    aget-object v24, v3, v10

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1c0

    :cond_1ec
    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    goto/16 :goto_98

    :cond_1f2
    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v26

    :goto_1f7
    if-lez p4, :cond_282

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    sget-object v29, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_282

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x28

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_22c

    add-int/lit8 v6, v6, 0x1

    :cond_227
    :goto_227
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v26

    goto :goto_1f7

    :cond_22c
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x29

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_247

    add-int/lit8 v6, v6, -0x1

    goto :goto_227

    :cond_247
    if-nez v6, :cond_227

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x2c

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_264

    add-int/lit8 p4, p4, -0x1

    goto :goto_227

    :cond_264
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x3b

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_227

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    const/4 v8, 0x0

    goto/16 :goto_7d

    :cond_282
    move-object v5, v7

    const/4 v12, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v26

    :goto_28a
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    sget-object v29, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_30a

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x2a

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2d4

    add-int/lit8 v12, v12, 0x1

    :goto_2b8
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/javacpp/Parser$Token;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v26

    goto :goto_28a

    :cond_2d4
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x26

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2ef

    const/16 v23, 0x1

    goto :goto_2b8

    :cond_2ef
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    sget-object v29, Lcom/googlecode/javacpp/Parser$Token;->CONST:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_30a

    const/16 v27, 0x1

    move/from16 v0, v27

    iput-boolean v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->constPointer:Z

    goto :goto_2b8

    :cond_30a
    const/4 v13, 0x0

    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x28

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v27 .. v28}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_40f

    :goto_32b
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x28

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v27 .. v28}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_34b

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    goto :goto_32b

    :cond_34b
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v26

    :goto_34f
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    sget-object v29, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3ef

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x5

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_38a

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;

    :cond_385
    :goto_385
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v26

    goto :goto_34f

    :cond_38a
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x2a

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3b1

    add-int/lit8 v13, v13, 0x1

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->convention:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;

    goto :goto_385

    :cond_3b1
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x5b

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3d4

    iget v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->indices:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    iput v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->indices:I

    goto :goto_385

    :cond_3d4
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x29

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_385

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    :cond_3ef
    :goto_3ef
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x29

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v27 .. v28}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_43c

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    goto :goto_3ef

    :cond_40f
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x5

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v27 .. v28}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_43c

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    :cond_43c
    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v26

    :goto_441
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    sget-object v29, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_481

    if-nez v4, :cond_47f

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x5b

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_47f

    const/4 v4, 0x1

    iget v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->indices:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    iput v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->indices:I

    :cond_47a
    :goto_47a
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v26

    goto :goto_441

    :cond_47f
    if-nez v4, :cond_496

    :cond_481
    :goto_481
    iget v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->indices:I

    move/from16 v27, v0

    if-lez v27, :cond_4b2

    if-lez v13, :cond_4b2

    iget v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->indices:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    iput v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->indices:I

    add-int/lit8 v13, v13, -0x1

    goto :goto_481

    :cond_496
    if-eqz v4, :cond_47a

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x5d

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_47a

    const/4 v4, 0x0

    goto :goto_47a

    :cond_4b2
    if-eqz p5, :cond_4d1

    iget v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->indices:I

    move/from16 v27, v0

    if-lez v27, :cond_4d1

    add-int/lit8 v12, v12, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "*"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4d1
    if-eqz p6, :cond_4f5

    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v12, v0, :cond_4f5

    iget v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->indices:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    iput v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->indices:I

    add-int/lit8 v12, v12, -0x1

    const/16 v27, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_4f5
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x3a

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v27 .. v28}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_568

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "@NoOffset "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v27 .. v28}, Lcom/googlecode/javacpp/Parser$Token;->expect([Ljava/lang/Object;)Lcom/googlecode/javacpp/Parser$Token;

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v27

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x2c

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const/16 v30, 0x3b

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v27 .. v28}, Lcom/googlecode/javacpp/Parser$Token;->expect([Ljava/lang/Object;)Lcom/googlecode/javacpp/Parser$Token;

    :cond_568
    const/4 v15, 0x1

    const/16 v22, 0x0

    const/16 v20, 0x0

    const/4 v11, 0x0

    iget-boolean v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->constValue:Z

    move/from16 v27, v0

    if-eqz v27, :cond_747

    const/16 v27, 0x2

    move/from16 v0, v27

    if-ge v12, v0, :cond_747

    if-nez v23, :cond_747

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "const "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->cppType:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser;->infoMap:Lcom/googlecode/javacpp/Parser$InfoMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$InfoMap;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v27

    if-lez v27, :cond_5ec

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/googlecode/javacpp/Parser$Info;

    iget-object v0, v14, Lcom/googlecode/javacpp/Parser$Info;->primitiveTypes:[Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_74d

    if-nez v12, :cond_74d

    if-nez v23, :cond_74d

    const/16 v22, 0x1

    :goto_5b9
    iget-boolean v0, v14, Lcom/googlecode/javacpp/Parser$Info;->cast:Z

    move/from16 v20, v0

    iget-object v0, v14, Lcom/googlecode/javacpp/Parser$Info;->cppNames:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const-string v28, "const "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v22, :cond_751

    iget-object v0, v14, Lcom/googlecode/javacpp/Parser$Info;->primitiveTypes:[Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v15, v0

    :goto_5d4
    if-gez p3, :cond_763

    const/16 v27, 0x0

    :goto_5d8
    move/from16 v0, v27

    iput v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->infoNumber:I

    if-eqz v22, :cond_767

    iget-object v0, v14, Lcom/googlecode/javacpp/Parser$Info;->primitiveTypes:[Ljava/lang/String;

    move-object/from16 v27, v0

    iget v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->infoNumber:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    :goto_5e8
    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->javaType:Ljava/lang/String;

    :cond_5ec
    if-nez v22, :cond_632

    if-nez v12, :cond_77f

    if-nez v23, :cond_77f

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "@ByVal "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    :cond_60d
    :goto_60d
    if-nez v20, :cond_632

    iget-boolean v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->constValue:Z

    move/from16 v27, v0

    if-eqz v27, :cond_632

    if-nez v11, :cond_632

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "@Const "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    :cond_632
    if-nez v20, :cond_642

    if-eqz p5, :cond_68a

    iget v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->indices:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_68a

    :cond_642
    iget-boolean v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->constValue:Z

    move/from16 v27, v0

    if-eqz v27, :cond_65d

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "const "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_65d
    if-nez v22, :cond_831

    if-nez v12, :cond_831

    if-nez v23, :cond_831

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "@Cast(\""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "*\") "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    :cond_68a
    :goto_68a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Parser;->parameters(Lcom/googlecode/javacpp/Parser$TemplateMap;I)Lcom/googlecode/javacpp/Parser$Parameters;

    move-result-object v21

    if-eqz v21, :cond_6e5

    iget v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->infoNumber:I

    move/from16 v27, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/googlecode/javacpp/Parser$Parameters;->infoNumber:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    move/from16 v0, v27

    iput v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->infoNumber:I

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Parameters;->definitions:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_6d9

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->definitions:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Parameters;->definitions:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->definitions:Ljava/lang/String;

    :cond_6d9
    if-nez v13, :cond_85a

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Parameters;->list:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->parameters:Ljava/lang/String;

    :cond_6e5
    :goto_6e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser;->infoMap:Lcom/googlecode/javacpp/Parser$InfoMap;

    move-object/from16 v27, v0

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/googlecode/javacpp/Parser$InfoMap;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v27

    if-lez v27, :cond_7d

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/googlecode/javacpp/Parser$Info;

    iget-object v0, v14, Lcom/googlecode/javacpp/Parser$Info;->javaNames:[Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7d

    iget-object v0, v14, Lcom/googlecode/javacpp/Parser$Info;->javaNames:[Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_7d

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "@Name(\""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\") "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    iget-object v0, v14, Lcom/googlecode/javacpp/Parser$Info;->javaNames:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;

    goto/16 :goto_7d

    :cond_747
    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->cppType:Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_593

    :cond_74d
    const/16 v22, 0x0

    goto/16 :goto_5b9

    :cond_751
    iget-object v0, v14, Lcom/googlecode/javacpp/Parser$Info;->pointerTypes:[Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_760

    iget-object v0, v14, Lcom/googlecode/javacpp/Parser$Info;->pointerTypes:[Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v15, v0

    goto/16 :goto_5d4

    :cond_760
    const/4 v15, 0x1

    goto/16 :goto_5d4

    :cond_763
    rem-int v27, p3, v15

    goto/16 :goto_5d8

    :cond_767
    iget-object v0, v14, Lcom/googlecode/javacpp/Parser$Info;->pointerTypes:[Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_779

    iget-object v0, v14, Lcom/googlecode/javacpp/Parser$Info;->pointerTypes:[Ljava/lang/String;

    move-object/from16 v27, v0

    iget v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->infoNumber:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    goto/16 :goto_5e8

    :cond_779
    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->cppType:Ljava/lang/String;

    move-object/from16 v27, v0

    goto/16 :goto_5e8

    :cond_77f
    if-nez v12, :cond_7a0

    if-eqz v23, :cond_7a0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "@ByRef "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    goto/16 :goto_60d

    :cond_7a0
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v12, v0, :cond_7c5

    if-eqz v23, :cond_7c5

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "@ByPtrRef "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    goto/16 :goto_60d

    :cond_7c5
    const/16 v27, 0x2

    move/from16 v0, v27

    if-ne v12, v0, :cond_7fa

    if-nez v23, :cond_7fa

    if-ltz p3, :cond_7fa

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "@ByPtrPtr "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->cppType:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "void"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_60d

    const/16 v20, 0x1

    goto/16 :goto_60d

    :cond_7fa
    const/16 v27, 0x2

    move/from16 v0, v27

    if-lt v12, v0, :cond_60d

    iget v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->infoNumber:I

    move/from16 v27, v0

    add-int v27, v27, v15

    move/from16 v0, v27

    iput v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->infoNumber:I

    const/16 v20, 0x1

    const-string v27, "PointerPointer"

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->javaType:Ljava/lang/String;

    if-eqz v23, :cond_60d

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "@ByRef "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    goto/16 :goto_60d

    :cond_831
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "@Cast(\""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\") "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    goto/16 :goto_68a

    :cond_85a
    if-eqz v17, :cond_903

    iget-object v9, v8, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;

    :goto_85e
    move-object/from16 v0, v21

    iget v0, v0, Lcom/googlecode/javacpp/Parser$Parameters;->infoNumber:I

    move/from16 v27, v0

    move/from16 v0, p3

    move/from16 v1, v27

    if-gt v0, v1, :cond_8f3

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->definitions:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "public static class "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " extends FunctionPointer {\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "    static { Loader.load(); }\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "    public    "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "(Pointer p) { super(p); }\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "    protected "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "() { allocate(); }\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "    private native void allocate();\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "    public native "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->javaType:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " call"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Parameters;->list:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ";\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "}\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->definitions:Ljava/lang/String;

    :cond_8f3
    const-string v27, ""

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    iput-object v9, v8, Lcom/googlecode/javacpp/Parser$Declarator;->javaType:Ljava/lang/String;

    const-string v27, ""

    move-object/from16 v0, v27

    iput-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->parameters:Ljava/lang/String;

    goto/16 :goto_6e5

    :cond_903
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->charAt(I)C

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Parameters;->signature:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_85e
.end method

.method enumeration()Ljava/lang/String;
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v2, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/googlecode/javacpp/Parser$Token;->TYPEDEF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v28, v26, v27

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v14

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v24

    :goto_27
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v27, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_50

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Lcom/googlecode/javacpp/Parser$Token;->ENUM:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v27, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_59

    const/4 v13, 0x1

    :cond_50
    if-nez v13, :cond_76

    move-object/from16 v0, p0

    iput v2, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    const/16 v25, 0x0

    :goto_58
    return-object v25

    :cond_59
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_50

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v24

    goto :goto_27

    :cond_76
    if-eqz v14, :cond_bf

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser;->getToken(I)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x7b

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_bf

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser;->getToken(I)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x5

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_bf

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    :cond_bf
    const/4 v12, 0x1

    const/4 v5, 0x0

    const-string v7, " "

    const-string v11, ""

    const-string v15, ""

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v25

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x5

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x7b

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/javacpp/Parser$Token;->expect([Ljava/lang/Object;)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x7b

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_131

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x7b

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_131

    move-object/from16 v0, p0

    iput v2, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    const/16 v25, 0x0

    goto/16 :goto_58

    :cond_131
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v24

    :goto_135
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x7d

    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3d0

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->macro()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_175

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_170
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v24

    goto :goto_135

    :cond_175
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->commentBefore()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v10

    const-string v22, " "

    if-eqz v12, :cond_258

    const-string v20, ""

    :goto_183
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x3d

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_281

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v7, " "

    const/4 v6, 0x0

    new-instance v18, Lcom/googlecode/javacpp/Parser$Token;

    invoke-direct/range {v18 .. v18}, Lcom/googlecode/javacpp/Parser$Token;-><init>()V

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v24

    :goto_1b6
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x2c

    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    const/16 v27, 0x7d

    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1e0

    if-lez v6, :cond_277

    :cond_1e0
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x28

    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_25c

    add-int/lit8 v6, v6, 0x1

    :cond_21b
    :goto_21b
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_250

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x28

    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_250

    const/4 v4, 0x1

    :cond_250
    move-object/from16 v18, v24

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v24

    goto/16 :goto_1b6

    :cond_258
    const-string v20, ","

    goto/16 :goto_183

    :cond_25c
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x29

    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_21b

    add-int/lit8 v6, v6, -0x1

    goto :goto_21b

    :cond_277
    :try_start_277
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v7, " "
    :try_end_281
    .catch Ljava/lang/NumberFormatException; {:try_start_277 .. :try_end_281} :catch_36d

    :cond_281
    :goto_281
    const/4 v12, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v15, ""

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->commentAfter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_2d4

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x2c

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2d4

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->commentAfter()Ljava/lang/String;

    move-result-object v3

    :cond_2d4
    iget-object v0, v10, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_30f

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v25, 0xa

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    if-lez v17, :cond_30f

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    :cond_30f
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v10, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_3ba

    if-lez v5, :cond_369

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " + "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_369
    :goto_369
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_170

    :catch_36d
    move-exception v8

    const/4 v5, 0x0

    if-eqz v4, :cond_281

    if-nez v12, :cond_376

    const-string v20, ";\n"

    const/4 v12, 0x1

    :cond_376
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "public static native @MemberGetter int "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v10, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "();\npublic static final int"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v10, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "()"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_281

    :cond_3ba
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_369

    :cond_3d0
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->commentBefore()Ljava/lang/String;

    move-result-object v3

    const-string v23, ""

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3fc

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v24

    :cond_3fc
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/** enum "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " */\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    if-ltz v17, :cond_439

    add-int/lit8 v25, v17, 0x1

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :cond_439
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "public static final int"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x3b

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->expect([Ljava/lang/Object;)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser;->infoMap:Lcom/googlecode/javacpp/Parser$InfoMap;

    move-object/from16 v25, v0

    new-instance v26, Lcom/googlecode/javacpp/Parser$Info;

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v16, v27, v28

    invoke-direct/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Info;-><init>([Ljava/lang/String;)V

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string v29, "int"

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Info;->primitiveTypes([Ljava/lang/String;)Lcom/googlecode/javacpp/Parser$Info;

    move-result-object v26

    const/16 v27, 0x3

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string v29, "IntPointer"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    const-string v29, "IntBuffer"

    aput-object v29, v27, v28

    const/16 v28, 0x2

    const-string v29, "int[]"

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Info;->pointerTypes([Ljava/lang/String;)Lcom/googlecode/javacpp/Parser$Info;

    move-result-object v26

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Info;->cast(Z)Lcom/googlecode/javacpp/Parser$Info;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/javacpp/Parser$InfoMap;->put(Lcom/googlecode/javacpp/Parser$Info;)Lcom/googlecode/javacpp/Parser$InfoMap;

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_58
.end method

.method function(Ljava/lang/String;Lcom/googlecode/javacpp/Parser$TemplateMap;)Ljava/lang/String;
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v10, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v2

    iget-object v0, v2, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz p1, :cond_14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_41

    :cond_14
    const-string v9, "public static native "

    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v31

    :goto_1a
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v4, v2, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/googlecode/javacpp/Parser$Token;->STATIC:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v4, v2, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string v9, "public static native "

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v31

    goto :goto_1a

    :cond_41
    const-string v9, "public native "

    goto :goto_16

    :cond_44
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/googlecode/javacpp/Parser$Token;->INLINE:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v4, v2, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    :cond_54
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    move/from16 v28, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/googlecode/javacpp/Parser;->declarator(Lcom/googlecode/javacpp/Parser$TemplateMap;Ljava/lang/String;IIZZ)Lcom/googlecode/javacpp/Parser$Declarator;

    move-result-object v15

    iget-object v0, v15, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_75

    iget-object v2, v15, Lcom/googlecode/javacpp/Parser$Declarator;->parameters:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7c

    :cond_75
    move-object/from16 v0, p0

    iput v10, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    const/16 v30, 0x0

    :cond_7b
    return-object v30

    :cond_7c
    const-string v30, ""

    const-string v29, ""

    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacpp/Parser;->infoMap:Lcom/googlecode/javacpp/Parser$InfoMap;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/googlecode/javacpp/Parser$InfoMap;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_98

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_98
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_9c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1fb

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/googlecode/javacpp/Parser$Info;

    if-eqz v20, :cond_127

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    if-eqz v2, :cond_df

    if-eqz p2, :cond_df

    const/4 v12, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/javacpp/Parser$TemplateMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_bb
    :goto_bb
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_df

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v12, v2, :cond_bb

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    add-int/lit8 v13, v12, 0x1

    aget-object v2, v2, v12

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacpp/Parser$TemplateMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v12, v13

    goto :goto_bb

    :cond_df
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/googlecode/javacpp/Parser$Info;->javaNames:[Ljava/lang/String;

    if-nez v2, :cond_161

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/googlecode/javacpp/Parser$Info;->cppNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v23, v2, v3

    :goto_ec
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/googlecode/javacpp/Parser$Info;->cppNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_127

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_127

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@Name(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/googlecode/javacpp/Parser$Info;->cppNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :cond_127
    new-instance v25, Ljava/util/LinkedList;

    invoke-direct/range {v25 .. v25}, Ljava/util/LinkedList;-><init>()V

    const/4 v5, -0x1

    :goto_12d
    const v2, 0x7fffffff

    if-ge v5, v2, :cond_178

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/googlecode/javacpp/Parser;->declarator(Lcom/googlecode/javacpp/Parser$TemplateMap;Ljava/lang/String;IIZZ)Lcom/googlecode/javacpp/Parser$Declarator;

    move-result-object v15

    const/16 v17, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_14a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_174

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/googlecode/javacpp/Parser$Declarator;

    iget-object v2, v15, Lcom/googlecode/javacpp/Parser$Declarator;->parameters:Ljava/lang/String;

    iget-object v3, v14, Lcom/googlecode/javacpp/Parser$Declarator;->parameters:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int v17, v17, v2

    goto :goto_14a

    :cond_161
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/googlecode/javacpp/Parser$Info;->javaNames:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_16b

    const-string v23, ""

    goto :goto_ec

    :cond_16b
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/googlecode/javacpp/Parser$Info;->javaNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v23, v2, v3

    goto/16 :goto_ec

    :cond_174
    if-eqz v17, :cond_199

    if-lez v5, :cond_199

    :cond_178
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->attribute()Z

    move-result v2

    if-nez v2, :cond_178

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v6, 0x7b

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f6

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->body()Z

    goto/16 :goto_9c

    :cond_199
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1ed

    if-nez v17, :cond_1ed

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/googlecode/javacpp/Parser$Declarator;->javaType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/googlecode/javacpp/Parser$Declarator;->parameters:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/googlecode/javacpp/Parser$Declarator;->definitions:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_1ed
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_12d

    :cond_1f6
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    goto/16 :goto_9c

    :cond_1fb
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->commentAfter()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_21e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :cond_21e
    new-instance v26, Ljava/util/Scanner;

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    :cond_227
    :goto_227
    invoke-virtual/range {v26 .. v26}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_25d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v2, 0xa

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v24

    if-lez v24, :cond_227

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    goto :goto_227

    :cond_25d
    new-instance v26, Ljava/util/Scanner;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    :cond_266
    :goto_266
    invoke-virtual/range {v26 .. v26}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_7b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v2, 0xa

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v24

    if-lez v24, :cond_266

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    goto :goto_266
.end method

.method getToken()Lcom/googlecode/javacpp/Parser$Token;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Parser;->getToken(I)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v0

    return-object v0
.end method

.method getToken(I)Lcom/googlecode/javacpp/Parser$Token;
    .registers 4

    iget v0, p0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser;->tokenArray:[Lcom/googlecode/javacpp/Parser$Token;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    iget-object v0, p0, Lcom/googlecode/javacpp/Parser;->tokenArray:[Lcom/googlecode/javacpp/Parser$Token;

    iget v1, p0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    :goto_f
    return-object v0

    :cond_10
    sget-object v0, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    goto :goto_f
.end method

.method group(Lcom/googlecode/javacpp/Parser$TemplateMap;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    iget v0, p0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v10

    iget-object v7, v10, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    sget-object v13, Lcom/googlecode/javacpp/Parser$Token;->TYPEDEF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v9

    :goto_1e
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_45

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/googlecode/javacpp/Parser$Token;->CLASS:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/googlecode/javacpp/Parser$Token;->STRUCT:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/googlecode/javacpp/Parser$Token;->UNION:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4b

    const/4 v2, 0x1

    :cond_45
    :goto_45
    if-nez v2, :cond_87

    iput v0, p0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    const/4 v8, 0x0

    :goto_4a
    return-object v8

    :cond_4b
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/googlecode/javacpp/Parser$Token;->EXTERN:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_71

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_71

    const/4 v2, 0x1

    const/4 v1, 0x0

    goto :goto_45

    :cond_71
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_45

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v9

    goto :goto_1e

    :cond_87
    if-eqz v5, :cond_b9

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/googlecode/javacpp/Parser;->getToken(I)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/16 v13, 0x7b

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b9

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/googlecode/javacpp/Parser;->getToken(I)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b9

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    :cond_b9
    const-string v8, ""

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v10

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/16 v13, 0x7b

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Parser$Token;->expect([Ljava/lang/Object;)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v10

    iget-object v6, v10, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/googlecode/javacpp/Parser;->getToken(I)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/16 v13, 0x7b

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/16 v13, 0x3b

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_126

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/googlecode/javacpp/Parser;->getToken(I)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/16 v13, 0x7b

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/16 v13, 0x3b

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_126

    iput v0, p0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    const/4 v8, 0x0

    goto/16 :goto_4a

    :cond_126
    if-eqz v1, :cond_2b6

    iget-object v10, p0, Lcom/googlecode/javacpp/Parser;->infoMap:Lcom/googlecode/javacpp/Parser$InfoMap;

    invoke-virtual {v10, v6}, Lcom/googlecode/javacpp/Parser$InfoMap;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1ca

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/16 v13, 0x3b

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1ca

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-eqz v10, :cond_16c

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/googlecode/javacpp/Parser$Info;

    iget-boolean v10, v10, Lcom/googlecode/javacpp/Parser$Info;->forwardDeclared:Z

    if-nez v10, :cond_1c6

    :cond_16c
    iget-object v10, p0, Lcom/googlecode/javacpp/Parser;->infoMap:Lcom/googlecode/javacpp/Parser$InfoMap;

    new-instance v11, Lcom/googlecode/javacpp/Parser$Info;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-direct {v11, v12}, Lcom/googlecode/javacpp/Parser$Info;-><init>([Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/googlecode/javacpp/Parser$Info;->forwardDeclared(Z)Lcom/googlecode/javacpp/Parser$Info;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Parser$InfoMap;->put(Lcom/googlecode/javacpp/Parser$Info;)Lcom/googlecode/javacpp/Parser$InfoMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "@Opaque public static class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " extends Pointer {\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "    public "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "() { }\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "    public "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(Pointer p) { super(p); }\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4a

    :cond_1c6
    const-string v8, ""

    goto/16 :goto_4a

    :cond_1ca
    iget v3, p0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->body()Z

    move-result v10

    if-eqz v10, :cond_1f5

    if-eqz v5, :cond_1f5

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f5

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v10

    iget-object v6, v10, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    iget-object v10, p0, Lcom/googlecode/javacpp/Parser;->infoMap:Lcom/googlecode/javacpp/Parser$InfoMap;

    invoke-virtual {v10, v6}, Lcom/googlecode/javacpp/Parser$InfoMap;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v4

    :cond_1f5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_22b

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v9

    :goto_1ff
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_222

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x3b

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_226

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    :cond_222
    const-string v8, ""

    goto/16 :goto_4a

    :cond_226
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v9

    goto :goto_1ff

    :cond_22b
    iput v3, p0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "public static class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " extends Pointer {\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "    static { Loader.load(); }\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "    public "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "() { allocate(); }\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "    public "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(int size) { allocateArray(size); }\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "    public "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(Pointer p) { super(p); }\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "    private native void allocate();\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "    private native void allocateArray(int size);\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "    @Override public "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " position(int position) {\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "        return ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")super.position(position);\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "    }\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_2b6
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/16 v13, 0x7b

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2cf

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    :cond_2cf
    :goto_2cf
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    sget-object v13, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/16 v13, 0x7d

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_300

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v6, p1}, Lcom/googlecode/javacpp/Parser;->declaration(Ljava/lang/String;Lcom/googlecode/javacpp/Parser$TemplateMap;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2cf

    :cond_300
    if-eqz v1, :cond_35b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v11

    iget-object v11, v11, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x7d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_338

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v9

    :cond_338
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/16 v13, 0x3b

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v11}, Lcom/googlecode/javacpp/Parser$Token;->expect([Ljava/lang/Object;)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v11

    iget-object v11, v11, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_35b
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    goto/16 :goto_4a
.end method

.method macro()Ljava/lang/String;
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x23

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1f

    const/16 v22, 0x0

    :cond_1e
    :goto_1e
    return-object v22

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v23

    :goto_38
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v28, v26, v27

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_7a

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_7a

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    if-ltz v26, :cond_1bd

    :cond_7a
    move-object/from16 v0, p0

    iget v8, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    const-string v22, ""

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/googlecode/javacpp/Parser$Token;->DEFINE:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v28, v26, v27

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5c2

    add-int/lit8 v26, v2, 0x1

    move/from16 v0, v26

    if-ge v0, v8, :cond_5c2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v15, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v9

    const-string v21, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser;->infoMap:Lcom/googlecode/javacpp/Parser$InfoMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Lcom/googlecode/javacpp/Parser$InfoMap;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v13

    iget-object v0, v9, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-nez v26, :cond_301

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x28

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_301

    invoke-virtual {v13}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e2
    :goto_e2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_44c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/googlecode/javacpp/Parser$Info;

    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_e2

    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    if-eqz v26, :cond_e2

    const/4 v6, 0x1

    add-int/lit8 v26, v2, 0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    const-string v24, ""

    const-string v17, "("

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v23

    :goto_110
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v0, v8, :cond_1e5

    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v6, v0, :cond_1e5

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x5

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1c9

    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    move-object/from16 v26, v0

    aget-object v24, v26, v6

    move-object/from16 v0, v23

    iget-object v15, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    const-string v26, "..."

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16c

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "arg"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_16c
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    add-int/lit8 v6, v6, 0x1

    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v6, v0, :cond_1b7

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :cond_1b7
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v23

    goto/16 :goto_110

    :cond_1bd
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser;->nextToken(Z)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v23

    goto/16 :goto_38

    :cond_1c9
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x29

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1b7

    :cond_1e5
    :goto_1e5
    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v6, v0, :cond_259

    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    move-object/from16 v26, v0

    aget-object v24, v26, v6

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "arg"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    add-int/lit8 v6, v6, 0x1

    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v6, v0, :cond_1e5

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_1e5

    :cond_259
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v24, v26, v27

    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->javaNames:[Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_2f8

    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->cppNames:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v15, v26, v27

    :goto_286
    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->cppNames:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2bd

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "@Name(\""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->cppNames:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\") "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_2bd
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "public static native "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_e2

    :cond_2f8
    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->javaNames:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v15, v26, v27

    goto :goto_286

    :cond_301
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v26

    if-eqz v26, :cond_328

    invoke-virtual {v13}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/googlecode/javacpp/Parser$Info;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_328

    invoke-virtual {v13}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/googlecode/javacpp/Parser$Info;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_44c

    :cond_328
    const-string v25, ""

    const-string v24, "int"

    const-string v3, ""

    add-int/lit8 v26, v2, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    new-instance v18, Lcom/googlecode/javacpp/Parser$Token;

    invoke-direct/range {v18 .. v18}, Lcom/googlecode/javacpp/Parser$Token;-><init>()V

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v23

    :goto_340
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v0, v8, :cond_36a

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x3

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4bc

    const-string v24, "String"

    const-string v3, " + "

    :cond_36a
    :goto_36a
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v26

    if-lez v26, :cond_3a1

    invoke-virtual {v13}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/googlecode/javacpp/Parser$Info;

    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_384

    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v24, v26, v27

    :cond_384
    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->cppNames:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v15, v26, v27

    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->javaNames:[Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_39a

    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Info;->javaNames:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v15, v26, v27

    :cond_39a
    iget-boolean v0, v12, Lcom/googlecode/javacpp/Parser$Info;->complex:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3a1

    const/4 v5, 0x1

    :cond_3a1
    add-int/lit8 v26, v2, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    if-eqz v5, :cond_575

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "public static native @MemberGetter "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "();\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "()"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    :cond_3f7
    const/16 v26, 0x20

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    if-lez v10, :cond_40d

    add-int/lit8 v26, v10, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    :cond_40d
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "public static final "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :cond_44c
    move-object/from16 v0, p0

    iput v8, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->commentAfter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_477

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :cond_477
    new-instance v19, Ljava/util/Scanner;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    :cond_480
    :goto_480
    invoke-virtual/range {v19 .. v19}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v26

    if-eqz v26, :cond_1e

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v19 .. v19}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v26, 0xa

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    if-lez v16, :cond_480

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_480

    :cond_4bc
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x2

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4de

    const-string v24, "double"

    const-string v3, ""

    goto/16 :goto_36a

    :cond_4de
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_50e

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "L"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_50e

    const-string v24, "long"

    const-string v3, ""

    goto/16 :goto_36a

    :cond_50e
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x5

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_546

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x28

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_56c

    :cond_546
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x7b

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x7d

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_56d

    :cond_56c
    const/4 v5, 0x1

    :cond_56d
    move-object/from16 v18, v23

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v23

    goto/16 :goto_340

    :cond_575
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v23

    :goto_579
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v0, v8, :cond_3f7

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v0, v8, :cond_5bf

    move-object/from16 v26, v3

    :goto_5ae
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v23

    goto :goto_579

    :cond_5bf
    const-string v26, ""

    goto :goto_5ae

    :cond_5c2
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/googlecode/javacpp/Parser$Token;->IF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v28, v26, v27

    const/16 v27, 0x1

    sget-object v28, Lcom/googlecode/javacpp/Parser$Token;->IFDEF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v28, v26, v27

    const/16 v27, 0x2

    sget-object v28, Lcom/googlecode/javacpp/Parser$Token;->IFNDEF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v28, v26, v27

    const/16 v27, 0x3

    sget-object v28, Lcom/googlecode/javacpp/Parser$Token;->ELIF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v28, v26, v27

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_752

    if-ge v2, v8, :cond_752

    move-object/from16 v0, p0

    iput v2, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    const-string v25, ""

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v23

    :goto_5f6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v0, v8, :cond_628

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v23

    goto :goto_5f6

    :cond_628
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "// #"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser;->infoMap:Lcom/googlecode/javacpp/Parser$InfoMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$InfoMap;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v13

    const/4 v7, 0x1

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v26

    if-lez v26, :cond_685

    invoke-virtual {v13}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/googlecode/javacpp/Parser$Info;

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/googlecode/javacpp/Parser$Token;->IFNDEF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v28, v26, v27

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6fc

    iget-boolean v0, v12, Lcom/googlecode/javacpp/Parser$Info;->define:Z

    move/from16 v26, v0

    if-nez v26, :cond_6fa

    const/4 v7, 0x1

    :cond_685
    :goto_685
    if-nez v7, :cond_1e

    const/4 v6, 0x1

    new-instance v18, Lcom/googlecode/javacpp/Parser$Token;

    invoke-direct/range {v18 .. v18}, Lcom/googlecode/javacpp/Parser$Token;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v23

    :goto_691
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v28, v26, v27

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_742

    if-lez v6, :cond_742

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x23

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6ff

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/googlecode/javacpp/Parser$Token;->IF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v28, v26, v27

    const/16 v27, 0x1

    sget-object v28, Lcom/googlecode/javacpp/Parser$Token;->IFDEF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v28, v26, v27

    const/16 v27, 0x2

    sget-object v28, Lcom/googlecode/javacpp/Parser$Token;->IFNDEF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v28, v26, v27

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6ff

    add-int/lit8 v6, v6, 0x1

    :cond_6ed
    :goto_6ed
    move-object/from16 v18, v23

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser;->nextToken(Z)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v23

    goto :goto_691

    :cond_6fa
    const/4 v7, 0x0

    goto :goto_685

    :cond_6fc
    iget-boolean v7, v12, Lcom/googlecode/javacpp/Parser$Info;->define:Z

    goto :goto_685

    :cond_6ff
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x23

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6ed

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/googlecode/javacpp/Parser$Token;->ELIF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v28, v26, v27

    const/16 v27, 0x1

    sget-object v28, Lcom/googlecode/javacpp/Parser$Token;->ELSE:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v28, v26, v27

    const/16 v27, 0x2

    sget-object v28, Lcom/googlecode/javacpp/Parser$Token;->ENDIF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v28, v26, v27

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6ed

    add-int/lit8 v6, v6, -0x1

    goto :goto_6ed

    :cond_742
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    goto/16 :goto_1e

    :cond_752
    move-object/from16 v0, p0

    iput v2, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "// #"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v23

    :goto_777
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v0, v8, :cond_1e

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v23

    goto :goto_777
.end method

.method nextToken()Lcom/googlecode/javacpp/Parser$Token;
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Parser;->nextToken(Z)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v0

    return-object v0
.end method

.method nextToken(Z)Lcom/googlecode/javacpp/Parser$Token;
    .registers 6

    iget v0, p0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    :goto_6
    if-eqz p1, :cond_24

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    goto :goto_6

    :cond_24
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v0

    return-object v0
.end method

.method parameters(Lcom/googlecode/javacpp/Parser$TemplateMap;I)Lcom/googlecode/javacpp/Parser$Parameters;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x28

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v15, 0x0

    :cond_17
    :goto_17
    return-object v15

    :cond_18
    const/4 v10, 0x0

    new-instance v15, Lcom/googlecode/javacpp/Parser$Parameters;

    invoke-direct {v15}, Lcom/googlecode/javacpp/Parser$Parameters;-><init>()V

    const-string v1, "("

    iput-object v1, v15, Lcom/googlecode/javacpp/Parser$Parameters;->list:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v17

    :goto_26
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v3, v1, v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x29

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/googlecode/javacpp/Parser$Parameters;->list:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/googlecode/javacpp/Parser$Parameters;->list:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    goto :goto_17

    :cond_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/googlecode/javacpp/Parser;->declarator(Lcom/googlecode/javacpp/Parser$TemplateMap;Ljava/lang/String;IIZZ)Lcom/googlecode/javacpp/Parser$Declarator;

    move-result-object v12

    if-eqz v12, :cond_1a7

    iget-object v1, v12, Lcom/googlecode/javacpp/Parser$Declarator;->javaType:Ljava/lang/String;

    const-string v2, "void"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a7

    iget v1, v15, Lcom/googlecode/javacpp/Parser$Parameters;->infoNumber:I

    iget v2, v12, Lcom/googlecode/javacpp/Parser$Declarator;->infoNumber:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v15, Lcom/googlecode/javacpp/Parser$Parameters;->infoNumber:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/googlecode/javacpp/Parser$Parameters;->list:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x1

    if-le v11, v1, :cond_151

    const-string v1, ","

    :goto_b9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Lcom/googlecode/javacpp/Parser$Declarator;->javaType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/googlecode/javacpp/Parser$Parameters;->list:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/googlecode/javacpp/Parser$Parameters;->definitions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Lcom/googlecode/javacpp/Parser$Declarator;->definitions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/googlecode/javacpp/Parser$Parameters;->definitions:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/googlecode/javacpp/Parser$Parameters;->signature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/googlecode/javacpp/Parser$Parameters;->signature:Ljava/lang/String;

    iget-object v1, v12, Lcom/googlecode/javacpp/Parser$Declarator;->javaType:Ljava/lang/String;

    iget-object v2, v12, Lcom/googlecode/javacpp/Parser$Declarator;->javaType:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    array-length v14, v8

    const/4 v13, 0x0

    :goto_125
    if-ge v13, v14, :cond_155

    aget-char v9, v8, v13

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_139

    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_139

    const/16 v1, 0x5f

    if-ne v9, v1, :cond_14e

    :cond_139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/googlecode/javacpp/Parser$Parameters;->signature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/googlecode/javacpp/Parser$Parameters;->signature:Ljava/lang/String;

    :cond_14e
    add-int/lit8 v13, v13, 0x1

    goto :goto_125

    :cond_151
    const-string v1, ""

    goto/16 :goto_b9

    :cond_155
    iget-object v1, v12, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;

    const-string v2, "arg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a7

    :try_start_15f
    iget-object v1, v12, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_169
    .catch Ljava/lang/NumberFormatException; {:try_start_15f .. :try_end_169} :catch_1a4

    move-result v1

    add-int/lit8 v10, v1, 0x1

    :goto_16c
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x2c

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x29

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/googlecode/javacpp/Parser$Token;->expect([Ljava/lang/Object;)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x2c

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19e

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    :cond_19e
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v17

    goto/16 :goto_26

    :catch_1a4
    move-exception v1

    move v10, v11

    goto :goto_16c

    :cond_1a7
    move v10, v11

    goto :goto_16c
.end method

.method public parse(Ljava/io/File;Ljava/lang/Class;)Ljava/io/File;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Parser;->properties:Ljava/util/Properties;

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v14, v15}, Lcom/googlecode/javacpp/Loader;->loadProperties(Ljava/lang/Class;Ljava/util/Properties;Z)Lcom/googlecode/javacpp/Loader$ClassProperties;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Parser;->properties:Ljava/util/Properties;

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14, v15}, Lcom/googlecode/javacpp/Loader;->loadProperties(Ljava/lang/Class;Ljava/util/Properties;Z)Lcom/googlecode/javacpp/Loader$ClassProperties;

    move-result-object v5

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getHeaderFiles()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v5}, Lcom/googlecode/javacpp/Loader$ClassProperties;->getHeaderFiles()Ljava/util/LinkedList;

    move-result-object v4

    const-string v14, "parser.target"

    invoke-virtual {v2, v14}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    const-string v14, "parser.target"

    invoke-virtual {v5, v14}, Lcom/googlecode/javacpp/Loader$ClassProperties;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v13, "/* DO NOT EDIT THIS FILE - IT IS MACHINE GENERATED */\n\n"

    const/16 v14, 0x2e

    invoke-virtual {v11, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-lez v9, :cond_5c

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v11, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_5c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "import com.googlecode.javacpp.*;\nimport com.googlecode.javacpp.annotation.*;\nimport java.nio.*;\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_73
    :goto_73
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_73

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "import static "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".*;\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_73

    :cond_a3
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_bd

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_bd
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "public class "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " extends "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacpp/Parser;->infoMap:Lcom/googlecode/javacpp/Parser$InfoMap;

    new-instance v15, Lcom/googlecode/javacpp/Parser$Info;

    invoke-direct {v15}, Lcom/googlecode/javacpp/Parser$Info;-><init>()V

    invoke-virtual {v15, v13}, Lcom/googlecode/javacpp/Parser$Info;->textBefore(Ljava/lang/String;)Lcom/googlecode/javacpp/Parser$Info;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/googlecode/javacpp/Parser$InfoMap;->put(Lcom/googlecode/javacpp/Parser$Info;)Lcom/googlecode/javacpp/Parser$InfoMap;

    new-instance v12, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x2e

    const/16 v16, 0x2f

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".java"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Targeting file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_13e
    :goto_13e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_15e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v4, v7}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13e

    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/io/File;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/googlecode/javacpp/Parser;->parse(Ljava/io/File;[Ljava/io/File;)V

    goto :goto_13e

    :cond_15e
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/io/File;

    invoke-virtual {v4, v14}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/io/File;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/googlecode/javacpp/Parser;->parse(Ljava/io/File;[Ljava/io/File;)V

    return-object v12
.end method

.method public parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/googlecode/javacpp/Parser;->parse(Ljava/io/File;Ljava/lang/Class;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public varargs parse(Ljava/io/File;[Ljava/io/File;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "\n"

    move-object/from16 v1, p2

    array-length v7, v1

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v7, :cond_81

    aget-object v3, v1, v4

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Parsing header file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v10, Lcom/googlecode/javacpp/Parser$Token;

    invoke-direct {v10}, Lcom/googlecode/javacpp/Parser$Token;-><init>()V

    const/4 v13, 0x4

    iput v13, v10, Lcom/googlecode/javacpp/Parser$Token;->type:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\n/* Wrapper for header file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " */\n\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/googlecode/javacpp/Parser$Tokenizer;

    invoke-direct {v11, v3}, Lcom/googlecode/javacpp/Parser$Tokenizer;-><init>(Ljava/io/File;)V

    :goto_52
    invoke-virtual {v11}, Lcom/googlecode/javacpp/Parser$Tokenizer;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v10

    invoke-virtual {v10}, Lcom/googlecode/javacpp/Parser$Token;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_68

    iget v13, v10, Lcom/googlecode/javacpp/Parser$Token;->type:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_64

    const/4 v13, 0x4

    iput v13, v10, Lcom/googlecode/javacpp/Parser$Token;->type:I

    :cond_64
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_68
    if-nez v8, :cond_6c

    iget-object v8, v11, Lcom/googlecode/javacpp/Parser$Tokenizer;->lineSeparator:Ljava/lang/String;

    :cond_6c
    invoke-virtual {v11}, Lcom/googlecode/javacpp/Parser$Tokenizer;->close()V

    new-instance v10, Lcom/googlecode/javacpp/Parser$Token;

    invoke-direct {v10}, Lcom/googlecode/javacpp/Parser$Token;-><init>()V

    const/4 v13, 0x4

    iput v13, v10, Lcom/googlecode/javacpp/Parser$Token;->type:I

    const-string v13, "\n"

    iput-object v13, v10, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_81
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Lcom/googlecode/javacpp/Parser$Token;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/googlecode/javacpp/Parser$Token;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/googlecode/javacpp/Parser;->tokenArray:[Lcom/googlecode/javacpp/Parser$Token;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    if-eqz p1, :cond_c8

    new-instance v9, Ljava/io/FileWriter;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    :goto_9f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacpp/Parser;->infoMap:Lcom/googlecode/javacpp/Parser$InfoMap;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/googlecode/javacpp/Parser$InfoMap;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_ac
    :goto_ac
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/javacpp/Parser$Info;

    iget-object v13, v5, Lcom/googlecode/javacpp/Parser$Info;->textBefore:Ljava/lang/String;

    if-eqz v13, :cond_ac

    iget-object v13, v5, Lcom/googlecode/javacpp/Parser$Info;->textBefore:Ljava/lang/String;

    const-string v14, "\n"

    invoke-virtual {v13, v14, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_ac

    :cond_c8
    new-instance v9, Lcom/googlecode/javacpp/Parser$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/googlecode/javacpp/Parser$1;-><init>(Lcom/googlecode/javacpp/Parser;)V

    goto :goto_9f

    :cond_d0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "{"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    static { Loader.load(); }"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_100
    :goto_100
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/javacpp/Parser$Info;

    iget-object v13, v5, Lcom/googlecode/javacpp/Parser$Info;->textAfter:Ljava/lang/String;

    if-eqz v13, :cond_100

    iget-object v13, v5, Lcom/googlecode/javacpp/Parser$Info;->textAfter:Ljava/lang/String;

    const-string v14, "\n"

    invoke-virtual {v13, v14, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_100

    :cond_11c
    :goto_11c
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    sget-object v16, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_140

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/googlecode/javacpp/Parser;->declaration(Ljava/lang/String;Lcom/googlecode/javacpp/Parser$TemplateMap;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_11c

    :cond_140
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->commentBefore()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14f

    const-string v13, "\n"

    invoke-virtual {v2, v13, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :cond_14f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "}"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v9}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public varargs parse(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    array-length v2, p2

    new-array v0, v2, [Ljava/io/File;

    const/4 v1, 0x0

    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_13

    new-instance v2, Ljava/io/File;

    aget-object v3, p2, v1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_13
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Lcom/googlecode/javacpp/Parser;->parse(Ljava/io/File;[Ljava/io/File;)V

    return-void
.end method

.method template(Lcom/googlecode/javacpp/Parser$TemplateMap;)Lcom/googlecode/javacpp/Parser$TemplateMap;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    const/16 v8, 0x3e

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lcom/googlecode/javacpp/Parser$Token;->TEMPLATE:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :goto_15
    return-object p1

    :cond_16
    new-instance v0, Lcom/googlecode/javacpp/Parser$TemplateMap;

    invoke-direct {v0, p1}, Lcom/googlecode/javacpp/Parser$TemplateMap;-><init>(Lcom/googlecode/javacpp/Parser$TemplateMap;)V

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Parser$Token;->expect([Ljava/lang/Object;)Lcom/googlecode/javacpp/Parser$Token;

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v1

    :goto_30
    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Lcom/googlecode/javacpp/Parser$Token;->EOF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8c

    new-array v2, v7, [Ljava/lang/Object;

    sget-object v3, Lcom/googlecode/javacpp/Parser$Token;->CLASS:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v3, v2, v5

    sget-object v3, Lcom/googlecode/javacpp/Parser$Token;->TYPENAME:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Parser$Token;->expect([Ljava/lang/Object;)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v2

    iget-object v2, v2, Lcom/googlecode/javacpp/Parser$Token;->value:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/googlecode/javacpp/Parser$TemplateMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const/16 v4, 0x2c

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Parser$Token;->expect([Ljava/lang/Object;)Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    :cond_8c
    move-object p1, v0

    goto :goto_15

    :cond_8e
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v1

    goto :goto_30
.end method

.method typedef()Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/googlecode/javacpp/Parser$Token;->TYPEDEF:Lcom/googlecode/javacpp/Parser$Token;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v14, 0x0

    :cond_13
    return-object v14

    :cond_14
    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v0

    iget-object v13, v0, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/googlecode/javacpp/Parser;->declarator(Lcom/googlecode/javacpp/Parser$TemplateMap;Ljava/lang/String;IIZZ)Lcom/googlecode/javacpp/Parser$Declarator;

    move-result-object v8

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->nextToken()Lcom/googlecode/javacpp/Parser$Token;

    iget-object v0, p0, Lcom/googlecode/javacpp/Parser;->infoMap:Lcom/googlecode/javacpp/Parser$InfoMap;

    iget-object v1, v8, Lcom/googlecode/javacpp/Parser$Declarator;->cppType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$InfoMap;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_ac

    invoke-virtual {v10}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/Parser$Info;

    invoke-virtual {v0}, Lcom/googlecode/javacpp/Parser$Info;->clone()Lcom/googlecode/javacpp/Parser$Info;

    move-result-object v9

    :goto_40
    iget-object v0, p0, Lcom/googlecode/javacpp/Parser;->infoMap:Lcom/googlecode/javacpp/Parser$InfoMap;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v8, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v9, v1}, Lcom/googlecode/javacpp/Parser$Info;->cppNames([Ljava/lang/String;)Lcom/googlecode/javacpp/Parser$Info;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/googlecode/javacpp/Parser$Info;->cast(Z)Lcom/googlecode/javacpp/Parser$Info;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/Parser$InfoMap;->put(Lcom/googlecode/javacpp/Parser$Info;)Lcom/googlecode/javacpp/Parser$InfoMap;

    const-string v14, ""

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser;->commentAfter()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_79

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_79
    new-instance v12, Ljava/util/Scanner;

    iget-object v0, v8, Lcom/googlecode/javacpp/Parser$Declarator;->definitions:Ljava/lang/String;

    invoke-direct {v12, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    :cond_80
    :goto_80
    invoke-virtual {v12}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v0, 0xa

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    if-lez v11, :cond_80

    invoke-virtual {v13, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_80

    :cond_ac
    new-instance v9, Lcom/googlecode/javacpp/Parser$Info;

    invoke-direct {v9}, Lcom/googlecode/javacpp/Parser$Info;-><init>()V

    goto :goto_40
.end method

.method variable(Ljava/lang/String;)Ljava/lang/String;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacpp/Parser$Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v10, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v2

    iget-object v0, v2, Lcom/googlecode/javacpp/Parser$Token;->spacing:Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/googlecode/javacpp/Parser;->declarator(Lcom/googlecode/javacpp/Parser$TemplateMap;Ljava/lang/String;IIZZ)Lcom/googlecode/javacpp/Parser$Declarator;

    move-result-object v12

    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_58

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->getToken()Lcom/googlecode/javacpp/Parser$Token;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x5b

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x3d

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/16 v5, 0x2c

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/16 v5, 0x3a

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0x3b

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Parser$Token;->match([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    :cond_58
    move-object/from16 v0, p0

    iput v10, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    const/16 v22, 0x0

    :cond_5e
    return-object v22

    :cond_5f
    const-string v22, ""

    const-string v21, ""

    const-string v13, ""

    const/4 v6, 0x0

    :goto_66
    const v2, 0x7fffffff

    if-ge v6, v2, :cond_7c

    move-object/from16 v0, p0

    iput v10, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/googlecode/javacpp/Parser;->declarator(Lcom/googlecode/javacpp/Parser$TemplateMap;Ljava/lang/String;IIZZ)Lcom/googlecode/javacpp/Parser$Declarator;

    move-result-object v12

    if-nez v12, :cond_dc

    :cond_7c
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacpp/Parser;->commentAfter()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :cond_9f
    new-instance v18, Ljava/util/Scanner;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    :cond_a6
    :goto_a6
    invoke-virtual/range {v18 .. v18}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_272

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v2, 0xa

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    if-lez v17, :cond_a6

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_a6

    :cond_dc
    if-eqz p1, :cond_e4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12d

    :cond_e4
    const-string v9, "public static native "

    :goto_e6
    if-eqz p1, :cond_ee

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_130

    :cond_ee
    const-string v19, "void "

    :goto_f0
    iget-object v0, v12, Lcom/googlecode/javacpp/Parser$Declarator;->objectName:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v15, ""

    const/4 v14, 0x0

    :goto_f7
    iget v2, v12, Lcom/googlecode/javacpp/Parser$Declarator;->indices:I

    if-ge v14, v2, :cond_146

    if-lez v14, :cond_110

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "int "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v14, 0x69

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    goto :goto_f7

    :cond_12d
    const-string v9, "public native "

    goto :goto_e6

    :cond_130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_f0

    :cond_146
    iget-boolean v2, v12, Lcom/googlecode/javacpp/Parser$Declarator;->constValue:Z

    if-eqz v2, :cond_15f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@MemberGetter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :cond_15f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/googlecode/javacpp/Parser$Declarator;->javaType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    iget-boolean v2, v12, Lcom/googlecode/javacpp/Parser$Declarator;->constValue:Z

    if-nez v2, :cond_1fc

    iget v2, v12, Lcom/googlecode/javacpp/Parser$Declarator;->indices:I

    if-lez v2, :cond_1b5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_1b5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/googlecode/javacpp/Parser$Declarator;->javaType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :cond_1fc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/googlecode/javacpp/Parser$Declarator;->definitions:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget v2, v12, Lcom/googlecode/javacpp/Parser$Declarator;->indices:I

    if-lez v2, :cond_26e

    move-object/from16 v0, p0

    iput v10, v0, Lcom/googlecode/javacpp/Parser;->tokenIndex:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/googlecode/javacpp/Parser;->declarator(Lcom/googlecode/javacpp/Parser$TemplateMap;Ljava/lang/String;IIZZ)Lcom/googlecode/javacpp/Parser$Declarator;

    move-result-object v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@MemberGetter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/googlecode/javacpp/Parser$Declarator;->annotations:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/googlecode/javacpp/Parser$Declarator;->javaType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "();\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :cond_26e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_66

    :cond_272
    new-instance v18, Ljava/util/Scanner;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    :cond_27b
    :goto_27b
    invoke-virtual/range {v18 .. v18}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_5e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v2, 0xa

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    if-lez v17, :cond_27b

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_27b
.end method
