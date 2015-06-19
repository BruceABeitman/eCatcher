.class public final Lcom/google/android/gms/common/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/a;


# instance fields
.field private final b:Landroid/app/PendingIntent;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/common/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    sput-object v0, Lcom/google/android/gms/common/a;->a:Lcom/google/android/gms/common/a;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/a;->c:I

    iput-object p2, p0, Lcom/google/android/gms/common/a;->b:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .registers 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/a;->a()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/a;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_7
.end method

.method public final a()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/a;->c:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/common/a;->b:Landroid/app/PendingIntent;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/he;

    move-result-object v1

    const-string v2, "statusCode"

    iget v0, p0, Lcom/google/android/gms/common/a;->c:I

    packed-switch v0, :pswitch_data_5a

    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "unknown status code "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/google/android/gms/common/a;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;

    move-result-object v0

    const-string v1, "resolution"

    iget-object v2, p0, Lcom/google/android/gms/common/a;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/he;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2d
    const-string v0, "SUCCESS"

    goto :goto_1c

    :pswitch_30
    const-string v0, "SERVICE_MISSING"

    goto :goto_1c

    :pswitch_33
    const-string v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_1c

    :pswitch_36
    const-string v0, "SERVICE_DISABLED"

    goto :goto_1c

    :pswitch_39
    const-string v0, "SIGN_IN_REQUIRED"

    goto :goto_1c

    :pswitch_3c
    const-string v0, "INVALID_ACCOUNT"

    goto :goto_1c

    :pswitch_3f
    const-string v0, "RESOLUTION_REQUIRED"

    goto :goto_1c

    :pswitch_42
    const-string v0, "NETWORK_ERROR"

    goto :goto_1c

    :pswitch_45
    const-string v0, "INTERNAL_ERROR"

    goto :goto_1c

    :pswitch_48
    const-string v0, "SERVICE_INVALID"

    goto :goto_1c

    :pswitch_4b
    const-string v0, "DEVELOPER_ERROR"

    goto :goto_1c

    :pswitch_4e
    const-string v0, "LICENSE_CHECK_FAILED"

    goto :goto_1c

    :pswitch_51
    const-string v0, "CANCELED"

    goto :goto_1c

    :pswitch_54
    const-string v0, "TIMEOUT"

    goto :goto_1c

    :pswitch_57
    const-string v0, "INTERRUPTED"

    goto :goto_1c

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_b
        :pswitch_51
        :pswitch_54
        :pswitch_57
    .end packed-switch
.end method
