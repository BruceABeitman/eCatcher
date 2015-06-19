.class final Lcom/google/android/gms/identity/intents/a$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/c;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()I
.registers 2
const v0, 0x7fffffff
return v0
.end method
.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/internal/os;
.registers 14
instance-of v0, p1, Landroid/app/Activity;
const-string v1, "An Activity must be used for Address APIs"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V
new-instance v0, Lcom/google/android/gms/identity/intents/b;
invoke-direct {v0}, Lcom/google/android/gms/identity/intents/b;-><init>()V
if-eqz p4, :cond_29
instance-of v0, p4, Lcom/google/android/gms/identity/intents/b;
const-string v1, "Must use AddressOptions with Address API"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V
check-cast p4, Lcom/google/android/gms/identity/intents/b;
:goto_17
new-instance v0, Lcom/google/android/gms/internal/os;
move-object v1, p1
check-cast v1, Landroid/app/Activity;
invoke-virtual {p3}, Lcom/google/android/gms/internal/ee;->a()Ljava/lang/String;
move-result-object v5
iget v6, p4, Lcom/google/android/gms/identity/intents/b;->a:I
move-object v2, p2
move-object v3, p5
move-object v4, p6
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/os;-><init>(Landroid/app/Activity;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;Ljava/lang/String;I)V
return-object v0
:cond_29
move-object p4, v0
goto :goto_17
.end method
.method public synthetic b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/b;
.registers 8
invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/identity/intents/a$1;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/internal/os;
move-result-object v0
return-object v0
.end method