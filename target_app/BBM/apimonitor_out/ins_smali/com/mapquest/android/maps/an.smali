.class final Lcom/mapquest/android/maps/an;
.super Ljava/lang/Object;
.source "MapProvider.java"
.field public static a:Lcom/mapquest/android/maps/an;
.field public static b:Lcom/mapquest/android/maps/an;
.field public static c:Lcom/mapquest/android/maps/an;
.field final d:Ljava/lang/String;
.field protected e:Ljava/lang/String;
.field protected f:Ljava/lang/String;
.field protected g:Ljava/lang/String;
.field protected h:Ljava/lang/String;
.field protected i:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/mapquest/android/maps/an;
const-string v1, "OSM"
invoke-direct {v0, v1}, Lcom/mapquest/android/maps/an;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/mapquest/android/maps/an;->a:Lcom/mapquest/android/maps/an;
new-instance v0, Lcom/mapquest/android/maps/an;
const-string v1, "MAPQUEST"
invoke-direct {v0, v1}, Lcom/mapquest/android/maps/an;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/mapquest/android/maps/an;->b:Lcom/mapquest/android/maps/an;
new-instance v0, Lcom/mapquest/android/maps/an;
const-string v1, "TOMTOM"
invoke-direct {v0, v1}, Lcom/mapquest/android/maps/an;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/mapquest/android/maps/an;->c:Lcom/mapquest/android/maps/an;
sget-object v0, Lcom/mapquest/android/maps/an;->a:Lcom/mapquest/android/maps/an;
const-string v1, "http://otile1.mqcdn.com/tiles/1.0.0/"
iput-object v1, v0, Lcom/mapquest/android/maps/an;->f:Ljava/lang/String;
sget-object v0, Lcom/mapquest/android/maps/an;->a:Lcom/mapquest/android/maps/an;
const-string v1, ""
iput-object v1, v0, Lcom/mapquest/android/maps/an;->h:Ljava/lang/String;
sget-object v0, Lcom/mapquest/android/maps/an;->a:Lcom/mapquest/android/maps/an;
const-string v1, ""
iput-object v1, v0, Lcom/mapquest/android/maps/an;->i:Ljava/lang/String;
sget-object v0, Lcom/mapquest/android/maps/an;->b:Lcom/mapquest/android/maps/an;
const-string v1, "http://mtile01.mqcdn.com/tiles/1.0.0/vy/"
iput-object v1, v0, Lcom/mapquest/android/maps/an;->f:Ljava/lang/String;
sget-object v0, Lcom/mapquest/android/maps/an;->b:Lcom/mapquest/android/maps/an;
const-string v1, "http://www.mapquestapi.com/traffic/v1"
iput-object v1, v0, Lcom/mapquest/android/maps/an;->h:Ljava/lang/String;
sget-object v0, Lcom/mapquest/android/maps/an;->b:Lcom/mapquest/android/maps/an;
const-string v1, "Amjtd%7Cluu2216rn1%2C8w%3Do5-lz7l5"
iput-object v1, v0, Lcom/mapquest/android/maps/an;->i:Ljava/lang/String;
sget-object v0, Lcom/mapquest/android/maps/an;->c:Lcom/mapquest/android/maps/an;
const-string v1, "http://ttiles01.mqcdn.com/tiles/1.0.0/vy/"
iput-object v1, v0, Lcom/mapquest/android/maps/an;->f:Ljava/lang/String;
sget-object v0, Lcom/mapquest/android/maps/an;->c:Lcom/mapquest/android/maps/an;
const-string v1, "http://traffic.tt.mapquest.com/traffic/v1"
iput-object v1, v0, Lcom/mapquest/android/maps/an;->h:Ljava/lang/String;
sget-object v0, Lcom/mapquest/android/maps/an;->c:Lcom/mapquest/android/maps/an;
const-string v1, "Cmjtd%7Cluua2qu2nd%2Cb5%3Do5-gzb0"
iput-object v1, v0, Lcom/mapquest/android/maps/an;->i:Ljava/lang/String;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/an;->e:Ljava/lang/String;
iput-object v0, p0, Lcom/mapquest/android/maps/an;->f:Ljava/lang/String;
iput-object v0, p0, Lcom/mapquest/android/maps/an;->g:Ljava/lang/String;
iput-object v0, p0, Lcom/mapquest/android/maps/an;->h:Ljava/lang/String;
iput-object v0, p0, Lcom/mapquest/android/maps/an;->i:Ljava/lang/String;
iput-object p1, p0, Lcom/mapquest/android/maps/an;->d:Ljava/lang/String;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mapquest/android/maps/an;->f:Ljava/lang/String;
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:cond_4
:goto_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
check-cast p1, Lcom/mapquest/android/maps/an;
iget-object v2, p0, Lcom/mapquest/android/maps/an;->d:Ljava/lang/String;
if-nez v2, :cond_15
iget-object v2, p1, Lcom/mapquest/android/maps/an;->d:Ljava/lang/String;
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
:cond_15
iget-object v2, p0, Lcom/mapquest/android/maps/an;->d:Ljava/lang/String;
iget-object v3, p1, Lcom/mapquest/android/maps/an;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Lcom/mapquest/android/maps/an;->d:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
return v0
.end method