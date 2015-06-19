.class  Lcom/android/vending/billing/IMarketBillingService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/android/vending/billing/IMarketBillingService;
.field private a:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/android/vending/billing/IMarketBillingService$Stub$Proxy;->a:Landroid/os/IBinder;
return-void
.end method
.method public a(Landroid/os/Bundle;)Landroid/os/Bundle;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.android.vending.billing.IMarketBillingService"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_36
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
iget-object v0, p0, Lcom/android/vending/billing/IMarketBillingService$Stub$Proxy;->a:Landroid/os/IBinder;
const/4 v3, 0x1
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_43
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:try_end_2f
.catchall {:try_start_8 .. :try_end_2f} :catchall_3b
:goto_2f
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-object v0
:cond_36
const/4 v0, 0x0
:try_start_37
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_3a
.catchall {:try_start_37 .. :try_end_3a} :catchall_3b
goto :goto_17
:catchall_3b
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_43
const/4 v0, 0x0
goto :goto_2f
.end method
.method public a()Ljava/lang/String;
.registers 2
const-string v0, "com.android.vending.billing.IMarketBillingService"
return-object v0
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/android/vending/billing/IMarketBillingService$Stub$Proxy;->a:Landroid/os/IBinder;
return-object v0
.end method