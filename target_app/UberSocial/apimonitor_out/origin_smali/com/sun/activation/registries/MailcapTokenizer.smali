.class public Lcom/sun/activation/registries/MailcapTokenizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EOI_TOKEN:I = 0x5

.field public static final EQUALS_TOKEN:I = 0x3d

.field public static final SEMICOLON_TOKEN:I = 0x3b

.field public static final SLASH_TOKEN:I = 0x2f

.field public static final START_TOKEN:I = 0x1

.field public static final STRING_TOKEN:I = 0x2

.field public static final UNKNOWN_TOKEN:I


# instance fields
.field private autoquoteChar:C

.field private currentToken:I

.field private currentTokenValue:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private dataIndex:I

.field private dataLength:I

.field private isAutoquoting:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->isAutoquoting:Z

    const/16 v0, 0x3b

    iput-char v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->autoquoteChar:C

    return-void
.end method

.method private static fixEscapeSequences(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    const/4 v0, 0x0

    :goto_d
    if-lt v0, v1, :cond_14

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_22
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_32

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1f
.end method

.method private static isControlChar(C)Z
    .registers 2

    invoke-static {p0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    return v0
.end method

.method private static isSpecialChar(C)Z
    .registers 2

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_8

    :goto_4
    return v0

    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :sswitch_data_8
    .sparse-switch
        0x22 -> :sswitch_5
        0x28 -> :sswitch_5
        0x29 -> :sswitch_5
        0x2c -> :sswitch_5
        0x2f -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3c -> :sswitch_5
        0x3d -> :sswitch_5
        0x3e -> :sswitch_5
        0x3f -> :sswitch_5
        0x40 -> :sswitch_5
        0x5b -> :sswitch_5
        0x5c -> :sswitch_5
        0x5d -> :sswitch_5
    .end sparse-switch
.end method

.method private static isStringTokenChar(C)Z
    .registers 2

    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->isSpecialChar(C)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->isControlChar(C)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->isWhiteSpaceChar(C)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static isWhiteSpaceChar(C)Z
    .registers 2

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    return v0
.end method

.method public static nameForToken(I)Ljava/lang/String;
    .registers 2

    const-string v0, "really unknown"

    sparse-switch p0, :sswitch_data_1c

    :goto_5
    return-object v0

    :sswitch_6
    const-string v0, "unknown"

    goto :goto_5

    :sswitch_9
    const-string v0, "start"

    goto :goto_5

    :sswitch_c
    const-string v0, "string"

    goto :goto_5

    :sswitch_f
    const-string v0, "EOI"

    goto :goto_5

    :sswitch_12
    const-string v0, "\'/\'"

    goto :goto_5

    :sswitch_15
    const-string v0, "\';\'"

    goto :goto_5

    :sswitch_18
    const-string v0, "\'=\'"

    goto :goto_5

    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_9
        0x2 -> :sswitch_c
        0x5 -> :sswitch_f
        0x2f -> :sswitch_12
        0x3b -> :sswitch_15
        0x3d -> :sswitch_18
    .end sparse-switch
.end method

.method private processAutoquoteToken()V
    .registers 5

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    if-ge v2, v3, :cond_b

    if-eqz v0, :cond_1d

    :cond_b
    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    iget-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/MailcapTokenizer;->fixEscapeSequences(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    return-void

    :cond_1d
    iget-object v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->autoquoteChar:C

    if-eq v2, v3, :cond_30

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_3

    :cond_30
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private processStringToken()V
    .registers 4

    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    :goto_2
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    if-ge v1, v2, :cond_16

    iget-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sun/activation/registries/MailcapTokenizer;->isStringTokenChar(C)Z

    move-result v1

    if-nez v1, :cond_24

    :cond_16
    const/4 v1, 0x2

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    iget-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    return-void

    :cond_24
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_2
.end method


# virtual methods
.method public getCurrentToken()I
    .registers 2

    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    return v0
.end method

.method public getCurrentTokenValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    return-object v0
.end method

.method public nextToken()I
    .registers 7

    const/4 v5, 0x0

    const/16 v4, 0x3d

    const/16 v3, 0x3b

    const/4 v2, 0x5

    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    if-ge v0, v1, :cond_97

    :goto_c
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    if-ge v0, v1, :cond_20

    iget-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/sun/activation/registries/MailcapTokenizer;->isWhiteSpaceChar(C)Z

    move-result v0

    if-nez v0, :cond_4c

    :cond_20
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    if-ge v0, v1, :cond_92

    iget-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-boolean v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->isAutoquoting:Z

    if-eqz v1, :cond_57

    if-eq v0, v3, :cond_36

    if-ne v0, v4, :cond_53

    :cond_36
    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    :goto_49
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    return v0

    :cond_4c
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_c

    :cond_53
    invoke-direct {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->processAutoquoteToken()V

    goto :goto_49

    :cond_57
    invoke-static {v0}, Lcom/sun/activation/registries/MailcapTokenizer;->isStringTokenChar(C)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-direct {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->processStringToken()V

    goto :goto_49

    :cond_61
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_69

    if-eq v0, v3, :cond_69

    if-ne v0, v4, :cond_7d

    :cond_69
    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_49

    :cond_7d
    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_49

    :cond_92
    iput v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    iput-object v5, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    goto :goto_49

    :cond_97
    iput v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    iput-object v5, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    goto :goto_49
.end method

.method public setIsAutoquoting(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->isAutoquoting:Z

    return-void
.end method
