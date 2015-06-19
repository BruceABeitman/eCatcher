.class public final Ljavax/mail/search/HeaderTerm;
.super Ljavax/mail/search/StringTerm;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x73c690dfba9d2142L


# instance fields
.field protected headerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Ljavax/mail/search/HeaderTerm;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Ljavax/mail/search/HeaderTerm;

    iget-object v1, p1, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    iget-object v2, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getHeaderName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-super {p0}, Ljavax/mail/search/StringTerm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;
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

    invoke-super {p0, v3}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

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
