.class public Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
.super Ljava/lang/Object;
.source "PGEditStep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PGEditStepBean"
.end annotation


# instance fields
.field private bigPhoto:Ljava/lang/String;

.field private effectProgressBean:Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;

.field private nowShowPhoto:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBigPhoto()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->bigPhoto:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectProgressBean()Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->effectProgressBean:Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;

    return-object v0
.end method

.method public getNowShowPhoto()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->nowShowPhoto:Ljava/lang/String;

    return-object v0
.end method

.method public setBigPhoto(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->bigPhoto:Ljava/lang/String;

    return-void
.end method

.method public setEffectProgressBean(Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->effectProgressBean:Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;

    return-void
.end method

.method public setNowShowPhoto(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->nowShowPhoto:Ljava/lang/String;

    return-void
.end method
