.class public Lcom/fsck/k9/mail/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field mAddress:Ljava/lang/String;

.field mPersonal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p2, 0x0

    :cond_e
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :cond_14
    iput-object p2, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    return-void
.end method

.method public static pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
    .registers 8

    if-nez p0, :cond_4

    const/4 v5, 0x0

    :goto_3
    return-object v5

    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    array-length v1, p0

    :goto_b
    if-ge v2, v1, :cond_38

    aget-object v0, p0, v2

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2b

    const-string v5, ";\u0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2b
    const/4 v5, 0x1

    sub-int v5, v1, v5

    if-ge v2, v5, :cond_35

    const-string v5, ",\u0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_38
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
    .registers 13

    const/4 v11, 0x0

    const-string v8, "@"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_15

    const-string v8, ""

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    new-array v8, v11, [Lcom/fsck/k9/mail/Address;

    :goto_14
    return-object v8

    :cond_15
    :try_start_15
    invoke-static {p0}, Lorg/apache/james/mime4j/field/address/AddressList;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/address/AddressList;->flatten()Lorg/apache/james/mime4j/field/address/MailboxList;

    move-result-object v7

    const/4 v4, 0x0

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/address/MailboxList;->size()I

    move-result v3

    :goto_22
    if-ge v4, v3, :cond_8f

    invoke-virtual {v7, v4}, Lorg/apache/james/mime4j/field/address/MailboxList;->get(I)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v1

    instance-of v8, v1, Lorg/apache/james/mime4j/field/address/NamedMailbox;

    if-eqz v8, :cond_5e

    move-object v0, v1

    check-cast v0, Lorg/apache/james/mime4j/field/address/NamedMailbox;

    move-object v6, v0

    new-instance v8, Lcom/fsck/k9/mail/Address;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/address/NamedMailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/address/NamedMailbox;->getDomain()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/address/NamedMailbox;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_5e
    instance-of v8, v1, Lorg/apache/james/mime4j/field/address/Mailbox;

    if-eqz v8, :cond_9a

    move-object v0, v1

    check-cast v0, Lorg/apache/james/mime4j/field/address/Mailbox;

    move-object v5, v0

    new-instance v8, Lcom/fsck/k9/mail/Address;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8d
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_15 .. :try_end_8d} :catch_8e

    goto :goto_5b

    :catch_8e
    move-exception v8

    :cond_8f
    new-array v8, v11, [Lcom/fsck/k9/mail/Address;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/fsck/k9/mail/Address;

    move-object v8, p0

    goto/16 :goto_14

    :cond_9a
    :try_start_9a
    const-string v8, "k9"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown address type from Mime4J: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_9a .. :try_end_ba} :catch_8e

    goto :goto_5b
.end method

.method public static parseUnencoded(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
    .registers 12

    const-string v10, ""

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3d

    const-string v7, ""

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3d

    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v6

    move-object v2, v6

    array-length v4, v2

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v4, :cond_3d

    aget-object v5, v2, v3

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    const-string v7, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    new-instance v7, Lcom/fsck/k9/mail/Address;

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_3d
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/fsck/k9/mail/Address;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/fsck/k9/mail/Address;

    return-object p0
.end method

.method public static toEncodedString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 v2, 0x0

    :goto_3
    return-object v2

    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_a
    array-length v2, p0

    if-ge v0, v2, :cond_23

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Address;->toEncodedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_20

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method public static toFriendly([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 v2, 0x0

    :goto_3
    return-object v2

    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_a
    array-length v2, p0

    if-ge v0, v2, :cond_23

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_20

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method public static toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 v2, 0x0

    :goto_3
    return-object v2

    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_a
    array-length v2, p0

    if-ge v0, v2, :cond_23

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_20

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method public static unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
    .registers 11

    const/4 v9, 0x0

    const/4 v8, -0x1

    if-nez p0, :cond_7

    new-array v7, v9, [Lcom/fsck/k9/mail/Address;

    :goto_6
    return-object v7

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_13
    if-ge v5, v3, :cond_44

    const-string v7, ",\u0000"

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_1e

    move v4, v3

    :cond_1e
    const-string v7, ";\u0000"

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-eq v1, v8, :cond_2a

    if-le v1, v4, :cond_39

    :cond_2a
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2e
    new-instance v7, Lcom/fsck/k9/mail/Address;

    invoke-direct {v7, v0, v6}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v4, 0x2

    goto :goto_13

    :cond_39
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v7, v1, 0x2

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_2e

    :cond_44
    new-array v7, v9, [Lcom/fsck/k9/mail/Address;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/fsck/k9/mail/Address;

    move-object v7, p0

    goto :goto_6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/fsck/k9/mail/Address;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/fsck/k9/mail/Address;

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_12
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonal()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .registers 3

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p1, 0x0

    :cond_9
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_f
    iput-object p1, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    return-void
.end method

.method public toEncodedString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    return-object v0

    :cond_2a
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_29
.end method

.method public toFriendly()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lcom/fsck/k9/Utility;->quoteString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    return-object v0

    :cond_2a
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_29
.end method
