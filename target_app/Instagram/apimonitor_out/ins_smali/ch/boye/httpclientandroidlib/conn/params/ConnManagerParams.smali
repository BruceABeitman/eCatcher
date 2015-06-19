.class public final Lch/boye/httpclientandroidlib/conn/params/ConnManagerParams;
.super Ljava/lang/Object;
.source "ConnManagerParams.java"
.implements Lch/boye/httpclientandroidlib/conn/params/ConnManagerPNames;
.field private static final DEFAULT_CONN_PER_ROUTE:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute; = null
.field public static final DEFAULT_MAX_TOTAL_CONNECTIONS:I = 0x14
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParams$1;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParams$1;-><init>()V
sput-object v0, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParams;->DEFAULT_CONN_PER_ROUTE:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getMaxConnectionsPerRoute(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;
.registers 3
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP parameters must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const-string v0, "http.conn-manager.max-per-route"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;
if-nez v0, :cond_16
sget-object v0, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParams;->DEFAULT_CONN_PER_ROUTE:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;
:cond_16
return-object v0
.end method
.method public static getMaxTotalConnections(Lch/boye/httpclientandroidlib/params/HttpParams;)I
.registers 3
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP parameters must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const-string v0, "http.conn-manager.max-total"
const/16 v1, 0x14
invoke-interface {p0, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public static getTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)J
.registers 3
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP parameters may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const-string v0, "http.conn-manager.timeout"
invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
if-eqz v0, :cond_19
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
:goto_18
return-wide v0
:cond_19
const-string v0, "http.connection.timeout"
const/4 v1, 0x0
invoke-interface {p0, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I
move-result v0
int-to-long v0, v0
goto :goto_18
.end method
.method public static setMaxConnectionsPerRoute(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;)V
.registers 4
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP parameters must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const-string v0, "http.conn-manager.max-per-route"
invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method public static setMaxTotalConnections(Lch/boye/httpclientandroidlib/params/HttpParams;I)V
.registers 4
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP parameters must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const-string v0, "http.conn-manager.max-total"
invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method public static setTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;J)V
.registers 5
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP parameters may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const-string v0, "http.conn-manager.timeout"
invoke-interface {p0, v0, p1, p2}, Lch/boye/httpclientandroidlib/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method