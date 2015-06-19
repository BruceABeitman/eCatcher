.class public final Ljavax/mail/search/OrTerm;
.super Ljavax/mail/search/SearchTerm;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x4aab7f3a24a275d8L


# instance fields
.field protected terms:[Ljavax/mail/search/SearchTerm;


# direct methods
.method public constructor <init>(Ljavax/mail/search/SearchTerm;Ljavax/mail/search/SearchTerm;)V
    .registers 5

    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljavax/mail/search/SearchTerm;

    iput-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    iget-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    return-void
.end method

.method public constructor <init>([Ljavax/mail/search/SearchTerm;)V
    .registers 5

    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Ljavax/mail/search/SearchTerm;

    iput-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    const/4 v0, 0x0

    :goto_9
    array-length v1, p1

    if-lt v0, v1, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    instance-of v0, p1, Ljavax/mail/search/OrTerm;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return v1

    :cond_6
    check-cast p1, Ljavax/mail/search/OrTerm;

    iget-object v0, p1, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v0, v0

    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v2, v2

    if-ne v0, v2, :cond_5

    move v0, v1

    :goto_11
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v2, v2

    if-lt v0, v2, :cond_18

    const/4 v1, 0x1

    goto :goto_5

    :cond_18
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v2, v2, v0

    iget-object v3, p1, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public getTerms()[Ljavax/mail/search/SearchTerm;
    .registers 2

    iget-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    invoke-virtual {v0}, [Ljavax/mail/search/SearchTerm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/search/SearchTerm;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v2, v2

    if-lt v0, v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v2, v2

    if-lt v0, v2, :cond_8

    :goto_7
    return v1

    :cond_8
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljavax/mail/search/SearchTerm;->match(Ljavax/mail/Message;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    goto :goto_7

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
