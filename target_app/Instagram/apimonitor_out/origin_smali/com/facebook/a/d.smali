.class public final Lcom/facebook/a/d;
.super Ljava/util/EnumMap;
.source "CrashReportData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap",
        "<",
        "Lcom/facebook/a/r;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field protected a:Lcom/facebook/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\n"

    sput-object v0, Lcom/facebook/a/d;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/facebook/a/r;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Ljava/io/OutputStream;)Ljava/io/Writer;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "ISO8859_1"

    invoke-direct {v0, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-object v0

    :catch_8
    move-exception v0

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private declared-synchronized a(Ljava/io/Reader;)V
    .registers 15

    monitor-enter p0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x28

    :try_start_6
    new-array v3, v0, [C

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x1

    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v7, v0

    move v0, v1

    move v1, v4

    move v4, v5

    move v5, v6

    move-object v6, v3

    :goto_16
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_13e

    if-eqz v3, :cond_13e

    int-to-char v3, v3

    array-length v8, v6

    if-ne v2, v8, :cond_1a1

    array-length v8, v6

    mul-int/lit8 v8, v8, 0x2

    new-array v8, v8, [C

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v6, v10, v8, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2d
    const/4 v6, 0x2

    if-ne v5, v6, :cond_19a

    const/16 v6, 0x10

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    if-ltz v6, :cond_44

    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v6, v4

    add-int/lit8 v4, v1, 0x1

    const/4 v1, 0x4

    if-ge v4, v1, :cond_197

    move v1, v4

    move v4, v6

    move-object v6, v8

    goto :goto_16

    :cond_44
    const/4 v5, 0x4

    if-gt v1, v5, :cond_52

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "luni.09"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4f
    .catchall {:try_start_6 .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_52
    move v5, v4

    move v4, v1

    :goto_54
    const/4 v6, 0x0

    add-int/lit8 v1, v2, 0x1

    int-to-char v10, v5

    :try_start_58
    aput-char v10, v8, v2

    const/16 v2, 0xa

    if-eq v3, v2, :cond_62

    const/16 v2, 0x85

    if-ne v3, v2, :cond_190

    :cond_62
    move v2, v6

    :goto_63
    const/4 v6, 0x1

    if-ne v2, v6, :cond_a3

    const/4 v2, 0x0

    sparse-switch v3, :sswitch_data_1a4

    :cond_6a
    :goto_6a
    const/4 v6, 0x0

    const/4 v7, 0x4

    if-ne v2, v7, :cond_71

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :cond_71
    add-int/lit8 v7, v1, 0x1

    aput-char v3, v8, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v7

    move v7, v6

    move-object v6, v8

    goto :goto_16

    :sswitch_7c
    const/4 v2, 0x3

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    goto :goto_16

    :sswitch_84
    const/4 v2, 0x5

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    goto :goto_16

    :sswitch_8c
    const/16 v3, 0x8

    goto :goto_6a

    :sswitch_8f
    const/16 v3, 0xc

    goto :goto_6a

    :sswitch_92
    const/16 v3, 0xa

    goto :goto_6a

    :sswitch_95
    const/16 v3, 0xd

    goto :goto_6a

    :sswitch_98
    const/16 v3, 0x9

    goto :goto_6a

    :sswitch_9b
    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object v6, v8

    move v5, v2

    move v2, v1

    move v1, v4

    goto/16 :goto_16

    :cond_a3
    sparse-switch v3, :sswitch_data_1ca

    :cond_a6
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_135

    const/4 v6, 0x3

    if-ne v2, v6, :cond_b0

    const/4 v2, 0x5

    :cond_b0
    if-eqz v1, :cond_188

    if-eq v1, v0, :cond_188

    const/4 v6, 0x5

    if-eq v2, v6, :cond_188

    const/4 v6, -0x1

    if-ne v0, v6, :cond_135

    const/4 v2, 0x4

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_16

    :sswitch_c3
    if-eqz v7, :cond_a6

    :cond_c5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_188

    int-to-char v3, v3

    const/16 v6, 0xd

    if-eq v3, v6, :cond_188

    const/16 v6, 0xa

    if-eq v3, v6, :cond_188

    const/16 v6, 0x85

    if-ne v3, v6, :cond_c5

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_16

    :sswitch_e1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_ed

    const/4 v2, 0x5

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_16

    :cond_ed
    :sswitch_ed
    const/4 v6, 0x0

    const/4 v2, 0x1

    if-gtz v1, :cond_f5

    if-nez v1, :cond_111

    if-nez v0, :cond_111

    :cond_f5
    const/4 v3, -0x1

    if-ne v0, v3, :cond_f9

    move v0, v1

    :cond_f9
    new-instance v3, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v3, v8, v7, v1}, Ljava/lang/String;-><init>([CII)V

    const-class v1, Lcom/facebook/a/r;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_111
    const/4 v0, -0x1

    const/4 v1, 0x0

    move v7, v2

    move v2, v1

    move v1, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    goto/16 :goto_16

    :sswitch_11b
    const/4 v3, 0x4

    if-ne v2, v3, :cond_11f

    move v0, v1

    :cond_11f
    const/4 v2, 0x1

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_16

    :sswitch_128
    const/4 v6, -0x1

    if-ne v0, v6, :cond_a6

    const/4 v2, 0x0

    move v0, v1

    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_16

    :cond_135
    const/4 v6, 0x5

    if-eq v2, v6, :cond_13b

    const/4 v6, 0x3

    if-ne v2, v6, :cond_6a

    :cond_13b
    const/4 v2, 0x0

    goto/16 :goto_6a

    :cond_13e
    const/4 v3, 0x2

    if-ne v5, v3, :cond_14c

    const/4 v3, 0x4

    if-gt v1, v3, :cond_14c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "luni.08"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14c
    const/4 v1, -0x1

    if-ne v0, v1, :cond_186

    if-lez v2, :cond_186

    move v1, v2

    :goto_152
    if-ltz v1, :cond_184

    new-instance v3, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {v3, v6, v0, v2}, Ljava/lang/String;-><init>([CII)V

    const-class v0, Lcom/facebook/a/r;

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/r;

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v5, v2, :cond_181

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_181
    invoke-virtual {p0, v0, v1}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_184
    .catchall {:try_start_58 .. :try_end_184} :catchall_4f

    :cond_184
    monitor-exit p0

    return-void

    :cond_186
    move v1, v0

    goto :goto_152

    :cond_188
    move-object v6, v8

    move v12, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_16

    :cond_190
    move v2, v1

    move v1, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    goto/16 :goto_16

    :cond_197
    move v5, v6

    goto/16 :goto_54

    :cond_19a
    move v12, v2

    move v2, v5

    move v5, v4

    move v4, v1

    move v1, v12

    goto/16 :goto_63

    :cond_1a1
    move-object v8, v6

    goto/16 :goto_2d

    :sswitch_data_1a4
    .sparse-switch
        0xa -> :sswitch_84
        0xd -> :sswitch_7c
        0x62 -> :sswitch_8c
        0x66 -> :sswitch_8f
        0x6e -> :sswitch_92
        0x72 -> :sswitch_95
        0x74 -> :sswitch_98
        0x75 -> :sswitch_9b
        0x85 -> :sswitch_84
    .end sparse-switch

    :sswitch_data_1ca
    .sparse-switch
        0xa -> :sswitch_e1
        0xd -> :sswitch_ed
        0x21 -> :sswitch_c3
        0x23 -> :sswitch_c3
        0x3a -> :sswitch_128
        0x3d -> :sswitch_128
        0x5c -> :sswitch_11b
        0x85 -> :sswitch_ed
    .end sparse-switch
.end method

.method private declared-synchronized a(Ljava/io/Writer;Lcom/facebook/a/r;Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Lcom/facebook/a/r;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_9

    const-string p3, ""

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    div-int/lit8 v3, v1, 0x5

    add-int/2addr v1, v3

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lcom/facebook/a/d;->a(Ljava/lang/Appendable;Ljava/lang/String;Z)V

    const/16 v0, 0x3d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {v2, p3, v0}, Lcom/facebook/a/d;->a(Ljava/lang/Appendable;Ljava/lang/String;Z)V

    sget-object v0, Lcom/facebook/a/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    monitor-exit p0

    return-void

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Ljava/lang/Appendable;Ljava/lang/String;Z)V
    .registers 11

    const/16 v7, 0x5c

    const/16 v6, 0x20

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez p2, :cond_7c

    if-lez v3, :cond_7c

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_7c

    const-string v0, "\\ "

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v0, 0x1

    move v2, v0

    :goto_1a
    if-ge v2, v3, :cond_7b

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_7e

    :pswitch_23
    if-eqz p2, :cond_27

    if-eq v0, v6, :cond_35

    :cond_27
    if-eq v0, v7, :cond_35

    const/16 v4, 0x23

    if-eq v0, v4, :cond_35

    const/16 v4, 0x21

    if-eq v0, v4, :cond_35

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_38

    :cond_35
    invoke-interface {p0, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_38
    if-lt v0, v6, :cond_5d

    const/16 v4, 0x7e

    if-gt v0, v4, :cond_5d

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_41
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1a

    :pswitch_45
    const-string v0, "\\t"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_41

    :pswitch_4b
    const-string v0, "\\n"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_41

    :pswitch_51
    const-string v0, "\\f"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_41

    :pswitch_57
    const-string v0, "\\r"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_41

    :cond_5d
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "\\u"

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move v0, v1

    :goto_67
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x4

    if-ge v0, v5, :cond_77

    const/16 v5, 0x30

    invoke-interface {p0, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    :cond_77
    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_41

    :cond_7b
    return-void

    :cond_7c
    move v2, v1

    goto :goto_1a

    :pswitch_data_7e
    .packed-switch 0x9
        :pswitch_45
        :pswitch_4b
        :pswitch_23
        :pswitch_51
        :pswitch_57
    .end packed-switch
.end method

.method private static a(Ljava/io/BufferedInputStream;)Z
    .registers 4

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    const/16 v2, 0x23

    if-eq v1, v2, :cond_15

    const/16 v2, 0xa

    if-eq v1, v2, :cond_15

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    const/16 v2, 0x15

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_15
.end method


# virtual methods
.method public final a(Lcom/facebook/a/r;)Ljava/lang/String;
    .registers 4

    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_12

    iget-object v1, p0, Lcom/facebook/a/d;->a:Lcom/facebook/a/d;

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/facebook/a/d;->a:Lcom/facebook/a/d;

    invoke-virtual {v0, p1}, Lcom/facebook/a/d;->a(Lcom/facebook/a/r;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public final a(Lcom/facebook/a/r;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p3, :cond_b

    invoke-direct {p0, p3, p1, p2}, Lcom/facebook/a/d;->a(Ljava/io/Writer;Lcom/facebook/a/r;Ljava/lang/String;)V

    :cond_b
    return-object v0
.end method

.method public final declared-synchronized a(Ljava/io/InputStream;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-static {v0}, Lcom/facebook/a/d;->a(Ljava/io/BufferedInputStream;)Z

    move-result v1

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    if-nez v1, :cond_21

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "ISO8859-1"

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/facebook/a/d;->a(Ljava/io/Reader;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_2a

    :goto_1f
    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Lcom/facebook/a/d;->a(Ljava/io/Reader;)V
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_2a

    goto :goto_1f

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
