.class public Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassportCategory;
.super Ljava/lang/Object;
.source "IdPassportSort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PassportCategory"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
