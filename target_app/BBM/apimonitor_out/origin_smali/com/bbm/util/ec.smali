.class final synthetic Lcom/bbm/util/ec;
.super Ljava/lang/Object;
.source "UpdatesFragmentUtil.java"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I

.field static final synthetic e:[I

.field static final synthetic f:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/bbm/util/ex;->values()[Lcom/bbm/util/ex;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bbm/util/ec;->f:[I

    :try_start_9
    sget-object v0, Lcom/bbm/util/ec;->f:[I

    sget-object v1, Lcom/bbm/util/ex;->a:Lcom/bbm/util/ex;

    invoke-virtual {v1}, Lcom/bbm/util/ex;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_1b7

    :goto_14
    :try_start_14
    sget-object v0, Lcom/bbm/util/ec;->f:[I

    sget-object v1, Lcom/bbm/util/ex;->b:Lcom/bbm/util/ex;

    invoke-virtual {v1}, Lcom/bbm/util/ex;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1b4

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/bbm/util/ec;->f:[I

    sget-object v1, Lcom/bbm/util/ex;->c:Lcom/bbm/util/ex;

    invoke-virtual {v1}, Lcom/bbm/util/ex;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_1b1

    :goto_2a
    invoke-static {}, Lcom/bbm/util/bh;->values()[Lcom/bbm/util/bh;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bbm/util/ec;->e:[I

    :try_start_33
    sget-object v0, Lcom/bbm/util/ec;->e:[I

    sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    invoke-virtual {v1}, Lcom/bbm/util/bh;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_1ae

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/bbm/util/ec;->e:[I

    sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    invoke-virtual {v1}, Lcom/bbm/util/bh;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_1ab

    :goto_49
    :try_start_49
    sget-object v0, Lcom/bbm/util/ec;->e:[I

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    invoke-virtual {v1}, Lcom/bbm/util/bh;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_1a8

    :goto_54
    invoke-static {}, Lcom/bbm/b/b;->values()[Lcom/bbm/b/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bbm/util/ec;->d:[I

    :try_start_5d
    sget-object v0, Lcom/bbm/util/ec;->d:[I

    sget-object v1, Lcom/bbm/b/b;->b:Lcom/bbm/b/b;

    invoke-virtual {v1}, Lcom/bbm/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_68} :catch_1a5

    :goto_68
    :try_start_68
    sget-object v0, Lcom/bbm/util/ec;->d:[I

    sget-object v1, Lcom/bbm/b/b;->a:Lcom/bbm/b/b;

    invoke-virtual {v1}, Lcom/bbm/b/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_73} :catch_1a2

    :goto_73
    invoke-static {}, Lcom/bbm/g/al;->values()[Lcom/bbm/g/al;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bbm/util/ec;->c:[I

    :try_start_7c
    sget-object v0, Lcom/bbm/util/ec;->c:[I

    sget-object v1, Lcom/bbm/g/al;->h:Lcom/bbm/g/al;

    invoke-virtual {v1}, Lcom/bbm/g/al;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_87} :catch_19f

    :goto_87
    :try_start_87
    sget-object v0, Lcom/bbm/util/ec;->c:[I

    sget-object v1, Lcom/bbm/g/al;->c:Lcom/bbm/g/al;

    invoke-virtual {v1}, Lcom/bbm/g/al;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_92} :catch_19c

    :goto_92
    :try_start_92
    sget-object v0, Lcom/bbm/util/ec;->c:[I

    sget-object v1, Lcom/bbm/g/al;->l:Lcom/bbm/g/al;

    invoke-virtual {v1}, Lcom/bbm/g/al;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9d} :catch_199

    :goto_9d
    :try_start_9d
    sget-object v0, Lcom/bbm/util/ec;->c:[I

    sget-object v1, Lcom/bbm/g/al;->k:Lcom/bbm/g/al;

    invoke-virtual {v1}, Lcom/bbm/g/al;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a8} :catch_196

    :goto_a8
    :try_start_a8
    sget-object v0, Lcom/bbm/util/ec;->c:[I

    sget-object v1, Lcom/bbm/g/al;->e:Lcom/bbm/g/al;

    invoke-virtual {v1}, Lcom/bbm/g/al;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b3} :catch_193

    :goto_b3
    :try_start_b3
    sget-object v0, Lcom/bbm/util/ec;->c:[I

    sget-object v1, Lcom/bbm/g/al;->g:Lcom/bbm/g/al;

    invoke-virtual {v1}, Lcom/bbm/g/al;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_be} :catch_190

    :goto_be
    :try_start_be
    sget-object v0, Lcom/bbm/util/ec;->c:[I

    sget-object v1, Lcom/bbm/g/al;->f:Lcom/bbm/g/al;

    invoke-virtual {v1}, Lcom/bbm/g/al;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_be .. :try_end_c9} :catch_18d

    :goto_c9
    :try_start_c9
    sget-object v0, Lcom/bbm/util/ec;->c:[I

    sget-object v1, Lcom/bbm/g/al;->d:Lcom/bbm/g/al;

    invoke-virtual {v1}, Lcom/bbm/g/al;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_d5} :catch_18a

    :goto_d5
    :try_start_d5
    sget-object v0, Lcom/bbm/util/ec;->c:[I

    sget-object v1, Lcom/bbm/g/al;->i:Lcom/bbm/g/al;

    invoke-virtual {v1}, Lcom/bbm/g/al;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d5 .. :try_end_e1} :catch_187

    :goto_e1
    :try_start_e1
    sget-object v0, Lcom/bbm/util/ec;->c:[I

    sget-object v1, Lcom/bbm/g/al;->b:Lcom/bbm/g/al;

    invoke-virtual {v1}, Lcom/bbm/g/al;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_ed} :catch_184

    :goto_ed
    :try_start_ed
    sget-object v0, Lcom/bbm/util/ec;->c:[I

    sget-object v1, Lcom/bbm/g/al;->a:Lcom/bbm/g/al;

    invoke-virtual {v1}, Lcom/bbm/g/al;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f9} :catch_181

    :goto_f9
    invoke-static {}, Lcom/bbm/d/ga;->values()[Lcom/bbm/d/ga;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bbm/util/ec;->b:[I

    :try_start_102
    sget-object v0, Lcom/bbm/util/ec;->b:[I

    sget-object v1, Lcom/bbm/d/ga;->c:Lcom/bbm/d/ga;

    invoke-virtual {v1}, Lcom/bbm/d/ga;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_102 .. :try_end_10d} :catch_17f

    :goto_10d
    :try_start_10d
    sget-object v0, Lcom/bbm/util/ec;->b:[I

    sget-object v1, Lcom/bbm/d/ga;->e:Lcom/bbm/d/ga;

    invoke-virtual {v1}, Lcom/bbm/d/ga;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_118
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_118} :catch_17d

    :goto_118
    :try_start_118
    sget-object v0, Lcom/bbm/util/ec;->b:[I

    sget-object v1, Lcom/bbm/d/ga;->b:Lcom/bbm/d/ga;

    invoke-virtual {v1}, Lcom/bbm/d/ga;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_123
    .catch Ljava/lang/NoSuchFieldError; {:try_start_118 .. :try_end_123} :catch_17b

    :goto_123
    :try_start_123
    sget-object v0, Lcom/bbm/util/ec;->b:[I

    sget-object v1, Lcom/bbm/d/ga;->d:Lcom/bbm/d/ga;

    invoke-virtual {v1}, Lcom/bbm/d/ga;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_12e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_123 .. :try_end_12e} :catch_179

    :goto_12e
    :try_start_12e
    sget-object v0, Lcom/bbm/util/ec;->b:[I

    sget-object v1, Lcom/bbm/d/ga;->a:Lcom/bbm/d/ga;

    invoke-virtual {v1}, Lcom/bbm/d/ga;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_139
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12e .. :try_end_139} :catch_177

    :goto_139
    invoke-static {}, Lcom/bbm/d/gt;->values()[Lcom/bbm/d/gt;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bbm/util/ec;->a:[I

    :try_start_142
    sget-object v0, Lcom/bbm/util/ec;->a:[I

    sget-object v1, Lcom/bbm/d/gt;->e:Lcom/bbm/d/gt;

    invoke-virtual {v1}, Lcom/bbm/d/gt;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_142 .. :try_end_14d} :catch_175

    :goto_14d
    :try_start_14d
    sget-object v0, Lcom/bbm/util/ec;->a:[I

    sget-object v1, Lcom/bbm/d/gt;->c:Lcom/bbm/d/gt;

    invoke-virtual {v1}, Lcom/bbm/d/gt;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_158
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14d .. :try_end_158} :catch_173

    :goto_158
    :try_start_158
    sget-object v0, Lcom/bbm/util/ec;->a:[I

    sget-object v1, Lcom/bbm/d/gt;->f:Lcom/bbm/d/gt;

    invoke-virtual {v1}, Lcom/bbm/d/gt;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_163
    .catch Ljava/lang/NoSuchFieldError; {:try_start_158 .. :try_end_163} :catch_171

    :goto_163
    :try_start_163
    sget-object v0, Lcom/bbm/util/ec;->a:[I

    sget-object v1, Lcom/bbm/d/gt;->d:Lcom/bbm/d/gt;

    invoke-virtual {v1}, Lcom/bbm/d/gt;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_16e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_163 .. :try_end_16e} :catch_16f

    :goto_16e
    return-void

    :catch_16f
    move-exception v0

    goto :goto_16e

    :catch_171
    move-exception v0

    goto :goto_163

    :catch_173
    move-exception v0

    goto :goto_158

    :catch_175
    move-exception v0

    goto :goto_14d

    :catch_177
    move-exception v0

    goto :goto_139

    :catch_179
    move-exception v0

    goto :goto_12e

    :catch_17b
    move-exception v0

    goto :goto_123

    :catch_17d
    move-exception v0

    goto :goto_118

    :catch_17f
    move-exception v0

    goto :goto_10d

    :catch_181
    move-exception v0

    goto/16 :goto_f9

    :catch_184
    move-exception v0

    goto/16 :goto_ed

    :catch_187
    move-exception v0

    goto/16 :goto_e1

    :catch_18a
    move-exception v0

    goto/16 :goto_d5

    :catch_18d
    move-exception v0

    goto/16 :goto_c9

    :catch_190
    move-exception v0

    goto/16 :goto_be

    :catch_193
    move-exception v0

    goto/16 :goto_b3

    :catch_196
    move-exception v0

    goto/16 :goto_a8

    :catch_199
    move-exception v0

    goto/16 :goto_9d

    :catch_19c
    move-exception v0

    goto/16 :goto_92

    :catch_19f
    move-exception v0

    goto/16 :goto_87

    :catch_1a2
    move-exception v0

    goto/16 :goto_73

    :catch_1a5
    move-exception v0

    goto/16 :goto_68

    :catch_1a8
    move-exception v0

    goto/16 :goto_54

    :catch_1ab
    move-exception v0

    goto/16 :goto_49

    :catch_1ae
    move-exception v0

    goto/16 :goto_3e

    :catch_1b1
    move-exception v0

    goto/16 :goto_2a

    :catch_1b4
    move-exception v0

    goto/16 :goto_1f

    :catch_1b7
    move-exception v0

    goto/16 :goto_14
.end method
