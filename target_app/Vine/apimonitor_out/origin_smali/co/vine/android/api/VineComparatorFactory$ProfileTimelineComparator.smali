.class Lco/vine/android/api/VineComparatorFactory$ProfileTimelineComparator;
.super Ljava/lang/Object;
.source "VineComparatorFactory.java"

# interfaces
.implements Lco/vine/android/api/VineComparatorFactory$VineComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/api/VineComparatorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileTimelineComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lco/vine/android/api/VineComparatorFactory$VineComparator",
        "<",
        "Lco/vine/android/api/VinePost;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/api/VineComparatorFactory$1;)V
    .registers 2

    invoke-direct {p0}, Lco/vine/android/api/VineComparatorFactory$ProfileTimelineComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lco/vine/android/api/VinePost;Lco/vine/android/api/VinePost;)I
    .registers 6

    invoke-virtual {p0, p2}, Lco/vine/android/api/VineComparatorFactory$ProfileTimelineComparator;->getOrderId(Lco/vine/android/api/VinePost;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1}, Lco/vine/android/api/VineComparatorFactory$ProfileTimelineComparator;->getOrderId(Lco/vine/android/api/VinePost;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lco/vine/android/api/VinePost;

    check-cast p2, Lco/vine/android/api/VinePost;

    invoke-virtual {p0, p1, p2}, Lco/vine/android/api/VineComparatorFactory$ProfileTimelineComparator;->compare(Lco/vine/android/api/VinePost;Lco/vine/android/api/VinePost;)I

    move-result v0

    return v0
.end method

.method public getOrderId(Lco/vine/android/api/VinePost;)J
    .registers 4

    iget-object v0, p1, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;

    iget-wide v0, v0, Lco/vine/android/api/VineRepost;->repostId:J

    :goto_8
    return-wide v0

    :cond_9
    iget-wide v0, p1, Lco/vine/android/api/VinePost;->postId:J

    goto :goto_8
.end method

.method public bridge synthetic getOrderId(Ljava/lang/Object;)J
    .registers 4

    check-cast p1, Lco/vine/android/api/VinePost;

    invoke-virtual {p0, p1}, Lco/vine/android/api/VineComparatorFactory$ProfileTimelineComparator;->getOrderId(Lco/vine/android/api/VinePost;)J

    move-result-wide v0

    return-wide v0
.end method
