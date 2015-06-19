.class public Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$FastAdjustBean;
.super Ljava/lang/Object;
.source "PGEditRendererMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FastAdjustBean"
.end annotation


# instance fields
.field public effect:Ljava/lang/String;

.field public params:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$FastAdjustBean;->effect:Ljava/lang/String;

    iput-object p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$FastAdjustBean;->params:Ljava/lang/String;

    return-void
.end method
