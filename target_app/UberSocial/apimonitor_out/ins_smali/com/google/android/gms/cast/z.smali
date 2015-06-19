.class final Lcom/google/android/gms/cast/z;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/cast/t;
.field private final a:Lcom/google/android/gms/common/api/Status;
.field private final b:Lorg/json/JSONObject;
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lorg/json/JSONObject;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/cast/z;->a:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/cast/z;->b:Lorg/json/JSONObject;
return-void
.end method
.method public a()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/z;->a:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method