.class Ljavax/mail/internet/MailDateParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field index:I

.field orig:[C


# direct methods
.method public constructor <init>([C)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iput-object p1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    return-void
.end method


# virtual methods
.method getIndex()I
    .registers 2

    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    return v0
.end method

.method public parseAlphaTimeZone()I
    .registers 8

    const/4 v0, 0x0

    const/16 v6, 0x74

    const/16 v5, 0x54

    const/4 v1, 0x1

    :try_start_6
    iget-object v2, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v2, v2, v3

    sparse-switch v2, :sswitch_data_c8

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Alpha TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_1d} :catch_1d

    :catch_1d
    move-exception v0

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Alpha TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :sswitch_28
    :try_start_28
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2
    :try_end_32
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_28 .. :try_end_32} :catch_1d

    if-eq v1, v5, :cond_36

    if-ne v1, v6, :cond_63

    :cond_36
    move v1, v0

    :goto_37
    if-eqz v1, :cond_bd

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    const/16 v2, 0x53

    if-eq v1, v2, :cond_4b

    const/16 v2, 0x73

    if-ne v1, v2, :cond_a5

    :cond_4b
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    if-eq v1, v5, :cond_bd

    if-eq v1, v6, :cond_bd

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Alpha TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_63
    :try_start_63
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Alpha TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :sswitch_6d
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    const/16 v2, 0x4d

    if-eq v1, v2, :cond_7f

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_8f

    :cond_7f
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    if-eq v1, v5, :cond_8d

    if-ne v1, v6, :cond_8f

    :cond_8d
    move v1, v0

    goto :goto_37

    :cond_8f
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Alpha TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_99
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_63 .. :try_end_99} :catch_1d

    :sswitch_99
    const/16 v0, 0x12c

    goto :goto_37

    :sswitch_9c
    const/16 v0, 0x168

    goto :goto_37

    :sswitch_9f
    const/16 v0, 0x1a4

    goto :goto_37

    :sswitch_a2
    const/16 v0, 0x1e0

    goto :goto_37

    :cond_a5
    const/16 v2, 0x44

    if-eq v1, v2, :cond_ad

    const/16 v2, 0x64

    if-ne v1, v2, :cond_bd

    :cond_ad
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    if-eq v1, v5, :cond_bb

    if-eq v1, v6, :cond_be

    :cond_bb
    add-int/lit8 v0, v0, -0x3c

    :cond_bd
    return v0

    :cond_be
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Alpha TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :sswitch_data_c8
    .sparse-switch
        0x43 -> :sswitch_9c
        0x45 -> :sswitch_99
        0x47 -> :sswitch_6d
        0x4d -> :sswitch_9f
        0x50 -> :sswitch_a2
        0x55 -> :sswitch_28
        0x63 -> :sswitch_9c
        0x65 -> :sswitch_99
        0x67 -> :sswitch_6d
        0x6d -> :sswitch_9f
        0x70 -> :sswitch_a2
        0x75 -> :sswitch_28
    .end sparse-switch
.end method

.method public parseMonth()I
    .registers 9

    const/16 v7, 0x50

    const/16 v6, 0x4e

    const/16 v5, 0x43

    const/16 v4, 0x65

    const/16 v3, 0x45

    :try_start_a
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1
    :try_end_14
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_14} :catch_183

    sparse-switch v0, :sswitch_data_186

    :cond_17
    :goto_17
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Month"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :sswitch_21
    :try_start_21
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_1c8

    goto :goto_17

    :sswitch_2f
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v6, :cond_3f

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_17

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    return v0

    :sswitch_41
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v6, :cond_51

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_53

    :cond_51
    const/4 v0, 0x5

    goto :goto_40

    :cond_53
    const/16 v1, 0x4c

    if-eq v0, v1, :cond_5b

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_17

    :cond_5b
    const/4 v0, 0x6

    goto :goto_40

    :sswitch_5d
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_6b

    if-ne v0, v4, :cond_17

    :cond_6b
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x42

    if-eq v0, v1, :cond_7d

    const/16 v1, 0x62

    if-ne v0, v1, :cond_17

    :cond_7d
    const/4 v0, 0x1

    goto :goto_40

    :sswitch_7f
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x41

    if-eq v0, v1, :cond_91

    const/16 v1, 0x61

    if-ne v0, v1, :cond_17

    :cond_91
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x52

    if-eq v0, v1, :cond_a3

    const/16 v1, 0x72

    if-ne v0, v1, :cond_a5

    :cond_a3
    const/4 v0, 0x2

    goto :goto_40

    :cond_a5
    const/16 v1, 0x59

    if-eq v0, v1, :cond_ad

    const/16 v1, 0x79

    if-ne v0, v1, :cond_17

    :cond_ad
    const/4 v0, 0x4

    goto :goto_40

    :sswitch_af
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v7, :cond_bf

    const/16 v1, 0x70

    if-ne v0, v1, :cond_d4

    :cond_bf
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x52

    if-eq v0, v1, :cond_d1

    const/16 v1, 0x72

    if-ne v0, v1, :cond_17

    :cond_d1
    const/4 v0, 0x3

    goto/16 :goto_40

    :cond_d4
    const/16 v1, 0x55

    if-eq v0, v1, :cond_dc

    const/16 v1, 0x75

    if-ne v0, v1, :cond_17

    :cond_dc
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x47

    if-eq v0, v1, :cond_ee

    const/16 v1, 0x67

    if-ne v0, v1, :cond_17

    :cond_ee
    const/4 v0, 0x7

    goto/16 :goto_40

    :sswitch_f1
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_ff

    if-ne v0, v4, :cond_17

    :cond_ff
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v7, :cond_10f

    const/16 v1, 0x70

    if-ne v0, v1, :cond_17

    :cond_10f
    const/16 v0, 0x8

    goto/16 :goto_40

    :sswitch_113
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v5, :cond_123

    const/16 v1, 0x63

    if-ne v0, v1, :cond_17

    :cond_123
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x54

    if-eq v0, v1, :cond_135

    const/16 v1, 0x74

    if-ne v0, v1, :cond_17

    :cond_135
    const/16 v0, 0x9

    goto/16 :goto_40

    :sswitch_139
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_14b

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_17

    :cond_14b
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x56

    if-eq v0, v1, :cond_15d

    const/16 v1, 0x76

    if-ne v0, v1, :cond_17

    :cond_15d
    const/16 v0, 0xa

    goto/16 :goto_40

    :sswitch_161
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_16f

    if-ne v0, v4, :cond_17

    :cond_16f
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1
    :try_end_179
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_21 .. :try_end_179} :catch_183

    if-eq v0, v5, :cond_17f

    const/16 v1, 0x63

    if-ne v0, v1, :cond_17

    :cond_17f
    const/16 v0, 0xb

    goto/16 :goto_40

    :catch_183
    move-exception v0

    goto/16 :goto_17

    :sswitch_data_186
    .sparse-switch
        0x41 -> :sswitch_af
        0x44 -> :sswitch_161
        0x46 -> :sswitch_5d
        0x4a -> :sswitch_21
        0x4d -> :sswitch_7f
        0x4e -> :sswitch_139
        0x4f -> :sswitch_113
        0x53 -> :sswitch_f1
        0x61 -> :sswitch_af
        0x64 -> :sswitch_161
        0x66 -> :sswitch_5d
        0x6a -> :sswitch_21
        0x6d -> :sswitch_7f
        0x6e -> :sswitch_139
        0x6f -> :sswitch_113
        0x73 -> :sswitch_f1
    .end sparse-switch

    :sswitch_data_1c8
    .sparse-switch
        0x41 -> :sswitch_2f
        0x55 -> :sswitch_41
        0x61 -> :sswitch_2f
        0x75 -> :sswitch_41
    .end sparse-switch
