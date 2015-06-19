.class public Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;
.super Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;
.source "SchemeVauleArray.java"


# instance fields
.field final keyValues:Ljava/lang/String;

.field final separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V
    .registers 5

    invoke-direct {p0, p1, p3}, Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;-><init>(Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    iput-object p2, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;->keyValues:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;->separator:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V
    .registers 5

    invoke-direct {p0, p1, p4}, Lcom/pinguo/camera360/lib/camera/sheme/AbsBaseScheme;-><init>(Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/sheme/Type;)V

    iput-object p3, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;->separator:Ljava/lang/String;

    iput-object p2, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;->keyValues:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic doAnalyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;->doAnalyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doAnalyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/String;
    .registers 7

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;->keyValues:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;->separator:Ljava/lang/String;

    if-eqz v4, :cond_22

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/sheme/SchemeVauleArray;->separator:Ljava/lang/String;

    :goto_19
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1e
    array-length v4, v2

    if-lt v0, v4, :cond_26

    return-object v2

    :cond_22
    const-string/jumbo v4, ","

    goto :goto_19

    :cond_26
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e
.end method
