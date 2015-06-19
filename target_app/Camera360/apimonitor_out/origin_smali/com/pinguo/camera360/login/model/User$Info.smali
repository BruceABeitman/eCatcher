.class public Lcom/pinguo/camera360/login/model/User$Info;
.super Ljava/lang/Object;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/login/model/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;
    }
.end annotation


# instance fields
.field public avatar:Ljava/lang/String;

.field public birthday:Ljava/lang/String;

.field public certificated:I

.field public description:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public forgetPass:I

.field public gender:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public lastLoginTime:J

.field public loginmode:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public regDateTime:J

.field public third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;

.field public token:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
