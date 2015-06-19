.class public Lco/vine/android/api/VineRecipient;
.super Ljava/lang/Object;
.source "VineRecipient.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/api/VineRecipient$2;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/api/VineRecipient;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_DISPLAY:Ljava/lang/String; = "display"

.field public static final KEY_EMAIL:Ljava/lang/String; = "email"

.field public static final KEY_PHONE:Ljava/lang/String; = "phoneNumber"

.field public static final KEY_RECIPIENT_ID:Ljava/lang/String; = "recipientId"

.field public static final KEY_USER_ID:Ljava/lang/String; = "userId"


# instance fields
.field public avatarUrl:Ljava/lang/String;

.field public color:I

.field public contactId:J

.field public display:Ljava/lang/String;

.field public friendIndex:J

.field public key:Ljava/lang/String;

.field public lastFriendRefresh:J

.field public recipientId:J

.field public sectionIndex:I

.field public sectionTitle:Ljava/lang/String;

.field public userId:J

.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lco/vine/android/api/VineRecipient$1;

    invoke-direct {v0}, Lco/vine/android/api/VineRecipient$1;-><init>()V

    sput-object v0, Lco/vine/android/api/VineRecipient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lco/vine/android/api/VineRecipient;->lastFriendRefresh:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineRecipient;->userId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineRecipient;->recipientId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lco/vine/android/api/VineRecipient;->lastFriendRefresh:J

    iput-object p1, p0, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;

    iput-object p2, p0, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;

    iput-wide p3, p0, Lco/vine/android/api/VineRecipient;->userId:J

    iput-object p5, p0, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;

    iput p6, p0, Lco/vine/android/api/VineRecipient;->color:I

    iput-wide p7, p0, Lco/vine/android/api/VineRecipient;->recipientId:J

    return-void
.end method

.method public static fromEmail(Ljava/lang/String;JLjava/lang/String;J)Lco/vine/android/api/VineRecipient;
    .registers 15

    new-instance v0, Lco/vine/android/api/VineRecipient;

    const-string v1, "email"

    const/4 v6, -0x1

    move-object v2, p3

    move-wide v3, p1

    move-object v5, p0

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lco/vine/android/api/VineRecipient;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    return-object v0
.end method

.method public static fromJson(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineRecipient;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v11

    :goto_a
    if-eqz v11, :cond_66

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v11, v0, :cond_66

    sget-object v0, Lco/vine/android/api/VineRecipient$2;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v11}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_7e

    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v11

    goto :goto_a

    :pswitch_20
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v9

    const-string v0, "phoneNumber"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "email"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_34
    move-object v1, v9

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_3a
    const-string v0, "recipientId"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v10

    goto :goto_1b

    :cond_47
    const-string v0, "display"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1b

    :pswitch_54
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v9

    const-string v0, "userId"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move-object v1, v9

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v3

    goto :goto_1b

    :cond_66
    const-wide/16 v7, -0x1

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :cond_76
    new-instance v0, Lco/vine/android/api/VineRecipient;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lco/vine/android/api/VineRecipient;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    return-object v0

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_20
        :pswitch_54
    .end packed-switch
.end method

.method public static fromPhone(Ljava/lang/String;JLjava/lang/String;J)Lco/vine/android/api/VineRecipient;
    .registers 15

    new-instance v0, Lco/vine/android/api/VineRecipient;

    const-string v1, "phoneNumber"

    const/4 v6, -0x1

    move-object v2, p3

    move-wide v3, p1

    move-object v5, p0

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lco/vine/android/api/VineRecipient;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    return-object v0
.end method

.method public static fromRecipientId(Ljava/lang/String;JLjava/lang/String;J)Lco/vine/android/api/VineRecipient;
    .registers 15

    new-instance v0, Lco/vine/android/api/VineRecipient;

    const-string v1, "phoneNumber"

    const/4 v6, -0x1

    move-object v2, p3

    move-wide v3, p1

    move-object v5, p0

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lco/vine/android/api/VineRecipient;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    return-object v0
.end method

