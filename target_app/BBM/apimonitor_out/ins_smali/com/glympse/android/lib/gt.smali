.class  Lcom/glympse/android/lib/gt;
.super Lcom/glympse/android/lib/go;
.source "PersonMerged.java"
.field private rf:Lcom/glympse/android/hal/GVector;
.field private rg:Lcom/glympse/android/lib/GPerson;
.field private rh:I
.method public constructor <init>(Lcom/glympse/android/lib/GPerson;)V
.registers 3
invoke-direct {p0}, Lcom/glympse/android/lib/go;-><init>()V
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/gt;->rf:Lcom/glympse/android/hal/GVector;
iput-object p1, p0, Lcom/glympse/android/lib/gt;->rg:Lcom/glympse/android/lib/GPerson;
const/4 v0, 0x0
iput v0, p0, Lcom/glympse/android/lib/gt;->rh:I
invoke-virtual {p0, p1}, Lcom/glympse/android/lib/gt;->a(Lcom/glympse/android/lib/GPerson;)V
return-void
.end method
.method public constructor <init>(Lcom/glympse/android/lib/GPerson;Lcom/glympse/android/lib/GPerson;)V
.registers 4
invoke-direct {p0}, Lcom/glympse/android/lib/go;-><init>()V
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/gt;->rf:Lcom/glympse/android/hal/GVector;
iput-object p1, p0, Lcom/glympse/android/lib/gt;->rg:Lcom/glympse/android/lib/GPerson;
const/4 v0, 0x0
iput v0, p0, Lcom/glympse/android/lib/gt;->rh:I
invoke-virtual {p0, p1}, Lcom/glympse/android/lib/gt;->a(Lcom/glympse/android/lib/GPerson;)V
invoke-virtual {p0, p2}, Lcom/glympse/android/lib/gt;->a(Lcom/glympse/android/lib/GPerson;)V
return-void
.end method
.method public a(Lcom/glympse/android/lib/GPerson;)V
.registers 13
const/4 v2, 0x1
const/4 v4, 0x0
iget v0, p0, Lcom/glympse/android/lib/gt;->rh:I
invoke-interface {p1}, Lcom/glympse/android/lib/GPerson;->getSpan()I
move-result v1
add-int/2addr v0, v1
iput v0, p0, Lcom/glympse/android/lib/gt;->rh:I
iget-object v0, p0, Lcom/glympse/android/lib/gt;->mj:Lcom/glympse/android/api/GImage;
if-nez v0, :cond_1b
invoke-interface {p1}, Lcom/glympse/android/lib/GPerson;->getAvatar()Lcom/glympse/android/api/GImage;
move-result-object v0
if-eqz v0, :cond_1b
invoke-interface {p1}, Lcom/glympse/android/lib/GPerson;->getAvatar()Lcom/glympse/android/api/GImage;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/gt;->mj:Lcom/glympse/android/api/GImage;
:cond_1b
iget-object v0, p0, Lcom/glympse/android/lib/gt;->qY:Lcom/glympse/android/hal/GVector;
iget-object v1, p0, Lcom/glympse/android/lib/gt;->qY:Lcom/glympse/android/hal/GVector;
invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->length()I
move-result v1
invoke-interface {p1}, Lcom/glympse/android/lib/GPerson;->getContacts()Lcom/glympse/android/core/GArray;
move-result-object v3
invoke-interface {v3}, Lcom/glympse/android/core/GArray;->length()I
move-result v3
add-int/2addr v1, v3
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->ensureCapacity(I)V
iget-object v0, p0, Lcom/glympse/android/lib/gt;->qY:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->length()I
move-result v0
if-lez v0, :cond_93
invoke-interface {p1}, Lcom/glympse/android/lib/GPerson;->getContacts()Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/core/GArray;->length()I
move-result v7
move v6, v4
move v3, v4
:goto_41
if-ge v6, v7, :cond_88
invoke-interface {p1}, Lcom/glympse/android/lib/GPerson;->getContacts()Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v0, v6}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GContact;
iget-object v1, p0, Lcom/glympse/android/lib/gt;->qY:Lcom/glympse/android/hal/GVector;
invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->length()I
move-result v8
move v5, v4
:goto_54
if-ge v5, v8, :cond_b3
iget-object v1, p0, Lcom/glympse/android/lib/gt;->qY:Lcom/glympse/android/hal/GVector;
invoke-virtual {v1, v5}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/lib/GContact;
invoke-interface {v0}, Lcom/glympse/android/lib/GContact;->getType()I
move-result v9
invoke-interface {v1}, Lcom/glympse/android/lib/GContact;->getType()I
move-result v10
if-ne v9, v10, :cond_84
invoke-interface {v0}, Lcom/glympse/android/lib/GContact;->getNormalizedAddress()Ljava/lang/String;
move-result-object v9
invoke-interface {v1}, Lcom/glympse/android/lib/GContact;->getNormalizedAddress()Ljava/lang/String;
move-result-object v1
invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_84
move v1, v2
:goto_77
if-nez v1, :cond_b1
iget-object v1, p0, Lcom/glympse/android/lib/gt;->qY:Lcom/glympse/android/hal/GVector;
invoke-virtual {v1, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
move v0, v2
:goto_7f
add-int/lit8 v1, v6, 0x1
move v6, v1
move v3, v0
goto :goto_41
:cond_84
add-int/lit8 v1, v5, 0x1
move v5, v1
goto :goto_54
:cond_88
if-eqz v3, :cond_8d
invoke-virtual {p0}, Lcom/glympse/android/lib/gt;->sortContacts()V
:cond_8d
iget-object v0, p0, Lcom/glympse/android/lib/gt;->rf:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
return-void
:cond_93
invoke-interface {p1}, Lcom/glympse/android/lib/GPerson;->getContacts()Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/core/GArray;->length()I
move-result v2
move v1, v4
:goto_9c
if-ge v1, v2, :cond_8d
invoke-interface {p1}, Lcom/glympse/android/lib/GPerson;->getContacts()Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v0, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GContact;
iget-object v3, p0, Lcom/glympse/android/lib/gt;->qY:Lcom/glympse/android/hal/GVector;
invoke-virtual {v3, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_9c
:cond_b1
move v0, v3
goto :goto_7f
:cond_b3
move v1, v4
goto :goto_77
.end method
.method public addContact(Lcom/glympse/android/lib/GContact;)V
.registers 2
return-void
.end method
.method public getCompany()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gt;->rg:Lcom/glympse/android/lib/GPerson;
invoke-interface {v0}, Lcom/glympse/android/lib/GPerson;->getCompany()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getFirstName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gt;->rg:Lcom/glympse/android/lib/GPerson;
invoke-interface {v0}, Lcom/glympse/android/lib/GPerson;->getFirstName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getId()J
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/gt;->rg:Lcom/glympse/android/lib/GPerson;
invoke-interface {v0}, Lcom/glympse/android/lib/GPerson;->getId()J
move-result-wide v0
return-wide v0
.end method
.method public getLastName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gt;->rg:Lcom/glympse/android/lib/GPerson;
invoke-interface {v0}, Lcom/glympse/android/lib/GPerson;->getLastName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gt;->rg:Lcom/glympse/android/lib/GPerson;
invoke-interface {v0}, Lcom/glympse/android/lib/GPerson;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getNormalizedCompany()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gt;->rg:Lcom/glympse/android/lib/GPerson;
invoke-interface {v0}, Lcom/glympse/android/lib/GPerson;->getNormalizedCompany()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getNormalizedFirstName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gt;->rg:Lcom/glympse/android/lib/GPerson;
invoke-interface {v0}, Lcom/glympse/android/lib/GPerson;->getNormalizedFirstName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getNormalizedLastName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gt;->rg:Lcom/glympse/android/lib/GPerson;
invoke-interface {v0}, Lcom/glympse/android/lib/GPerson;->getNormalizedLastName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getNormalizedName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gt;->rg:Lcom/glympse/android/lib/GPerson;
invoke-interface {v0}, Lcom/glympse/android/lib/GPerson;->getNormalizedName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getSpan()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/gt;->rh:I
return v0
.end method
.method public prepareAvatar()V
.registers 1
return-void
.end method