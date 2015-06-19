.class  Lcom/glympse/android/lib/go;
.super Ljava/lang/Object;
.source "PersonBase.java"
.implements Lcom/glympse/android/lib/GPerson;
.field public static final INVALID_ID:J = -0x1L
.field protected _name:Ljava/lang/String;
.field protected mj:Lcom/glympse/android/api/GImage;
.field protected qQ:J
.field protected qR:Ljava/lang/String;
.field protected qS:Ljava/lang/String;
.field protected qT:Ljava/lang/String;
.field protected qU:Ljava/lang/String;
.field protected qV:Ljava/lang/String;
.field protected qW:Ljava/lang/String;
.field protected qX:Ljava/lang/String;
.field protected qY:Lcom/glympse/android/hal/GVector;
.method protected constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/go;->qY:Lcom/glympse/android/hal/GVector;
return-void
.end method
.method public static getNormalizedName(Ljava/lang/String;)Ljava/lang/String;
.registers 2
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Platform;->lowercaseString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method
.method public static personAvatarUrl(J)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x40
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-static {}, Lcom/glympse/android/lib/go;->personSchema()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "://"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v1, "/avatar"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static personIdFromUri(Lcom/glympse/android/lib/GUri;)J
.registers 5
const-wide/16 v0, -0x1
if-nez p0, :cond_5
:goto_4
:cond_4
return-wide v0
:cond_5
invoke-interface {p0}, Lcom/glympse/android/lib/GUri;->getSegments()Lcom/glympse/android/core/GArray;
move-result-object v2
if-eqz v2, :cond_4
invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I
move-result v3
if-eqz v3, :cond_4
const/4 v0, 0x0
invoke-interface {v2, v0}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->toLong(Ljava/lang/String;)J
move-result-wide v0
goto :goto_4
.end method
.method public static personSchema()Ljava/lang/String;
.registers 1
const-string v0, "person"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public addContact(Lcom/glympse/android/lib/GContact;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/go;->qY:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public getAvatar()Lcom/glympse/android/api/GImage;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/go;->mj:Lcom/glympse/android/api/GImage;
return-object v0
.end method
.method public getCompany()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/go;->qW:Ljava/lang/String;
return-object v0
.end method
.method public getContacts()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/go;->qY:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public getFirstName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/go;->qR:Ljava/lang/String;
return-object v0
.end method
.method public getId()J
.registers 3
iget-wide v0, p0, Lcom/glympse/android/lib/go;->qQ:J
return-wide v0
.end method
.method public getLastName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/go;->qT:Ljava/lang/String;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/go;->_name:Ljava/lang/String;
return-object v0
.end method
.method public getNormalizedCompany()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/go;->qX:Ljava/lang/String;
return-object v0
.end method
.method public getNormalizedFirstName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/go;->qS:Ljava/lang/String;
return-object v0
.end method
.method public getNormalizedLastName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/go;->qU:Ljava/lang/String;
return-object v0
.end method
.method public getNormalizedName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/go;->qV:Ljava/lang/String;
return-object v0
.end method
.method public getSpan()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public prepareAvatar()V
.registers 3
iget-wide v0, p0, Lcom/glympse/android/lib/go;->qQ:J
invoke-static {v0, v1}, Lcom/glympse/android/lib/go;->personAvatarUrl(J)Ljava/lang/String;
move-result-object v1
const/4 v0, 0x0
invoke-static {v0}, Lcom/glympse/android/api/GlympseFactory;->createImage(Lcom/glympse/android/core/GDrawable;)Lcom/glympse/android/api/GImage;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GImagePrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setUrl(Ljava/lang/String;)V
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setSupportedCache(I)V
iput-object v0, p0, Lcom/glympse/android/lib/go;->mj:Lcom/glympse/android/api/GImage;
return-void
.end method
.method public sortContacts()V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/go;->qY:Lcom/glympse/android/hal/GVector;
new-instance v1, Lcom/glympse/android/lib/gp;
const/4 v2, 0x0
invoke-direct {v1, v2}, Lcom/glympse/android/lib/gp;-><init>(Lcom/glympse/android/lib/go$1;)V
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->sort(Ljava/util/Comparator;)V
return-void
.end method