.class public final Ljavax/mail/search/SentDateTerm;
.super Ljavax/mail/search/DateTerm;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x4e60db46f5385c7fL


# direct methods
.method public constructor <init>(ILjava/util/Date;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljavax/mail/search/DateTerm;-><init>(ILjava/util/Date;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljavax/mail/search/SentDateTerm;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Ljavax/mail/search/DateTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_d

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    invoke-super {p0, v1}, Ljavax/mail/search/DateTerm;->match(Ljava/util/Date;)Z

    move-result v0

    goto :goto_7

    :catch_d
    move-exception v1

    goto :goto_7
.end method
