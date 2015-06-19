.class final Lcom/google/android/gms/wallet/j$1;
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
.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/internal/ry;
.registers 15
instance-of v0, p1, Landroid/app/Activity;
const-string v1, "An Activity must be used for Wallet APIs"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V
move-object v1, p1
check-cast v1, Landroid/app/Activity;
if-eqz p4, :cond_10
instance-of v0, p4, Lcom/google/android/gms/wallet/k;
if-eqz v0, :cond_2b
:cond_10
const/4 v0, 0x1
:goto_11
const-string v2, "WalletOptions must be used for Wallet APIs"
invoke-static {v0, v2}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V
if-eqz p4, :cond_2d
check-cast p4, Lcom/google/android/gms/wallet/k;
:goto_1a
new-instance v0, Lcom/google/android/gms/internal/ry;
iget v5, p4, Lcom/google/android/gms/wallet/k;->a:I
invoke-virtual {p3}, Lcom/google/android/gms/internal/ee;->a()Ljava/lang/String;
move-result-object v6
iget v7, p4, Lcom/google/android/gms/wallet/k;->b:I
move-object v2, p2
move-object v3, p5
move-object v4, p6
invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ry;-><init>(Landroid/app/Activity;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;ILjava/lang/String;I)V
return-object v0
:cond_2b
const/4 v0, 0x0
goto :goto_11
:cond_2d
new-instance p4, Lcom/google/android/gms/wallet/k;
const/4 v0, 0x0
invoke-direct {p4, v0}, Lcom/google/android/gms/wallet/k;-><init>(Lcom/google/android/gms/wallet/j$1;)V
goto :goto_1a
.end method
.method public synthetic b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/b;
.registers 8
invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/wallet/j$1;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/internal/ry;
move-result-object v0
return-object v0
.end method