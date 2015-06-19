.class public Lcom/pinguo/camera360/shop/model/entity/ProductCategory;
.super Ljava/lang/Object;
.source "ProductCategory.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public categoryId:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public index:I

.field public isDefault:Z

.field public name:Ljava/lang/String;

.field public productCount:I

.field public products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/shop/model/entity/Product;",
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
