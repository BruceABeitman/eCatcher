.class public final Lcom/google/android/gms/internal/le;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/plus/model/people/Person;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/le;->kX()Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    return-object v0
.end method

.method public getAboutMe()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAgeRange()Lcom/google/android/gms/plus/model/people/Person$AgeRange;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBraggingRights()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCircledByCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCover()Lcom/google/android/gms/plus/model/people/Person$Cover;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentLocation()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    const-string v0, "displayName"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/le;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGender()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    const-string v0, "personId"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/le;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Lcom/google/android/gms/plus/model/people/Person$Image;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/kt$c;

    const-string v1, "image"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/le;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/kt$c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Lcom/google/android/gms/plus/model/people/Person$Name;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getObjectType()I
    .registers 2

    const-string v0, "objectType"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/le;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/kt$e;->bA(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic getOrganizations()Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/le;->kU()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getPlacesLived()Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/le;->kV()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPlusOneCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getRelationshipStatus()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getTagline()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/le;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getUrls()Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/le;->kW()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hasAboutMe()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasAgeRange()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasBirthday()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasBraggingRights()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasCircledByCount()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasCover()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasCurrentLocation()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasDisplayName()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hasGender()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasId()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hasImage()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hasIsPlusUser()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasLanguage()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasName()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasNickname()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasObjectType()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hasOrganizations()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasPlacesLived()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasPlusOneCount()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasRelationshipStatus()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasTagline()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasUrl()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hasUrls()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasVerified()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isPlusUser()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isVerified()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public kU()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$Organizations;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public kV()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$PlacesLived;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public kW()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$Urls;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public kX()Lcom/google/android/gms/plus/model/people/Person;
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/kt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/le;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/le;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/le;->getImage()Lcom/google/android/gms/plus/model/people/Person$Image;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/kt$c;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/le;->getObjectType()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/le;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/kt;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/kt$c;ILjava/lang/String;)V

    return-object v0
.end method
