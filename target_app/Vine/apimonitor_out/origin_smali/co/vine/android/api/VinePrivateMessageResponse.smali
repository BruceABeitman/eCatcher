.class public Lco/vine/android/api/VinePrivateMessageResponse;
.super Ljava/lang/Object;
.source "VinePrivateMessageResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/api/VinePrivateMessageResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final conversationId:J

.field public final error:Lco/vine/android/api/VineError;

.field public final messageId:J

.field public final networkType:I

.field public final recipient:Lco/vine/android/api/VineRecipient;

.field public final shareUrl:Ljava/lang/String;

.field public final thumbnailUrl:Ljava/lang/String;

.field public final videoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lco/vine/android/api/VinePrivateMessageResponse$1;

    invoke-direct {v0}, Lco/vine/android/api/VinePrivateMessageResponse$1;-><init>()V

    sput-object v0, Lco/vine/android/api/VinePrivateMessageResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lco/vine/android/api/VineRecipient;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VineRecipient;

    iput-object v0, p0, Lco/vine/android/api/VinePrivateMessageResponse;->recipient:Lco/vine/android/api/VineRecipient;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VinePrivateMessageResponse;->conversationId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/api/VinePrivateMessageResponse;->messageId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VinePrivateMessageResponse;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VinePrivateMessageResponse;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/api/VinePrivateMessageResponse;->shareUrl:Ljava/lang/String;

    const-class v0, Lco/vine/android/api/VineError;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VineError;

    iput-object v0, p0, Lco/vine/android/api/VinePrivateMessageResponse;->error:Lco/vine/android/api/VineError;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VinePrivateMessageResponse;->networkType:I

    return-void
.end method

.method public constructor <init>(Lco/vine/android/api/VineRecipient;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineError;I)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/api/VinePrivateMessageResponse;->recipient:Lco/vine/android/api/VineRecipient;

    iput-wide p2, p0, Lco/vine/android/api/VinePrivateMessageResponse;->conversationId:J

    iput-wide p4, p0, Lco/vine/android/api/VinePrivateMessageResponse;->messageId:J

    iput-object p6, p0, Lco/vine/android/api/VinePrivateMessageResponse;->videoUrl:Ljava/lang/String;

    iput-object p7, p0, Lco/vine/android/api/VinePrivateMessageResponse;->thumbnailUrl:Ljava/lang/String;

    iput-object p8, p0, Lco/vine/android/api/VinePrivateMessageResponse;->shareUrl:Ljava/lang/String;

    iput-object p9, p0, Lco/vine/android/api/VinePrivateMessageResponse;->error:Lco/vine/android/api/VineError;

    iput p10, p0, Lco/vine/android/api/VinePrivateMessageResponse;->networkType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lco/vine/android/api/VinePrivateMessageResponse;->recipient:Lco/vine/android/api/VineRecipient;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lco/vine/android/api/VinePrivateMessageResponse;->conversationId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lco/vine/android/api/VinePrivateMessageResponse;->messageId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lco/vine/android/api/VinePrivateMessageResponse;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VinePrivateMessageResponse;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VinePrivateMessageResponse;->shareUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/api/VinePrivateMessageResponse;->error:Lco/vine/android/api/VineError;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lco/vine/android/api/VinePrivateMessageResponse;->networkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
