.class public Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;
.super Ljava/lang/Object;
.source "MyCenterGridViewAdapter.java"
.field public mIconId:I
.field public mListener:Landroid/view/View$OnClickListener;
.field public mTitleId:I
.field public mUnreadCount:I
.method public constructor <init>(IILandroid/view/View$OnClickListener;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;->mTitleId:I
iput p2, p0, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;->mIconId:I
iput-object p3, p0, Lcom/pinguo/camera360/mycenter/MyCenterGridViewAdapter$AdapterItem;->mListener:Landroid/view/View$OnClickListener;
return-void
.end method