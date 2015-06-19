.class public Lorg/apache/james/mime4j/field/address/MailboxList;
.super Ljava/lang/Object;
.source "MailboxList.java"


# instance fields
.field private mailboxes:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_12

    if-eqz p2, :cond_b

    move-object v0, p1

    :goto_8
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/ArrayList;

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

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/ArrayList;

    goto :goto_a
.end method


# virtual methods
.method public get(I)Lorg/apache/james/mime4j/field/address/Mailbox;
    .registers 3

    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/MailboxList;->size()I

    move-result v0

    if-gt v0, p1, :cond_e

    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_e
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/address/Mailbox;

    return-object p0
.end method

.method public print()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/MailboxList;->size()I

    move-result v2

    if-ge v0, v2, :cond_17

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/MailboxList;->get(I)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Mailbox;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