.method public static fromUser(J)Lco/vine/android/api/VineRecipient;
    .registers 8

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-wide v1, p0

    invoke-static/range {v0 .. v5}, Lco/vine/android/api/VineRecipient;->fromUser(Ljava/lang/String;JIJ)Lco/vine/android/api/VineRecipient;

    move-result-object v0

    return-object v0
.end method

.method public static fromUser(Ljava/lang/String;JIJ)Lco/vine/android/api/VineRecipient;
    .registers 15

    new-instance v0, Lco/vine/android/api/VineRecipient;

    const-string v1, "userId"

    const/4 v2, 0x0

    move-wide v3, p1

    move-object v5, p0

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lco/vine/android/api/VineRecipient;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJ)V

    return-object v0
.end method


# virtual methods
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

    check-cast v0, Lco/vine/android/api/VineRecipient;

    iget-object v3, p0, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_24
    move v1, v2

    goto :goto_4

    :cond_26
    iget-object v3, v0, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;

    if-nez v3, :cond_24

    :cond_2a
    iget-object v3, p0, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    :cond_38
    move v1, v2

    goto :goto_4

    :cond_3a
    iget-object v3, v0, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;

    if-nez v3, :cond_38

    :cond_3e
    iget-object v3, p0, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    :cond_4c
    move v1, v2

    goto :goto_4

    :cond_4e
    iget-object v3, v0, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;

    if-nez v3, :cond_4c

    :cond_52
    iget-wide v3, p0, Lco/vine/android/api/VineRecipient;->userId:J

    iget-wide v5, v0, Lco/vine/android/api/VineRecipient;->userId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5c

    move v1, v2

    goto :goto_4

    :cond_5c
    iget-wide v3, p0, Lco/vine/android/api/VineRecipient;->recipientId:J

    iget-wide v5, v0, Lco/vine/android/api/VineRecipient;->recipientId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public getTextSortKey()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 8

    const/16 v6, 0x20

    const/4 v1, 0x0

    iget-object v2, p0, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;

    if-eqz v3, :cond_19

    iget-object v1, p0, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_19
    add-int v0, v2, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lco/vine/android/api/VineRecipient;->userId:J

    iget-wide v4, p0, Lco/vine/android/api/VineRecipient;->userId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lco/vine/android/api/VineRecipient;->recipientId:J

    iget-wide v4, p0, Lco/vine/android/api/VineRecipient;->recipientId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    return v0

    :cond_32
    move v0, v1

    goto :goto_d
.end method

.method public isFromEmail()Z
    .registers 3

    const-string v0, "email"

    iget-object v1, p0, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFromPhone()Z
    .registers 3

    const-string v0, "phoneNumber"

    iget-object v1, p0, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFromUser()Z
    .registers 3

    const-string v0, "userId"

    iget-object v1, p0, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineRecipient;->userId:J

    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VineRecipient;->recipientId:J

    invoke-interface {p1}, Ljava/io/ObjectInput;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;

    return-void
.end method

.method public toMap()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "userId"

    iget-object v2, p0, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;

    iget-wide v2, p0, Lco/vine/android/api/VineRecipient;->userId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1a
    iget-wide v1, p0, Lco/vine/android/api/VineRecipient;->recipientId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2d

    const-string v1, "recipientId"

    iget-wide v2, p0, Lco/vine/android/api/VineRecipient;->recipientId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    iget-object v1, p0, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;

    if-eqz v1, :cond_38

    const-string v1, "display"

    iget-object v2, p0, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    return-object v0

    :cond_39
    iget-object v1, p0, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;

    iget-object v2, p0, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-wide v0, p0, Lco/vine/android/api/VineRecipient;->userId:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    iget-wide v0, p0, Lco/vine/android/api/VineRecipient;->recipientId:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    iget-object v0, p0, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeChars(Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lco/vine/android/api/VineRecipient;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lco/vine/android/api/VineRecipient;->recipientId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
