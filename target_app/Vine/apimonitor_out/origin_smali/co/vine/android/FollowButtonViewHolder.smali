.class public Lco/vine/android/FollowButtonViewHolder;
.super Ljava/lang/Object;
.source "FollowButtonViewHolder.java"


# instance fields
.field public following:Z

.field public userId:J


# direct methods
.method public constructor <init>(JZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lco/vine/android/FollowButtonViewHolder;->userId:J

    iput-boolean p3, p0, Lco/vine/android/FollowButtonViewHolder;->following:Z

    return-void
.end method
