.class public Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;
.super Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
.source "IconListPreference.java"


# instance fields
.field private mIconIds:[I

.field protected mKey:Ljava/lang/String;

.field private mUseSingleIcon:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->mIconIds:[I

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->mIconIds:[I

    iput-object v1, v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->mIconIds:[I

    :cond_e
    return-object v0
.end method

.method public filterUnsupported(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getEntryValues()[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/IntArray;

    invoke-direct {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IntArray;-><init>()V

    const/4 v1, 0x0

    array-length v3, v0

    :goto_b
    if-lt v1, v3, :cond_21

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->mIconIds:[I

    if-eqz v4, :cond_1d

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IntArray;->size()I

    move-result v4

    new-array v4, v4, [I

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IntArray;->toArray([I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->mIconIds:[I

    :cond_1d
    invoke-super {p0, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->filterUnsupported(Ljava/util/List;)V

    return-void

    :cond_21
    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_38

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->mIconIds:[I

    if-eqz v4, :cond_38

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->mIconIds:[I

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IntArray;->add(I)V

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public getIconIds()[I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->mIconIds:[I

    return-object v0
.end method

.method public getUseSingleIcon()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->mUseSingleIcon:Z

    return v0
.end method

.method public setIconIds([I)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->mIconIds:[I

    return-void
.end method

.method public setUseSingleIcon(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->mUseSingleIcon:Z

    return-void
.end method
