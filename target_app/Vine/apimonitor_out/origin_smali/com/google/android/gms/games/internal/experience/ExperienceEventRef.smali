.class public final Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/internal/experience/ExperienceEvent;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "icon_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
