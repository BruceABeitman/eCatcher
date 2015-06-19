.class public Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;
.super Ljava/lang/Object;
.source "IdPassportSort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PassPortSortRoot"
.end annotation


# instance fields
.field public categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassportCategory;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
