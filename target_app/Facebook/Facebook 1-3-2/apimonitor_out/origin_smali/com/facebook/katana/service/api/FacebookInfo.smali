.class public Lcom/facebook/katana/service/api/FacebookInfo;
.super Ljava/lang/Object;
.source "FacebookInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/FacebookInfo$Affiliation;
    }
.end annotation


# instance fields
.field private final mAboutMe:Ljava/lang/String;

.field private final mActivities:Ljava/lang/String;

.field private final mAffiliations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/katana/service/api/FacebookInfo$Affiliation;",
            ">;"
        }
    .end annotation
.end field

.field private final mBirthday:Ljava/lang/String;

.field private final mBlurb:Ljava/lang/String;

.field private final mBooks:Ljava/lang/String;

.field private mContactInfo:Lcom/facebook/katana/service/api/FacebookContactInfo;

.field private final mCurrentLocation:Ljava/lang/String;

.field private final mDisplayName:Ljava/lang/String;

.field private final mFirstName:Ljava/lang/String;

.field private final mHometownLocation:Ljava/lang/String;

.field private final mInterests:Ljava/lang/String;

.field private final mLargePic:Ljava/lang/String;

.field private final mLastName:Ljava/lang/String;

.field private final mMessage:Ljava/lang/String;

.field private final mMovies:Ljava/lang/String;

.field private final mMusic:Ljava/lang/String;

.field private final mPic:Ljava/lang/String;

.field private final mPolitical:Ljava/lang/String;

.field private final mProfileUrl:Ljava/lang/String;

.field private final mQuotes:Ljava/lang/String;

.field private final mRelationshipStatus:Ljava/lang/String;

.field private final mReligion:Ljava/lang/String;

.field private final mTime:J

.field private final mTv:Ljava/lang/String;

