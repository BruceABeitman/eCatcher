.class  Lcom/glympse/android/lib/p;
.super Ljava/lang/Object;
.source "Application.java"
.implements Lcom/glympse/android/lib/GApplicationPrivate;
.field private _name:Ljava/lang/String;
.field private hA:Ljava/lang/String;
.field private hB:Lcom/glympse/android/hal/GVector;
.field private ho:Ljava/lang/String;
.field private hp:Lcom/glympse/android/api/GImage;
.field private hq:Ljava/lang/String;
.field private hr:Ljava/lang/String;
.field private hs:Ljava/lang/String;
.field private ht:Ljava/lang/String;
.field private hu:Ljava/lang/String;
.field private hv:Ljava/lang/String;
.field private hw:Ljava/lang/String;
.field private hx:Ljava/lang/String;
.field private hy:I
.field private hz:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/glympse/android/lib/p;->hy:I
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/p;->hB:Lcom/glympse/android/hal/GVector;
return-void
.end method
.method public addLaunchArgument(ILjava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/p;->hB:Lcom/glympse/android/hal/GVector;
new-instance v1, Lcom/glympse/android/lib/gb;
invoke-direct {v1, p1, p2, p3}, Lcom/glympse/android/lib/gb;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public canAddressPerson()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/p;->hA:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public createInvite()Lcom/glympse/android/api/GInvite;
.registers 5
const/16 v0, 0xb
iget-object v1, p0, Lcom/glympse/android/lib/p;->ho:Ljava/lang/String;
iget-object v2, p0, Lcom/glympse/android/lib/p;->_name:Ljava/lang/String;
const/4 v3, 0x0
invoke-static {v0, v1, v2, v3}, Lcom/glympse/android/api/GlympseFactory;->createInvite(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
move-result-object v0
return-object v0
.end method
.method public decode(Lcom/glympse/android/core/GPrimitive;)V
.registers 2
return-void
.end method
.method public encode(Lcom/glympse/android/core/GPrimitive;I)V
.registers 3
return-void
.end method
.method public getIcon()Lcom/glympse/android/api/GImage;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/p;->hp:Lcom/glympse/android/api/GImage;
return-object v0
.end method
.method public getId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/p;->ho:Ljava/lang/String;
return-object v0
.end method
.method public getInstallPackage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/p;->hq:Ljava/lang/String;
return-object v0
.end method
.method public getInstallScheme()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/p;->hr:Ljava/lang/String;
return-object v0
.end method
.method public getInstallUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/p;->hs:Ljava/lang/String;
return-object v0
.end method
.method public getLaunchAction()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/p;->hv:Ljava/lang/String;
return-object v0
.end method
.method public getLaunchArguments()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/p;->hB:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public getLaunchClassName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/p;->hx:Ljava/lang/String;
return-object v0
.end method
.method public getLaunchFlags()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/p;->hy:I
return v0
.end method
.method public getLaunchMimeType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/p;->hw:Ljava/lang/String;
return-object v0
.end method
.method public getLaunchMode()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/p;->ht:Ljava/lang/String;
return-object v0
.end method
.method public getLaunchPackage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/p;->hu:Ljava/lang/String;
return-object v0
.end method
.method public getLaunchUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/p;->hz:Ljava/lang/String;
return-object v0
.end method
.method public getLaunchUriDirect()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/p;->hA:Ljava/lang/String;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/p;->_name:Ljava/lang/String;
return-object v0
.end method
.method public isEqual(Lcom/glympse/android/core/GCommon;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public setIcon(Lcom/glympse/android/api/GImage;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/p;->hp:Lcom/glympse/android/api/GImage;
return-void
.end method
.method public setInstallPackage(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/p;->hq:Ljava/lang/String;
return-void
.end method
.method public setInstallScheme(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/p;->hr:Ljava/lang/String;
return-void
.end method
.method public setInstallUri(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/p;->hs:Ljava/lang/String;
return-void
.end method
.method public setLaunchAction(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/p;->hv:Ljava/lang/String;
return-void
.end method
.method public setLaunchClassName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/p;->hx:Ljava/lang/String;
return-void
.end method
.method public setLaunchFlags(I)V
.registers 2
iput p1, p0, Lcom/glympse/android/lib/p;->hy:I
return-void
.end method
.method public setLaunchMimeType(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/p;->hw:Ljava/lang/String;
return-void
.end method
.method public setLaunchMode(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/p;->ht:Ljava/lang/String;
return-void
.end method
.method public setLaunchPackage(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/p;->hu:Ljava/lang/String;
return-void
.end method
.method public setLaunchUri(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/p;->hz:Ljava/lang/String;
return-void
.end method
.method public setLaunchUriDirect(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/p;->hA:Ljava/lang/String;
return-void
.end method
.method public setName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/p;->_name:Ljava/lang/String;
return-void
.end method
.method public setSubtype(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/p;->ho:Ljava/lang/String;
return-void
.end method