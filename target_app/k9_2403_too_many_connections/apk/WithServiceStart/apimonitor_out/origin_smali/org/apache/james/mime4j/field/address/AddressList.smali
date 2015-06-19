.class public Lorg/apache/james/mime4j/field/address/AddressList;
.super Ljava/lang/Object;
.source "AddressList.java"


# instance fields
.field private addresses:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_12

    if-eqz p2, :cond_b

    move-object v0, p1

    :goto_8
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_8

    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    goto :goto_a
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_c
    :try_start_c
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_35

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "exit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "quit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    :cond_35
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Goodbye."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_3d
    invoke-static {v1}, Lorg/apache/james/mime4j/field/address/AddressList;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/AddressList;->print()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_44} :catch_45

    goto :goto_c

    :catch_45
    move-exception v4

    move-object v0, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v4, 0x12c

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_c
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/Reader;)V

    invoke-static {}, Lorg/apache/james/mime4j/field/address/Builder;->getInstance()Lorg/apache/james/mime4j/field/address/Builder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parse()Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddressList(Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public flatten()Lorg/apache/james/mime4j/field/address/MailboxList;
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressList;->size()I

    move-result v4

    if-ge v2, v4, :cond_11

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressList;->get(I)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/james/mime4j/field/address/Mailbox;

    if-nez v4, :cond_1c

    const/4 v1, 0x1

    :cond_11
    if-nez v1, :cond_1f

    new-instance v4, Lorg/apache/james/mime4j/field/address/MailboxList;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    :goto_1b
    return-object v4

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_25
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressList;->size()I

    move-result v4

    if-ge v2, v4, :cond_35

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressList;->get(I)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/address/Address;->addMailboxesTo(Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_35
    new-instance v4, Lorg/apache/james/mime4j/field/address/MailboxList;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    goto :goto_1b
.end method

.method public get(I)Lorg/apache/james/mime4j/field/address/Address;
    .registers 3

    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressList;->size()I

    move-result v0

    if-gt v0, p1, :cond_e

    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_e
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/address/Address;

    return-object p0
.end method

.method public print()V
    .registers 5

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressList;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressList;->get(I)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
