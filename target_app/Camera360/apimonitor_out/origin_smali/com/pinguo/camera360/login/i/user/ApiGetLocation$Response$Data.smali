.class public Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response$Data;
.super Ljava/lang/Object;
.source "ApiGetLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response$Data$Country;
    }
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public country:Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response$Data$Country;

.field public district:Ljava/lang/String;

.field public province:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