.end method

.method public parseNumber()I
    .registers 7

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v3, v1

    move v1, v0

    :goto_6
    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    if-lt v4, v3, :cond_d

    if-eqz v1, :cond_59

    :cond_c
    return v0

    :cond_d
    iget-object v4, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v4, v4, v5

    packed-switch v4, :pswitch_data_64

    if-nez v1, :cond_c

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No Number found"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_22
    mul-int/lit8 v0, v0, 0xa

    :goto_24
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    move v1, v2

    goto :goto_6

    :pswitch_2c
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :pswitch_31
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x2

    goto :goto_24

    :pswitch_36
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x3

    goto :goto_24

    :pswitch_3b
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x4

    goto :goto_24

    :pswitch_40
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x5

    goto :goto_24

    :pswitch_45
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x6

    goto :goto_24

    :pswitch_4a
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x7

    goto :goto_24

    :pswitch_4f
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x8

    goto :goto_24

    :pswitch_54
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x9

    goto :goto_24

    :cond_59
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No Number found"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    nop

    :pswitch_data_64
    .packed-switch 0x30
        :pswitch_22
        :pswitch_2c
        :pswitch_31
        :pswitch_36
        :pswitch_3b
        :pswitch_40
        :pswitch_45
        :pswitch_4a
        :pswitch_4f
        :pswitch_54
    .end packed-switch
.end method

.method public parseNumericTimeZone()I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1f

    const/4 v0, 0x1

    :cond_10
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v1

    div-int/lit8 v2, v1, 0x64

    mul-int/lit8 v2, v2, 0x3c

    rem-int/lit8 v1, v1, 0x64

    add-int/2addr v1, v2

    if-eqz v0, :cond_2d

    neg-int v0, v1

    :goto_1e
    return v0

    :cond_1f
    const/16 v2, 0x2d

    if-eq v1, v2, :cond_10

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Numeric TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2d
    move v0, v1

    goto :goto_1e
.end method

.method public parseTimeZone()I
    .registers 4

    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v1

    if-lt v0, v1, :cond_11

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No more characters"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_11
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_24

    :cond_1f
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseNumericTimeZone()I

    move-result v0

    :goto_23
    return v0

    :cond_24
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseAlphaTimeZone()I

    move-result v0

    goto :goto_23
.end method

.method public peekChar()I
    .registers 4

    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v1

    if-ge v0, v1, :cond_e

    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    return v0

    :cond_e
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No more characters"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipChar(C)V
    .registers 5

    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v1

    if-ge v0, v1, :cond_20

    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_16

    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    return-void

    :cond_16
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Wrong char"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_20
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No more characters"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipIfChar(C)Z
    .registers 5

    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v1

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_17

    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16

    :cond_19
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No more characters"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipUntilNumber()V
    .registers 4

    :goto_0
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I
    :try_end_f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_0

    :catch_10
    move-exception v0

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No Number Found"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x30
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public skipWhiteSpace()V
    .registers 4

    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v0, v0

    :goto_3
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    if-lt v1, v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_1a

    goto :goto_7

    :sswitch_12
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    goto :goto_3

    nop

    :sswitch_data_1a
    .sparse-switch
        0x9 -> :sswitch_12
        0xa -> :sswitch_12
        0xd -> :sswitch_12
        0x20 -> :sswitch_12
    .end sparse-switch
.end method
