.class public Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;
.super Ljava/lang/Object;
.source "AppBindModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/adv/AppBindModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppBindItem"
.end annotation


# instance fields
.field public appname:Ljava/lang/String;

.field public downloadLink:Ljava/lang/String;

.field public packagename:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public showPic:Ljava/lang/String;

.field public showText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
