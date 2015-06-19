.class public Lcom/facebook/katana/EventsAdapter$Item;
.super Ljava/lang/Object;
.source "EventsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/EventsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Item"
.end annotation


# static fields
.field public static final TYPE_BIRTHDAY:I = 0x1

.field public static final TYPE_EVENT:I


# instance fields
.field private mBar:Ljava/lang/String;

.field private mBirthdays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/EventsAdapter$Birthday;",
            ">;"
        }
    .end annotation
.end field

.field private final mEid:J

.field private final mEndingTime:J

.field private final mEventName:Ljava/lang/String;

.field private final mImageURL:Ljava/lang/String;

.field private mRSVP:Ljava/lang/String;

.field private mStartingTime:J

.field private mTimePeriod:I

.field private final mType:I


# direct methods
.method public constructor <init>(I)V
    .registers 6

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/katana/EventsAdapter$Item;->mType:I

    iput-wide v2, p0, Lcom/facebook/katana/EventsAdapter$Item;->mEid:J

    iput-object v1, p0, Lcom/facebook/katana/EventsAdapter$Item;->mImageURL:Ljava/lang/String;

    iput-object v1, p0, Lcom/facebook/katana/EventsAdapter$Item;->mEventName:Ljava/lang/String;

    iput-wide v2, p0, Lcom/facebook/katana/EventsAdapter$Item;->mStartingTime:J

    iput-wide v2, p0, Lcom/facebook/katana/EventsAdapter$Item;->mEndingTime:J

    iput-object v1, p0, Lcom/facebook/katana/EventsAdapter$Item;->mRSVP:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mTimePeriod:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mBirthdays:Ljava/util/List;

    iput-object v1, p0, Lcom/facebook/katana/EventsAdapter$Item;->mBar:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIJLandroid/content/Context;)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/facebook/katana/EventsAdapter$Item;-><init>(I)V

    iput p2, p0, Lcom/facebook/katana/EventsAdapter$Item;->mTimePeriod:I

    iput-wide p3, p0, Lcom/facebook/katana/EventsAdapter$Item;->mStartingTime:J

    iget v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mTimePeriod:I

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p3

    invoke-static {v0, v1, v2, p5}, Lcom/facebook/katana/util/TimeUtils;->getStringOfTimePeriod(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mBar:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;JJILandroid/content/Context;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/katana/EventsAdapter$Item;->mType:I

    iput-wide p2, p0, Lcom/facebook/katana/EventsAdapter$Item;->mEid:J

    iput-object p4, p0, Lcom/facebook/katana/EventsAdapter$Item;->mImageURL:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/katana/EventsAdapter$Item;->mEventName:Ljava/lang/String;

    iput-wide p6, p0, Lcom/facebook/katana/EventsAdapter$Item;->mStartingTime:J

    iput-wide p8, p0, Lcom/facebook/katana/EventsAdapter$Item;->mEndingTime:J

    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mRSVP:Ljava/lang/String;

    sget-object v0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ATTENDING:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ordinal()I

    move-result v0

    if-ne p10, v0, :cond_3c

    const v0, 0x7f080042

    invoke-virtual {p11, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mRSVP:Ljava/lang/String;

    :cond_24
    :goto_24
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p6

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p8

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/util/TimeUtils;->getTimePeriod(JJ)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mTimePeriod:I

    iget v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mTimePeriod:I

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p6

    invoke-static {v0, v1, v2, p11}, Lcom/facebook/katana/util/TimeUtils;->getStringOfTimePeriod(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mBar:Ljava/lang/String;

    return-void

    :cond_3c
    sget-object v0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->UNSURE:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ordinal()I

    move-result v0

    if-ne p10, v0, :cond_4e

    const v0, 0x7f08004d

    invoke-virtual {p11, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mRSVP:Ljava/lang/String;

    goto :goto_24

    :cond_4e
    sget-object v0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->DECLINED:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ordinal()I

    move-result v0

    if-ne p10, v0, :cond_60

    const v0, 0x7f080043

    invoke-virtual {p11, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mRSVP:Ljava/lang/String;

    goto :goto_24

    :cond_60
    sget-object v0, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->NOT_REPLIED:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ordinal()I

    move-result v0

    if-ne p10, v0, :cond_24

    const v0, 0x7f08004a

    invoke-virtual {p11, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mRSVP:Ljava/lang/String;

    goto :goto_24
.end method

.method static synthetic access$0(Lcom/facebook/katana/EventsAdapter$Item;)I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mTimePeriod:I

    return v0
.end method

.method static synthetic access$1(Lcom/facebook/katana/EventsAdapter$Item;)I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mType:I

    return v0
.end method


# virtual methods
.method public addBirthday(Lcom/facebook/katana/EventsAdapter$Birthday;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mBirthdays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBar()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mBar:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthdaysCount()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mBirthdays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBirthdaysList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/EventsAdapter$Birthday;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mBirthdays:Ljava/util/List;

    return-object v0
.end method

.method public getEid()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mEid:J

    return-wide v0
.end method

.method public getEndingTime()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mEndingTime:J

    return-wide v0
.end method

.method public getEventName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mEventName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mImageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getRSVP()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mRSVP:Ljava/lang/String;

    return-object v0
.end method

.method public getStartingTime()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mStartingTime:J

    return-wide v0
.end method

.method public getTimePeriod()I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mTimePeriod:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/EventsAdapter$Item;->mType:I

    return v0
.end method
