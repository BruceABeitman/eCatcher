.class public Lus/pinguo/androidsdk/PGColorBuffer;
.super Ljava/lang/Object;
.source "PGColorBuffer.java"


# instance fields
.field private argb:[I

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lus/pinguo/androidsdk/PGColorBuffer;->argb:[I

    iput v1, p0, Lus/pinguo/androidsdk/PGColorBuffer;->width:I

    iput v1, p0, Lus/pinguo/androidsdk/PGColorBuffer;->height:I

    return-void
.end method


# virtual methods
.method public getColorBuffer()[I
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/PGColorBuffer;->argb:[I

    return-object v0
.end method

.method public getImageHeight()I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/PGColorBuffer;->height:I

    return v0
.end method

.method public getImageWidth()I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/PGColorBuffer;->width:I

    return v0
.end method

.method public setColorBuffer([I)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/PGColorBuffer;->argb:[I

    return-void
.end method

.method public setImageHeight(I)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/PGColorBuffer;->height:I

    return-void
.end method

.method public setImageWidth(I)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/PGColorBuffer;->width:I

    return-void
.end method
