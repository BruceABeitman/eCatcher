.class final synthetic Lcom/spotify/mobile/android/ui/d$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/d;
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->values()[Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->aj:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_320

    :goto_14
    :try_start_14
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->G:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_31d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->H:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_31a

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ak:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_317

    :goto_35
    :try_start_35
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->P:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_314

    :goto_40
    :try_start_40
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->d:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_311

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->f:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_30e

    :goto_56
    :try_start_56
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->h:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_30b

    :goto_62
    :try_start_62
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->i:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_308

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->l:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_305

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->k:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_302

    :goto_86
    :try_start_86
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->j:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_2ff

    :goto_92
    :try_start_92
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->m:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_2fc

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ac:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_2f9

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->e:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_2f6

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->af:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_2f3

    :goto_c2
    :try_start_c2
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->g:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_2f0

    :goto_ce
    :try_start_ce
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->y:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_da} :catch_2ed

    :goto_da
    :try_start_da
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->R:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e6} :catch_2ea

    :goto_e6
    :try_start_e6
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->T:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f2} :catch_2e7

    :goto_f2
    :try_start_f2
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->V:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fe} :catch_2e4

    :goto_fe
    :try_start_fe
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->W:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_10a} :catch_2e1

    :goto_10a
    :try_start_10a
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->Y:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_116} :catch_2de

    :goto_116
    :try_start_116
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->U:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_116 .. :try_end_122} :catch_2db

    :goto_122
    :try_start_122
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->X:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_12e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12e} :catch_2d8

    :goto_12e
    :try_start_12e
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->I:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_13a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12e .. :try_end_13a} :catch_2d5

    :goto_13a
    :try_start_13a
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->K:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_146
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13a .. :try_end_146} :catch_2d2

    :goto_146
    :try_start_146
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->J:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_152
    .catch Ljava/lang/NoSuchFieldError; {:try_start_146 .. :try_end_152} :catch_2cf

    :goto_152
    :try_start_152
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->N:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_15e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_152 .. :try_end_15e} :catch_2cc

    :goto_15e
    :try_start_15e
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->n:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_16a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15e .. :try_end_16a} :catch_2c9

    :goto_16a
    :try_start_16a
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->o:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_176
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16a .. :try_end_176} :catch_2c6

    :goto_176
    :try_start_176
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->q:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_182
    .catch Ljava/lang/NoSuchFieldError; {:try_start_176 .. :try_end_182} :catch_2c3

    :goto_182
    :try_start_182
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->p:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_18e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_182 .. :try_end_18e} :catch_2c0

    :goto_18e
    :try_start_18e
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->aa:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_19a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18e .. :try_end_19a} :catch_2bd

    :goto_19a
    :try_start_19a
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->D:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19a .. :try_end_1a6} :catch_2ba

    :goto_1a6
    :try_start_1a6
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->M:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_1b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a6 .. :try_end_1b2} :catch_2b7

    :goto_1b2
    :try_start_1b2
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->E:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_1be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b2 .. :try_end_1be} :catch_2b4

    :goto_1be
    :try_start_1be
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ah:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_1ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1be .. :try_end_1ca} :catch_2b1

    :goto_1ca
    :try_start_1ca
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ae:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_1d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ca .. :try_end_1d6} :catch_2ae

    :goto_1d6
    :try_start_1d6
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ai:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_1e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d6 .. :try_end_1e2} :catch_2ab

    :goto_1e2
    :try_start_1e2
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->a:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_1ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e2 .. :try_end_1ee} :catch_2a8

    :goto_1ee
    :try_start_1ee
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->b:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_1fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ee .. :try_end_1fa} :catch_2a5

    :goto_1fa
    :try_start_1fa
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->z:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_206
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fa .. :try_end_206} :catch_2a2

    :goto_206
    :try_start_206
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ag:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_212
    .catch Ljava/lang/NoSuchFieldError; {:try_start_206 .. :try_end_212} :catch_29f

    :goto_212
    :try_start_212
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->r:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_21e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_212 .. :try_end_21e} :catch_29d

    :goto_21e
    :try_start_21e
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->x:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_22a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21e .. :try_end_22a} :catch_29b

    :goto_22a
    :try_start_22a
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->t:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_236
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22a .. :try_end_236} :catch_299

    :goto_236
    :try_start_236
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->v:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_242
    .catch Ljava/lang/NoSuchFieldError; {:try_start_236 .. :try_end_242} :catch_297

    :goto_242
    :try_start_242
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->w:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_24e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_242 .. :try_end_24e} :catch_295

    :goto_24e
    :try_start_24e
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->s:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_25a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24e .. :try_end_25a} :catch_293

    :goto_25a
    :try_start_25a
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->u:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_266
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25a .. :try_end_266} :catch_291

    :goto_266
    :try_start_266
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->A:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_272
    .catch Ljava/lang/NoSuchFieldError; {:try_start_266 .. :try_end_272} :catch_28f

    :goto_272
    :try_start_272
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->O:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_27e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_272 .. :try_end_27e} :catch_28d

    :goto_27e
    :try_start_27e
    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->B:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_28a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27e .. :try_end_28a} :catch_28b

    :goto_28a
    return-void

    :catch_28b
    move-exception v0

    goto :goto_28a

    :catch_28d
    move-exception v0

    goto :goto_27e

    :catch_28f
    move-exception v0

    goto :goto_272

    :catch_291
    move-exception v0

    goto :goto_266

    :catch_293
    move-exception v0

    goto :goto_25a

    :catch_295
    move-exception v0

    goto :goto_24e

    :catch_297
    move-exception v0

    goto :goto_242

    :catch_299
    move-exception v0

    goto :goto_236

    :catch_29b
    move-exception v0

    goto :goto_22a

    :catch_29d
    move-exception v0

    goto :goto_21e

    :catch_29f
    move-exception v0

    goto/16 :goto_212

    :catch_2a2
    move-exception v0

    goto/16 :goto_206

    :catch_2a5
    move-exception v0

    goto/16 :goto_1fa

    :catch_2a8
    move-exception v0

    goto/16 :goto_1ee

    :catch_2ab
    move-exception v0

    goto/16 :goto_1e2

    :catch_2ae
    move-exception v0

    goto/16 :goto_1d6

    :catch_2b1
    move-exception v0

    goto/16 :goto_1ca

    :catch_2b4
    move-exception v0

    goto/16 :goto_1be

    :catch_2b7
    move-exception v0

    goto/16 :goto_1b2

    :catch_2ba
    move-exception v0

    goto/16 :goto_1a6

    :catch_2bd
    move-exception v0

    goto/16 :goto_19a

    :catch_2c0
    move-exception v0

    goto/16 :goto_18e

    :catch_2c3
    move-exception v0

    goto/16 :goto_182

    :catch_2c6
    move-exception v0

    goto/16 :goto_176

    :catch_2c9
    move-exception v0

    goto/16 :goto_16a

    :catch_2cc
    move-exception v0

    goto/16 :goto_15e

    :catch_2cf
    move-exception v0

    goto/16 :goto_152

    :catch_2d2
    move-exception v0

    goto/16 :goto_146

    :catch_2d5
    move-exception v0

    goto/16 :goto_13a

    :catch_2d8
    move-exception v0

    goto/16 :goto_12e

    :catch_2db
    move-exception v0

    goto/16 :goto_122

    :catch_2de
    move-exception v0

    goto/16 :goto_116

    :catch_2e1
    move-exception v0

    goto/16 :goto_10a

    :catch_2e4
    move-exception v0

    goto/16 :goto_fe

    :catch_2e7
    move-exception v0

    goto/16 :goto_f2

    :catch_2ea
    move-exception v0

    goto/16 :goto_e6

    :catch_2ed
    move-exception v0

    goto/16 :goto_da

    :catch_2f0
    move-exception v0

    goto/16 :goto_ce

    :catch_2f3
    move-exception v0

    goto/16 :goto_c2

    :catch_2f6
    move-exception v0

    goto/16 :goto_b6

    :catch_2f9
    move-exception v0

    goto/16 :goto_aa

    :catch_2fc
    move-exception v0

    goto/16 :goto_9e

    :catch_2ff
    move-exception v0

    goto/16 :goto_92

    :catch_302
    move-exception v0

    goto/16 :goto_86

    :catch_305
    move-exception v0

    goto/16 :goto_7a

    :catch_308
    move-exception v0

    goto/16 :goto_6e

    :catch_30b
    move-exception v0

    goto/16 :goto_62

    :catch_30e
    move-exception v0

    goto/16 :goto_56

    :catch_311
    move-exception v0

    goto/16 :goto_4b

    :catch_314
    move-exception v0

    goto/16 :goto_40

    :catch_317
    move-exception v0

    goto/16 :goto_35

    :catch_31a
    move-exception v0

    goto/16 :goto_2a

    :catch_31d
    move-exception v0

    goto/16 :goto_1f

    :catch_320
    move-exception v0

    goto/16 :goto_14
.end method
