.class public abstract Lch/boye/httpclientandroidlib/params/AbstractHttpParams;
.super Ljava/lang/Object;
.source "AbstractHttpParams.java"
.implements Lch/boye/httpclientandroidlib/params/HttpParams;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getBooleanParameter(Ljava/lang/String;Z)Z
.registers 4
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_7
:goto_6
return p2
:cond_7
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result p2
goto :goto_6
.end method
.method public getDoubleParameter(Ljava/lang/String;D)D
.registers 5
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_7
:goto_6
return-wide p2
:cond_7
check-cast v0, Ljava/lang/Double;
invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
move-result-wide p2
goto :goto_6
.end method
.method public getIntParameter(Ljava/lang/String;I)I
.registers 4
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_7
:goto_6
return p2
:cond_7
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result p2
goto :goto_6
.end method
.method public getLongParameter(Ljava/lang/String;J)J
.registers 5
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_7
:goto_6
return-wide p2
:cond_7
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide p2
goto :goto_6
.end method
.method public isParameterFalse(Ljava/lang/String;)Z
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/params/AbstractHttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z
move-result v1
if-nez v1, :cond_8
const/4 v0, 0x1
:cond_8
return v0
.end method
.method public isParameterTrue(Ljava/lang/String;)Z
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/params/AbstractHttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;
.registers 4
if-eqz p2, :cond_8
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
:goto_4
invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
return-object p0
:cond_8
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_4
.end method
.method public setDoubleParameter(Ljava/lang/String;D)Lch/boye/httpclientandroidlib/params/HttpParams;
.registers 5
new-instance v0, Ljava/lang/Double;
invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V
invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
return-object p0
.end method
.method public setIntParameter(Ljava/lang/String;I)Lch/boye/httpclientandroidlib/params/HttpParams;
.registers 4
new-instance v0, Ljava/lang/Integer;
invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
return-object p0
.end method
.method public setLongParameter(Ljava/lang/String;J)Lch/boye/httpclientandroidlib/params/HttpParams;
.registers 5
new-instance v0, Ljava/lang/Long;
invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V
invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
return-object p0
.end method