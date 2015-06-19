.class public final Lcom/google/android/gms/internal/lz;
.super Ljava/lang/Object;
.field private final a:Ljava/lang/String;
.field private final b:Lorg/json/JSONObject;
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/dx;Ljava/lang/String;Lorg/json/JSONObject;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p2, Lcom/google/android/gms/internal/dx;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/internal/lz;->d:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/internal/lz;->b:Lorg/json/JSONObject;
iput-object p1, p0, Lcom/google/android/gms/internal/lz;->c:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/lz;->a:Ljava/lang/String;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/lz;->a:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/lz;->d:Ljava/lang/String;
return-object v0
.end method
.method public final c()Lorg/json/JSONObject;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/lz;->b:Lorg/json/JSONObject;
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/lz;->c:Ljava/lang/String;
return-object v0
.end method