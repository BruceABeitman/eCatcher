.class public Lcom/facebook/katana/EventsAdapter$Birthday;
.super Ljava/lang/Object;
.source "EventsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/EventsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Birthday"
.end annotation


# instance fields
.field private final mDay:I

.field private final mDisplayName:Ljava/lang/String;

.field private final mMonth:I

.field private final mTime:J

.field private final mTimePeriod:I

.field private final mUserId:Ljava/lang/Long;

.field private final mYear:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;IIIJI)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/katana/EventsAdapter$Birthday;->mDisplayName:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/katana/EventsAdapter$Birthday;->mUserId:Ljava/lang/Long;

    iput p3, p0, Lcom/facebook/katana/EventsAdapter$Birthday;->mMonth:I

    iput p4, p0, Lcom/facebook/katana/EventsAdapter$Birthday;->mDay:I

    iput p5, p0, Lcom/facebook/katana/EventsAdapter$Birthday;->mYear:I

    iput-wide p6, p0, Lcom/facebook/katana/EventsAdapter$Birthday;->mTime:J

    iput p8, p0, Lcom/facebook/katana/EventsAdapter$Birthday;->mTimePeriod:I

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/katana/EventsAdapter$Birthday;)I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/EventsAdapter$Birthday;->mTimePeriod:I

    return v0
.end method

.method static synthetic access$1(Lcom/facebook/katana/EventsAdapter$Birthday;)J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/EventsAdapter$Birthday;->mTime:J

    return-wide v0
.end method


# virtual methods
.method public getDay()I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/EventsAdapter$Birthday;->mDay:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/EventsAdapter$Birthday;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/EventsAdapter$Birthday;->mMonth:I

    return v0
.end method

.method public getUserId()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/EventsAdapter$Birthday;->mUserId:Ljava/lang/Long;

    return-object v0
.end method

.method public getYear()I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/EventsAdapter$Birthday;->mYear:I

    return v0
.end method
