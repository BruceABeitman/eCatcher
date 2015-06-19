.class public Lcom/facebook/katana/service/api/FacebookUserFull;
.super Lcom/facebook/katana/service/api/FacebookUser;
.source "FacebookUserFull.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/FacebookUserFull$Affiliation;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAboutMe:Ljava/lang/String;

.field private mActivities:Ljava/lang/String;

.field private mAffiliations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/katana/service/api/FacebookUserFull$Affiliation;",
            ">;"
        }
    .end annotation
.end field

.field private mBirthday:Ljava/lang/String;

.field private mBlurb:Ljava/lang/String;

.field private mBooks:Ljava/lang/String;

.field private mCellPhone:Ljava/lang/String;

.field private mContactEmail:Ljava/lang/String;

.field private mCurrentLocation:Ljava/lang/String;

.field private mHometownLocation:Ljava/lang/String;

.field private mInterests:Ljava/lang/String;

.field private mLargePic:Ljava/lang/String;

.field private mMovies:Ljava/lang/String;

.field private mMusic:Ljava/lang/String;

.field private mOtherPhone:Ljava/lang/String;

.field private mPolitical:Ljava/lang/String;

.field private mProfileUrl:Ljava/lang/String;

.field private mQuotes:Ljava/lang/String;

.field private mRelationshipStatus:Ljava/lang/String;

.field private mReligion:Ljava/lang/String;

.field private mSignificantOther:Lcom/facebook/katana/service/api/FacebookUser;

.field private mSignificantOtherId:J

.field private mTv:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/katana/service/api/FacebookUserFull;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/facebook/katana/service/api/FacebookUserFull;->$assertionsDisabled:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/service/api/FacebookUser;-><init>()V

    return-void
.end method

