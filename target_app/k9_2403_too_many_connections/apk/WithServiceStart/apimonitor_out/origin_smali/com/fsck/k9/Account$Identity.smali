.class public Lcom/fsck/k9/Account$Identity;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Identity"
.end annotation


# instance fields
.field mDescription:Ljava/lang/String;

.field mEmail:Ljava/lang/String;

.field mName:Ljava/lang/String;

.field mSignature:Ljava/lang/String;

.field final synthetic this$0:Lcom/fsck/k9/Account;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/Account;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account$Identity;->this$0:Lcom/fsck/k9/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account$Identity;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account$Identity;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account$Identity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/Account$Identity;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account$Identity;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account$Identity;->mEmail:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account$Identity;->mName:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/Account$Identity;->mSignature:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account.Identity(description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/Account$Identity;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/Account$Identity;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/Account$Identity;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/Account$Identity;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
