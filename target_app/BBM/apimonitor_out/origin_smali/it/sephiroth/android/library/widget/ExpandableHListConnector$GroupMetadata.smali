.class Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
.super Ljava/lang/Object;
.source "ExpandableHListConnector.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I

.field c:I

.field d:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lit/sephiroth/android/library/widget/aa;

    invoke-direct {v0}, Lit/sephiroth/android/library/widget/aa;-><init>()V

    sput-object v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(IIIJ)Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
    .registers 6

    new-instance v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    invoke-direct {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;-><init>()V

    iput p0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I

    iput p1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    iput p2, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    iput-wide p3, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:J

    return-object v0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_a
    iget v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    iget v1, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
