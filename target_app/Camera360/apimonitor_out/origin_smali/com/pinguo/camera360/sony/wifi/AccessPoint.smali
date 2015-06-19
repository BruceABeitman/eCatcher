.class public Lcom/pinguo/camera360/sony/wifi/AccessPoint;
.super Ljava/lang/Object;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$pinguo$camera360$sony$wifi$AccessPoint$PskType:[I = null

.field private static final KEY_CONFIG:Ljava/lang/String; = "key_config"

.field private static final KEY_DETAILEDSTATE:Ljava/lang/String; = "key_detailedstate"

.field private static final KEY_SCANRESULT:Ljava/lang/String; = "key_scanresult"

.field private static final KEY_WIFIINFO:Ljava/lang/String; = "key_wifiinfo"

.field public static final SECURITY_EAP:I = 0x3

.field public static final SECURITY_NONE:I = 0x0

.field public static final SECURITY_PSK:I = 0x2

.field public static final SECURITY_WEP:I = 0x1


# instance fields
.field public bssid:Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field public networkId:I

.field pskType:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

.field public security:I

.field public ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$pinguo$camera360$sony$wifi$AccessPoint$PskType()[I
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->$SWITCH_TABLE$com$pinguo$camera360$sony$wifi$AccessPoint$PskType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->values()[Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    invoke-virtual {v1}, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->WPA:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    invoke-virtual {v1}, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->WPA2:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    invoke-virtual {v1}, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    invoke-virtual {v1}, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->$SWITCH_TABLE$com$pinguo$camera360$sony$wifi$AccessPoint$PskType:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->wpsAvailable:Z

    sget-object v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->pskType:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->wpsAvailable:Z

    sget-object v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->pskType:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->wpsAvailable:Z

    sget-object v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->pskType:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    const-string/jumbo v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1e
    const-string/jumbo v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    :cond_32
    const-string/jumbo v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    const-string/jumbo v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string/jumbo v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    :cond_53
    iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;
    .registers 5

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    sget-object v2, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    :goto_18
    return-object v2

    :cond_19
    if-eqz v1, :cond_1e

    sget-object v2, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->WPA2:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    goto :goto_18

    :cond_1e
    if-eqz v0, :cond_23

    sget-object v2, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->WPA:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    goto :goto_18

    :cond_23
    sget-object v2, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    goto :goto_18
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .registers 3

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x2

    goto :goto_c

    :cond_1a
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x3

    goto :goto_c

    :cond_27
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .registers 6

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move v0, v2

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1e
    move v0, v3

    goto :goto_d

    :cond_20
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_d
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .registers 3

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_1f

    const-string/jumbo v0, ""

    :goto_7
    iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-static {p1}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->security:I

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->networkId:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mRssi:I

    iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-void

    :cond_1f
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .registers 4

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-static {p1}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->security:I

    iget v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_36

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    :goto_1f
    iput-boolean v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->wpsAvailable:Z

    iget v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    invoke-static {p1}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->pskType:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    :cond_2c
    const/4 v0, -0x1

    iput v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->networkId:I

    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mRssi:I

    iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    return-void

    :cond_36
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1e

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1e

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1e

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1e
    return-object p0
.end method


# virtual methods
.method protected generateOpenNetworkConfig()V
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_f

    :goto_e
    return-void

    :cond_f
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_e
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_8
.end method

.method public getRssi()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mRssi:I

    return v0
.end method

.method public getSecurityString(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->security:I

    packed-switch v0, :pswitch_data_90

    if-eqz p2, :cond_86

    const-string/jumbo v0, ""

    :goto_a
    return-object v0

    :pswitch_b
    if-eqz p2, :cond_15

    const v0, 0x7f0800f7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_15
    const v0, 0x7f0800f8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :pswitch_1d
    invoke-static {}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->$SWITCH_TABLE$com$pinguo$camera360$sony$wifi$AccessPoint$PskType()[I

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->pskType:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    invoke-virtual {v1}, Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_9a

    if-eqz p2, :cond_6c

    const v0, 0x7f0800ff

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :pswitch_36
    if-eqz p2, :cond_40

    const v0, 0x7f0800f9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_40
    const v0, 0x7f0800fa

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :pswitch_48
    if-eqz p2, :cond_52

    const v0, 0x7f0800fb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_52
    const v0, 0x7f0800fc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :pswitch_5a
    if-eqz p2, :cond_64

    const v0, 0x7f0800fd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_64
    const v0, 0x7f0800fe

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_6c
    const v0, 0x7f080100

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :pswitch_74
    if-eqz p2, :cond_7e

    const v0, 0x7f080101

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_7e
    const v0, 0x7f080102

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_86
    const v0, 0x7f080103

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_74
        :pswitch_1d
        :pswitch_b
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0x2
        :pswitch_36
        :pswitch_48
        :pswitch_5a
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "key_config"

    iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v0, "key_scanresult"

    iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_28

    const-string/jumbo v0, "key_detailedstate"

    iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method public setConfig(Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method public update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    iget v1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_23

    iget v1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_21

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mRssi:I

    iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iput-object p2, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    :cond_20
    :goto_20
    return-void

    :cond_21
    const/4 v0, 0x0

    goto :goto_16

    :cond_23
    iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_20

    const/4 v0, 0x1

    iput-object v3, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iput-object v3, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_20
.end method

.method public update(Landroid/net/wifi/ScanResult;)Z
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget v1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_34

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_27

    invoke-virtual {p0}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->getLevel()I

    move-result v0

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->mRssi:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->getLevel()I

    :cond_27
    iget v1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    invoke-static {p1}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->pskType:Lcom/pinguo/camera360/sony/wifi/AccessPoint$PskType;

    :cond_32
    const/4 v1, 0x1

    :goto_33
    return v1

    :cond_34
    const/4 v1, 0x0

    goto :goto_33
.end method