.method public static getQueryFields()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v4, "profile_blurb"

    const-string v3, "books"

    const-string v2, "about_me"

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    if-nez v0, :cond_c9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    invoke-static {}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getQueryFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "about_me"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "profile_blurb"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "about_me"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "profile_blurb"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "activities"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "birthday"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "interests"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "pic"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "profile_url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "relationship_status"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "significant_other_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "religion"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "political"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "music"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "tv"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "movies"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "books"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "books"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "quotes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "current_location"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "hometown_location"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "affiliations"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "contact_email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "cell"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    const-string v1, "other_phone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c9
    sget-object v0, Lcom/facebook/katana/service/api/FacebookUserFull;->fields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected static parse_location(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v2, 0x0

    sget-boolean v4, Lcom/facebook/katana/service/api/FacebookUserFull;->$assertionsDisabled:Z

    if-nez v4, :cond_2c

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_2c

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_14
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_28

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "city"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    :cond_28
    :goto_28
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    :cond_2c
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_14

    if-eqz v0, :cond_59

    if-eqz v2, :cond_59

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4b
    return-object v4

    :cond_4c
    const-string v4, "state"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    :cond_59
    if-eqz v0, :cond_5d

    move-object v4, v0

    goto :goto_4b

    :cond_5d
    if-eqz v2, :cond_61

    move-object v4, v2

    goto :goto_4b

    :cond_61
    const/4 v4, 0x0

    goto :goto_4b
.end method

.method protected static trimWhite(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    const/16 v7, 0x2c

    const/16 v6, 0x20

    const/16 v5, 0xa

    if-eqz p1, :cond_2c

    const-string v3, "\n"

    const-string v4, ", "

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_10
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_35

    :goto_1e
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    :goto_25
    if-gez v1, :cond_4e

    :cond_27
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2c
    const-string v3, "[\r|\u000b|\u000c]"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    :cond_35
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_4b

    if-eq v0, v7, :cond_4b

    if-eq v0, v5, :cond_4b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_1e

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_4e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_58

    if-eq v0, v7, :cond_58

    if-ne v0, v5, :cond_27

    :cond_58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    goto :goto_25
.end method


# virtual methods
.method public getAboutMe()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mAboutMe:Ljava/lang/String;

    return-object v0
.end method

.method public getActivities()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mActivities:Ljava/lang/String;

    return-object v0
.end method

.method public getAffiliations()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/katana/service/api/FacebookUserFull$Affiliation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mAffiliations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mBirthday:Ljava/lang/String;

    return-object v0
.end method

.method public getBlurb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mBlurb:Ljava/lang/String;

    return-object v0
.end method

.method public getBooks()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mBooks:Ljava/lang/String;

    return-object v0
.end method

.method public getCellPhone()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mCellPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getContactEmail()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mContactEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLocation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mCurrentLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getHometownLocation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mHometownLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getInterests()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mInterests:Ljava/lang/String;

    return-object v0
.end method

.method public getLargePic()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mLargePic:Ljava/lang/String;

    return-object v0
.end method

.method public getMovies()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mMovies:Ljava/lang/String;

    return-object v0
.end method

.method public getMusic()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mMusic:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherPhone()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mOtherPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getPoliticalViews()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mPolitical:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mProfileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getQuotes()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mQuotes:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationshipStatus()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mRelationshipStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getReligion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mReligion:Ljava/lang/String;

    return-object v0
.end method

.method public getSignificantOther()Lcom/facebook/katana/service/api/FacebookUser;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mSignificantOther:Lcom/facebook/katana/service/api/FacebookUser;

    return-object v0
.end method

.method public getSignificantOtherId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mSignificantOtherId:J

    return-wide v0
.end method

.method public getTv()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mTv:Ljava/lang/String;

    return-object v0
.end method

.method protected parseArrayField(Ljava/lang/String;Lorg/codehaus/jackson/JsonParser;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const-string v5, "affiliations"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    sget-boolean v5, Lcom/facebook/katana/service/api/FacebookUserFull;->$assertionsDisabled:Z

    if-nez v5, :cond_1b

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_1b

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_1b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mAffiliations:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    :goto_26
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_2c

    move v5, v7

    :goto_2b
    return v5

    :cond_2c
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-boolean v5, Lcom/facebook/katana/service/api/FacebookUserFull;->$assertionsDisabled:Z

    if-nez v5, :cond_55

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_55

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_3d
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_51

    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    :cond_51
    :goto_51
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    :cond_55
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_3d

    if-eqz v2, :cond_67

    if-eqz v0, :cond_67

    iget-object v5, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mAffiliations:Ljava/util/ArrayList;

    new-instance v6, Lcom/facebook/katana/service/api/FacebookUserFull$Affiliation;

    invoke-direct {v6, p0, v2, v0, v1}, Lcom/facebook/katana/service/api/FacebookUserFull$Affiliation;-><init>(Lcom/facebook/katana/service/api/FacebookUserFull;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_67
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_26

    :cond_6c
    const-string v5, "name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    :cond_79
    const-string v5, "status"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_51

    :cond_86
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/service/api/FacebookUser;->parseArrayField(Ljava/lang/String;Lorg/codehaus/jackson/JsonParser;)Z

    move-result v5

    if-eqz v5, :cond_8e

    move v5, v7

    goto :goto_2b

    :cond_8e
    const/4 v5, 0x0

    goto :goto_2b
.end method

.method protected parseLongField(Ljava/lang/String;J)Z
    .registers 5

    const-string v0, "significant_other_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-wide p2, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mSignificantOtherId:J

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/service/api/FacebookUser;->parseLongField(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected parseObjectField(Ljava/lang/String;Lorg/codehaus/jackson/JsonParser;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const-string v0, "current_location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p2}, Lcom/facebook/katana/service/api/FacebookUserFull;->parse_location(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mCurrentLocation:Ljava/lang/String;

    :goto_f
    move v0, v1

    :goto_10
    return v0

    :cond_11
    const-string v0, "hometown_location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p2}, Lcom/facebook/katana/service/api/FacebookUserFull;->parse_location(Lorg/codehaus/jackson/JsonParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mHometownLocation:Ljava/lang/String;

    goto :goto_f

    :cond_20
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/service/api/FacebookUser;->parseObjectField(Ljava/lang/String;Lorg/codehaus/jackson/JsonParser;)Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    goto :goto_10

    :cond_28
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected parseStringField(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "books"

    const-string v0, "about_me"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mAboutMe:Ljava/lang/String;

    :cond_14
    :goto_14
    move v0, v1

    :goto_15
    return v0

    :cond_16
    const-string v0, "profile_blurb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mBlurb:Ljava/lang/String;

    goto :goto_14

    :cond_27
    const-string v0, "activities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    invoke-static {p2, v1}, Lcom/facebook/katana/service/api/FacebookUserFull;->trimWhite(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mActivities:Ljava/lang/String;

    goto :goto_14

    :cond_3c
    const-string v0, "birthday"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mBirthday:Ljava/lang/String;

    goto :goto_14

    :cond_4d
    const-string v0, "interests"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    invoke-static {p2, v1}, Lcom/facebook/katana/service/api/FacebookUserFull;->trimWhite(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mInterests:Ljava/lang/String;

    goto :goto_14

    :cond_62
    const-string v0, "pic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mLargePic:Ljava/lang/String;

    goto :goto_14

    :cond_73
    const-string v0, "profile_url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mProfileUrl:Ljava/lang/String;

    goto :goto_14

    :cond_84
    const-string v0, "relationship_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mRelationshipStatus:Ljava/lang/String;

    goto :goto_14

    :cond_95
    const-string v0, "religion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mReligion:Ljava/lang/String;

    goto/16 :goto_14

    :cond_a7
    const-string v0, "political"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mPolitical:Ljava/lang/String;

    goto/16 :goto_14

    :cond_b9
    const-string v0, "music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    invoke-static {p2, v1}, Lcom/facebook/katana/service/api/FacebookUserFull;->trimWhite(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mMusic:Ljava/lang/String;

    goto/16 :goto_14

    :cond_cf
    const-string v0, "tv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    invoke-static {p2, v1}, Lcom/facebook/katana/service/api/FacebookUserFull;->trimWhite(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mTv:Ljava/lang/String;

    goto/16 :goto_14

    :cond_e5
    const-string v0, "movies"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    invoke-static {p2, v1}, Lcom/facebook/katana/service/api/FacebookUserFull;->trimWhite(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mMovies:Ljava/lang/String;

    goto/16 :goto_14

    :cond_fb
    const-string v0, "books"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_111

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    invoke-static {p2, v1}, Lcom/facebook/katana/service/api/FacebookUserFull;->trimWhite(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mBooks:Ljava/lang/String;

    goto/16 :goto_14

    :cond_111
    const-string v0, "books"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_127

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    invoke-static {p2, v1}, Lcom/facebook/katana/service/api/FacebookUserFull;->trimWhite(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mBooks:Ljava/lang/String;

    goto/16 :goto_14

    :cond_127
    const-string v0, "quotes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    invoke-static {p2, v2}, Lcom/facebook/katana/service/api/FacebookUserFull;->trimWhite(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mQuotes:Ljava/lang/String;

    goto/16 :goto_14

    :cond_13d
    const-string v0, "contact_email"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mContactEmail:Ljava/lang/String;

    goto/16 :goto_14

    :cond_14f
    const-string v0, "other_phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mOtherPhone:Ljava/lang/String;

    goto/16 :goto_14

    :cond_161
    const-string v0, "cell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mCellPhone:Ljava/lang/String;

    goto/16 :goto_14

    :cond_173
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/service/api/FacebookUser;->parseStringField(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v2

    goto/16 :goto_15
.end method

.method public setSignificantOther(Lcom/facebook/katana/service/api/FacebookUser;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookUserFull;->mSignificantOther:Lcom/facebook/katana/service/api/FacebookUser;

    return-void
.end method
