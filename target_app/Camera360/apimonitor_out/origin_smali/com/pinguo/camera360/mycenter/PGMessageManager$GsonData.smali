.class Lcom/pinguo/camera360/mycenter/PGMessageManager$GsonData;
.super Ljava/lang/Object;
.source "PGMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/mycenter/PGMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GsonData"
.end annotation


# instance fields
.field public messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/mycenter/PGMessage;",
            ">;"
        }
    .end annotation
.end field

.field public status:I

.field public usermsgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/mycenter/PGOrderMessage;",
            ">;"
        }
    .end annotation
.end field

.field public version:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
