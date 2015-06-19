.class public Lcom/lenovo/anyshare/sdk/internal/ao$a;
.super Lcom/lenovo/anyshare/sdk/internal/au;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/au;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    invoke-super {p0}, Lcom/lenovo/anyshare/sdk/internal/au;->getCode()I

    move-result v0

    return v0
.end method
