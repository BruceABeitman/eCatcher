.class public Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;
.super Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
.source "PGEditMenusBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PGEditTextureMenusBean"
.end annotation


# instance fields
.field private textureDegree:I

.field private texturePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getTextureDegree()I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;->textureDegree:I

    return v0
.end method

.method public getTexturePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;->texturePath:Ljava/lang/String;

    return-object v0
.end method

.method public rotateTextureDegree()V
    .registers 3

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;->textureDegree:I

    add-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;->textureDegree:I

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;->textureDegree:I

    const/16 v1, 0x168

    if-ne v0, v1, :cond_f

    const/4 v0, 0x0

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;->textureDegree:I

    :cond_f
    return-void
.end method

.method public setTexturePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTextureMenusBean;->texturePath:Ljava/lang/String;

    return-void
.end method
