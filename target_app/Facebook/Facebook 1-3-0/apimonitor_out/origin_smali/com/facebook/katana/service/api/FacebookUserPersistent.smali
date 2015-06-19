.class public Lcom/facebook/katana/service/api/FacebookUserPersistent;
.super Lcom/facebook/katana/service/api/FacebookUser;
.source "FacebookUserPersistent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/FacebookUserPersistent$FriendsQuery;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/katana/service/api/FacebookUserPersistent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHashCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/katana/service/api/FacebookUserPersistent$1;

    invoke-direct {v0}, Lcom/facebook/katana/service/api/FacebookUserPersistent$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/service/api/FacebookUser;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Lcom/facebook/katana/service/api/FacebookUser;-><init>()V

    iput-wide p1, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mUserId:J

    iput-object p3, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mFirstName:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mLastName:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mDisplayName:Ljava/lang/String;

    iput-object p6, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mImageUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Lcom/facebook/katana/service/api/FacebookUser;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mUserId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mLastName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mImageUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/katana/service/api/FacebookUserPersistent;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/service/api/FacebookUserPersistent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/facebook/katana/service/api/FacebookUser;-><init>()V

    invoke-virtual {p0, p1}, Lcom/facebook/katana/service/api/FacebookUserPersistent;->parseFromJSON(Lorg/codehaus/jackson/JsonParser;)V

    return-void
.end method

.method public static readFromContentProvider(Landroid/content/Context;J)Lcom/facebook/katana/service/api/FacebookUserPersistent;
    .registers 14

    const/4 v3, 0x0

    const/4 v10, 0x0

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIEND_UID_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/facebook/katana/service/api/FacebookUserPersistent$FriendsQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_49

    new-instance v2, Lcom/facebook/katana/service/api/FacebookUserPersistent;

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/facebook/katana/service/api/FacebookUserPersistent;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_45
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_49
    move-object v2, v10

    goto :goto_45
.end method


# virtual methods
.method public computeHash()Ljava/lang/String;
    .registers 9

    const-wide/16 v6, 0x1f

    iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mHashCode:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mHashCode:Ljava/lang/String;

    :goto_8
    return-object v2

    :cond_9
    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mUserId:J

    iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mFirstName:Ljava/lang/String;

    if-eqz v2, :cond_1a

    mul-long v2, v6, v0

    iget-object v4, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mFirstName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    add-long v0, v2, v4

    :cond_1a
    iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mLastName:Ljava/lang/String;

    if-eqz v2, :cond_29

    mul-long v2, v6, v0

    iget-object v4, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mLastName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    add-long v0, v2, v4

    :cond_29
    iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_38

    mul-long v2, v6, v0

    iget-object v4, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    add-long v0, v2, v4

    :cond_38
    iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mImageUrl:Ljava/lang/String;

    if-eqz v2, :cond_47

    mul-long v2, v6, v0

    iget-object v4, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    add-long v0, v2, v4

    :cond_47
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mHashCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mHashCode:Ljava/lang/String;

    goto :goto_8
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mUserId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mLastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUserPersistent;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
