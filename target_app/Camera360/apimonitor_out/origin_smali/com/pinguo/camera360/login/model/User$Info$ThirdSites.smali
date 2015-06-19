.class public Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;
.super Ljava/lang/Object;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/login/model/User$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThirdSites"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$FacebookSite;,
        Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$KupanSite;,
        Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$QQSite;,
        Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$SinaSite;,
        Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$TwitterSite;
    }
.end annotation


# instance fields
.field public facebook:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$FacebookSite;

.field public kupan:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$KupanSite;

.field public qzone:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$QQSite;

.field public sina:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$SinaSite;

.field public twitter:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites$TwitterSite;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
