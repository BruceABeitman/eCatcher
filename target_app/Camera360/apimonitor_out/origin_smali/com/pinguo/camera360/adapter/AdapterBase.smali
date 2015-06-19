.class public abstract Lcom/pinguo/camera360/adapter/AdapterBase;
.super Landroid/widget/BaseAdapter;
.source "AdapterBase.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/adapter/AdapterBase;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/pinguo/camera360/adapter/AdapterBase;->mList:Ljava/util/List;

    iget-object v0, p0, Lcom/pinguo/camera360/adapter/AdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/adapter/AdapterBase;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/adapter/AdapterBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/adapter/AdapterBase;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/adapter/AdapterBase;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/adapter/AdapterBase;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/adapter/AdapterBase;->mList:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/adapter/AdapterBase;->mList:Ljava/util/List;

    return-void
.end method
