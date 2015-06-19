.class public final Lcom/google/android/gms/internal/jc;
.super Lcom/google/android/gms/common/data/b;

# interfaces
.implements Lcom/google/android/gms/plus/model/people/Person;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public final synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->it()Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    return-object v0
.end method

.method public final getAboutMe()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAgeRange()Lcom/google/android/gms/plus/model/people/Person$AgeRange;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBirthday()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBraggingRights()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCircledByCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getCover()Lcom/google/android/gms/plus/model/people/Person$Cover;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCurrentLocation()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 2

    const-string v0, "displayName"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGender()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    const-string v0, "personId"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImage()Lcom/google/android/gms/plus/model/people/Person$Image;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ir$c;

    const-string v1, "image"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/jc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ir$c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getName()Lcom/google/android/gms/plus/model/people/Person$Name;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNickname()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getObjectType()I
    .registers 2

    const-string v0, "objectType"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ir$e;->aT(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final synthetic getOrganizations()Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->iq()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getPlacesLived()Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->ir()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getPlusOneCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getRelationshipStatus()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getTagline()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getUrls()Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->is()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final hasAboutMe()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasAgeRange()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasBirthday()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasBraggingRights()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasCircledByCount()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasCover()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasCurrentLocation()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasDisplayName()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final hasGender()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasId()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final hasImage()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final hasIsPlusUser()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasLanguage()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasName()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasNickname()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasObjectType()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final hasOrganizations()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasPlacesLived()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasPlusOneCount()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasRelationshipStatus()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasTagline()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasUrl()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final hasUrls()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasVerified()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final iq()Ljava/util/ArrayList;
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

.method public final ir()Ljava/util/ArrayList;
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

.method public final is()Ljava/util/ArrayList;
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

.method public final isPlusUser()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isVerified()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final it()Lcom/google/android/gms/plus/model/people/Person;
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/ir;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->getImage()Lcom/google/android/gms/plus/model/people/Person$Image;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ir$c;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->getObjectType()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ir;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ir$c;ILjava/lang/String;)V

    return-object v0
.end method