.field private final mUserId:J


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .registers 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v15, 0x0

    const-wide/16 v38, -0x1

    const/16 v18, 0x0

    const/16 v23, 0x0

    const/16 v17, 0x0

    const/16 v27, 0x0

    const-wide/16 v35, 0x0

    const/16 v24, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v28, 0x0

    const/16 v26, 0x0

    const/16 v37, 0x0

    const/16 v25, 0x0

    const/4 v13, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v34

    :goto_38
    sget-object v40, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_1cc

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookInfo;->mUserId:J

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mFirstName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mLastName:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v27, :cond_5ab

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_5a7

    move-object/from16 v40, v27

    :goto_62
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mPic:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mMessage:Ljava/lang/String;

    move-wide/from16 v0, v35

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookInfo;->mTime:J

    if-eqz v5, :cond_5b3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_5af

    move-object/from16 v40, v5

    :goto_7e
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mAboutMe:Ljava/lang/String;

    if-eqz v12, :cond_5bb

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_5b7

    move-object/from16 v40, v12

    :goto_8e
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mBlurb:Ljava/lang/String;

    if-eqz v6, :cond_5c5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_5bf

    :goto_9c
    if-eqz v6, :cond_5cb

    const/16 v40, 0x1

    move-object v0, v6

    move/from16 v1, v40

    invoke-static {v0, v1}, Lcom/facebook/katana/service/api/FacebookInfo;->trimWhite(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mActivities:Ljava/lang/String;

    :goto_ad
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mAffiliations:Ljava/util/ArrayList;

    if-eqz v11, :cond_5d6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_5d2

    move-object/from16 v40, v11

    :goto_bc
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mBirthday:Ljava/lang/String;

    if-eqz v16, :cond_5de

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_5da

    move-object/from16 v40, v16

    :goto_cc
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mCurrentLocation:Ljava/lang/String;

    if-eqz v20, :cond_5e6

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_5e2

    move-object/from16 v40, v20

    :goto_dc
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mHometownLocation:Ljava/lang/String;

    if-eqz v21, :cond_5f0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_5ea

    :goto_ea
    if-eqz v21, :cond_5f6

    const/16 v40, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v40

    invoke-static {v0, v1}, Lcom/facebook/katana/service/api/FacebookInfo;->trimWhite(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mInterests:Ljava/lang/String;

    :goto_fc
    if-eqz v22, :cond_602

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_5fe

    move-object/from16 v40, v22

    :goto_106
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mLargePic:Ljava/lang/String;

    if-eqz v29, :cond_60a

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_606

    move-object/from16 v40, v29

    :goto_116
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mProfileUrl:Ljava/lang/String;

    if-eqz v31, :cond_612

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_60e

    move-object/from16 v40, v31

    :goto_126
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mRelationshipStatus:Ljava/lang/String;

    if-eqz v32, :cond_61a

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_616

    move-object/from16 v40, v32

    :goto_136
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mReligion:Ljava/lang/String;

    if-eqz v28, :cond_622

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_61e

    move-object/from16 v40, v28

    :goto_146
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mPolitical:Ljava/lang/String;

    if-eqz v26, :cond_62c

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_626

    :goto_154
    if-eqz v26, :cond_632

    const/16 v40, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v40

    invoke-static {v0, v1}, Lcom/facebook/katana/service/api/FacebookInfo;->trimWhite(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mMusic:Ljava/lang/String;

    :goto_166
    if-eqz v37, :cond_640

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_63a

    :goto_16e
    if-eqz v37, :cond_646

    const/16 v40, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-static {v0, v1}, Lcom/facebook/katana/service/api/FacebookInfo;->trimWhite(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mTv:Ljava/lang/String;

    :goto_180
    if-eqz v25, :cond_654

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_64e

    :goto_188
    if-eqz v25, :cond_65a

    const/16 v40, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-static {v0, v1}, Lcom/facebook/katana/service/api/FacebookInfo;->trimWhite(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mMovies:Ljava/lang/String;

    :goto_19a
    if-eqz v13, :cond_668

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_662

    :goto_1a2
    if-eqz v13, :cond_66e

    const/16 v40, 0x1

    move-object v0, v13

    move/from16 v1, v40

    invoke-static {v0, v1}, Lcom/facebook/katana/service/api/FacebookInfo;->trimWhite(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mBooks:Ljava/lang/String;

    :goto_1b3
    if-eqz v30, :cond_679

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_675

    const/16 v40, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v40

    invoke-static {v0, v1}, Lcom/facebook/katana/service/api/FacebookInfo;->trimWhite(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v40

    :goto_1c5
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mQuotes:Ljava/lang/String;

    return-void

    :cond_1cc
    sget-object v40, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_334

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    const-string v40, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1ee

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v17

    :cond_1e8
    :goto_1e8
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v34

    goto/16 :goto_38

    :cond_1ee
    const-string v40, "first_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1ff

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v18

    goto :goto_1e8

    :cond_1ff
    const-string v40, "last_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_210

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v23

    goto :goto_1e8

    :cond_210
    const-string v40, "pic_square"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_229

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v40

    if-nez v40, :cond_1e8

    const/16 v27, 0x0

    goto :goto_1e8

    :cond_229
    const-string v40, "about_me"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_23a

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1e8

    :cond_23a
    const-string v40, "profile_blurb"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_24b

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v12

    goto :goto_1e8

    :cond_24b
    const-string v40, "activities"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_25c

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_1e8

    :cond_25c
    const-string v40, "birthday"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_26e

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1e8

    :cond_26e
    const-string v40, "interests"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_280

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1e8

    :cond_280
    const-string v40, "pic"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_292

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_1e8

    :cond_292
    const-string v40, "profile_url"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2a4

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_1e8

    :cond_2a4
    const-string v40, "relationship_status"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2b6

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1e8

    :cond_2b6
    const-string v40, "religion"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2c8

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_1e8

    :cond_2c8
    const-string v40, "political"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2da

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_1e8

    :cond_2da
    const-string v40, "music"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2ec

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_1e8

    :cond_2ec
    const-string v40, "tv"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2fe

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_1e8

    :cond_2fe
    const-string v40, "movies"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_310

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_1e8

    :cond_310
    const-string v40, "books"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_322

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1e8

    :cond_322
    const-string v40, "quotes"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1e8

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_1e8

    :cond_334
    sget-object v40, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_352

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    const-string v40, "uid"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1e8

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v38

    goto/16 :goto_1e8

    :cond_352
    sget-object v40, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_50b

    if-eqz v15, :cond_1e8

    const-string v40, "status"

    move-object v0, v15

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_3ad

    :goto_367
    sget-object v40, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_1e8

    sget-object v40, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_390

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    const-string v40, "message"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_38b

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v24

    :cond_38b
    :goto_38b
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v34

    goto :goto_367

    :cond_390
    sget-object v40, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_38b

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    const-string v40, "time"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_38b

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v35

    goto :goto_38b

    :cond_3ad
    const-string v40, "affiliations"

    move-object v0, v15

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_425

    :cond_3b8
    :goto_3b8
    sget-object v40, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_1e8

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3c3
    sget-object v40, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_3e2

    if-eqz v9, :cond_3b8

    if-eqz v7, :cond_3b8

    new-instance v40, Lcom/facebook/katana/service/api/FacebookInfo$Affiliation;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/FacebookInfo$Affiliation;-><init>(Lcom/facebook/katana/service/api/FacebookInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b8

    :cond_3e2
    sget-object v40, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_3fe

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    const-string v40, "type"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_403

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v9

    :cond_3fe
    :goto_3fe
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v34

    goto :goto_3c3

    :cond_403
    const-string v40, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_414

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v7

    goto :goto_3fe

    :cond_414
    const-string v40, "status"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_3fe

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v8

    goto :goto_3fe

    :cond_425
    const-string v40, "current_location"

    move-object v0, v15

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_498

    const/4 v14, 0x0

    const/16 v33, 0x0

    :goto_433
    sget-object v40, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_45c

    if-eqz v14, :cond_492

    if-eqz v33, :cond_48e

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v41, ", "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1e8

    :cond_45c
    sget-object v40, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_478

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    const-string v40, "city"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_47d

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v14

    :cond_478
    :goto_478
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v34

    goto :goto_433

    :cond_47d
    const-string v40, "state"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_478

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v33

    goto :goto_478

    :cond_48e
    move-object/from16 v16, v14

    goto/16 :goto_1e8

    :cond_492
    if-eqz v33, :cond_1e8

    move-object/from16 v16, v33

    goto/16 :goto_1e8

    :cond_498
    const-string v40, "hometown_location"

    move-object v0, v15

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1e8

    const/4 v14, 0x0

    const/16 v33, 0x0

    :goto_4a6
    sget-object v40, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_4cf

    if-eqz v14, :cond_505

    if-eqz v33, :cond_501

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v41, ", "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_1e8

    :cond_4cf
    sget-object v40, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_4eb

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    const-string v40, "city"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_4f0

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v14

    :cond_4eb
    :goto_4eb
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v34

    goto :goto_4a6

    :cond_4f0
    const-string v40, "state"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_4eb

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v33

    goto :goto_4eb

    :cond_501
    move-object/from16 v20, v14

    goto/16 :goto_1e8

    :cond_505
    if-eqz v33, :cond_1e8

    move-object/from16 v20, v33

    goto/16 :goto_1e8

    :cond_50b
    sget-object v40, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_599

    if-eqz v15, :cond_1e8

    const-string v40, "affiliations"

    move-object v0, v15

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1e8

    :goto_520
    sget-object v40, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_1e8

    sget-object v40, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_551

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_533
    sget-object v40, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_556

    if-eqz v9, :cond_551

    if-eqz v7, :cond_551

    new-instance v40, Lcom/facebook/katana/service/api/FacebookInfo$Affiliation;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/FacebookInfo$Affiliation;-><init>(Lcom/facebook/katana/service/api/FacebookInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_551
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v34

    goto :goto_520

    :cond_556
    sget-object v40, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_572

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    const-string v40, "type"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_577

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v9

    :cond_572
    :goto_572
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v34

    goto :goto_533

    :cond_577
    const-string v40, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_588

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v7

    goto :goto_572

    :cond_588
    const-string v40, "status"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_572

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v8

    goto :goto_572

    :cond_599
    sget-object v40, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_1e8

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1e8

    :cond_5a7
    const/16 v40, 0x0

    goto/16 :goto_62

    :cond_5ab
    const/16 v40, 0x0

    goto/16 :goto_62

    :cond_5af
    const/16 v40, 0x0

    goto/16 :goto_7e

    :cond_5b3
    const/16 v40, 0x0

    goto/16 :goto_7e

    :cond_5b7
    const/16 v40, 0x0

    goto/16 :goto_8e

    :cond_5bb
    const/16 v40, 0x0

    goto/16 :goto_8e

    :cond_5bf
    const/16 v40, 0x0

    move-object/from16 v6, v40

    goto/16 :goto_9c

    :cond_5c5
    const/16 v40, 0x0

    move-object/from16 v6, v40

    goto/16 :goto_9c

    :cond_5cb
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mActivities:Ljava/lang/String;

    goto/16 :goto_ad

    :cond_5d2
    const/16 v40, 0x0

    goto/16 :goto_bc

    :cond_5d6
    const/16 v40, 0x0

    goto/16 :goto_bc

    :cond_5da
    const/16 v40, 0x0

    goto/16 :goto_cc

    :cond_5de
    const/16 v40, 0x0

    goto/16 :goto_cc

    :cond_5e2
    const/16 v40, 0x0

    goto/16 :goto_dc

    :cond_5e6
    const/16 v40, 0x0

    goto/16 :goto_dc

    :cond_5ea
    const/16 v40, 0x0

    move-object/from16 v21, v40

    goto/16 :goto_ea

    :cond_5f0
    const/16 v40, 0x0

    move-object/from16 v21, v40

    goto/16 :goto_ea

    :cond_5f6
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mInterests:Ljava/lang/String;

    goto/16 :goto_fc

    :cond_5fe
    const/16 v40, 0x0

    goto/16 :goto_106

    :cond_602
    const/16 v40, 0x0

    goto/16 :goto_106

    :cond_606
    const/16 v40, 0x0

    goto/16 :goto_116

    :cond_60a
    const/16 v40, 0x0

    goto/16 :goto_116

    :cond_60e
    const/16 v40, 0x0

    goto/16 :goto_126

    :cond_612
    const/16 v40, 0x0

    goto/16 :goto_126

    :cond_616
    const/16 v40, 0x0

    goto/16 :goto_136

    :cond_61a
    const/16 v40, 0x0

    goto/16 :goto_136

    :cond_61e
    const/16 v40, 0x0

    goto/16 :goto_146

    :cond_622
    const/16 v40, 0x0

    goto/16 :goto_146

    :cond_626
    const/16 v40, 0x0

    move-object/from16 v26, v40

    goto/16 :goto_154

    :cond_62c
    const/16 v40, 0x0

    move-object/from16 v26, v40

    goto/16 :goto_154

    :cond_632
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mMusic:Ljava/lang/String;

    goto/16 :goto_166

    :cond_63a
    const/16 v40, 0x0

    move-object/from16 v37, v40

    goto/16 :goto_16e

    :cond_640
    const/16 v40, 0x0

    move-object/from16 v37, v40

    goto/16 :goto_16e

    :cond_646
    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mTv:Ljava/lang/String;

    goto/16 :goto_180

    :cond_64e
    const/16 v40, 0x0

    move-object/from16 v25, v40

    goto/16 :goto_188

    :cond_654
    const/16 v40, 0x0

    move-object/from16 v25, v40

    goto/16 :goto_188

    :cond_65a
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mMovies:Ljava/lang/String;

    goto/16 :goto_19a

    :cond_662
    const/16 v40, 0x0

    move-object/from16 v13, v40

    goto/16 :goto_1a2

    :cond_668
    const/16 v40, 0x0

    move-object/from16 v13, v40

    goto/16 :goto_1a2

    :cond_66e
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookInfo;->mBooks:Ljava/lang/String;

    goto/16 :goto_1b3

    :cond_675
    const/16 v40, 0x0

    goto/16 :goto_1c5

    :cond_679
    const/16 v40, 0x0

    goto/16 :goto_1c5
.end method

.method protected static trimWhite(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    const/16 v7, 0x2c

    const/16 v6, 0x20

    const/16 v5, 0xa

    if-eqz p1, :cond_10

    const-string v3, "\n"

    const-string v4, ", "

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_10
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_2c

    :goto_1e
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    :goto_25
    if-gez v1, :cond_45

    :cond_27
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2c
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_42

    if-eq v0, v7, :cond_42

    if-eq v0, v5, :cond_42

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_1e

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_4f

    if-eq v0, v7, :cond_4f

    if-ne v0, v5, :cond_27

    :cond_4f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    goto :goto_25
.end method


# virtual methods
.method public getAboutMe()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mAboutMe:Ljava/lang/String;

    return-object v0
.end method

.method public getActivities()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mActivities:Ljava/lang/String;

    return-object v0
.end method

.method public getAffiliations()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/katana/service/api/FacebookInfo$Affiliation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mAffiliations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mBirthday:Ljava/lang/String;

    return-object v0
.end method

.method public getBlurb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mBlurb:Ljava/lang/String;

    return-object v0
.end method

.method public getBooks()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mBooks:Ljava/lang/String;

    return-object v0
.end method

.method public getContactInfo()Lcom/facebook/katana/service/api/FacebookContactInfo;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mContactInfo:Lcom/facebook/katana/service/api/FacebookContactInfo;

    return-object v0
.end method

.method public getCurrentLocation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mCurrentLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getHometownLocation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mHometownLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getInterests()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mInterests:Ljava/lang/String;

    return-object v0
.end method

.method public getLargePic()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mLargePic:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMovies()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mMovies:Ljava/lang/String;

    return-object v0
.end method

.method public getMusic()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mMusic:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mPic:Ljava/lang/String;

    return-object v0
.end method

.method public getPoliticalViews()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mPolitical:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mProfileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getQuotes()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mQuotes:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationshipStatus()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mRelationshipStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getReligion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mReligion:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mTime:J

    return-wide v0
.end method

.method public getTv()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mTv:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mUserId:J

    return-wide v0
.end method

.method public setContactInfo(Lcom/facebook/katana/service/api/FacebookContactInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookInfo;->mContactInfo:Lcom/facebook/katana/service/api/FacebookContactInfo;

    return-void
.end method
