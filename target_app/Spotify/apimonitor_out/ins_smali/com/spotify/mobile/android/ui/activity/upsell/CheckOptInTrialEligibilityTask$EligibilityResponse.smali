.class public Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$EligibilityResponse;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private final mTrialDuration:I
.field private final mViable:Z
.method public constructor <init>(ZI)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$EligibilityResponse;->mViable:Z
iput p2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$EligibilityResponse;->mTrialDuration:I
return-void
.end method
.method public getTrialDurationDays()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$EligibilityResponse;->mTrialDuration:I
return v0
.end method
.method public isViable()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$EligibilityResponse;->mViable:Z
return v0
.end method