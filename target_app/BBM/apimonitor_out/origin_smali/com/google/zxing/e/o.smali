.class final Lcom/google/zxing/e/o;
.super Ljava/lang/Object;
.source "UPCEANExtensionSupport.java"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lcom/google/zxing/e/m;

.field private final c:Lcom/google/zxing/e/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/e/o;->a:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/zxing/e/m;

    invoke-direct {v0}, Lcom/google/zxing/e/m;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/e/o;->b:Lcom/google/zxing/e/m;

    new-instance v0, Lcom/google/zxing/e/n;

    invoke-direct {v0}, Lcom/google/zxing/e/n;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/e/o;->c:Lcom/google/zxing/e/n;

    return-void
.end method


# virtual methods
.method final a(ILcom/google/zxing/b/a;I)Lcom/google/zxing/m;
    .registers 15

    const/4 v0, 0x0

    sget-object v1, Lcom/google/zxing/e/o;->a:[I

    invoke-static {p2, p3, v0, v1}, Lcom/google/zxing/e/p;->a(Lcom/google/zxing/b/a;IZ[I)[I

    move-result-object v5

    :try_start_7
    iget-object v0, p0, Lcom/google/zxing/e/o;->c:Lcom/google/zxing/e/n;

    iget-object v6, v0, Lcom/google/zxing/e/n;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v7, v0, Lcom/google/zxing/e/n;->b:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v7, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v7, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v7, v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v7, v0

    iget v8, p2, Lcom/google/zxing/b/a;->b:I

    const/4 v0, 0x1

    aget v2, v5, v0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v1

    move v4, v2

    move v1, v0

    :goto_2b
    const/4 v0, 0x5

    if-ge v1, v0, :cond_65

    if-ge v4, v8, :cond_65

    sget-object v0, Lcom/google/zxing/e/p;->e:[[I

    invoke-static {p2, v7, v4, v0}, Lcom/google/zxing/e/p;->a(Lcom/google/zxing/b/a;[II[[I)I

    move-result v9

    rem-int/lit8 v0, v9, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v10, v7

    const/4 v0, 0x0

    move v2, v0

    move v0, v4

    :goto_42
    if-ge v2, v10, :cond_4c

    aget v4, v7, v2

    add-int/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_42

    :cond_4c
    const/16 v2, 0xa

    if-lt v9, v2, :cond_190

    const/4 v2, 0x1

    rsub-int/lit8 v4, v1, 0x4

    shl-int/2addr v2, v4

    or-int/2addr v2, v3

    :goto_55
    const/4 v3, 0x4

    if-eq v1, v3, :cond_60

    invoke-virtual {p2, v0}, Lcom/google/zxing/b/a;->c(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/b/a;->d(I)I

    move-result v0

    :cond_60
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v4, v0

    goto :goto_2b

    :cond_65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_79

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0
    :try_end_71
    .catch Lcom/google/zxing/l; {:try_start_7 .. :try_end_71} :catch_71

    :catch_71
    move-exception v0

    iget-object v0, p0, Lcom/google/zxing/e/o;->b:Lcom/google/zxing/e/m;

    invoke-virtual {v0, p1, p2, v5}, Lcom/google/zxing/e/m;->a(ILcom/google/zxing/b/a;[I)Lcom/google/zxing/m;

    move-result-object v0

    :cond_78
    :goto_78
    return-object v0

    :cond_79
    const/4 v0, 0x0

    move v2, v0

    :goto_7b
    const/16 v0, 0xa

    if-ge v2, v0, :cond_a0

    :try_start_7f
    sget-object v0, Lcom/google/zxing/e/n;->a:[I

    aget v0, v0, v2

    if-ne v3, v0, :cond_9c

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v1, 0x0

    add-int/lit8 v0, v7, -0x2

    :goto_90
    if-ltz v0, :cond_a5

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    add-int/2addr v1, v8

    add-int/lit8 v0, v0, -0x2

    goto :goto_90

    :cond_9c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7b

    :cond_a0
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_a5
    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v7, -0x1

    :goto_a9
    if-ltz v0, :cond_b5

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v1, v7

    add-int/lit8 v0, v0, -0x2

    goto :goto_a9

    :cond_b5
    mul-int/lit8 v0, v1, 0x3

    rem-int/lit8 v0, v0, 0xa

    if-eq v0, v2, :cond_c0

    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_c0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_fd

    const/4 v0, 0x0

    move-object v1, v0

    :goto_cd
    new-instance v0, Lcom/google/zxing/m;

    const/4 v3, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/google/zxing/o;

    const/4 v7, 0x0

    new-instance v8, Lcom/google/zxing/o;

    const/4 v9, 0x0

    aget v9, v5, v9

    const/4 v10, 0x1

    aget v10, v5, v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    int-to-float v10, p1

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Lcom/google/zxing/o;

    int-to-float v4, v4

    int-to-float v9, p1

    invoke-direct {v8, v4, v9}, Lcom/google/zxing/o;-><init>(FF)V

    aput-object v8, v6, v7

    sget-object v4, Lcom/google/zxing/a;->q:Lcom/google/zxing/a;

    invoke-direct {v0, v2, v3, v6, v4}, Lcom/google/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;)V

    if-eqz v1, :cond_78

    invoke-virtual {v0, v1}, Lcom/google/zxing/m;->a(Ljava/util/Map;)V

    goto/16 :goto_78

    :cond_fd
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_194

    const-string v0, ""

    move-object v1, v0

    :goto_108
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit8 v3, v0, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    rem-int/lit8 v0, v0, 0x64

    const/16 v6, 0xa

    if-ge v0, v6, :cond_17c

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_148
    if-nez v1, :cond_181

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_cd

    :sswitch_14d
    const-string v0, "\u00ac\u00a3"

    move-object v1, v0

    goto :goto_108

    :sswitch_151
    const-string v0, "$"

    move-object v1, v0

    goto :goto_108

    :sswitch_155
    const-string v0, "90000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_160

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_148

    :cond_160
    const-string v0, "99991"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    const-string v0, "0.00"

    move-object v1, v0

    goto :goto_148

    :cond_16c
    const-string v0, "99990"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_178

    const-string v0, "Used"

    move-object v1, v0

    goto :goto_148

    :cond_178
    const-string v0, ""

    move-object v1, v0

    goto :goto_108

    :cond_17c
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12c

    :cond_181
    new-instance v0, Ljava/util/EnumMap;

    const-class v3, Lcom/google/zxing/n;

    invoke-direct {v0, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v3, Lcom/google/zxing/n;->f:Lcom/google/zxing/n;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18d
    .catch Lcom/google/zxing/l; {:try_start_7f .. :try_end_18d} :catch_71

    move-object v1, v0

    goto/16 :goto_cd

    :cond_190
    move v2, v3

    goto/16 :goto_55

    nop

    :sswitch_data_194
    .sparse-switch
        0x30 -> :sswitch_14d
        0x35 -> :sswitch_151
        0x39 -> :sswitch_155
    .end sparse-switch
.end method
