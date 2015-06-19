.class public Lcom/pinguo/camera360/shop/model/entity/ShopType;
.super Ljava/lang/Object;
.source "ShopType.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/shop/model/entity/ProductCategory;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/shop/model/entity/ShopType;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_6
.end method
