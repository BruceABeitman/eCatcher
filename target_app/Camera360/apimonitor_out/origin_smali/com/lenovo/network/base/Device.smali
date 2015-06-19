.class public Lcom/lenovo/network/base/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/network/base/Device;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/lenovo/network/base/Device;->c:Ljava/lang/String;

    iput p3, p0, Lcom/lenovo/network/base/Device;->b:I

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    iget v0, p0, Lcom/lenovo/network/base/Device;->b:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/network/base/Device;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/network/base/Device;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/network/base/Device;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(I)V
    .registers 2

    iput p1, p0, Lcom/lenovo/network/base/Device;->b:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/network/base/Device;->a:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/network/base/Device;->d:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/network/base/Device;->c:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/lenovo/network/base/Device;->setNickname(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/lenovo/network/base/Device;->setIcon(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Device [id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/network/base/Device;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", icon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/network/base/Device;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/network/base/Device;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/network/base/Device;->d:Ljava/lang/String;

    if-eqz v1, :cond_3b

    const-string/jumbo v1, ", ip = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/network/base/Device;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
