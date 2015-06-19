.class public final Ljavax/mail/search/RecipientStringTerm;
.super Ljavax/mail/search/AddressStringTerm;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x7318a6c781f26a21L


# instance fields
.field private type:Ljavax/mail/Message$RecipientType;


# direct methods
.method public constructor <init>(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Ljavax/mail/search/AddressStringTerm;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljavax/mail/search/RecipientStringTerm;->type:Ljavax/mail/Message$RecipientType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v1, 0x0

    instance-of v0, p1, Ljavax/mail/search/RecipientStringTerm;

    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/RecipientStringTerm;

    iget-object v0, v0, Ljavax/mail/search/RecipientStringTerm;->type:Ljavax/mail/Message$RecipientType;

    iget-object v2, p0, Ljavax/mail/search/RecipientStringTerm;->type:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-super {p0, p1}, Ljavax/mail/search/AddressStringTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_6

    :cond_1c
    move v0, v1

    goto :goto_6
.end method

.method public getRecipientType()Ljavax/mail/Message$RecipientType;
    .registers 2

    iget-object v0, p0, Ljavax/mail/search/RecipientStringTerm;->type:Ljavax/mail/Message$RecipientType;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ljavax/mail/search/RecipientStringTerm;->type:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-super {p0}, Ljavax/mail/search/AddressStringTerm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/search/RecipientStringTerm;->type:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p1, v0}, Ljavax/mail/Message;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_1b

    move-result-object v2

    if-nez v2, :cond_a

    :cond_9
    :goto_9
    return v1

    :cond_a
    move v0, v1

    :goto_b
    array-length v3, v2

    if-ge v0, v3, :cond_9

    aget-object v3, v2, v0

    invoke-super {p0, v3}, Ljavax/mail/search/AddressStringTerm;->match(Ljavax/mail/Address;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v1, 0x1

    goto :goto_9

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :catch_1b
    move-exception v0

    goto :goto_9
.end method
