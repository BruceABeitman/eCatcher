.class public Lcom/facebook/katana/UserInfoAdapter$Item;
.super Ljava/lang/Object;
.source "UserInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/UserInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Item"
.end annotation


# static fields
.field public static final TYPE_EMAIL:I = 0x3

.field public static final TYPE_INFO:I = 0x1

.field public static final TYPE_PHONE:I = 0x2

.field public static final TYPE_PROFILE_PHOTO:I = 0x0

.field public static final TYPE_SIGNIFICANT_OTHER:I = 0x4


# instance fields
.field private final mSubTitle:Ljava/lang/String;

.field private final mTargetUserId:J

.field private final mTitle:Ljava/lang/String;

.field private final mType:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mType:I

    iput-object v0, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mSubTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mUrl:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mTargetUserId:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mType:I

    iput-object p2, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mSubTitle:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mUrl:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mTargetUserId:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mType:I

    iput-object p2, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mSubTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mUrl:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mTargetUserId:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mType:I

    iput-object p2, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mSubTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mUrl:Ljava/lang/String;

    iput-wide p5, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mTargetUserId:J

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/katana/UserInfoAdapter$Item;)I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mType:I

    return v0
.end method


# virtual methods
.method public getSubTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUserId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mTargetUserId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter$Item;->mUrl:Ljava/lang/String;

    return-object v0
.end method
