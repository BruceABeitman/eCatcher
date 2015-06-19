.class public Lcom/facebook/katana/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
    }
.end annotation


# static fields
.field public static final HOUR_MIN_TIME:I = 0xa01

.field public static final MONTH_DAY:I = 0x10018

.field public static final MONTH_DAY_YEAR:I = 0x10014

.field public static final URL_REG_EXPRESSION:Ljava/lang/String; = "^(https?://)?([a-zA-Z0-9_-]+\\.[a-zA-Z0-9_-]+)+(/*[A-Za-z0-9/\\-_&:?\\+=//.%]*)*"

.field public static final WEEK_DAY:I = 0x8002

.field private static final numbersAndLetters:[C

.field private static final randGen:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/StringUtils;->randGen:Ljava/util/Random;

    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/util/StringUtils;->numbersAndLetters:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .registers 13

    const v7, 0x7f08003e

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_40

    if-eqz p4, :cond_3e

    instance-of v2, p4, Lcom/facebook/katana/service/api/FacebookApiException;

    if-eqz v2, :cond_2c

    move-object v0, p4

    check-cast v0, Lcom/facebook/katana/service/api/FacebookApiException;

    move-object v1, v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookApiException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookApiException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2b
    return-object v2

    :cond_2c
    const v2, 0x7f08003f

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2b

    :cond_3e
    move-object v2, p1

    goto :goto_2b

    :cond_40
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p3, v2, v6

    invoke-virtual {p0, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2b
.end method

.method public static getTimeAsString(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;
    .registers 15

    const v6, 0x8002

    const/4 v10, 0x2

    const/16 v9, 0xa01

    const/4 v7, 0x1

    const/4 v8, 0x0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    sget-object v4, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    if-ne p1, v4, :cond_c4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, p2

    const-wide/32 v4, 0x1d4c0

    cmp-long v4, v1, v4

    if-gez v4, :cond_26

    const v4, 0x7f08016b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_25
    return-object v4

    :cond_26
    const-wide/32 v4, 0x36ee80

    cmp-long v4, v1, v4

    if-gez v4, :cond_42

    const v4, 0x7f080170

    new-array v5, v7, [Ljava/lang/Object;

    const-wide/32 v6, 0xea60

    div-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_25

    :cond_42
    const-wide/32 v4, 0x5265c00

    cmp-long v4, v1, v4

    if-gez v4, :cond_8c

    const-wide/32 v4, 0x6ddd00

    cmp-long v4, v1, v4

    if-gez v4, :cond_58

    const v4, 0x7f08016c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_25

    :cond_58
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v5

    if-ne v4, v5, :cond_7c

    const v4, 0x7f08016f

    new-array v5, v7, [Ljava/lang/Object;

    const-wide/32 v6, 0x36ee80

    div-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_25

    :cond_7c
    const v4, 0x7f080178

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p0, p2, p3, v9}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_25

    :cond_8c
    const-wide/32 v4, 0x14997000

    cmp-long v4, v1, v4

    if-gez v4, :cond_aa

    const v4, 0x7f080177

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {p0, p2, p3, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p0, p2, p3, v9}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_25

    :cond_aa
    const v4, 0x7f08016d

    new-array v5, v10, [Ljava/lang/Object;

    const v6, 0x10018

    invoke-static {p0, p2, p3, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p0, p2, p3, v9}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_25

    :cond_c4
    sget-object v4, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->MAILBOX_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    if-ne p1, v4, :cond_126

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v5

    if-ne v4, v5, :cond_e8

    const v4, 0x7f080175

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p0, p2, p3, v9}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_25

    :cond_e8
    new-instance v4, Ljava/util/Date;

    const-wide/32 v5, 0x83d600

    add-long/2addr v5, p2

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->getDay()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v5

    if-ne v4, v5, :cond_10c

    const v4, 0x7f080178

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p0, p2, p3, v9}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_25

    :cond_10c
    const v4, 0x7f08016d

    new-array v5, v10, [Ljava/lang/Object;

    const v6, 0x10018

    invoke-static {p0, p2, p3, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p0, p2, p3, v9}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_25

    :cond_126
    sget-object v4, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->WEEK_DAY_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    if-ne p1, v4, :cond_130

    invoke-static {p0, p2, p3, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_25

    :cond_130
    sget-object v4, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->MONTH_DAY_YEAR_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    if-ne p1, v4, :cond_13d

    const v4, 0x10014

    invoke-static {p0, p2, p3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_25

    :cond_13d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown style"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static parseExpression(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-eqz p0, :cond_12

    :try_start_2
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_10
    if-lt v5, v1, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-virtual {v2, v5, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_36

    const-string v6, ""

    invoke-virtual {v4, p2, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_28
    :goto_28
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    if-eq v0, p4, :cond_12

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    add-int/lit8 v5, v6, 0x1

    goto :goto_10

    :cond_36
    const-string v6, "^(https?://)?([a-zA-Z0-9_-]+\\.[a-zA-Z0-9_-]+)+(/*[A-Za-z0-9/\\-_&:?\\+=//.%]*)*"

    if-ne p1, v6, :cond_28

    const-string v6, "http"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_28

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_50} :catch_55

    move-result-object v4

    goto :goto_28

    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :catch_55
    move-exception v6

    goto :goto_12
.end method

.method public static randomString(I)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x1

    if-ge p0, v2, :cond_5

    const/4 v2, 0x0

    :goto_4
    return-object v2

    :cond_5
    new-array v1, p0, [C

    const/4 v0, 0x0

    :goto_8
    array-length v2, v1

    if-lt v0, v2, :cond_11

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_4

    :cond_11
    sget-object v2, Lcom/facebook/katana/util/StringUtils;->numbersAndLetters:[C

    sget-object v3, Lcom/facebook/katana/util/StringUtils;->randGen:Ljava/util/Random;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static rsvpStatusToString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    sget-object v1, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ATTENDING:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_12

    const v1, 0x7f080045

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    sget-object v1, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->UNSURE:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_22

    const v1, 0x7f080050

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_22
    sget-object v1, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->DECLINED:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_32

    const v1, 0x7f080046

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_32
    sget-object v1, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->NOT_REPLIED:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_11

    const v1, 0x7f08004d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method public static stripHTMLTags(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "<br"

    const-string v1, "\n<br"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "<div"

    const-string v1, "\n<div"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/facebook/katana/util/Entities;->HTML40:Lcom/facebook/katana/util/Entities;

    const-string v1, "<(.|\n)*?>"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/Entities;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/katana/util/StringUtils;->trimWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method protected static trimWhite(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v5, 0xa

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_1e

    :goto_10
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    :goto_17
    if-gez v1, :cond_33

    :cond_19
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1e
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_30

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_10

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_19

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    goto :goto_17
.end method
