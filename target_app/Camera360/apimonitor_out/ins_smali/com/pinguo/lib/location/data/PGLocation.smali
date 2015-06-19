.class public Lcom/pinguo/lib/location/data/PGLocation;
.super Landroid/location/Location;
.source "PGLocation.java"
.field private address:Ljava/lang/String;
.method public constructor <init>(Landroid/location/Location;)V
.registers 3
invoke-static {p1}, Ldroidbox/android/location/Location;->droidbox_cons(Landroid/location/Location;)V
invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/lib/location/data/PGLocation;->address:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-static {p1}, Ldroidbox/android/location/Location;->droidbox_cons(Ljava/lang/String;)V
invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/lib/location/data/PGLocation;->address:Ljava/lang/String;
return-void
.end method
.method public getAddress()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/location/data/PGLocation;->address:Ljava/lang/String;
return-object v0
.end method
.method public setAddress(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/lib/location/data/PGLocation;->address:Ljava/lang/String;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
invoke-static {p0}, Ldroidbox/android/location/Location;->toString(Landroid/location/Location;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, ", address="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/lib/location/data/PGLocation;->address:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method