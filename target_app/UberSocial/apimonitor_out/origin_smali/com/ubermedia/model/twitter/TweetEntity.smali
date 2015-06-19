.class public abstract Lcom/ubermedia/model/twitter/TweetEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:I

.field protected b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ubermedia/model/twitter/TweetEntity;->a:I

    iput p2, p0, Lcom/ubermedia/model/twitter/TweetEntity;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ubermedia/model/twitter/TweetEntity;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ubermedia/model/twitter/TweetEntity;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/ubermedia/model/twitter/TweetEntity;->a:I

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/ubermedia/model/twitter/TweetEntity;->b:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/ubermedia/model/twitter/TweetEntity;->a:I

    return v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/ubermedia/model/twitter/TweetEntity;->b:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lcom/ubermedia/model/twitter/TweetEntity;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ubermedia/model/twitter/TweetEntity;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
