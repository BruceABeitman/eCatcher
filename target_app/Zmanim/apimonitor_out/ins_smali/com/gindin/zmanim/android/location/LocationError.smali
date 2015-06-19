.class public Lcom/gindin/zmanim/android/location/LocationError;
.super Ljava/lang/Object;
.source "LocationError.java"
.field public final errorCode:Lcom/gindin/zmanim/android/location/LocationError$Code;
.field public final message:Ljava/lang/String;
.method public constructor <init>(Lcom/gindin/zmanim/android/location/LocationError$Code;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/gindin/zmanim/android/location/LocationError;-><init>(Lcom/gindin/zmanim/android/location/LocationError$Code;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Lcom/gindin/zmanim/android/location/LocationError$Code;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/gindin/zmanim/android/location/LocationError;->errorCode:Lcom/gindin/zmanim/android/location/LocationError$Code;
iput-object p2, p0, Lcom/gindin/zmanim/android/location/LocationError;->message:Ljava/lang/String;
return-void
.end method