.class public final Lcom/lenovo/lps/reaper/sdk/b/s;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Z

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/lps/reaper/sdk/b/s;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 7

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    sput-boolean v0, Lcom/lenovo/lps/reaper/sdk/b/s;->b:Z

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2a

    :cond_27
    sput v3, Lcom/lenovo/lps/reaper/sdk/b/s;->a:I

    :cond_29
    :goto_29
    return-void

    :cond_2a
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    sput v2, Lcom/lenovo/lps/reaper/sdk/b/s;->c:I

    if-ne v1, v3, :cond_39

    sput v4, Lcom/lenovo/lps/reaper/sdk/b/s;->a:I

    goto :goto_29

    :cond_39
    if-nez v1, :cond_54

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_29

    sget v0, Lcom/lenovo/lps/reaper/sdk/b/s;->c:I

    if-eq v0, v3, :cond_51

    sget v0, Lcom/lenovo/lps/reaper/sdk/b/s;->c:I

    if-eq v0, v4, :cond_51

    sget v0, Lcom/lenovo/lps/reaper/sdk/b/s;->c:I

    if-eq v0, v5, :cond_51

    const/4 v0, 0x3

    sput v0, Lcom/lenovo/lps/reaper/sdk/b/s;->a:I

    goto :goto_29

    :cond_51
    sput v5, Lcom/lenovo/lps/reaper/sdk/b/s;->a:I

    goto :goto_29

    :cond_54
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/lps/reaper/sdk/b/s;->a:I

    goto :goto_29
.end method

.method public static a()Z
    .registers 2

    const/4 v0, 0x1

    sget v1, Lcom/lenovo/lps/reaper/sdk/b/s;->a:I

    if-ne v1, v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    return v0
.end method

.method public static b()I
    .registers 1

    sget v0, Lcom/lenovo/lps/reaper/sdk/b/s;->a:I

    return v0
.end method

.method public static c()Z
    .registers 1

    sget-boolean v0, Lcom/lenovo/lps/reaper/sdk/b/s;->b:Z

    return v0
.end method

.method public static d()I
    .registers 1

    sget v0, Lcom/lenovo/lps/reaper/sdk/b/s;->c:I

    return v0
.end method
