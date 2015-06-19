.class final Lcom/google/android/gms/internal/ls$b;
.super Lcom/google/android/gms/internal/ls$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final FT:I

.field final synthetic akJ:Lcom/google/android/gms/internal/ls;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ls;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ls$b;->akJ:Lcom/google/android/gms/internal/ls;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ls$a;-><init>(Lcom/google/android/gms/internal/ls$1;)V

    iput p2, p0, Lcom/google/android/gms/internal/ls$b;->FT:I

    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/gms/wallet/FullWallet;Landroid/os/Bundle;)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p3, :cond_b

    const-string v0, "com.google.android.gms.wallet.EXTRA_PENDING_INTENT"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_b
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_2b

    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ls$b;->akJ:Lcom/google/android/gms/internal/ls;

    invoke-static {v0}, Lcom/google/android/gms/internal/ls;->b(Lcom/google/android/gms/internal/ls;)Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ls$b;->FT:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_21
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_16 .. :try_end_21} :catch_22

    :goto_21
    return-void

    :catch_22
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v2, "Exception starting pending intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    :cond_2b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v0, -0x1

    const-string v1, "com.google.android.gms.wallet.EXTRA_FULL_WALLET"

    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/ls$b;->akJ:Lcom/google/android/gms/internal/ls;

    invoke-static {v1}, Lcom/google/android/gms/internal/ls;->b(Lcom/google/android/gms/internal/ls;)Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/google/android/gms/internal/ls$b;->FT:I

    const/high16 v4, 0x4000

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_61

    const-string v0, "WalletClientImpl"

    const-string v1, "Null pending result returned for onFullWalletLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_54
    const/16 v0, 0x198

    if-ne p1, v0, :cond_5f

    const/4 v0, 0x0

    :goto_59
    const-string v1, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3c

    :cond_5f
    const/4 v0, 0x1

    goto :goto_59

    :cond_61
    :try_start_61
    invoke-virtual {v1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_64
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_21

    :catch_65
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v2, "Exception setting pending result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public a(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p3, :cond_b

    const-string v0, "com.google.android.gms.wallet.EXTRA_PENDING_INTENT"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_b
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_2b

    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ls$b;->akJ:Lcom/google/android/gms/internal/ls;

    invoke-static {v0}, Lcom/google/android/gms/internal/ls;->b(Lcom/google/android/gms/internal/ls;)Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ls$b;->FT:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_21
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_16 .. :try_end_21} :catch_22

    :goto_21
    return-void

    :catch_22
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v2, "Exception starting pending intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    :cond_2b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v0, -0x1

    const-string v1, "com.google.android.gms.wallet.EXTRA_MASKED_WALLET"

    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/ls$b;->akJ:Lcom/google/android/gms/internal/ls;

    invoke-static {v1}, Lcom/google/android/gms/internal/ls;->b(Lcom/google/android/gms/internal/ls;)Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/google/android/gms/internal/ls$b;->FT:I

    const/high16 v4, 0x4000

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_61

    const-string v0, "WalletClientImpl"

    const-string v1, "Null pending result returned for onMaskedWalletLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_54
    const/16 v0, 0x198

    if-ne p1, v0, :cond_5f

    const/4 v0, 0x0

    :goto_59
    const-string v1, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3c

    :cond_5f
    const/4 v0, 0x1

    goto :goto_59

    :cond_61
    :try_start_61
    invoke-virtual {v1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_64
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_21

    :catch_65
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v2, "Exception setting pending result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public a(IZLandroid/os/Bundle;)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gm.wallet.EXTRA_IS_USER_PREAUTHORIZED"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls$b;->akJ:Lcom/google/android/gms/internal/ls;

    invoke-static {v1}, Lcom/google/android/gms/internal/ls;->b(Lcom/google/android/gms/internal/ls;)Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ls$b;->FT:I

    const/high16 v3, 0x4000

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_22

    const-string v0, "WalletClientImpl"

    const-string v1, "Null pending result returned for onPreAuthorizationDetermined"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void

    :cond_22
    const/4 v1, -0x1

    :try_start_23
    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_26
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_21

    :catch_27
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v2, "Exception setting pending result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public i(ILandroid/os/Bundle;)V
    .registers 7

    const-string v0, "Bundle should not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google.android.gms.wallet.EXTRA_PENDING_INTENT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_2d

    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ls$b;->akJ:Lcom/google/android/gms/internal/ls;

    invoke-static {v0}, Lcom/google/android/gms/internal/ls;->b(Lcom/google/android/gms/internal/ls;)Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ls$b;->FT:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_23
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_18 .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v2, "Exception starting pending intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    :cond_2d
    const-string v0, "WalletClientImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create Wallet Objects confirmation UI will not be shown connection result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    const/16 v2, 0x19d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls$b;->akJ:Lcom/google/android/gms/internal/ls;

    invoke-static {v1}, Lcom/google/android/gms/internal/ls;->b(Lcom/google/android/gms/internal/ls;)Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ls$b;->FT:I

    const/high16 v3, 0x4000

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_69

    const-string v0, "WalletClientImpl"

    const-string v1, "Null pending result returned for onWalletObjectsCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_69
    const/4 v1, 0x1

    :try_start_6a
    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_6d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_23

    :catch_6e
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v2, "Exception setting pending result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method
