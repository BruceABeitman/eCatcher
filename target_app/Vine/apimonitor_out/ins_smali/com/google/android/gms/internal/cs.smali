.class public Lcom/google/android/gms/internal/cs;
.super Ljava/lang/Object;
.field private final mContext:Landroid/content/Context;
.field private oT:Ljava/lang/Object;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)I
.registers 8
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
const-string v1, "com.android.vending.billing.IInAppBillingService"
invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
const-string v1, "consumePurchase"
const/4 v2, 0x3
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
const/4 v3, 0x1
const-class v4, Ljava/lang/String;
aput-object v4, v2, v3
const/4 v3, 0x2
const-class v4, Ljava/lang/String;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/cs;->oT:Ljava/lang/Object;
invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
const/4 v2, 0x3
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
const/4 v4, 0x3
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
aput-object p1, v2, v3
const/4 v3, 0x2
aput-object p2, v2, v3
invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_44
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_46
move-result v0
:goto_45
return v0
:catch_46
move-exception v0
const-string v1, "IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x5
goto :goto_45
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.registers 9
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
const-string v1, "com.android.vending.billing.IInAppBillingService"
invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
const-string v1, "getBuyIntent"
const/4 v2, 0x5
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
const/4 v3, 0x1
const-class v4, Ljava/lang/String;
aput-object v4, v2, v3
const/4 v3, 0x2
const-class v4, Ljava/lang/String;
aput-object v4, v2, v3
const/4 v3, 0x3
const-class v4, Ljava/lang/String;
aput-object v4, v2, v3
const/4 v3, 0x4
const-class v4, Ljava/lang/String;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/cs;->oT:Ljava/lang/Object;
invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
const/4 v2, 0x5
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
const/4 v4, 0x3
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
aput-object p1, v2, v3
const/4 v3, 0x2
aput-object p2, v2, v3
const/4 v3, 0x3
const-string v4, "inapp"
aput-object v4, v2, v3
const/4 v3, 0x4
aput-object p3, v2, v3
invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:try_end_53
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54
:goto_53
return-object v0
:catch_54
move-exception v0
const-string v1, "IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x0
goto :goto_53
.end method
.method public b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.registers 8
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
const-string v1, "com.android.vending.billing.IInAppBillingService"
invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
const-string v1, "getPurchases"
const/4 v2, 0x4
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
const/4 v3, 0x1
const-class v4, Ljava/lang/String;
aput-object v4, v2, v3
const/4 v3, 0x2
const-class v4, Ljava/lang/String;
aput-object v4, v2, v3
const/4 v3, 0x3
const-class v4, Ljava/lang/String;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/cs;->oT:Ljava/lang/Object;
invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
const/4 v2, 0x4
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
const/4 v4, 0x3
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
aput-object p1, v2, v3
const/4 v3, 0x2
const-string v4, "inapp"
aput-object v4, v2, v3
const/4 v3, 0x3
aput-object p2, v2, v3
invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:try_end_4b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c
:goto_4b
return-object v0
:catch_4c
move-exception v0
const-string v1, "IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x0
goto :goto_4b
.end method
.method public destroy()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/cs;->oT:Ljava/lang/Object;
return-void
.end method
.method public o(Landroid/os/IBinder;)V
.registers 7
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/cs;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
const-string v1, "com.android.vending.billing.IInAppBillingService$Stub"
invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
const-string v1, "asInterface"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
const-class v4, Landroid/os/IBinder;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
const/4 v1, 0x0
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/cs;->oT:Ljava/lang/Object;
:goto_27
:try_end_27
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28
return-void
:catch_28
move-exception v0
const-string v0, "IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_27
.end method