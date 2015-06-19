.class public Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;
.super Ljava/lang/Object;
.source "PersonInfoSnsBindGVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterItem"
.end annotation


# instance fields
.field public mIconId:I

.field public mIsBind:Z

.field public mListener:Landroid/view/View$OnClickListener;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mTitle:Ljava/lang/String;

    iput p2, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mIconId:I

    iput-object p3, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getIsBind()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mIsBind:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public setIsBind(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mIsBind:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mTitle:Ljava/lang/String;

    return-void
.end method
