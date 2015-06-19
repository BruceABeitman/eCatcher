.class public Lco/vine/android/api/VineUser;
.super Ljava/lang/Object;
.source "VineUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOLLOW_STATUS_APPROVAL_PENDING:I = 0x1

.field public static final FOLLOW_STATUS_REQUESTED:I = 0x2

.field public static final VERIFIED_EMAIL:I = 0x1

.field public static final VERIFIED_PHONE:I = 0x2


# instance fields
.field public acceptsOutOfNetworkConversations:Z

.field public authoredPostCount:I

.field public avatarUrl:Ljava/lang/String;

.field public blocked:I

.field public blocking:I

.field public description:Ljava/lang/String;

.field public disableAddressBook:Z

.field public edition:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public explicit:I

.field public followStatus:I

.field public followerCount:I

.field public following:I

.field public followingCount:I

.field public friendIndex:J

.field public hiddenEmail:Z

.field public hiddenPhoneNumber:Z

.field public id:J

.field public includePromoted:I

.field public likeCount:I

.field public location:Ljava/lang/String;

.field public loopCount:J

.field public orderId:J

.field public phoneNumber:Ljava/lang/String;

.field public postCount:I

.field public privateAccount:I

.field public profileBackground:I

.field public repostsEnabled:I

.field public sectionId:I

.field public sectionTitle:Ljava/lang/String;

.field public twitterConnected:I

.field public userId:J

.field public username:Ljava/lang/String;

.field public verified:I

