.class public final Lcom/mapquest/android/maps/c;
.super Ljava/lang/Object;
.source "Configuration.java"
.field  a:Lcom/mapquest/android/maps/MapView;
.field  b:Z
.field  c:Z
.field  d:Ljava/lang/String;
.field  e:Ljava/lang/String;
.field  f:I
.field  g:Ljava/lang/String;
.method constructor <init>(Lcom/mapquest/android/maps/MapView;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mapquest/android/maps/c;->b:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/mapquest/android/maps/c;->c:Z
iput-object v1, p0, Lcom/mapquest/android/maps/c;->d:Ljava/lang/String;
iput-object v1, p0, Lcom/mapquest/android/maps/c;->e:Ljava/lang/String;
const/4 v0, 0x5
iput v0, p0, Lcom/mapquest/android/maps/c;->f:I
const-string v0, "http://www.mapquestapi.com/traffic/v1"
iput-object v0, p0, Lcom/mapquest/android/maps/c;->g:Ljava/lang/String;
iput-object p1, p0, Lcom/mapquest/android/maps/c;->a:Lcom/mapquest/android/maps/MapView;
return-void
.end method