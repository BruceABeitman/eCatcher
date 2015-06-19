.class public Lcom/sun/activation/registries/MailcapFile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static addReverse:Z


# instance fields
.field private fallback_hash:Ljava/util/Map;

.field private native_commands:Ljava/util/Map;

.field private type_hash:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/activation/registries/MailcapFile;->addReverse:Z

    :try_start_3
    const-string v0, "javax.activation.addreverse"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/activation/registries/MailcapFile;->addReverse:Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "new MailcapFile: default"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "new MailcapFile: InputStream"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :cond_23
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "iso-8859-1"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/sun/activation/registries/MailcapFile;->parse(Ljava/io/Reader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new MailcapFile: file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :cond_30
    const/4 v2, 0x0

    :try_start_31
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_44

    :try_start_36
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/sun/activation/registries/MailcapFile;->parse(Ljava/io/Reader;)V
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_50

    if-eqz v1, :cond_43

    :try_start_40
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_4e

    :cond_43
    :goto_43
    return-void

    :catchall_44
    move-exception v0

    move-object v1, v2

    :goto_46
    if-eqz v1, :cond_4b

    :try_start_48
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    :cond_4b
    :goto_4b
    throw v0

    :catch_4c
    move-exception v1

    goto :goto_4b

    :catch_4e
    move-exception v0

    goto :goto_43

    :catchall_50
    move-exception v0

    goto :goto_46
.end method

.method private mergeResults(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 9

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    return-object v4

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2a

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_2a
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d
.end method

.method private parse(Ljava/io/Reader;)V
    .registers 9

    const/4 v1, 0x0

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    :cond_7
    :goto_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    return-void

    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_13
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_54

    if-eqz v0, :cond_48

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_48
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_54
    if-eqz v0, :cond_6c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_66
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_13 .. :try_end_66} :catch_74

    move-result-object v0

    :try_start_67
    invoke-virtual {p0, v0}, Lcom/sun/activation/registries/MailcapFile;->parseLine(Ljava/lang/String;)V
    :try_end_6a
    .catch Lcom/sun/activation/registries/MailcapParseException; {:try_start_67 .. :try_end_6a} :catch_72
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_67 .. :try_end_6a} :catch_74

    :goto_6a
    move-object v0, v1

    goto :goto_7

    :cond_6c
    :try_start_6c
    invoke-virtual {p0, v3}, Lcom/sun/activation/registries/MailcapFile;->parseLine(Ljava/lang/String;)V
    :try_end_6f
    .catch Lcom/sun/activation/registries/MailcapParseException; {:try_start_6c .. :try_end_6f} :catch_70
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_6c .. :try_end_6f} :catch_74

    goto :goto_7

    :catch_70
    move-exception v3

    goto :goto_7

    :catch_72
    move-exception v0

    goto :goto_6a

    :catch_74
    move-exception v3

    goto :goto_7
.end method

