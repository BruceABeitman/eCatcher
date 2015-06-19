.class public Ljavax/mail/URLName;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final caseDiff:I = 0x20

.field private static doEncode:Z

.field static dontNeedEncoding:Ljava/util/BitSet;


# instance fields
.field private file:Ljava/lang/String;

.field protected fullURL:Ljava/lang/String;

.field private hashCode:I

.field private host:Ljava/lang/String;

.field private hostAddress:Ljava/net/InetAddress;

.field private hostAddressKnown:Z

.field private password:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    :try_start_3
    const-string v1, "mail.URLName.dontencode"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    :cond_c
    sput-boolean v0, Ljavax/mail/URLName;->doEncode:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_65

    :goto_e
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v0, 0x61

    :goto_19
    const/16 v1, 0x7a

    if-le v0, v1, :cond_4d

    const/16 v0, 0x41

    :goto_1f
    const/16 v1, 0x5a

    if-le v0, v1, :cond_55

    const/16 v0, 0x30

    :goto_25
    const/16 v1, 0x39

    if-le v0, v1, :cond_5d

    sget-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    return-void

    :cond_4d
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_55
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_5d
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :catch_65
    move-exception v0

    goto :goto_e
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/URLName;->port:I

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    invoke-virtual {p0, p1}, Ljavax/mail/URLName;->parseString(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    iput v2, p0, Ljavax/mail/URLName;->port:I

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    iput-object p1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    iput-object p2, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    iput p3, p0, Ljavax/mail/URLName;->port:I

    if-eqz p4, :cond_3e

    const/16 v0, 0x23

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_3e

    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    :goto_29
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_31

    invoke-static {p5}, Ljavax/mail/URLName;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_31
    iput-object p5, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_3b

    invoke-static {p6}, Ljavax/mail/URLName;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    :cond_3b
    iput-object p6, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    return-void

    :cond_3e
    iput-object p4, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    goto :goto_29
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 3

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static _encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/16 v9, 0x10

    const/4 v1, 0x0

    const/16 v0, 0xa

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move v0, v1

    :goto_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_24

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v3, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    const/16 v3, 0x20

    if-ne v2, v3, :cond_36

    const/16 v2, 0x2b

    :cond_36
    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_3d
    :try_start_3d
    invoke-virtual {v6, v2}, Ljava/io/OutputStreamWriter;->write(I)V

    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_43} :catch_4f

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    move v2, v1

    :goto_48
    array-length v3, v7

    if-lt v2, v3, :cond_54

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_3a

    :catch_4f
    move-exception v2

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_3a

    :cond_54
    const/16 v3, 0x25

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v3, v7, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_6c

    add-int/lit8 v3, v3, -0x20

    int-to-char v3, v3

    :cond_6c
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v3, v7, v2

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_80

    add-int/lit8 v3, v3, -0x20

    int-to-char v3, v3

    :cond_80
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_48
.end method

.method static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    const-string v0, "+%"

    invoke-static {p0, v0}, Ljavax/mail/URLName;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_2a

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_1d
    const-string v0, "8859_1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_28} :catch_59

    :goto_28
    move-object p0, v0

    goto :goto_3

    :cond_2a
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_5c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :sswitch_37
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_34

    :sswitch_3d
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x3

    :try_start_41
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_4f} :catch_52

    add-int/lit8 v0, v0, 0x2

    goto :goto_34

    :catch_52
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :catch_59
    move-exception v0

    move-object v0, v1

    goto :goto_28

    :sswitch_data_5c
    .sparse-switch
        0x25 -> :sswitch_3d
        0x2b -> :sswitch_37
    .end sparse-switch
.end method

