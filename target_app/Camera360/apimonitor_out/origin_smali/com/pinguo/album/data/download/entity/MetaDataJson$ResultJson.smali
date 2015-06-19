.class public Lcom/pinguo/album/data/download/entity/MetaDataJson$ResultJson;
.super Ljava/lang/Object;
.source "MetaDataJson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/download/entity/MetaDataJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultJson"
.end annotation


# instance fields
.field public albums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/album/data/download/entity/TagJson;",
            ">;"
        }
    .end annotation
.end field

.field public hasMore:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
