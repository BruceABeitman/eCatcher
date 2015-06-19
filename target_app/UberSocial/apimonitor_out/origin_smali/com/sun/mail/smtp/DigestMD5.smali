.class public Lcom/sun/mail/smtp/DigestMD5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static digits:[C


# instance fields
.field private clientResponse:Ljava/lang/String;

.field private debugout:Ljava/io/PrintStream;

.field private md5:Ljava/security/MessageDigest;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sun/mail/smtp/DigestMD5;->digits:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    if-eqz p1, :cond_c

    const-string v0, "DEBUG DIGEST-MD5: Loaded"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [C

    move v1, v0

    :goto_7
    array-length v3, p0

    if-lt v1, v3, :cond_10

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_10
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v0, 0x1

    sget-object v5, Lcom/sun/mail/smtp/DigestMD5;->digits:[C

    shr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    aput-char v5, v2, v0

    add-int/lit8 v0, v4, 0x1

    sget-object v5, Lcom/sun/mail/smtp/DigestMD5;->digits:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    aput-char v3, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method private tokenize(Ljava/lang/String;)Ljava/util/Hashtable;
    .registers 13

    const/4 v1, 0x0

    const/16 v10, 0x39

    const/16 v9, 0x30

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v3, Ljava/io/StreamTokenizer;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Lcom/sun/mail/util/BASE64DecoderStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    const/4 v7, 0x4

    array-length v8, v0

    add-int/lit8 v8, v8, -0x4

    invoke-direct {v6, v0, v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v5, v6}, Lcom/sun/mail/util/BASE64DecoderStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3, v9, v10}, Ljava/io/StreamTokenizer;->ordinaryChars(II)V

    invoke-virtual {v3, v9, v10}, Ljava/io/StreamTokenizer;->wordChars(II)V

    move-object v0, v1

    :goto_2d
    invoke-virtual {v3}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_35

    return-object v2

    :cond_35
    sparse-switch v4, :sswitch_data_96

    goto :goto_2d

    :sswitch_39
    if-nez v0, :cond_3e

    iget-object v0, v3, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    goto :goto_2d

    :cond_3e
    :sswitch_3e
    iget-object v4, p0, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    if-eqz v4, :cond_68

    iget-object v4, p0, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG DIGEST-MD5: Received => "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_68
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_90

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8e
    move-object v0, v1

    goto :goto_2d

    :cond_90
    iget-object v4, v3, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8e

    :sswitch_data_96
    .sparse-switch
        -0x3 -> :sswitch_39
        0x22 -> :sswitch_3e
    .end sparse-switch
.end method


# virtual methods
.method public authClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 18

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Lcom/sun/mail/util/BASE64EncoderStream;

    const v1, 0x7fffffff

    invoke-direct {v3, v2, v1}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    :try_start_d
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_1a} :catch_23a

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "smtp/"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/DigestMD5;->uri:Ljava/lang/String;

    const-string v6, "00000001"

    const-string v7, "auth"

    const/16 v1, 0x20

    new-array v8, v1, [B

    iget-object v1, p0, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    const-string v9, "DEBUG DIGEST-MD5: Begin authentication ..."

    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_43
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/sun/mail/smtp/DigestMD5;->tokenize(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v9

    if-nez p4, :cond_25d

    const-string v1, "realm"

    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_60

    new-instance v10, Ljava/util/StringTokenizer;

    const-string v11, ","

    invoke-direct {v10, v1, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    :cond_60
    :goto_60
    const-string v1, "nonce"

    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v3, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v8, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    iget-object v9, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    iget-object v8, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-static {v9}, Lcom/sun/mail/smtp/DigestMD5;->toHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sun/mail/smtp/DigestMD5;->clientResponse:Ljava/lang/String;

    iget-object v8, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "AUTHENTICATE:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/mail/smtp/DigestMD5;->uri:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    iget-object v8, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/sun/mail/smtp/DigestMD5;->clientResponse:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    invoke-static {v10}, Lcom/sun/mail/smtp/DigestMD5;->toHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "username=\""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ",realm=\""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ",qop="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ",nc="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ",nonce=\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, ",cnonce=\""

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, ",digest-uri=\""

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/DigestMD5;->uri:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, ",response="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lcom/sun/mail/smtp/DigestMD5;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    if-eqz v1, :cond_227

    iget-object v1, p0, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG DIGEST-MD5: Response => "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_227
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    :catch_23a
    move-exception v1

    iget-object v2, p0, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    if-eqz v2, :cond_253

    iget-object v2, p0, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG DIGEST-MD5: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_253
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_25d
    move-object/from16 p1, p4

    goto/16 :goto_60
.end method

.method public authServer(Ljava/lang/String;)Z
    .registers 6

    invoke-direct {p0, p1}, Lcom/sun/mail/smtp/DigestMD5;->tokenize(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/DigestMD5;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/mail/smtp/DigestMD5;->clientResponse:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sun/mail/smtp/DigestMD5;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/sun/mail/smtp/DigestMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/smtp/DigestMD5;->toHex([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rspauth"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    iget-object v0, p0, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/sun/mail/smtp/DigestMD5;->debugout:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG DIGEST-MD5: Expected => rspauth="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_74
    const/4 v0, 0x0

    :goto_75
    return v0

    :cond_76
    const/4 v0, 0x1

    goto :goto_75
.end method
