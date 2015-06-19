.class public Lcom/pinguo/album/data/download/entity/TagJson;
.super Ljava/lang/Object;
.source "TagJson.java"


# instance fields
.field public date:Ljava/lang/String;

.field public pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/album/data/download/entity/PhotoJson;",
            ">;"
        }
    .end annotation
.end field

.field public week:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
