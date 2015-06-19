.class public final Lcom/google/android/gms/wallet/g;
.super Ljava/lang/Object;
.field final synthetic a:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
.method private constructor <init>(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/wallet/g;->a:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/g;-><init>(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
return-void
.end method
.method public a()Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
.registers 5
const/4 v2, 0x0
const/4 v1, 0x1
iget-object v0, p0, Lcom/google/android/gms/wallet/g;->a:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
iget-object v0, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->b:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_28
move v0, v1
:goto_d
const-string v3, "googleTransactionId is required"
invoke-static {v0, v3}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/wallet/g;->a:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
iget v0, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->c:I
if-lt v0, v1, :cond_2a
iget-object v0, p0, Lcom/google/android/gms/wallet/g;->a:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
iget v0, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->c:I
const/16 v3, 0x8
if-gt v0, v3, :cond_2a
:goto_20
const-string v0, "status is an unrecognized value"
invoke-static {v1, v0}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/wallet/g;->a:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
return-object v0
:cond_28
move v0, v2
goto :goto_d
:cond_2a
move v1, v2
goto :goto_20
.end method
.method public a(I)Lcom/google/android/gms/wallet/g;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/g;->a:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
iput p1, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->c:I
return-object p0
.end method
.method public a(Ljava/lang/String;)Lcom/google/android/gms/wallet/g;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/g;->a:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
iput-object p1, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->b:Ljava/lang/String;
return-object p0
.end method
.method public b(Ljava/lang/String;)Lcom/google/android/gms/wallet/g;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/g;->a:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
iput-object p1, v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->d:Ljava/lang/String;
return-object p0
.end method