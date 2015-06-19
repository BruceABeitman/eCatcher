.class public Lcom/pinguo/camera360/effect/model/entity/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public textureDir:Ljava/lang/String;

.field public textureIdx:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/effect/model/entity/Texture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/effect/model/entity/Texture;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureDir:Ljava/lang/String;

    return-void
.end method

.method public static isLegal(Lcom/pinguo/camera360/effect/model/entity/Texture;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget v1, p0, Lcom/pinguo/camera360/effect/model/entity/Texture;->type:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/pinguo/camera360/effect/model/entity/Texture;->type:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_3

    iget v1, p0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureIdx:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureIdx:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_3

    iget-object v1, p0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureDir:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/pinguo/camera360/effect/model/entity/Texture;->textureDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method
