.class public Lcom/pinguo/camera360/login/model/Sso$SsoInfo;
.super Ljava/lang/Object;
.source "Sso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/login/model/Sso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SsoInfo"
.end annotation


# instance fields
.field public access_token:Ljava/lang/String;

.field public expires_in:Ljava/lang/String;

.field public refresh_token:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