.field public verifiedInformation:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lco/vine/android/api/VineUser$1;

    invoke-direct {v0}, Lco/vine/android/api/VineUser$1;-><init>()V

    sput-object v0, Lco/vine/android/api/VineUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lco/vine/android/api/VineUser;->userId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lco/vine/android/api/VineUser;->orderId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->blocked:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->blocking:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->explicit:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->followerCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->followingCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->following:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->likeCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->postCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->verified:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->twitterConnected:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->includePromoted:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->privateAccount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->followStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->repostsEnabled:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineUser;->edition:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_cb

    move v0, v1

    :goto_96
    iput-boolean v0, p0, Lco/vine/android/api/VineUser;->acceptsOutOfNetworkConversations:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->profileBackground:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->authoredPostCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineUser;->verifiedInformation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_cd

    move v0, v1

    :goto_b1
    iput-boolean v0, p0, Lco/vine/android/api/VineUser;->disableAddressBook:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_cf

    move v0, v1

    :goto_ba
    iput-boolean v0, p0, Lco/vine/android/api/VineUser;->hiddenEmail:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_d1

    :goto_c2
    iput-boolean v1, p0, Lco/vine/android/api/VineUser;->hiddenPhoneNumber:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineUser;->loopCount:J

    return-void

    :cond_cb
    move v0, v2

    goto :goto_96

    :cond_cd
    move v0, v2

    goto :goto_b1

    :cond_cf
    move v0, v2

    goto :goto_ba

    :cond_d1
    move v1, v2

    goto :goto_c2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIIIIIIIIILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ZIILjava/lang/String;ZZZJ)V
    .registers 37

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static/range {p19 .. p19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_76

    move-object/from16 p1, p19

    :cond_11
    :goto_11
    iput-object p1, p0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    iput-object p2, p0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    iput-object p3, p0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    iput-object p4, p0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    iput-wide p5, p0, Lco/vine/android/api/VineUser;->userId:J

    iput-wide p7, p0, Lco/vine/android/api/VineUser;->orderId:J

    iput p9, p0, Lco/vine/android/api/VineUser;->blocked:I

    iput p10, p0, Lco/vine/android/api/VineUser;->blocking:I

    iput p11, p0, Lco/vine/android/api/VineUser;->explicit:I

    iput p12, p0, Lco/vine/android/api/VineUser;->followerCount:I

    move/from16 v0, p13

    iput v0, p0, Lco/vine/android/api/VineUser;->followingCount:I

    move/from16 v0, p14

    iput v0, p0, Lco/vine/android/api/VineUser;->following:I

    move/from16 v0, p15

    iput v0, p0, Lco/vine/android/api/VineUser;->likeCount:I

    move/from16 v0, p16

    iput v0, p0, Lco/vine/android/api/VineUser;->postCount:I

    move/from16 v0, p17

    iput v0, p0, Lco/vine/android/api/VineUser;->verified:I

    move-object/from16 v0, p18

    iput-object v0, p0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    move/from16 v0, p20

    iput v0, p0, Lco/vine/android/api/VineUser;->twitterConnected:I

    move/from16 v0, p21

    iput v0, p0, Lco/vine/android/api/VineUser;->includePromoted:I

    move/from16 v0, p22

    iput v0, p0, Lco/vine/android/api/VineUser;->privateAccount:I

    move/from16 v0, p23

    iput v0, p0, Lco/vine/android/api/VineUser;->repostsEnabled:I

    move-object/from16 v0, p24

    iput-object v0, p0, Lco/vine/android/api/VineUser;->edition:Ljava/lang/String;

    move/from16 v0, p25

    iput-boolean v0, p0, Lco/vine/android/api/VineUser;->acceptsOutOfNetworkConversations:Z

    move/from16 v0, p26

    iput v0, p0, Lco/vine/android/api/VineUser;->profileBackground:I

    move/from16 v0, p27

    iput v0, p0, Lco/vine/android/api/VineUser;->authoredPostCount:I

    move-object/from16 v0, p28

    iput-object v0, p0, Lco/vine/android/api/VineUser;->sectionTitle:Ljava/lang/String;

    move/from16 v0, p29

    iput-boolean v0, p0, Lco/vine/android/api/VineUser;->disableAddressBook:Z

    move/from16 v0, p30

    iput-boolean v0, p0, Lco/vine/android/api/VineUser;->hiddenEmail:Z

    move/from16 v0, p31

    iput-boolean v0, p0, Lco/vine/android/api/VineUser;->hiddenPhoneNumber:Z

    move-wide/from16 v0, p32

    iput-wide v0, p0, Lco/vine/android/api/VineUser;->loopCount:J

    return-void

    :cond_76
    invoke-static/range {p18 .. p18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 p1, p18

    goto :goto_11
.end method


# virtual methods
.method public acceptsOutOfNetworkConversations()Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/api/VineUser;->acceptsOutOfNetworkConversations:Z

    return v0
.end method

.method public areRepostsEnabled()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lco/vine/android/api/VineUser;->repostsEnabled:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    check-cast v0, Lco/vine/android/api/VineUser;

    iget v3, p0, Lco/vine/android/api/VineUser;->blocked:I

    iget v4, v0, Lco/vine/android/api/VineUser;->blocked:I

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    :cond_1e
    iget v3, p0, Lco/vine/android/api/VineUser;->blocking:I

    iget v4, v0, Lco/vine/android/api/VineUser;->blocking:I

    if-eq v3, v4, :cond_26

    move v1, v2

    goto :goto_4

    :cond_26
    iget v3, p0, Lco/vine/android/api/VineUser;->explicit:I

    iget v4, v0, Lco/vine/android/api/VineUser;->explicit:I

    if-eq v3, v4, :cond_2e

    move v1, v2

    goto :goto_4

    :cond_2e
    iget v3, p0, Lco/vine/android/api/VineUser;->followerCount:I

    iget v4, v0, Lco/vine/android/api/VineUser;->followerCount:I

    if-eq v3, v4, :cond_36

    move v1, v2

    goto :goto_4

    :cond_36
    iget v3, p0, Lco/vine/android/api/VineUser;->following:I

    iget v4, v0, Lco/vine/android/api/VineUser;->following:I

    if-eq v3, v4, :cond_3e

    move v1, v2

    goto :goto_4

    :cond_3e
    iget v3, p0, Lco/vine/android/api/VineUser;->followingCount:I

    iget v4, v0, Lco/vine/android/api/VineUser;->followingCount:I

    if-eq v3, v4, :cond_46

    move v1, v2

    goto :goto_4

    :cond_46
    iget v3, p0, Lco/vine/android/api/VineUser;->likeCount:I

    iget v4, v0, Lco/vine/android/api/VineUser;->likeCount:I

    if-eq v3, v4, :cond_4e

    move v1, v2

    goto :goto_4

    :cond_4e
    iget-wide v3, p0, Lco/vine/android/api/VineUser;->orderId:J

    iget-wide v5, v0, Lco/vine/android/api/VineUser;->orderId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_58

    move v1, v2

    goto :goto_4

    :cond_58
    iget v3, p0, Lco/vine/android/api/VineUser;->postCount:I

    iget v4, v0, Lco/vine/android/api/VineUser;->postCount:I

    if-eq v3, v4, :cond_60

    move v1, v2

    goto :goto_4

    :cond_60
    iget v3, p0, Lco/vine/android/api/VineUser;->twitterConnected:I

    iget v4, v0, Lco/vine/android/api/VineUser;->twitterConnected:I

    if-eq v3, v4, :cond_68

    move v1, v2

    goto :goto_4

    :cond_68
    iget v3, p0, Lco/vine/android/api/VineUser;->includePromoted:I

    iget v4, v0, Lco/vine/android/api/VineUser;->includePromoted:I

    if-eq v3, v4, :cond_70

    move v1, v2

    goto :goto_4

    :cond_70
    iget-wide v3, p0, Lco/vine/android/api/VineUser;->userId:J

    iget-wide v5, v0, Lco/vine/android/api/VineUser;->userId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7a

    move v1, v2

    goto :goto_4

    :cond_7a
    iget v3, p0, Lco/vine/android/api/VineUser;->verified:I

    iget v4, v0, Lco/vine/android/api/VineUser;->verified:I

    if-eq v3, v4, :cond_82

    move v1, v2

    goto :goto_4

    :cond_82
    iget v3, p0, Lco/vine/android/api/VineUser;->privateAccount:I

    iget v4, v0, Lco/vine/android/api/VineUser;->privateAccount:I

    if-eq v3, v4, :cond_8b

    move v1, v2

    goto/16 :goto_4

    :cond_8b
    iget v3, p0, Lco/vine/android/api/VineUser;->followStatus:I

    iget v4, v0, Lco/vine/android/api/VineUser;->followStatus:I

    if-eq v3, v4, :cond_94

    move v1, v2

    goto/16 :goto_4

    :cond_94
    iget-object v3, p0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    if-eqz v3, :cond_a5

    iget-object v3, p0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a9

    :cond_a2
    move v1, v2

    goto/16 :goto_4

    :cond_a5
    iget-object v3, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    if-nez v3, :cond_a2

    :cond_a9
    iget-object v3, p0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    if-eqz v3, :cond_ba

    iget-object v3, p0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_be

    :cond_b7
    move v1, v2

    goto/16 :goto_4

    :cond_ba
    iget-object v3, v0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    if-nez v3, :cond_b7

    :cond_be
    iget-object v3, p0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    if-eqz v3, :cond_cf

    iget-object v3, p0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d3

    :cond_cc
    move v1, v2

    goto/16 :goto_4

    :cond_cf
    iget-object v3, v0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    if-nez v3, :cond_cc

    :cond_d3
    iget-object v3, p0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    if-eqz v3, :cond_e4

    iget-object v3, p0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e8

    :cond_e1
    move v1, v2

    goto/16 :goto_4

    :cond_e4
    iget-object v3, v0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    if-nez v3, :cond_e1

    :cond_e8
    iget-object v3, p0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_f9

    iget-object v3, p0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fd

    :cond_f6
    move v1, v2

    goto/16 :goto_4

    :cond_f9
    iget-object v3, v0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    if-nez v3, :cond_f6

    :cond_fd
    iget-object v3, p0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    if-eqz v3, :cond_10e

    iget-object v3, p0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_112

    :cond_10b
    move v1, v2

    goto/16 :goto_4

    :cond_10e
    iget-object v3, v0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    if-nez v3, :cond_10b

    :cond_112
    iget v3, p0, Lco/vine/android/api/VineUser;->repostsEnabled:I

    iget v4, v0, Lco/vine/android/api/VineUser;->repostsEnabled:I

    if-eq v3, v4, :cond_11b

    move v1, v2

    goto/16 :goto_4

    :cond_11b
    iget-object v3, p0, Lco/vine/android/api/VineUser;->edition:Ljava/lang/String;

    if-eqz v3, :cond_12c

    iget-object v3, p0, Lco/vine/android/api/VineUser;->edition:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineUser;->edition:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_130

    :cond_129
    move v1, v2

    goto/16 :goto_4

    :cond_12c
    iget-object v3, v0, Lco/vine/android/api/VineUser;->edition:Ljava/lang/String;

    if-nez v3, :cond_129

    :cond_130
    iget-boolean v3, p0, Lco/vine/android/api/VineUser;->acceptsOutOfNetworkConversations:Z

    iget-boolean v4, v0, Lco/vine/android/api/VineUser;->acceptsOutOfNetworkConversations:Z

    if-eq v3, v4, :cond_139

    move v1, v2

    goto/16 :goto_4

    :cond_139
    iget v3, p0, Lco/vine/android/api/VineUser;->profileBackground:I

    iget v4, v0, Lco/vine/android/api/VineUser;->profileBackground:I

    if-eq v3, v4, :cond_142

    move v1, v2

    goto/16 :goto_4

    :cond_142
    iget v3, p0, Lco/vine/android/api/VineUser;->authoredPostCount:I

    iget v4, v0, Lco/vine/android/api/VineUser;->authoredPostCount:I

    if-eq v3, v4, :cond_14b

    move v1, v2

    goto/16 :goto_4

    :cond_14b
    iget v3, p0, Lco/vine/android/api/VineUser;->verifiedInformation:I

    iget v4, v0, Lco/vine/android/api/VineUser;->verifiedInformation:I

    if-eq v3, v4, :cond_154

    move v1, v2

    goto/16 :goto_4

    :cond_154
    iget-boolean v3, p0, Lco/vine/android/api/VineUser;->disableAddressBook:Z

    iget-boolean v4, v0, Lco/vine/android/api/VineUser;->disableAddressBook:Z

    if-eq v3, v4, :cond_15d

    move v1, v2

    goto/16 :goto_4

    :cond_15d
    iget-boolean v3, p0, Lco/vine/android/api/VineUser;->hiddenEmail:Z

    iget-boolean v4, v0, Lco/vine/android/api/VineUser;->hiddenEmail:Z

    if-eq v3, v4, :cond_166

    move v1, v2

    goto/16 :goto_4

    :cond_166
    iget-boolean v3, p0, Lco/vine/android/api/VineUser;->hiddenPhoneNumber:Z

    iget-boolean v4, v0, Lco/vine/android/api/VineUser;->hiddenPhoneNumber:Z

    if-eq v3, v4, :cond_16f

    move v1, v2

    goto/16 :goto_4

    :cond_16f
    iget-wide v3, p0, Lco/vine/android/api/VineUser;->loopCount:J

    iget-wide v5, v0, Lco/vine/android/api/VineUser;->loopCount:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    goto/16 :goto_4
.end method

.method public getProfileBackgroundForShowing()I
    .registers 3

    iget v0, p0, Lco/vine/android/api/VineUser;->profileBackground:I

    const/high16 v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public hasFollowApprovalPending()Z
    .registers 2

    iget v0, p0, Lco/vine/android/api/VineUser;->followStatus:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasFollowRequested()Z
    .registers 2

    iget v0, p0, Lco/vine/android/api/VineUser;->followStatus:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hashCode()I
    .registers 9

    const/16 v7, 0x20

    const/4 v1, 0x0

    iget-object v2, p0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    if-eqz v2, :cond_ec

    iget-object v2, p0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineUser;->edition:Ljava/lang/String;

    if-eqz v2, :cond_ef

    iget-object v2, p0, Lco/vine/android/api/VineUser;->edition:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_19
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    if-eqz v2, :cond_f2

    iget-object v2, p0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_27
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    if-eqz v2, :cond_f5

    iget-object v2, p0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_35
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    if-eqz v2, :cond_f8

    iget-object v2, p0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_43
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_fb

    iget-object v2, p0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_51
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    if-eqz v2, :cond_fe

    iget-object v2, p0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5f
    add-int v0, v3, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lco/vine/android/api/VineUser;->userId:J

    iget-wide v5, p0, Lco/vine/android/api/VineUser;->userId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lco/vine/android/api/VineUser;->orderId:J

    iget-wide v5, p0, Lco/vine/android/api/VineUser;->orderId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lco/vine/android/api/VineUser;->loopCount:J

    iget-wide v5, p0, Lco/vine/android/api/VineUser;->loopCount:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineUser;->blocked:I

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineUser;->blocking:I

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineUser;->explicit:I

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineUser;->followerCount:I

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineUser;->followingCount:I

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineUser;->following:I

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineUser;->likeCount:I

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineUser;->postCount:I

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineUser;->verified:I

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineUser;->twitterConnected:I

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineUser;->includePromoted:I

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineUser;->privateAccount:I

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineUser;->followStatus:I

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lco/vine/android/api/VineUser;->repostsEnabled:I

    add-int v0, v2, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v3, p0, Lco/vine/android/api/VineUser;->acceptsOutOfNetworkConversations:Z

    if-eqz v3, :cond_dd

    const/4 v1, 0x1

    :cond_dd
    add-int v0, v2, v1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineUser;->profileBackground:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineUser;->verifiedInformation:I

    add-int v0, v1, v2

    return v0

    :cond_ec
    move v0, v1

    goto/16 :goto_d

    :cond_ef
    move v2, v1

    goto/16 :goto_19

    :cond_f2
    move v2, v1

    goto/16 :goto_27

    :cond_f5
    move v2, v1

    goto/16 :goto_35

    :cond_f8
    move v2, v1

    goto/16 :goto_43

    :cond_fb
    move v2, v1

    goto/16 :goto_51

    :cond_fe
    move v2, v1

    goto/16 :goto_5f
.end method

.method public isBlocked()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lco/vine/android/api/VineUser;->blocked:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isEmailVerified()Z
    .registers 2

    iget v0, p0, Lco/vine/android/api/VineUser;->verifiedInformation:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isFollowing()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lco/vine/android/api/VineUser;->following:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPhoneVerified()Z
    .registers 2

    iget v0, p0, Lco/vine/android/api/VineUser;->verifiedInformation:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isPrivate()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lco/vine/android/api/VineUser;->privateAccount:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPrivateLocked()Z
    .registers 2

    invoke-virtual {p0}, Lco/vine/android/api/VineUser;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lco/vine/android/api/VineUser;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lco/vine/android/api/VineUser;->hasFollowRequested()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isVerified()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lco/vine/android/api/VineUser;->verified:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setApprovalPending()V
    .registers 2

    iget v0, p0, Lco/vine/android/api/VineUser;->followStatus:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lco/vine/android/api/VineUser;->followStatus:I

    return-void
.end method

.method public setEmailVerified()V
    .registers 2

    iget v0, p0, Lco/vine/android/api/VineUser;->verifiedInformation:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lco/vine/android/api/VineUser;->verifiedInformation:I

    return-void
.end method

.method public setFollowRequested()V
    .registers 2

    iget v0, p0, Lco/vine/android/api/VineUser;->followStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lco/vine/android/api/VineUser;->followStatus:I

    return-void
.end method

.method public setPhoneVerified()V
    .registers 2

    iget v0, p0, Lco/vine/android/api/VineUser;->verifiedInformation:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lco/vine/android/api/VineUser;->verifiedInformation:I

    return-void
.end method

.method public unsetEmailVerified()V
    .registers 2

    iget v0, p0, Lco/vine/android/api/VineUser;->verifiedInformation:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lco/vine/android/api/VineUser;->verifiedInformation:I

    return-void
.end method

.method public unsetPhoneVerified()V
    .registers 2

    iget v0, p0, Lco/vine/android/api/VineUser;->verifiedInformation:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lco/vine/android/api/VineUser;->verifiedInformation:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lco/vine/android/api/VineUser;->userId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Lco/vine/android/api/VineUser;->orderId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lco/vine/android/api/VineUser;->blocked:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lco/vine/android/api/VineUser;->blocking:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lco/vine/android/api/VineUser;->explicit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lco/vine/android/api/VineUser;->followerCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lco/vine/android/api/VineUser;->followingCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lco/vine/android/api/VineUser;->following:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lco/vine/android/api/VineUser;->likeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lco/vine/android/api/VineUser;->postCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lco/vine/android/api/VineUser;->verified:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lco/vine/android/api/VineUser;->twitterConnected:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lco/vine/android/api/VineUser;->includePromoted:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lco/vine/android/api/VineUser;->privateAccount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lco/vine/android/api/VineUser;->followStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lco/vine/android/api/VineUser;->repostsEnabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lco/vine/android/api/VineUser;->edition:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lco/vine/android/api/VineUser;->acceptsOutOfNetworkConversations:Z

    if-eqz v0, :cond_a9

    move v0, v1

    :goto_7a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lco/vine/android/api/VineUser;->profileBackground:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lco/vine/android/api/VineUser;->authoredPostCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lco/vine/android/api/VineUser;->verifiedInformation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lco/vine/android/api/VineUser;->disableAddressBook:Z

    if-eqz v0, :cond_ab

    move v0, v1

    :goto_91
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lco/vine/android/api/VineUser;->hiddenEmail:Z

    if-eqz v0, :cond_ad

    move v0, v1

    :goto_99
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lco/vine/android/api/VineUser;->hiddenPhoneNumber:Z

    if-eqz v0, :cond_af

    :goto_a0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lco/vine/android/api/VineUser;->loopCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_a9
    move v0, v2

    goto :goto_7a

    :cond_ab
    move v0, v2

    goto :goto_91

    :cond_ad
    move v0, v2

    goto :goto_99

    :cond_af
    move v1, v2

    goto :goto_a0
.end method
