.class public Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$EligibilityResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private final mTrialDuration:I

.field private final mViable:Z


# direct methods
.method public constructor <init>(ZI)V
    .registers 3
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "viable"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "trial-duration"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$EligibilityResponse;->mViable:Z

    iput p2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$EligibilityResponse;->mTrialDuration:I

    return-void
.end method


# virtual methods
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
