.class Lcom/pinguo/camera360/push/PushThread$FileBean;
.super Ljava/lang/Object;
.source "PushThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/push/PushThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileBean"
.end annotation


# instance fields
.field private day:Ljava/lang/String;

.field private failCount:I

.field private file:Ljava/io/File;

.field private id:Ljava/lang/String;

.field private pushBean:Lcom/pinguo/camera360/push/PushBean;

.field private success:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->file:Ljava/io/File;

    iput v1, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->failCount:I

    iput v1, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->success:I

    iput-object v0, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->day:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->pushBean:Lcom/pinguo/camera360/push/PushBean;

    iput-object p1, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->day:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/push/PushThread$FileBean;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/push/PushThread$FileBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/push/PushThread$FileBean;Lcom/pinguo/camera360/push/PushBean;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->pushBean:Lcom/pinguo/camera360/push/PushBean;

    return-void
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/push/PushThread$FileBean;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/push/PushThread$FileBean;Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->file:Ljava/io/File;

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/push/PushThread$FileBean;)Lcom/pinguo/camera360/push/PushBean;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->pushBean:Lcom/pinguo/camera360/push/PushBean;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/push/PushThread$FileBean;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/push/PushThread$FileBean;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->success:I

    return-void
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/push/PushThread$FileBean;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->day:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/push/PushThread$FileBean;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->success:I

    return v0
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/push/PushThread$FileBean;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->failCount:I

    return v0
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/push/PushThread$FileBean;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->failCount:I

    return-void
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/push/PushThread$FileBean;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/PushThread$FileBean;->day:Ljava/lang/String;

    return-object v0
.end method
