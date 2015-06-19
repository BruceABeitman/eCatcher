.class public abstract Ljavax/mail/search/StringTerm;
.super Ljavax/mail/search/SearchTerm;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x11ae4e90f062d98dL


# instance fields
.field protected ignoreCase:Z

.field protected pattern:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    iput-object p1, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    iput-object p1, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    iput-boolean p2, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Ljavax/mail/search/StringTerm;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    check-cast p1, Ljavax/mail/search/StringTerm;

    iget-boolean v2, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-eqz v2, :cond_1f

    iget-object v2, p1, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    iget-object v3, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p1, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    iget-boolean v3, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-ne v2, v3, :cond_6

    move v0, v1

    goto :goto_6

    :cond_1f
    iget-object v2, p1, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    iget-object v3, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p1, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    iget-boolean v3, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-ne v2, v3, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method public getIgnoreCase()Z
    .registers 2

    iget-boolean v0, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-boolean v0, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    goto :goto_a
.end method

.method protected match(Ljava/lang/String;)Z
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v6, v0, v1

    move v2, v4

    :goto_e
    if-le v2, v6, :cond_11

    :goto_10
    return v4

    :cond_11
    iget-boolean v1, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    iget-object v3, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v4, 0x1

    goto :goto_10

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_e
.end method