.method static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1b

    sget-object v2, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_20

    :cond_1b
    invoke-static {p0}, Ljavax/mail/URLName;->_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private declared-synchronized getHostAddress()Ljava/net/InetAddress;
    .registers 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    if-eqz v1, :cond_a

    iget-object v0, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_21

    :cond_8
    :goto_8
    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_a
    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_21

    if-eqz v1, :cond_8

    :try_start_e
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_21
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_16} :catch_1c

    :goto_16
    const/4 v0, 0x1

    :try_start_17
    iput-boolean v0, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    iget-object v0, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;

    goto :goto_8

    :catch_1c
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_21

    goto :goto_16

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/URLName;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7

    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, p2

    :goto_6
    if-lt v0, v2, :cond_a

    move v0, v1

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I
    :try_end_11
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_11} :catch_17

    move-result v3

    if-gez v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_17
    move-exception v0

    move v0, v1

    goto :goto_9
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v2, 0x0

    instance-of v0, p1, Ljavax/mail/URLName;

    if-nez v0, :cond_7

    move v0, v2

    :goto_6
    return v0

    :cond_7
    check-cast p1, Ljavax/mail/URLName;

    iget-object v0, p1, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p1, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    :cond_17
    move v0, v2

    goto :goto_6

    :cond_19
    invoke-direct {p0}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {p1}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v0, :cond_2d

    if-eqz v1, :cond_2d

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    move v0, v2

    goto :goto_6

    :cond_2d
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v0, :cond_41

    iget-object v0, p1, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v0, :cond_41

    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    iget-object v1, p1, Ljavax/mail/URLName;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    move v0, v2

    goto :goto_6

    :cond_41
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    iget-object v1, p1, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eq v0, v1, :cond_49

    move v0, v2

    goto :goto_6

    :cond_49
    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    iget-object v1, p1, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eq v0, v1, :cond_5f

    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    iget-object v1, p1, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    :cond_5d
    move v0, v2

    goto :goto_6

    :cond_5f
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-nez v0, :cond_73

    const-string v0, ""

    :goto_65
    iget-object v1, p1, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-nez v1, :cond_76

    const-string v1, ""

    :goto_6b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    move v0, v2

    goto :goto_6

    :cond_73
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_65

    :cond_76
    iget-object v1, p1, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_6b

    :cond_79
    iget v0, p0, Ljavax/mail/URLName;->port:I

    iget v1, p1, Ljavax/mail/URLName;->port:I

    if-eq v0, v1, :cond_81

    move v0, v2

    goto :goto_6

    :cond_81
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public getFile()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/URLName;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    goto :goto_a
.end method

.method public getPort()I
    .registers 2

    iget v0, p0, Ljavax/mail/URLName;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 6

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/mail/URLName;->getPort()I

    move-result v3

    invoke-virtual {p0}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/URLName;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    goto :goto_a
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    if-eqz v0, :cond_7

    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    :cond_16
    invoke-direct {p0}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    :cond_25
    :goto_25
    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eqz v0, :cond_34

    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    :cond_34
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    :cond_43
    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    iget v1, p0, Ljavax/mail/URLName;->port:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    goto :goto_6

    :cond_4d
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v0, :cond_25

    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    goto :goto_25
.end method

.method protected parseString(Ljava/lang/String;)V
    .registers 10

    const/16 v7, 0x3a

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    iput v5, p0, Ljavax/mail/URLName;->port:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v5, :cond_23

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    :cond_23
    add-int/lit8 v2, v0, 0x1

    const-string v3, "//"

    const/4 v4, 0x2

    invoke-virtual {p1, v2, v3, v6, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_df

    const/16 v2, 0x2f

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v5, :cond_c8

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v2, 0x1

    if-ge v3, v1, :cond_c3

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    :goto_4a
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v5, :cond_70

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v5, :cond_d0

    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    :cond_70
    :goto_70
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d3

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_d3

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    :goto_88
    if-eq v1, v5, :cond_dc

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9c

    :try_start_96
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavax/mail/URLName;->port:I
    :try_end_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_96 .. :try_end_9c} :catch_d8

    :cond_9c
    :goto_9c
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    :cond_a2
    :goto_a2
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v0, :cond_c2

    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v5, :cond_c2

    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    :cond_c2
    return-void

    :cond_c3
    const-string v1, ""

    iput-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_4a

    :cond_c8
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4a

    :cond_d0
    iput-object v2, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    goto :goto_70

    :cond_d3
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    goto :goto_88

    :catch_d8
    move-exception v2

    iput v5, p0, Ljavax/mail/URLName;->port:I

    goto :goto_9c

    :cond_dc
    iput-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    goto :goto_a2

    :cond_df
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v1, :cond_a2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_a2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    if-nez v0, :cond_82

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_17
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-nez v1, :cond_1f

    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v1, :cond_65

    :cond_1f
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eqz v1, :cond_40

    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    if-eqz v1, :cond_3b

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3b
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_40
    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v1, :cond_49

    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_49
    iget v1, p0, Ljavax/mail/URLName;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5c

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Ljavax/mail/URLName;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5c
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v1, :cond_65

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_65
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v1, :cond_6e

    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6e
    iget-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    if-eqz v1, :cond_7c

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    :cond_82
    iget-object v0, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    return-object v0
.end method
