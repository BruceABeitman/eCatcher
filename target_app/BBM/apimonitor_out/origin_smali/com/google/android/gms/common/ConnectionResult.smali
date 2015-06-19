.class public final Lcom/google/android/gms/common/ConnectionResult;
.super Ljava/lang/Object;


# static fields
.field public static final CANCELED:I = 0xd

.field public static final DATE_INVALID:I = 0xc

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final DRIVE_EXTERNAL_STORAGE_REQUIRED:I = 0x5dc

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xf

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final LICENSE_CHECK_FAILED:I = 0xb

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final SERVICE_DISABLED:I = 0x3

.field public static final SERVICE_INVALID:I = 0x9

.field public static final SERVICE_MISSING:I = 0x1

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final TIMEOUT:I = 0xe

.field public static final yI:Lcom/google/android/gms/common/ConnectionResult;


# instance fields
.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final yJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->yI:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/ConnectionResult;->yJ:I

    iput-object p2, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private dn()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->yJ:I

    packed-switch v0, :pswitch_data_44

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown status code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->yJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :pswitch_17
    const-string v0, "SUCCESS"

    goto :goto_16

    :pswitch_1a
    const-string v0, "SERVICE_MISSING"

    goto :goto_16

    :pswitch_1d
    const-string v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_16

    :pswitch_20
    const-string v0, "SERVICE_DISABLED"

    goto :goto_16

    :pswitch_23
    const-string v0, "SIGN_IN_REQUIRED"

    goto :goto_16

    :pswitch_26
    const-string v0, "INVALID_ACCOUNT"

    goto :goto_16

    :pswitch_29
    const-string v0, "RESOLUTION_REQUIRED"

    goto :goto_16

    :pswitch_2c
    const-string v0, "NETWORK_ERROR"

    goto :goto_16

    :pswitch_2f
    const-string v0, "INTERNAL_ERROR"

    goto :goto_16

    :pswitch_32
    const-string v0, "SERVICE_INVALID"

    goto :goto_16

    :pswitch_35
    const-string v0, "DEVELOPER_ERROR"

    goto :goto_16

    :pswitch_38
    const-string v0, "LICENSE_CHECK_FAILED"

    goto :goto_16

    :pswitch_3b
    const-string v0, "CANCELED"

    goto :goto_16

    :pswitch_3e
    const-string v0, "TIMEOUT"

    goto :goto_16

    :pswitch_41
    const-string v0, "INTERRUPTED"

    goto :goto_16

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_5
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
    .end packed-switch
.end method


# virtual methods
.method public final getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->yJ:I

    return v0
.end method

.method public final getResolution()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final hasResolution()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->yJ:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isSuccess()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->yJ:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final startResolutionForResult(Landroid/app/Activity;I)V
    .registers 10

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p1

    move v2, p2

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_7
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    const-string v1, "statusCode"

    invoke-direct {p0}, Lcom/google/android/gms/common/ConnectionResult;->dn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    const-string v1, "resolution"

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ep$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ep$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method