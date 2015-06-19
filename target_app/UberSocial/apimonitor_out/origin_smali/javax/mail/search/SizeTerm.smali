.class public final Ljavax/mail/search/SizeTerm;
.super Ljavax/mail/search/IntegerComparisonTerm;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x2379840c191a6e5dL


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljavax/mail/search/IntegerComparisonTerm;-><init>(II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljavax/mail/search/SizeTerm;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Ljavax/mail/search/IntegerComparisonTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljavax/mail/Message;->getSize()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_e

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    :goto_8
    return v0

    :cond_9
    invoke-super {p0, v1}, Ljavax/mail/search/IntegerComparisonTerm;->match(I)Z

    move-result v0

    goto :goto_8

    :catch_e
    move-exception v1

    goto :goto_8
.end method
