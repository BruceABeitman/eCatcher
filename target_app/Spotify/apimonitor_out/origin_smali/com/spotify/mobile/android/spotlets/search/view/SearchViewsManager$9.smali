.class final synthetic Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->values()[Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->b:[I

    :try_start_9
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->b:[I

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->b:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_f8

    :goto_14
    :try_start_14
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->b:[I

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->c:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_f5

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->b:[I

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->g:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_f2

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->b:[I

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->e:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_ef

    :goto_35
    :try_start_35
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->b:[I

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->d:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_ec

    :goto_40
    :try_start_40
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->b:[I

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->f:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_e9

    :goto_4b
    invoke-static {}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->values()[Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->a:[I

    :try_start_54
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->l:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_e6

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->c:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_e4

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->b:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_e2

    :goto_75
    :try_start_75
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->g:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_e0

    :goto_80
    :try_start_80
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->h:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_de

    :goto_8b
    :try_start_8b
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->d:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_96} :catch_dc

    :goto_96
    :try_start_96
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->e:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a1} :catch_da

    :goto_a1
    :try_start_a1
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->f:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ad} :catch_d8

    :goto_ad
    :try_start_ad
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->i:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b9} :catch_d6

    :goto_b9
    :try_start_b9
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->j:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_c5} :catch_d4

    :goto_c5
    :try_start_c5
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->a:[I

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_d1} :catch_d2

    :goto_d1
    return-void

    :catch_d2
    move-exception v0

    goto :goto_d1

    :catch_d4
    move-exception v0

    goto :goto_c5

    :catch_d6
    move-exception v0

    goto :goto_b9

    :catch_d8
    move-exception v0

    goto :goto_ad

    :catch_da
    move-exception v0

    goto :goto_a1

    :catch_dc
    move-exception v0

    goto :goto_96

    :catch_de
    move-exception v0

    goto :goto_8b

    :catch_e0
    move-exception v0

    goto :goto_80

    :catch_e2
    move-exception v0

    goto :goto_75

    :catch_e4
    move-exception v0

    goto :goto_6a

    :catch_e6
    move-exception v0

    goto/16 :goto_5f

    :catch_e9
    move-exception v0

    goto/16 :goto_4b

    :catch_ec
    move-exception v0

    goto/16 :goto_40

    :catch_ef
    move-exception v0

    goto/16 :goto_35

    :catch_f2
    move-exception v0

    goto/16 :goto_2a

    :catch_f5
    move-exception v0

    goto/16 :goto_1f

    :catch_f8
    move-exception v0

    goto/16 :goto_14
.end method