.method protected static reportParseError(IIIILjava/lang/String;)V
    .registers 8

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PARSE ERROR: Encountered a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") while expecting a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", or a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :cond_56
    new-instance v0, Lcom/sun/activation/registries/MailcapParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") while expecting a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", or a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/activation/registries/MailcapParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static reportParseError(IIILjava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/sun/activation/registries/MailcapParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") while expecting a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/activation/registries/MailcapParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static reportParseError(IILjava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/sun/activation/registries/MailcapParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") while expecting a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->nameForToken(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/activation/registries/MailcapParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public appendToMailcap(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appendToMailcap: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :cond_18
    :try_start_18
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sun/activation/registries/MailcapFile;->parse(Ljava/io/Reader;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_20} :catch_21

    :goto_20
    return-void

    :catch_21
    move-exception v0

    goto :goto_20
.end method

.method public getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;
    .registers 6

    iget-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "*"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_46

    if-eqz v0, :cond_47

    invoke-direct {p0, v0, v1}, Lcom/sun/activation/registries/MailcapFile;->mergeResults(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :cond_46
    :goto_46
    return-object v0

    :cond_47
    move-object v0, v1

    goto :goto_46
.end method

.method public getMailcapList(Ljava/lang/String;)Ljava/util/Map;
    .registers 6

    iget-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "*"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_46

    if-eqz v0, :cond_47

    invoke-direct {p0, v0, v1}, Lcom/sun/activation/registries/MailcapFile;->mergeResults(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :cond_46
    :goto_46
    return-object v0

    :cond_47
    move-object v0, v1

    goto :goto_46
.end method

.method public getMimeTypes()[Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getNativeCommands(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_1f
    return-object v0
.end method

.method protected parseLine(Ljava/lang/String;)V
    .registers 16

    const/4 v2, 0x1

    const/4 v12, 0x5

    const/4 v3, 0x0

    const/4 v11, 0x2

    const/16 v10, 0x3b

    new-instance v4, Lcom/sun/activation/registries/MailcapTokenizer;

    invoke-direct {v4, p1}, Lcom/sun/activation/registries/MailcapTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/sun/activation/registries/MailcapTokenizer;->setIsAutoquoting(Z)V

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parse: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :cond_26
    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v0

    if-eq v0, v11, :cond_33

    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v0, v1}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IILjava/lang/String;)V

    :cond_33
    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "*"

    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v1

    const/16 v6, 0x2f

    if-eq v1, v6, :cond_52

    if-eq v1, v10, :cond_52

    const/16 v6, 0x2f

    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v10, v1, v7}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IIILjava/lang/String;)V

    :cond_52
    const/16 v6, 0x2f

    if-ne v1, v6, :cond_71

    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v0

    if-eq v0, v11, :cond_63

    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v0, v1}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IILjava/lang/String;)V

    :cond_63
    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v1

    :cond_71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_a0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "  Type: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :cond_a0
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    if-eq v1, v10, :cond_ae

    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v1, v0}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IILjava/lang/String;)V

    :cond_ae
    invoke-virtual {v4, v2}, Lcom/sun/activation/registries/MailcapTokenizer;->setIsAutoquoting(Z)V

    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v1

    invoke-virtual {v4, v3}, Lcom/sun/activation/registries/MailcapTokenizer;->setIsAutoquoting(Z)V

    if-eq v1, v11, :cond_c3

    if-eq v1, v10, :cond_c3

    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v10, v1, v0}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IIILjava/lang/String;)V

    :cond_c3
    if-ne v1, v11, :cond_dc

    iget-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_164

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/sun/activation/registries/MailcapFile;->native_commands:Ljava/util/Map;

    invoke-interface {v7, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_dc
    :goto_dc
    if-eq v1, v10, :cond_23e

    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v0

    :goto_e2
    if-ne v0, v10, :cond_22b

    move v1, v3

    :goto_e5
    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v0

    if-eq v0, v11, :cond_f2

    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v0, v7}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IILjava/lang/String;)V

    :cond_f2
    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v0

    const/16 v8, 0x3d

    if-eq v0, v8, :cond_111

    if-eq v0, v10, :cond_111

    if-eq v0, v12, :cond_111

    const/16 v8, 0x3d

    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v10, v12, v0, v9}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IIIILjava/lang/String;)V

    :cond_111
    const/16 v8, 0x3d

    if-ne v0, v8, :cond_239

    invoke-virtual {v4, v2}, Lcom/sun/activation/registries/MailcapTokenizer;->setIsAutoquoting(Z)V

    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v0

    invoke-virtual {v4, v3}, Lcom/sun/activation/registries/MailcapTokenizer;->setIsAutoquoting(Z)V

    if-eq v0, v11, :cond_128

    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v0, v8}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IILjava/lang/String;)V

    :cond_128
    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v8

    const-string v0, "x-java-"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14a

    const/4 v0, 0x7

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "fallback-entry"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_169

    const-string v0, "true"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_169

    move v1, v2

    :cond_14a
    :goto_14a
    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->nextToken()I

    move-result v0

    move v13, v1

    move v1, v0

    move v0, v13

    :goto_151
    if-eq v1, v10, :cond_236

    if-eqz v0, :cond_1a7

    iget-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->fallback_hash:Ljava/util/Map;

    move-object v1, v0

    :goto_158
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1ab

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_163
    :goto_163
    return-void

    :cond_164
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_dc

    :cond_169
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_18b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "    Command: "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", Class: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :cond_18b
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_19b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19b
    sget-boolean v7, Lcom/sun/activation/registries/MailcapFile;->addReverse:Z

    if-eqz v7, :cond_1a3

    invoke-interface {v0, v3, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_14a

    :cond_1a3
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14a

    :cond_1a7
    iget-object v0, p0, Lcom/sun/activation/registries/MailcapFile;->type_hash:Ljava/util/Map;

    move-object v1, v0

    goto :goto_158

    :cond_1ab
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1c3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Merging commands for type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    :cond_1c3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1cb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1f5

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d9
    :goto_1d9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_163

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d9

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d9

    :cond_1f5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1cb

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_20d
    :goto_20d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1cb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20d

    sget-boolean v7, Lcom/sun/activation/registries/MailcapFile;->addReverse:Z

    if-eqz v7, :cond_227

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_20d

    :cond_227
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20d

    :cond_22b
    if-eq v0, v12, :cond_163

    invoke-virtual {v4}, Lcom/sun/activation/registries/MailcapTokenizer;->getCurrentTokenValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v10, v0, v1}, Lcom/sun/activation/registries/MailcapFile;->reportParseError(IIILjava/lang/String;)V

    goto/16 :goto_163

    :cond_236
    move v1, v0

    goto/16 :goto_e5

    :cond_239
    move v13, v1

    move v1, v0

    move v0, v13

    goto/16 :goto_151

    :cond_23e
    move v0, v1

    goto/16 :goto_e2
.end method
