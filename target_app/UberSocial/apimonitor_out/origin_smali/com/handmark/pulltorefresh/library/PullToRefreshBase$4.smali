.class synthetic Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/handmark/pulltorefresh/library/f;->values()[Lcom/handmark/pulltorefresh/library/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->d:[I

    :try_start_9
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->d:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->a:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_eb

    :goto_14
    :try_start_14
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->d:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->b:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_e8

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->d:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/f;->c:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_e5

    :goto_2a
    invoke-static {}, Lcom/handmark/pulltorefresh/library/g;->values()[Lcom/handmark/pulltorefresh/library/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->c:[I

    :try_start_33
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->c:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/g;->c:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_e2

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->c:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/g;->b:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_df

    :goto_49
    :try_start_49
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->c:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/g;->e:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_dc

    :goto_54
    :try_start_54
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->c:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/g;->d:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_da

    :goto_5f
    invoke-static {}, Lcom/handmark/pulltorefresh/library/o;->values()[Lcom/handmark/pulltorefresh/library/o;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->b:[I

    :try_start_68
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->b:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/o;->a:Lcom/handmark/pulltorefresh/library/o;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/o;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_73} :catch_d8

    :goto_73
    :try_start_73
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->b:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/o;->b:Lcom/handmark/pulltorefresh/library/o;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/o;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7e} :catch_d6

    :goto_7e
    :try_start_7e
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->b:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/o;->c:Lcom/handmark/pulltorefresh/library/o;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/o;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_d4

    :goto_89
    :try_start_89
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->b:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/o;->d:Lcom/handmark/pulltorefresh/library/o;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/o;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_d2

    :goto_94
    :try_start_94
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->b:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/o;->e:Lcom/handmark/pulltorefresh/library/o;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/o;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9f} :catch_d0

    :goto_9f
    :try_start_9f
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->b:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/o;->f:Lcom/handmark/pulltorefresh/library/o;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/o;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_aa} :catch_ce

    :goto_aa
    invoke-static {}, Lcom/handmark/pulltorefresh/library/m;->values()[Lcom/handmark/pulltorefresh/library/m;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->a:[I

    :try_start_b3
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->a:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/m;->b:Lcom/handmark/pulltorefresh/library/m;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/m;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_be} :catch_cc

    :goto_be
    :try_start_be
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->a:[I

    sget-object v1, Lcom/handmark/pulltorefresh/library/m;->a:Lcom/handmark/pulltorefresh/library/m;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/m;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_be .. :try_end_c9} :catch_ca

    :goto_c9
    return-void

    :catch_ca
    move-exception v0

    goto :goto_c9

    :catch_cc
    move-exception v0

    goto :goto_be

    :catch_ce
    move-exception v0

    goto :goto_aa

    :catch_d0
    move-exception v0

    goto :goto_9f

    :catch_d2
    move-exception v0

    goto :goto_94

    :catch_d4
    move-exception v0

    goto :goto_89

    :catch_d6
    move-exception v0

    goto :goto_7e

    :catch_d8
    move-exception v0

    goto :goto_73

    :catch_da
    move-exception v0

    goto :goto_5f

    :catch_dc
    move-exception v0

    goto/16 :goto_54

    :catch_df
    move-exception v0

    goto/16 :goto_49

    :catch_e2
    move-exception v0

    goto/16 :goto_3e

    :catch_e5
    move-exception v0

    goto/16 :goto_2a

    :catch_e8
    move-exception v0

    goto/16 :goto_1f

    :catch_eb
    move-exception v0

    goto/16 :goto_14
.end method
