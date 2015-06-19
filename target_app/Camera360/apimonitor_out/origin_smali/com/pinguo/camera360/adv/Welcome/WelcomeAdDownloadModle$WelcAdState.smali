.class public final enum Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;
.super Ljava/lang/Enum;
.source "WelcomeAdDownloadModle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WelcAdState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$pinguo$camera360$adv$Welcome$WelcomeAdDownloadModle$WelcAdState:[I

.field public static final enum DOWNLOADING_AD:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

.field public static final enum FAIL_DOWNLOAD:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

.field public static final enum FAIL_JSON:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

.field public static final enum IDEAL:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

.field public static final enum REQUEST_JSON:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

.field public static final enum SUCCESS:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;


# direct methods
.method static synthetic $SWITCH_TABLE$com$pinguo$camera360$adv$Welcome$WelcomeAdDownloadModle$WelcAdState()[I
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->$SWITCH_TABLE$com$pinguo$camera360$adv$Welcome$WelcomeAdDownloadModle$WelcAdState:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->values()[Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->DOWNLOADING_AD:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    invoke-virtual {v1}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_4f

    :goto_15
    :try_start_15
    sget-object v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->FAIL_DOWNLOAD:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    invoke-virtual {v1}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_4d

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->FAIL_JSON:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    invoke-virtual {v1}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_4b

    :goto_27
    :try_start_27
    sget-object v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->IDEAL:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    invoke-virtual {v1}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_49

    :goto_30
    :try_start_30
    sget-object v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->REQUEST_JSON:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    invoke-virtual {v1}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_47

    :goto_39
    :try_start_39
    sget-object v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->SUCCESS:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    invoke-virtual {v1}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_45

    :goto_42
    sput-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->$SWITCH_TABLE$com$pinguo$camera360$adv$Welcome$WelcomeAdDownloadModle$WelcAdState:[I

    goto :goto_4

    :catch_45
    move-exception v1

    goto :goto_42

    :catch_47
    move-exception v1

    goto :goto_39

    :catch_49
    move-exception v1

    goto :goto_30

    :catch_4b
    move-exception v1

    goto :goto_27

    :catch_4d
    move-exception v1

    goto :goto_1e

    :catch_4f
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    const-string/jumbo v1, "IDEAL"

    invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->IDEAL:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    new-instance v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    const-string/jumbo v1, "REQUEST_JSON"

    invoke-direct {v0, v1, v4}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->REQUEST_JSON:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    new-instance v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    const-string/jumbo v1, "DOWNLOADING_AD"

    invoke-direct {v0, v1, v5}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->DOWNLOADING_AD:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    new-instance v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v6}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->SUCCESS:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    new-instance v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    const-string/jumbo v1, "FAIL_JSON"

    invoke-direct {v0, v1, v7}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->FAIL_JSON:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    new-instance v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    const-string/jumbo v1, "FAIL_DOWNLOAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->FAIL_DOWNLOAD:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    sget-object v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->IDEAL:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->REQUEST_JSON:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->DOWNLOADING_AD:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->SUCCESS:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->FAIL_JSON:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->FAIL_DOWNLOAD:Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->ENUM$VALUES:[Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;
    .registers 2

    const-class v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    return-object v0
.end method

.method public static values()[Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->ENUM$VALUES:[Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    array-length v1, v0

    new-array v2, v1, [Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public isIdeal()Z
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->$SWITCH_TABLE$com$pinguo$camera360$adv$Welcome$WelcomeAdDownloadModle$WelcAdState()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdDownloadModle$WelcAdState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    :pswitch_d
    const/4 v0, 0x0

    :goto_e
    return v0

    :pswitch_f
    const/4 v0, 0x1

    goto :goto_e

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method
