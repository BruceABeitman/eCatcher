.class public Lcom/glympse/android/hal/Reflection$_NdefRecord;
.super Ljava/lang/Object;
.source "Reflection.java"
.field private static cR:Z
.field private static dD:Ljava/lang/Class;
.field private static dE:Ljava/lang/reflect/Constructor;
.field private static dF:Ljava/lang/reflect/Method;
.field private static dG:Ljava/lang/reflect/Method;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const/4 v0, 0x0
sput-boolean v0, Lcom/glympse/android/hal/Reflection$_NdefRecord;->cR:Z
sput-object v1, Lcom/glympse/android/hal/Reflection$_NdefRecord;->dD:Ljava/lang/Class;
sput-object v1, Lcom/glympse/android/hal/Reflection$_NdefRecord;->dE:Ljava/lang/reflect/Constructor;
sput-object v1, Lcom/glympse/android/hal/Reflection$_NdefRecord;->dF:Ljava/lang/reflect/Method;
sput-object v1, Lcom/glympse/android/hal/Reflection$_NdefRecord;->dG:Ljava/lang/reflect/Method;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static Load()V
.registers 7
const/4 v2, 0x1
const/4 v0, 0x0
sget-boolean v1, Lcom/glympse/android/hal/Reflection$_NdefRecord;->cR:Z
if-nez v1, :cond_6e
sput-boolean v2, Lcom/glympse/android/hal/Reflection$_NdefRecord;->cR:Z
:try_start_8
const-string v1, "android.nfc.NdefRecord"
invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v1
sput-object v1, Lcom/glympse/android/hal/Reflection$_NdefRecord;->dD:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;
move-result-object v1
array-length v2, v1
:goto_15
if-ge v0, v2, :cond_51
aget-object v3, v1, v0
invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;
move-result-object v4
if-eqz v4, :cond_6f
const/4 v5, 0x4
array-length v6, v4
if-ne v5, v6, :cond_6f
sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;
const/4 v6, 0x0
aget-object v6, v4, v6
invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_6f
const-class v5, [B
const/4 v6, 0x1
aget-object v6, v4, v6
invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_6f
const-class v5, [B
const/4 v6, 0x2
aget-object v6, v4, v6
invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_6f
const-class v5, [B
const/4 v6, 0x3
aget-object v4, v4, v6
invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_6f
sput-object v3, Lcom/glympse/android/hal/Reflection$_NdefRecord;->dE:Ljava/lang/reflect/Constructor;
:cond_51
sget-object v0, Lcom/glympse/android/hal/Reflection$_NdefRecord;->dD:Ljava/lang/Class;
const-string v1, "createApplicationRecord"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
const-class v4, Ljava/lang/String;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_NdefRecord;->dF:Ljava/lang/reflect/Method;
sget-object v0, Lcom/glympse/android/hal/Reflection$_NdefRecord;->dD:Ljava/lang/Class;
const-string v1, "getPayload"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_NdefRecord;->dG:Ljava/lang/reflect/Method;
:goto_6e
:cond_6e
:try_end_6e
.catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_6e} :catch_72
return-void
:cond_6f
add-int/lit8 v0, v0, 0x1
goto :goto_15
:catch_72
move-exception v0
const/4 v0, 0x5
const-string v1, "Failure locating NfcRecord via reflection"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
goto :goto_6e
.end method
.method public static createApplicationRecord(Ljava/lang/String;)Ljava/lang/Object;
.registers 7
const/4 v0, 0x0
const/4 v5, 0x0
invoke-static {}, Lcom/glympse/android/hal/Reflection$_NdefRecord;->Load()V
sget-object v1, Lcom/glympse/android/hal/Reflection$_NdefRecord;->dF:Ljava/lang/reflect/Method;
if-eqz v1, :cond_16
:try_start_9
sget-object v1, Lcom/glympse/android/hal/Reflection$_NdefRecord;->dF:Ljava/lang/reflect/Method;
const/4 v2, 0x0
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p0, v3, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_15
.catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_15} :catch_17
move-result-object v0
:goto_16
:cond_16
return-object v0
:catch_17
move-exception v1
invoke-static {v1, v5}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_16
.end method
.method public static createArray(I)Ljava/lang/Object;
.registers 2
invoke-static {}, Lcom/glympse/android/hal/Reflection$_NdefRecord;->Load()V
sget-object v0, Lcom/glympse/android/hal/Reflection$_NdefRecord;->dG:Ljava/lang/reflect/Method;
if-eqz v0, :cond_e
sget-object v0, Lcom/glympse/android/hal/Reflection$_NdefRecord;->dD:Ljava/lang/Class;
invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
move-result-object v0
:goto_d
return-object v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public static createInstance(S[B[B[B)Ljava/lang/Object;
.registers 9
const/4 v4, 0x0
invoke-static {}, Lcom/glympse/android/hal/Reflection$_NdefRecord;->Load()V
sget-object v0, Lcom/glympse/android/hal/Reflection$_NdefRecord;->dE:Ljava/lang/reflect/Constructor;
if-eqz v0, :cond_26
:try_start_8
sget-object v0, Lcom/glympse/android/hal/Reflection$_NdefRecord;->dE:Ljava/lang/reflect/Constructor;
const/4 v1, 0x4
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
aput-object p1, v1, v2
const/4 v2, 0x2
aput-object p2, v1, v2
const/4 v2, 0x3
aput-object p3, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
:try_end_20
.catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_20} :catch_22
move-result-object v0
:goto_21
return-object v0
:catch_22
move-exception v0
invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:cond_26
const/4 v0, 0x0
goto :goto_21
.end method
.method public static getPayload(Ljava/lang/Object;)[B
.registers 4
const/4 v1, 0x0
invoke-static {}, Lcom/glympse/android/hal/Reflection$_NdefRecord;->Load()V
sget-object v0, Lcom/glympse/android/hal/Reflection$_NdefRecord;->dG:Ljava/lang/reflect/Method;
if-eqz v0, :cond_19
:try_start_8
sget-object v0, Lcom/glympse/android/hal/Reflection$_NdefRecord;->dG:Ljava/lang/reflect/Method;
const/4 v2, 0x0
invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
check-cast v0, [B
:try_end_13
.catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_13} :catch_14
:goto_13
return-object v0
:catch_14
move-exception v0
const/4 v2, 0x0
invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:cond_19
move-object v0, v1
goto :goto_13
.end method