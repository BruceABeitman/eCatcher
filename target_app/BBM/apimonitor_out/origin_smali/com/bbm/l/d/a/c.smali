.class public final Lcom/bbm/l/d/a/c;
.super Ljava/lang/Object;
.source "CarrierBillingResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbm/l/d/a/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bbm/l/d/a/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbm/l/d/a/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/bbm/l/d/a/c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    iget-object v0, p0, Lcom/bbm/l/d/a/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bbm/l/d/a/c;->a:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final b()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/bbm/l/d/a/c;->a:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/bbm/l/d/a/c;->a:Ljava/lang/String;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/bbm/l/d/a/c;->a:Ljava/lang/String;

    const-string v2, "CANCEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_19
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "CarrierBillingResult: ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    iget-object v2, p0, Lcom/bbm/l/d/a/c;->a:Ljava/lang/String;

    if-eqz v2, :cond_1e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "resultCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/l/d/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    :cond_1e
    iget-object v2, p0, Lcom/bbm/l/d/a/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_33

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "bangoContentID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/l/d/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    :cond_33
    iget-object v2, p0, Lcom/bbm/l/d/a/c;->d:Ljava/lang/String;

    if-eqz v2, :cond_46

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "bangoUserId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/l/d/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
