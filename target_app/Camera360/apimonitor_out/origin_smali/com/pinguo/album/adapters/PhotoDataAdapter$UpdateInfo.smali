.class Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/adapters/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateInfo"
.end annotation


# instance fields
.field public contentEnd:I

.field public contentStart:I

.field public indexHint:I

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public reloadContent:Z

.field public size:I

.field public target:Lcom/pinguo/album/data/MediaPath;

.field public version:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/album/adapters/PhotoDataAdapter$UpdateInfo;-><init>()V

    return-void
.end method
